; ModuleID = '/home/carl/AnghaBench/linux/drivers/vfio/platform/extr_vfio_platform_common.c_vfio_platform_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vfio/platform/extr_vfio_platform_common.c_vfio_platform_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfio_platform_device = type { i32, i32, i64, i32 }

@ENODEV = common dso_local global i32 0, align 4
@driver_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"reset driver is required and reset call failed in open (%d) %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @vfio_platform_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfio_platform_open(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.vfio_platform_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.vfio_platform_device*
  store %struct.vfio_platform_device* %8, %struct.vfio_platform_device** %4, align 8
  %9 = load %struct.vfio_platform_device*, %struct.vfio_platform_device** %4, align 8
  %10 = getelementptr inbounds %struct.vfio_platform_device, %struct.vfio_platform_device* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @try_module_get(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENODEV, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %89

17:                                               ; preds = %1
  %18 = call i32 @mutex_lock(i32* @driver_lock)
  %19 = load %struct.vfio_platform_device*, %struct.vfio_platform_device** %4, align 8
  %20 = getelementptr inbounds %struct.vfio_platform_device, %struct.vfio_platform_device* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %67, label %23

23:                                               ; preds = %17
  store i8* null, i8** %6, align 8
  %24 = load %struct.vfio_platform_device*, %struct.vfio_platform_device** %4, align 8
  %25 = call i32 @vfio_platform_regions_init(%struct.vfio_platform_device* %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  br label %84

29:                                               ; preds = %23
  %30 = load %struct.vfio_platform_device*, %struct.vfio_platform_device** %4, align 8
  %31 = call i32 @vfio_platform_irq_init(%struct.vfio_platform_device* %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %81

35:                                               ; preds = %29
  %36 = load %struct.vfio_platform_device*, %struct.vfio_platform_device** %4, align 8
  %37 = getelementptr inbounds %struct.vfio_platform_device, %struct.vfio_platform_device* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @pm_runtime_get_sync(i32 %38)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  br label %78

43:                                               ; preds = %35
  %44 = load %struct.vfio_platform_device*, %struct.vfio_platform_device** %4, align 8
  %45 = call i32 @vfio_platform_call_reset(%struct.vfio_platform_device* %44, i8** %6)
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %66

48:                                               ; preds = %43
  %49 = load %struct.vfio_platform_device*, %struct.vfio_platform_device** %4, align 8
  %50 = getelementptr inbounds %struct.vfio_platform_device, %struct.vfio_platform_device* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %66

53:                                               ; preds = %48
  %54 = load %struct.vfio_platform_device*, %struct.vfio_platform_device** %4, align 8
  %55 = getelementptr inbounds %struct.vfio_platform_device, %struct.vfio_platform_device* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %5, align 4
  %58 = load i8*, i8** %6, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %62

60:                                               ; preds = %53
  %61 = load i8*, i8** %6, align 8
  br label %63

62:                                               ; preds = %53
  br label %63

63:                                               ; preds = %62, %60
  %64 = phi i8* [ %61, %60 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %62 ]
  %65 = call i32 @dev_warn(i32 %56, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %57, i8* %64)
  br label %73

66:                                               ; preds = %48, %43
  br label %67

67:                                               ; preds = %66, %17
  %68 = load %struct.vfio_platform_device*, %struct.vfio_platform_device** %4, align 8
  %69 = getelementptr inbounds %struct.vfio_platform_device, %struct.vfio_platform_device* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %69, align 4
  %72 = call i32 @mutex_unlock(i32* @driver_lock)
  store i32 0, i32* %2, align 4
  br label %89

73:                                               ; preds = %63
  %74 = load %struct.vfio_platform_device*, %struct.vfio_platform_device** %4, align 8
  %75 = getelementptr inbounds %struct.vfio_platform_device, %struct.vfio_platform_device* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @pm_runtime_put(i32 %76)
  br label %78

78:                                               ; preds = %73, %42
  %79 = load %struct.vfio_platform_device*, %struct.vfio_platform_device** %4, align 8
  %80 = call i32 @vfio_platform_irq_cleanup(%struct.vfio_platform_device* %79)
  br label %81

81:                                               ; preds = %78, %34
  %82 = load %struct.vfio_platform_device*, %struct.vfio_platform_device** %4, align 8
  %83 = call i32 @vfio_platform_regions_cleanup(%struct.vfio_platform_device* %82)
  br label %84

84:                                               ; preds = %81, %28
  %85 = call i32 @mutex_unlock(i32* @driver_lock)
  %86 = load i32, i32* @THIS_MODULE, align 4
  %87 = call i32 @module_put(i32 %86)
  %88 = load i32, i32* %5, align 4
  store i32 %88, i32* %2, align 4
  br label %89

89:                                               ; preds = %84, %67, %14
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local i32 @try_module_get(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @vfio_platform_regions_init(%struct.vfio_platform_device*) #1

declare dso_local i32 @vfio_platform_irq_init(%struct.vfio_platform_device*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @vfio_platform_call_reset(%struct.vfio_platform_device*, i8**) #1

declare dso_local i32 @dev_warn(i32, i8*, i32, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @pm_runtime_put(i32) #1

declare dso_local i32 @vfio_platform_irq_cleanup(%struct.vfio_platform_device*) #1

declare dso_local i32 @vfio_platform_regions_cleanup(%struct.vfio_platform_device*) #1

declare dso_local i32 @module_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
