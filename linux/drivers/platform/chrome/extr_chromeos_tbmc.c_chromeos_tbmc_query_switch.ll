; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/chrome/extr_chromeos_tbmc.c_chromeos_tbmc_query_switch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/chrome/extr_chromeos_tbmc.c_chromeos_tbmc_query_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { i32 }
%struct.input_dev = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"TBMC\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@SW_TABLET_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_device*, %struct.input_dev*)* @chromeos_tbmc_query_switch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chromeos_tbmc_query_switch(%struct.acpi_device* %0, %struct.input_dev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_device*, align 8
  %5 = alloca %struct.input_dev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.acpi_device* %0, %struct.acpi_device** %4, align 8
  store %struct.input_dev* %1, %struct.input_dev** %5, align 8
  %8 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %9 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @acpi_evaluate_integer(i32 %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* null, i64* %6)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = call i64 @ACPI_FAILURE(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %25

18:                                               ; preds = %2
  %19 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %20 = load i32, i32* @SW_TABLET_MODE, align 4
  %21 = load i64, i64* %6, align 8
  %22 = call i32 @input_report_switch(%struct.input_dev* %19, i32 %20, i64 %21)
  %23 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %24 = call i32 @input_sync(%struct.input_dev* %23)
  store i32 0, i32* %3, align 4
  br label %25

25:                                               ; preds = %18, %15
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i32 @acpi_evaluate_integer(i32, i8*, i32*, i64*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @input_report_switch(%struct.input_dev*, i32, i64) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
