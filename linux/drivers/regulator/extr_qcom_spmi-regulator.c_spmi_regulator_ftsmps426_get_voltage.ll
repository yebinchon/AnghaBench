; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_qcom_spmi-regulator.c_spmi_regulator_ftsmps426_get_voltage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_qcom_spmi-regulator.c_spmi_regulator_ftsmps426_get_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.spmi_regulator = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.spmi_voltage_range* }
%struct.spmi_voltage_range = type { i32, i32 }

@SPMI_FTSMPS426_REG_VOLTAGE_LSB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*)* @spmi_regulator_ftsmps426_get_voltage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spmi_regulator_ftsmps426_get_voltage(%struct.regulator_dev* %0) #0 {
  %2 = alloca %struct.regulator_dev*, align 8
  %3 = alloca %struct.spmi_regulator*, align 8
  %4 = alloca %struct.spmi_voltage_range*, align 8
  %5 = alloca [2 x i64], align 16
  %6 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %2, align 8
  %7 = load %struct.regulator_dev*, %struct.regulator_dev** %2, align 8
  %8 = call %struct.spmi_regulator* @rdev_get_drvdata(%struct.regulator_dev* %7)
  store %struct.spmi_regulator* %8, %struct.spmi_regulator** %3, align 8
  %9 = load %struct.spmi_regulator*, %struct.spmi_regulator** %3, align 8
  %10 = load i32, i32* @SPMI_FTSMPS426_REG_VOLTAGE_LSB, align 4
  %11 = getelementptr inbounds [2 x i64], [2 x i64]* %5, i64 0, i64 0
  %12 = call i32 @spmi_vreg_read(%struct.spmi_regulator* %9, i32 %10, i64* %11, i32 2)
  %13 = getelementptr inbounds [2 x i64], [2 x i64]* %5, i64 0, i64 1
  %14 = load i64, i64* %13, align 8
  %15 = trunc i64 %14 to i32
  %16 = shl i32 %15, 8
  %17 = getelementptr inbounds [2 x i64], [2 x i64]* %5, i64 0, i64 0
  %18 = load i64, i64* %17, align 16
  %19 = trunc i64 %18 to i32
  %20 = or i32 %16, %19
  %21 = mul i32 %20, 1000
  store i32 %21, i32* %6, align 4
  %22 = load %struct.spmi_regulator*, %struct.spmi_regulator** %3, align 8
  %23 = getelementptr inbounds %struct.spmi_regulator, %struct.spmi_regulator* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load %struct.spmi_voltage_range*, %struct.spmi_voltage_range** %25, align 8
  store %struct.spmi_voltage_range* %26, %struct.spmi_voltage_range** %4, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.spmi_voltage_range*, %struct.spmi_voltage_range** %4, align 8
  %29 = getelementptr inbounds %struct.spmi_voltage_range, %struct.spmi_voltage_range* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = sub nsw i32 %27, %30
  %32 = load %struct.spmi_voltage_range*, %struct.spmi_voltage_range** %4, align 8
  %33 = getelementptr inbounds %struct.spmi_voltage_range, %struct.spmi_voltage_range* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = sdiv i32 %31, %34
  ret i32 %35
}

declare dso_local %struct.spmi_regulator* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @spmi_vreg_read(%struct.spmi_regulator*, i32, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
