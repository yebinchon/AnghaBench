; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_toshiba_acpi.c_toshiba_acpi_enable_hotkeys.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_toshiba_acpi.c_toshiba_acpi_enable_hotkeys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.toshiba_acpi_dev = type { i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"ENAB\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@HCI_HOTKEY_EVENT = common dso_local global i32 0, align 4
@HCI_HOTKEY_SPECIAL_FUNCTIONS = common dso_local global i32 0, align 4
@HCI_HOTKEY_ENABLE = common dso_local global i32 0, align 4
@TOS_FAILURE = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@TOS_NOT_SUPPORTED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.toshiba_acpi_dev*)* @toshiba_acpi_enable_hotkeys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @toshiba_acpi_enable_hotkeys(%struct.toshiba_acpi_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.toshiba_acpi_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.toshiba_acpi_dev* %0, %struct.toshiba_acpi_dev** %3, align 8
  %6 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %3, align 8
  %7 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %6, i32 0, i32 2
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @acpi_evaluate_object(i32 %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* null, i32* null)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i64 @ACPI_FAILURE(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %54

18:                                               ; preds = %1
  %19 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %3, align 8
  %20 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %18
  %24 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %3, align 8
  %25 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %3, align 8
  %30 = load i32, i32* @HCI_HOTKEY_EVENT, align 4
  %31 = load i32, i32* @HCI_HOTKEY_SPECIAL_FUNCTIONS, align 4
  %32 = call i64 @hci_write(%struct.toshiba_acpi_dev* %29, i32 %30, i32 %31)
  store i64 %32, i64* %5, align 8
  br label %38

33:                                               ; preds = %23, %18
  %34 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %3, align 8
  %35 = load i32, i32* @HCI_HOTKEY_EVENT, align 4
  %36 = load i32, i32* @HCI_HOTKEY_ENABLE, align 4
  %37 = call i64 @hci_write(%struct.toshiba_acpi_dev* %34, i32 %35, i32 %36)
  store i64 %37, i64* %5, align 8
  br label %38

38:                                               ; preds = %33, %28
  %39 = load i64, i64* %5, align 8
  %40 = load i64, i64* @TOS_FAILURE, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load i32, i32* @EIO, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %54

45:                                               ; preds = %38
  %46 = load i64, i64* %5, align 8
  %47 = load i64, i64* @TOS_NOT_SUPPORTED, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load i32, i32* @ENODEV, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %2, align 4
  br label %54

52:                                               ; preds = %45
  br label %53

53:                                               ; preds = %52
  store i32 0, i32* %2, align 4
  br label %54

54:                                               ; preds = %53, %49, %42, %15
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i32 @acpi_evaluate_object(i32, i8*, i32*, i32*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i64 @hci_write(%struct.toshiba_acpi_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
