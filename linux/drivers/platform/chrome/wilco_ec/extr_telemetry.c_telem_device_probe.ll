; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/chrome/wilco_ec/extr_telemetry.c_telem_device_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/chrome/wilco_ec/extr_telemetry.c_telem_device_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.telem_device_data = type { %struct.TYPE_5__, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32*, i32 }

@telem_ida = common dso_local global i32 0, align 4
@TELEM_MAX_DEV = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Failed to find minor number: %d\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@telem_major = common dso_local global i32 0, align 4
@telem_class = common dso_local global i32 0, align 4
@telem_device_free = common dso_local global i32 0, align 4
@TELEM_DEV_NAME_FMT = common dso_local global i32 0, align 4
@telem_fops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @telem_device_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @telem_device_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.telem_device_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load i64, i64* @TELEM_MAX_DEV, align 8
  %8 = sub nsw i64 %7, 1
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call i32 @ida_alloc_max(i32* @telem_ida, i64 %8, i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %1
  %14 = load i32, i32* %6, align 4
  store i32 %14, i32* %5, align 4
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @dev_err(i32* %16, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* %5, align 4
  store i32 %19, i32* %2, align 4
  br label %81

20:                                               ; preds = %1
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.telem_device_data* @kzalloc(i32 40, i32 %21)
  store %struct.telem_device_data* %22, %struct.telem_device_data** %4, align 8
  %23 = load %struct.telem_device_data*, %struct.telem_device_data** %4, align 8
  %24 = icmp ne %struct.telem_device_data* %23, null
  br i1 %24, label %30, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @ida_simple_remove(i32* @telem_ida, i32 %26)
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %81

30:                                               ; preds = %20
  %31 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %32 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %31, i32 0, i32 0
  %33 = call i32 @dev_get_platdata(i32* %32)
  %34 = load %struct.telem_device_data*, %struct.telem_device_data** %4, align 8
  %35 = getelementptr inbounds %struct.telem_device_data, %struct.telem_device_data* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 8
  %36 = load %struct.telem_device_data*, %struct.telem_device_data** %4, align 8
  %37 = getelementptr inbounds %struct.telem_device_data, %struct.telem_device_data* %36, i32 0, i32 2
  %38 = call i32 @atomic_set(i32* %37, i32 1)
  %39 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %40 = load %struct.telem_device_data*, %struct.telem_device_data** %4, align 8
  %41 = call i32 @platform_set_drvdata(%struct.platform_device* %39, %struct.telem_device_data* %40)
  %42 = load i32, i32* @telem_major, align 4
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @MKDEV(i32 %42, i32 %43)
  %45 = load %struct.telem_device_data*, %struct.telem_device_data** %4, align 8
  %46 = getelementptr inbounds %struct.telem_device_data, %struct.telem_device_data* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 2
  store i32 %44, i32* %47, align 8
  %48 = load %struct.telem_device_data*, %struct.telem_device_data** %4, align 8
  %49 = getelementptr inbounds %struct.telem_device_data, %struct.telem_device_data* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  store i32* @telem_class, i32** %50, align 8
  %51 = load i32, i32* @telem_device_free, align 4
  %52 = load %struct.telem_device_data*, %struct.telem_device_data** %4, align 8
  %53 = getelementptr inbounds %struct.telem_device_data, %struct.telem_device_data* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  store i32 %51, i32* %54, align 8
  %55 = load %struct.telem_device_data*, %struct.telem_device_data** %4, align 8
  %56 = getelementptr inbounds %struct.telem_device_data, %struct.telem_device_data* %55, i32 0, i32 0
  %57 = load i32, i32* @TELEM_DEV_NAME_FMT, align 4
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @dev_set_name(%struct.TYPE_5__* %56, i32 %57, i32 %58)
  %60 = load %struct.telem_device_data*, %struct.telem_device_data** %4, align 8
  %61 = getelementptr inbounds %struct.telem_device_data, %struct.telem_device_data* %60, i32 0, i32 0
  %62 = call i32 @device_initialize(%struct.TYPE_5__* %61)
  %63 = load %struct.telem_device_data*, %struct.telem_device_data** %4, align 8
  %64 = getelementptr inbounds %struct.telem_device_data, %struct.telem_device_data* %63, i32 0, i32 1
  %65 = call i32 @cdev_init(i32* %64, i32* @telem_fops)
  %66 = load %struct.telem_device_data*, %struct.telem_device_data** %4, align 8
  %67 = getelementptr inbounds %struct.telem_device_data, %struct.telem_device_data* %66, i32 0, i32 1
  %68 = load %struct.telem_device_data*, %struct.telem_device_data** %4, align 8
  %69 = getelementptr inbounds %struct.telem_device_data, %struct.telem_device_data* %68, i32 0, i32 0
  %70 = call i32 @cdev_device_add(i32* %67, %struct.TYPE_5__* %69)
  store i32 %70, i32* %5, align 4
  %71 = load i32, i32* %5, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %30
  %74 = load %struct.telem_device_data*, %struct.telem_device_data** %4, align 8
  %75 = getelementptr inbounds %struct.telem_device_data, %struct.telem_device_data* %74, i32 0, i32 0
  %76 = call i32 @put_device(%struct.TYPE_5__* %75)
  %77 = load i32, i32* %6, align 4
  %78 = call i32 @ida_simple_remove(i32* @telem_ida, i32 %77)
  %79 = load i32, i32* %5, align 4
  store i32 %79, i32* %2, align 4
  br label %81

80:                                               ; preds = %30
  store i32 0, i32* %2, align 4
  br label %81

81:                                               ; preds = %80, %73, %25, %13
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local i32 @ida_alloc_max(i32*, i64, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local %struct.telem_device_data* @kzalloc(i32, i32) #1

declare dso_local i32 @ida_simple_remove(i32*, i32) #1

declare dso_local i32 @dev_get_platdata(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.telem_device_data*) #1

declare dso_local i32 @MKDEV(i32, i32) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @device_initialize(%struct.TYPE_5__*) #1

declare dso_local i32 @cdev_init(i32*, i32*) #1

declare dso_local i32 @cdev_device_add(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @put_device(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
