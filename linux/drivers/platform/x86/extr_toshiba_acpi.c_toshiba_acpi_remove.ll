; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_toshiba_acpi.c_toshiba_acpi_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_toshiba_acpi.c_toshiba_acpi_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { i32 }
%struct.toshiba_acpi_dev = type { i64, i32, i64, i32, i64, i32, i64, i32, i64, i32, i64, %struct.TYPE_4__*, i64, i64, i64, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@toshiba_attr_group = common dso_local global i32 0, align 4
@toshiba_acpi_i8042_filter = common dso_local global i32 0, align 4
@toshiba_acpi = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_device*)* @toshiba_acpi_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @toshiba_acpi_remove(%struct.acpi_device* %0) #0 {
  %2 = alloca %struct.acpi_device*, align 8
  %3 = alloca %struct.toshiba_acpi_dev*, align 8
  store %struct.acpi_device* %0, %struct.acpi_device** %2, align 8
  %4 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %5 = call %struct.toshiba_acpi_dev* @acpi_driver_data(%struct.acpi_device* %4)
  store %struct.toshiba_acpi_dev* %5, %struct.toshiba_acpi_dev** %3, align 8
  %6 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %3, align 8
  %7 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %6, i32 0, i32 15
  %8 = call i32 @misc_deregister(i32* %7)
  %9 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %3, align 8
  %10 = call i32 @remove_toshiba_proc_entries(%struct.toshiba_acpi_dev* %9)
  %11 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %3, align 8
  %12 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %11, i32 0, i32 14
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %29

15:                                               ; preds = %1
  %16 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %3, align 8
  %17 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %16, i32 0, i32 13
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %15
  %21 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %3, align 8
  %22 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %21, i32 0, i32 13
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @iio_device_unregister(i64 %23)
  %25 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %3, align 8
  %26 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %25, i32 0, i32 13
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @iio_device_free(i64 %27)
  br label %29

29:                                               ; preds = %20, %15, %1
  %30 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %3, align 8
  %31 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %30, i32 0, i32 12
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %29
  %35 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %3, align 8
  %36 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %35, i32 0, i32 11
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = call i32 @sysfs_remove_group(i32* %39, i32* @toshiba_attr_group)
  br label %41

41:                                               ; preds = %34, %29
  %42 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %3, align 8
  %43 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %42, i32 0, i32 10
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %41
  %47 = load i32, i32* @toshiba_acpi_i8042_filter, align 4
  %48 = call i32 @i8042_remove_filter(i32 %47)
  %49 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %3, align 8
  %50 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %49, i32 0, i32 9
  %51 = call i32 @cancel_work_sync(i32* %50)
  br label %52

52:                                               ; preds = %46, %41
  %53 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %3, align 8
  %54 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %53, i32 0, i32 8
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %52
  %58 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %3, align 8
  %59 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %58, i32 0, i32 8
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @input_unregister_device(i64 %60)
  br label %62

62:                                               ; preds = %57, %52
  %63 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %3, align 8
  %64 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %63, i32 0, i32 7
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @backlight_device_unregister(i32 %65)
  %67 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %3, align 8
  %68 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %67, i32 0, i32 6
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %62
  %72 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %3, align 8
  %73 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %72, i32 0, i32 5
  %74 = call i32 @led_classdev_unregister(i32* %73)
  br label %75

75:                                               ; preds = %71, %62
  %76 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %3, align 8
  %77 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %76, i32 0, i32 4
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %75
  %81 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %3, align 8
  %82 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %81, i32 0, i32 3
  %83 = call i32 @led_classdev_unregister(i32* %82)
  br label %84

84:                                               ; preds = %80, %75
  %85 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %3, align 8
  %86 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %84
  %90 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %3, align 8
  %91 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %90, i32 0, i32 1
  %92 = call i32 @led_classdev_unregister(i32* %91)
  br label %93

93:                                               ; preds = %89, %84
  %94 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %3, align 8
  %95 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %107

98:                                               ; preds = %93
  %99 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %3, align 8
  %100 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = call i32 @rfkill_unregister(i64 %101)
  %103 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %3, align 8
  %104 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = call i32 @rfkill_destroy(i64 %105)
  br label %107

107:                                              ; preds = %98, %93
  %108 = load i32*, i32** @toshiba_acpi, align 8
  %109 = icmp ne i32* %108, null
  br i1 %109, label %110, label %111

110:                                              ; preds = %107
  store i32* null, i32** @toshiba_acpi, align 8
  br label %111

111:                                              ; preds = %110, %107
  %112 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %3, align 8
  %113 = call i32 @kfree(%struct.toshiba_acpi_dev* %112)
  ret i32 0
}

declare dso_local %struct.toshiba_acpi_dev* @acpi_driver_data(%struct.acpi_device*) #1

declare dso_local i32 @misc_deregister(i32*) #1

declare dso_local i32 @remove_toshiba_proc_entries(%struct.toshiba_acpi_dev*) #1

declare dso_local i32 @iio_device_unregister(i64) #1

declare dso_local i32 @iio_device_free(i64) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

declare dso_local i32 @i8042_remove_filter(i32) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @input_unregister_device(i64) #1

declare dso_local i32 @backlight_device_unregister(i32) #1

declare dso_local i32 @led_classdev_unregister(i32*) #1

declare dso_local i32 @rfkill_unregister(i64) #1

declare dso_local i32 @rfkill_destroy(i64) #1

declare dso_local i32 @kfree(%struct.toshiba_acpi_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
