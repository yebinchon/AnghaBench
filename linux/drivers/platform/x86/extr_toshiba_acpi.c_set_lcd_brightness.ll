; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_toshiba_acpi.c_set_lcd_brightness.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_toshiba_acpi.c_set_lcd_brightness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.toshiba_acpi_dev = type { i64 }

@HCI_LCD_BRIGHTNESS_SHIFT = common dso_local global i32 0, align 4
@HCI_LCD_BRIGHTNESS = common dso_local global i32 0, align 4
@TOS_FAILURE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"ACPI call to set LCD Brightness failed\0A\00", align 1
@TOS_NOT_SUPPORTED = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@TOS_SUCCESS = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.toshiba_acpi_dev*, i32)* @set_lcd_brightness to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_lcd_brightness(%struct.toshiba_acpi_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.toshiba_acpi_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.toshiba_acpi_dev* %0, %struct.toshiba_acpi_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %4, align 8
  %9 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %30

12:                                               ; preds = %2
  %13 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i32 @set_tr_backlight_status(%struct.toshiba_acpi_dev* %13, i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %12
  %22 = load i32, i32* %7, align 4
  store i32 %22, i32* %3, align 4
  br label %61

23:                                               ; preds = %12
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i32, i32* %5, align 4
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* %5, align 4
  br label %29

29:                                               ; preds = %26, %23
  br label %30

30:                                               ; preds = %29, %2
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @HCI_LCD_BRIGHTNESS_SHIFT, align 4
  %33 = shl i32 %31, %32
  store i32 %33, i32* %5, align 4
  %34 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %4, align 8
  %35 = load i32, i32* @HCI_LCD_BRIGHTNESS, align 4
  %36 = load i32, i32* %5, align 4
  %37 = call i64 @hci_write(%struct.toshiba_acpi_dev* %34, i32 %35, i32 %36)
  store i64 %37, i64* %6, align 8
  %38 = load i64, i64* %6, align 8
  %39 = load i64, i64* @TOS_FAILURE, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %30
  %42 = call i32 @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %51

43:                                               ; preds = %30
  %44 = load i64, i64* %6, align 8
  %45 = load i64, i64* @TOS_NOT_SUPPORTED, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load i32, i32* @ENODEV, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %61

50:                                               ; preds = %43
  br label %51

51:                                               ; preds = %50, %41
  %52 = load i64, i64* %6, align 8
  %53 = load i64, i64* @TOS_SUCCESS, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  br label %59

56:                                               ; preds = %51
  %57 = load i32, i32* @EIO, align 4
  %58 = sub nsw i32 0, %57
  br label %59

59:                                               ; preds = %56, %55
  %60 = phi i32 [ 0, %55 ], [ %58, %56 ]
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %59, %47, %21
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @set_tr_backlight_status(%struct.toshiba_acpi_dev*, i32) #1

declare dso_local i64 @hci_write(%struct.toshiba_acpi_dev*, i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
