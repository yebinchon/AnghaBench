; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_fujitsu-laptop.c_acpi_fujitsu_bl_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_fujitsu-laptop.c_acpi_fujitsu_bl_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fujitsu_bl = type { i32 }
%struct.acpi_device = type { %struct.fujitsu_bl*, i32 }

@acpi_backlight_vendor = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@fujitsu_bl = common dso_local global %struct.fujitsu_bl* null, align 8
@ACPI_FUJITSU_BL_DEVICE_NAME = common dso_local global i32 0, align 4
@ACPI_FUJITSU_CLASS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"ACPI: %s [%s]\0A\00", align 1
@FUJITSU_LCD_N_LEVELS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_device*)* @acpi_fujitsu_bl_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_fujitsu_bl_add(%struct.acpi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_device*, align 8
  %4 = alloca %struct.fujitsu_bl*, align 8
  %5 = alloca i32, align 4
  store %struct.acpi_device* %0, %struct.acpi_device** %3, align 8
  %6 = call i64 (...) @acpi_video_get_backlight_type()
  %7 = load i64, i64* @acpi_backlight_vendor, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32, i32* @ENODEV, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %59

12:                                               ; preds = %1
  %13 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %14 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %13, i32 0, i32 1
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.fujitsu_bl* @devm_kzalloc(i32* %14, i32 4, i32 %15)
  store %struct.fujitsu_bl* %16, %struct.fujitsu_bl** %4, align 8
  %17 = load %struct.fujitsu_bl*, %struct.fujitsu_bl** %4, align 8
  %18 = icmp ne %struct.fujitsu_bl* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %12
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %59

22:                                               ; preds = %12
  %23 = load %struct.fujitsu_bl*, %struct.fujitsu_bl** %4, align 8
  store %struct.fujitsu_bl* %23, %struct.fujitsu_bl** @fujitsu_bl, align 8
  %24 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %25 = call i32 @acpi_device_name(%struct.acpi_device* %24)
  %26 = load i32, i32* @ACPI_FUJITSU_BL_DEVICE_NAME, align 4
  %27 = call i32 @strcpy(i32 %25, i32 %26)
  %28 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %29 = call i32 @acpi_device_class(%struct.acpi_device* %28)
  %30 = load i32, i32* @ACPI_FUJITSU_CLASS, align 4
  %31 = call i32 @strcpy(i32 %29, i32 %30)
  %32 = load %struct.fujitsu_bl*, %struct.fujitsu_bl** %4, align 8
  %33 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %34 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %33, i32 0, i32 0
  store %struct.fujitsu_bl* %32, %struct.fujitsu_bl** %34, align 8
  %35 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %36 = call i32 @acpi_device_name(%struct.acpi_device* %35)
  %37 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %38 = call i32 @acpi_device_bid(%struct.acpi_device* %37)
  %39 = call i32 @pr_info(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %38)
  %40 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %41 = call i64 @get_max_brightness(%struct.acpi_device* %40)
  %42 = icmp sle i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %22
  %44 = load i32, i32* @FUJITSU_LCD_N_LEVELS, align 4
  %45 = load %struct.fujitsu_bl*, %struct.fujitsu_bl** %4, align 8
  %46 = getelementptr inbounds %struct.fujitsu_bl, %struct.fujitsu_bl* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  br label %47

47:                                               ; preds = %43, %22
  %48 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %49 = call i32 @get_lcd_level(%struct.acpi_device* %48)
  %50 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %51 = call i32 @acpi_fujitsu_bl_input_setup(%struct.acpi_device* %50)
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %5, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %47
  %55 = load i32, i32* %5, align 4
  store i32 %55, i32* %2, align 4
  br label %59

56:                                               ; preds = %47
  %57 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %58 = call i32 @fujitsu_backlight_register(%struct.acpi_device* %57)
  store i32 %58, i32* %2, align 4
  br label %59

59:                                               ; preds = %56, %54, %19, %9
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i64 @acpi_video_get_backlight_type(...) #1

declare dso_local %struct.fujitsu_bl* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i32 @acpi_device_name(%struct.acpi_device*) #1

declare dso_local i32 @acpi_device_class(%struct.acpi_device*) #1

declare dso_local i32 @pr_info(i8*, i32, i32) #1

declare dso_local i32 @acpi_device_bid(%struct.acpi_device*) #1

declare dso_local i64 @get_max_brightness(%struct.acpi_device*) #1

declare dso_local i32 @get_lcd_level(%struct.acpi_device*) #1

declare dso_local i32 @acpi_fujitsu_bl_input_setup(%struct.acpi_device*) #1

declare dso_local i32 @fujitsu_backlight_register(%struct.acpi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
