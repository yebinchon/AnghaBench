; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/chrome/extr_chromeos_tbmc.c_chromeos_tbmc_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/chrome/extr_chromeos_tbmc.c_chromeos_tbmc_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { %struct.input_dev*, %struct.device }
%struct.input_dev = type { i8*, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i64, i32 }
%struct.device = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Tablet Mode Switch\00", align 1
@BUS_HOST = common dso_local global i32 0, align 4
@chromeos_tbmc_open = common dso_local global i32 0, align 4
@EV_SW = common dso_local global i32 0, align 4
@SW_TABLET_MODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"cannot register input device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_device*)* @chromeos_tbmc_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chromeos_tbmc_add(%struct.acpi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_device*, align 8
  %4 = alloca %struct.input_dev*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  store %struct.acpi_device* %0, %struct.acpi_device** %3, align 8
  %7 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %8 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %7, i32 0, i32 1
  store %struct.device* %8, %struct.device** %5, align 8
  %9 = load %struct.device*, %struct.device** %5, align 8
  %10 = call %struct.input_dev* @devm_input_allocate_device(%struct.device* %9)
  store %struct.input_dev* %10, %struct.input_dev** %4, align 8
  %11 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %12 = icmp ne %struct.input_dev* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %57

16:                                               ; preds = %1
  %17 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %18 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %17, i32 0, i32 0
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8** %18, align 8
  %19 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %20 = call i32 @acpi_device_hid(%struct.acpi_device* %19)
  %21 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %22 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %21, i32 0, i32 3
  store i32 %20, i32* %22, align 8
  %23 = load i32, i32* @BUS_HOST, align 4
  %24 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %25 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 2
  store i32 %23, i32* %26, align 8
  %27 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %28 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i32 1, i32* %29, align 8
  %30 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %31 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  store i64 0, i64* %32, align 8
  %33 = load i32, i32* @chromeos_tbmc_open, align 4
  %34 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %35 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 8
  %36 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %37 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %38 = call i32 @input_set_drvdata(%struct.input_dev* %36, %struct.acpi_device* %37)
  %39 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %40 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %41 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %40, i32 0, i32 0
  store %struct.input_dev* %39, %struct.input_dev** %41, align 8
  %42 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %43 = load i32, i32* @EV_SW, align 4
  %44 = load i32, i32* @SW_TABLET_MODE, align 4
  %45 = call i32 @input_set_capability(%struct.input_dev* %42, i32 %43, i32 %44)
  %46 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %47 = call i32 @input_register_device(%struct.input_dev* %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %16
  %51 = load %struct.device*, %struct.device** %5, align 8
  %52 = call i32 @dev_err(%struct.device* %51, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %53 = load i32, i32* %6, align 4
  store i32 %53, i32* %2, align 4
  br label %57

54:                                               ; preds = %16
  %55 = load %struct.device*, %struct.device** %5, align 8
  %56 = call i32 @device_init_wakeup(%struct.device* %55, i32 1)
  store i32 0, i32* %2, align 4
  br label %57

57:                                               ; preds = %54, %50, %13
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local %struct.input_dev* @devm_input_allocate_device(%struct.device*) #1

declare dso_local i32 @acpi_device_hid(%struct.acpi_device*) #1

declare dso_local i32 @input_set_drvdata(%struct.input_dev*, %struct.acpi_device*) #1

declare dso_local i32 @input_set_capability(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @device_init_wakeup(%struct.device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
