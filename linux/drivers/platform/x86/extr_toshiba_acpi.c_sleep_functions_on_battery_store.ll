; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_toshiba_acpi.c_sleep_functions_on_battery_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_toshiba_acpi.c_sleep_functions_on_battery_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.toshiba_acpi_dev = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@HCI_MISC_SHIFT = common dso_local global i32 0, align 4
@SCI_USB_CHARGE_BAT_LVL_OFF = common dso_local global i32 0, align 4
@SCI_USB_CHARGE_BAT_LVL_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @sleep_functions_on_battery_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sleep_functions_on_battery_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.toshiba_acpi_dev*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = call %struct.toshiba_acpi_dev* @dev_get_drvdata(%struct.device* %15)
  store %struct.toshiba_acpi_dev* %16, %struct.toshiba_acpi_dev** %10, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = call i32 @kstrtoint(i8* %17, i32 0, i32* %12)
  store i32 %18, i32* %13, align 4
  %19 = load i32, i32* %13, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = load i32, i32* %13, align 4
  store i32 %22, i32* %5, align 4
  br label %67

23:                                               ; preds = %4
  %24 = load i32, i32* %12, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  %27 = load i32, i32* %12, align 4
  %28 = icmp sgt i32 %27, 100
  br i1 %28, label %29, label %32

29:                                               ; preds = %26, %23
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  br label %67

32:                                               ; preds = %26
  %33 = load i32, i32* %12, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %32
  %36 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %10, align 8
  %37 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @HCI_MISC_SHIFT, align 4
  %40 = shl i32 %38, %39
  store i32 %40, i32* %14, align 4
  %41 = load i32, i32* %14, align 4
  %42 = load i32, i32* @SCI_USB_CHARGE_BAT_LVL_OFF, align 4
  %43 = or i32 %41, %42
  store i32 %43, i32* %11, align 4
  br label %51

44:                                               ; preds = %32
  %45 = load i32, i32* %12, align 4
  %46 = load i32, i32* @HCI_MISC_SHIFT, align 4
  %47 = shl i32 %45, %46
  store i32 %47, i32* %14, align 4
  %48 = load i32, i32* %14, align 4
  %49 = load i32, i32* @SCI_USB_CHARGE_BAT_LVL_ON, align 4
  %50 = or i32 %48, %49
  store i32 %50, i32* %11, align 4
  br label %51

51:                                               ; preds = %44, %35
  %52 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %10, align 8
  %53 = load i32, i32* %11, align 4
  %54 = call i32 @toshiba_sleep_functions_status_set(%struct.toshiba_acpi_dev* %52, i32 %53)
  store i32 %54, i32* %13, align 4
  %55 = load i32, i32* %13, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %51
  %58 = load i32, i32* %13, align 4
  store i32 %58, i32* %5, align 4
  br label %67

59:                                               ; preds = %51
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* @HCI_MISC_SHIFT, align 4
  %62 = ashr i32 %60, %61
  %63 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %10, align 8
  %64 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 4
  %65 = load i64, i64* %9, align 8
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %5, align 4
  br label %67

67:                                               ; preds = %59, %57, %29, %21
  %68 = load i32, i32* %5, align 4
  ret i32 %68
}

declare dso_local %struct.toshiba_acpi_dev* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @kstrtoint(i8*, i32, i32*) #1

declare dso_local i32 @toshiba_sleep_functions_status_set(%struct.toshiba_acpi_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
