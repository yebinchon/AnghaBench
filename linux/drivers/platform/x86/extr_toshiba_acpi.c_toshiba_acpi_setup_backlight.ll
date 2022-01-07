; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_toshiba_acpi.c_toshiba_acpi_setup_backlight.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_toshiba_acpi.c_toshiba_acpi_setup_backlight.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.toshiba_acpi_dev = type { %struct.TYPE_8__*, %struct.TYPE_6__*, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.backlight_properties = type { i64, i32 }

@.str = private unnamed_addr constant [60 x i8] c"Backlight method is read-only, disabling backlight support\0A\00", align 1
@toshiba_vendor_backlight_dmi = common dso_local global i32 0, align 4
@acpi_backlight_vendor = common dso_local global i64 0, align 8
@BACKLIGHT_PLATFORM = common dso_local global i32 0, align 4
@HCI_LCD_BRIGHTNESS_LEVELS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"toshiba\00", align 1
@toshiba_backlight_data = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"Could not register toshiba backlight device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.toshiba_acpi_dev*)* @toshiba_acpi_setup_backlight to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @toshiba_acpi_setup_backlight(%struct.toshiba_acpi_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.toshiba_acpi_dev*, align 8
  %4 = alloca %struct.backlight_properties, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.toshiba_acpi_dev* %0, %struct.toshiba_acpi_dev** %3, align 8
  %7 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %3, align 8
  %8 = call i32 @__get_lcd_brightness(%struct.toshiba_acpi_dev* %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %93

12:                                               ; preds = %1
  %13 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %3, align 8
  %14 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %12
  %18 = load i32, i32* %5, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load i32, i32* %5, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %5, align 4
  br label %23

23:                                               ; preds = %20, %17, %12
  %24 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %3, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @set_lcd_brightness(%struct.toshiba_acpi_dev* %24, i32 %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = call i32 @pr_debug(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %93

31:                                               ; preds = %23
  %32 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %3, align 8
  %33 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* @toshiba_vendor_backlight_dmi, align 4
  %38 = call i64 @dmi_check_system(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %36, %31
  %41 = load i64, i64* @acpi_backlight_vendor, align 8
  %42 = call i32 @acpi_video_set_dmi_backlight_type(i64 %41)
  br label %43

43:                                               ; preds = %40, %36
  %44 = call i64 (...) @acpi_video_get_backlight_type()
  %45 = load i64, i64* @acpi_backlight_vendor, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  store i32 0, i32* %2, align 4
  br label %93

48:                                               ; preds = %43
  %49 = call i32 @memset(%struct.backlight_properties* %4, i32 0, i32 16)
  %50 = load i32, i32* @BACKLIGHT_PLATFORM, align 4
  %51 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %4, i32 0, i32 1
  store i32 %50, i32* %51, align 8
  %52 = load i64, i64* @HCI_LCD_BRIGHTNESS_LEVELS, align 8
  %53 = sub nsw i64 %52, 1
  %54 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %4, i32 0, i32 0
  store i64 %53, i64* %54, align 8
  %55 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %3, align 8
  %56 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %48
  %60 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %4, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %61, 1
  store i64 %62, i64* %60, align 8
  br label %63

63:                                               ; preds = %59, %48
  %64 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %3, align 8
  %65 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %64, i32 0, i32 1
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %3, align 8
  %69 = call %struct.TYPE_8__* @backlight_device_register(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32* %67, %struct.toshiba_acpi_dev* %68, i32* @toshiba_backlight_data, %struct.backlight_properties* %4)
  %70 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %3, align 8
  %71 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %70, i32 0, i32 0
  store %struct.TYPE_8__* %69, %struct.TYPE_8__** %71, align 8
  %72 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %3, align 8
  %73 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %72, i32 0, i32 0
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %73, align 8
  %75 = call i64 @IS_ERR(%struct.TYPE_8__* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %86

77:                                               ; preds = %63
  %78 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %3, align 8
  %79 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %78, i32 0, i32 0
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %79, align 8
  %81 = call i32 @PTR_ERR(%struct.TYPE_8__* %80)
  store i32 %81, i32* %6, align 4
  %82 = call i32 @pr_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  %83 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %3, align 8
  %84 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %83, i32 0, i32 0
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %84, align 8
  %85 = load i32, i32* %6, align 4
  store i32 %85, i32* %2, align 4
  br label %93

86:                                               ; preds = %63
  %87 = load i32, i32* %5, align 4
  %88 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %3, align 8
  %89 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %88, i32 0, i32 0
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  store i32 %87, i32* %92, align 4
  store i32 0, i32* %2, align 4
  br label %93

93:                                               ; preds = %86, %77, %47, %29, %11
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local i32 @__get_lcd_brightness(%struct.toshiba_acpi_dev*) #1

declare dso_local i32 @set_lcd_brightness(%struct.toshiba_acpi_dev*, i32) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i64 @dmi_check_system(i32) #1

declare dso_local i32 @acpi_video_set_dmi_backlight_type(i64) #1

declare dso_local i64 @acpi_video_get_backlight_type(...) #1

declare dso_local i32 @memset(%struct.backlight_properties*, i32, i32) #1

declare dso_local %struct.TYPE_8__* @backlight_device_register(i8*, i32*, %struct.toshiba_acpi_dev*, i32*, %struct.backlight_properties*) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_8__*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_8__*) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
