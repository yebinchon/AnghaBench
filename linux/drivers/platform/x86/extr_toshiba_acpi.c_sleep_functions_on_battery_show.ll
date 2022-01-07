; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_toshiba_acpi.c_sleep_functions_on_battery_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_toshiba_acpi.c_sleep_functions_on_battery_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.toshiba_acpi_dev = type { i32 }

@SCI_USB_CHARGE_BAT_MASK = common dso_local global i32 0, align 4
@HCI_MISC_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%d %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @sleep_functions_on_battery_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sleep_functions_on_battery_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.toshiba_acpi_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load %struct.device*, %struct.device** %5, align 8
  %15 = call %struct.toshiba_acpi_dev* @dev_get_drvdata(%struct.device* %14)
  store %struct.toshiba_acpi_dev* %15, %struct.toshiba_acpi_dev** %8, align 8
  %16 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %8, align 8
  %17 = call i32 @toshiba_sleep_functions_status_get(%struct.toshiba_acpi_dev* %16, i32* %11)
  store i32 %17, i32* %12, align 4
  %18 = load i32, i32* %12, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* %12, align 4
  store i32 %21, i32* %4, align 4
  br label %37

22:                                               ; preds = %3
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* @SCI_USB_CHARGE_BAT_MASK, align 4
  %25 = and i32 %23, %24
  store i32 %25, i32* %13, align 4
  %26 = load i32, i32* %13, align 4
  %27 = icmp eq i32 %26, 4
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i32 1, i32 0
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* @HCI_MISC_SHIFT, align 4
  %32 = ashr i32 %30, %31
  store i32 %32, i32* %9, align 4
  %33 = load i8*, i8** %7, align 8
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @sprintf(i8* %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %35)
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %22, %20
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local %struct.toshiba_acpi_dev* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @toshiba_sleep_functions_status_get(%struct.toshiba_acpi_dev*, i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
