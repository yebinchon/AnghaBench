; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_toshiba_acpi.c___get_lcd_brightness.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_toshiba_acpi.c___get_lcd_brightness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.toshiba_acpi_dev = type { i64 }

@HCI_LCD_BRIGHTNESS = common dso_local global i32 0, align 4
@TOS_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"ACPI call to get LCD Brightness failed\0A\00", align 1
@TOS_NOT_SUPPORTED = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@TOS_SUCCESS = common dso_local global i32 0, align 4
@HCI_LCD_BRIGHTNESS_SHIFT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.toshiba_acpi_dev*)* @__get_lcd_brightness to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__get_lcd_brightness(%struct.toshiba_acpi_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.toshiba_acpi_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.toshiba_acpi_dev* %0, %struct.toshiba_acpi_dev** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %3, align 8
  %9 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %26

12:                                               ; preds = %1
  %13 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %3, align 8
  %14 = call i32 @get_tr_backlight_status(%struct.toshiba_acpi_dev* %13, i32* %6)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = load i32, i32* %7, align 4
  store i32 %18, i32* %2, align 4
  br label %58

19:                                               ; preds = %12
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %58

23:                                               ; preds = %19
  %24 = load i32, i32* %4, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %4, align 4
  br label %26

26:                                               ; preds = %23, %1
  %27 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %3, align 8
  %28 = load i32, i32* @HCI_LCD_BRIGHTNESS, align 4
  %29 = call i32 @hci_read(%struct.toshiba_acpi_dev* %27, i32 %28, i32* %6)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @TOS_FAILURE, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = call i32 @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %43

35:                                               ; preds = %26
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @TOS_NOT_SUPPORTED, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load i32, i32* @ENODEV, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %58

42:                                               ; preds = %35
  br label %43

43:                                               ; preds = %42, %33
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @TOS_SUCCESS, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %43
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @HCI_LCD_BRIGHTNESS_SHIFT, align 4
  %51 = ashr i32 %49, %50
  %52 = add nsw i32 %48, %51
  br label %56

53:                                               ; preds = %43
  %54 = load i32, i32* @EIO, align 4
  %55 = sub nsw i32 0, %54
  br label %56

56:                                               ; preds = %53, %47
  %57 = phi i32 [ %52, %47 ], [ %55, %53 ]
  store i32 %57, i32* %2, align 4
  br label %58

58:                                               ; preds = %56, %39, %22, %17
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32 @get_tr_backlight_status(%struct.toshiba_acpi_dev*, i32*) #1

declare dso_local i32 @hci_read(%struct.toshiba_acpi_dev*, i32, i32*) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
