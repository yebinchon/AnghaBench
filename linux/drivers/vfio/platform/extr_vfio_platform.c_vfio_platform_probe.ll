; ModuleID = '/home/carl/AnghaBench/linux/drivers/vfio/platform/extr_vfio_platform.c_vfio_platform_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vfio/platform/extr_vfio_platform.c_vfio_platform_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, i32 }
%struct.vfio_platform_device = type { i32, i32, i32, i32, i32, i32, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@VFIO_DEVICE_FLAGS_PLATFORM = common dso_local global i32 0, align 4
@get_platform_resource = common dso_local global i32 0, align 4
@get_platform_irq = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@reset_required = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @vfio_platform_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfio_platform_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.vfio_platform_device*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.vfio_platform_device* @kzalloc(i32 32, i32 %6)
  store %struct.vfio_platform_device* %7, %struct.vfio_platform_device** %4, align 8
  %8 = load %struct.vfio_platform_device*, %struct.vfio_platform_device** %4, align 8
  %9 = icmp ne %struct.vfio_platform_device* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %49

13:                                               ; preds = %1
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = bitcast %struct.platform_device* %14 to i8*
  %16 = load %struct.vfio_platform_device*, %struct.vfio_platform_device** %4, align 8
  %17 = getelementptr inbounds %struct.vfio_platform_device, %struct.vfio_platform_device* %16, i32 0, i32 6
  store i8* %15, i8** %17, align 8
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.vfio_platform_device*, %struct.vfio_platform_device** %4, align 8
  %22 = getelementptr inbounds %struct.vfio_platform_device, %struct.vfio_platform_device* %21, i32 0, i32 5
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* @VFIO_DEVICE_FLAGS_PLATFORM, align 4
  %24 = load %struct.vfio_platform_device*, %struct.vfio_platform_device** %4, align 8
  %25 = getelementptr inbounds %struct.vfio_platform_device, %struct.vfio_platform_device* %24, i32 0, i32 4
  store i32 %23, i32* %25, align 8
  %26 = load i32, i32* @get_platform_resource, align 4
  %27 = load %struct.vfio_platform_device*, %struct.vfio_platform_device** %4, align 8
  %28 = getelementptr inbounds %struct.vfio_platform_device, %struct.vfio_platform_device* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* @get_platform_irq, align 4
  %30 = load %struct.vfio_platform_device*, %struct.vfio_platform_device** %4, align 8
  %31 = getelementptr inbounds %struct.vfio_platform_device, %struct.vfio_platform_device* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 8
  %32 = load i32, i32* @THIS_MODULE, align 4
  %33 = load %struct.vfio_platform_device*, %struct.vfio_platform_device** %4, align 8
  %34 = getelementptr inbounds %struct.vfio_platform_device, %struct.vfio_platform_device* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* @reset_required, align 4
  %36 = load %struct.vfio_platform_device*, %struct.vfio_platform_device** %4, align 8
  %37 = getelementptr inbounds %struct.vfio_platform_device, %struct.vfio_platform_device* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.vfio_platform_device*, %struct.vfio_platform_device** %4, align 8
  %39 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %40 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %39, i32 0, i32 0
  %41 = call i32 @vfio_platform_probe_common(%struct.vfio_platform_device* %38, i32* %40)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %13
  %45 = load %struct.vfio_platform_device*, %struct.vfio_platform_device** %4, align 8
  %46 = call i32 @kfree(%struct.vfio_platform_device* %45)
  br label %47

47:                                               ; preds = %44, %13
  %48 = load i32, i32* %5, align 4
  store i32 %48, i32* %2, align 4
  br label %49

49:                                               ; preds = %47, %10
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local %struct.vfio_platform_device* @kzalloc(i32, i32) #1

declare dso_local i32 @vfio_platform_probe_common(%struct.vfio_platform_device*, i32*) #1

declare dso_local i32 @kfree(%struct.vfio_platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
