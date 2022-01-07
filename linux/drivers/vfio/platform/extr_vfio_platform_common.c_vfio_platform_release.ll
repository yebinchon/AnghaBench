; ModuleID = '/home/carl/AnghaBench/linux/drivers/vfio/platform/extr_vfio_platform_common.c_vfio_platform_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vfio/platform/extr_vfio_platform_common.c_vfio_platform_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfio_platform_device = type { i32, i32, i64, i32 }

@driver_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"reset driver is required and reset call failed in release (%d) %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @vfio_platform_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vfio_platform_release(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.vfio_platform_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.vfio_platform_device*
  store %struct.vfio_platform_device* %7, %struct.vfio_platform_device** %3, align 8
  %8 = call i32 @mutex_lock(i32* @driver_lock)
  %9 = load %struct.vfio_platform_device*, %struct.vfio_platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.vfio_platform_device, %struct.vfio_platform_device* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = add nsw i32 %11, -1
  store i32 %12, i32* %10, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %47, label %14

14:                                               ; preds = %1
  store i8* null, i8** %4, align 8
  %15 = load %struct.vfio_platform_device*, %struct.vfio_platform_device** %3, align 8
  %16 = call i32 @vfio_platform_call_reset(%struct.vfio_platform_device* %15, i8** %4)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %38

19:                                               ; preds = %14
  %20 = load %struct.vfio_platform_device*, %struct.vfio_platform_device** %3, align 8
  %21 = getelementptr inbounds %struct.vfio_platform_device, %struct.vfio_platform_device* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %38

24:                                               ; preds = %19
  %25 = load %struct.vfio_platform_device*, %struct.vfio_platform_device** %3, align 8
  %26 = getelementptr inbounds %struct.vfio_platform_device, %struct.vfio_platform_device* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load i8*, i8** %4, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = load i8*, i8** %4, align 8
  br label %34

33:                                               ; preds = %24
  br label %34

34:                                               ; preds = %33, %31
  %35 = phi i8* [ %32, %31 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %33 ]
  %36 = call i32 @dev_warn(i32 %27, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32 %28, i8* %35)
  %37 = call i32 @WARN_ON(i32 1)
  br label %38

38:                                               ; preds = %34, %19, %14
  %39 = load %struct.vfio_platform_device*, %struct.vfio_platform_device** %3, align 8
  %40 = getelementptr inbounds %struct.vfio_platform_device, %struct.vfio_platform_device* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @pm_runtime_put(i32 %41)
  %43 = load %struct.vfio_platform_device*, %struct.vfio_platform_device** %3, align 8
  %44 = call i32 @vfio_platform_regions_cleanup(%struct.vfio_platform_device* %43)
  %45 = load %struct.vfio_platform_device*, %struct.vfio_platform_device** %3, align 8
  %46 = call i32 @vfio_platform_irq_cleanup(%struct.vfio_platform_device* %45)
  br label %47

47:                                               ; preds = %38, %1
  %48 = call i32 @mutex_unlock(i32* @driver_lock)
  %49 = load %struct.vfio_platform_device*, %struct.vfio_platform_device** %3, align 8
  %50 = getelementptr inbounds %struct.vfio_platform_device, %struct.vfio_platform_device* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @module_put(i32 %51)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @vfio_platform_call_reset(%struct.vfio_platform_device*, i8**) #1

declare dso_local i32 @dev_warn(i32, i8*, i32, i8*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @pm_runtime_put(i32) #1

declare dso_local i32 @vfio_platform_regions_cleanup(%struct.vfio_platform_device*) #1

declare dso_local i32 @vfio_platform_irq_cleanup(%struct.vfio_platform_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @module_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
