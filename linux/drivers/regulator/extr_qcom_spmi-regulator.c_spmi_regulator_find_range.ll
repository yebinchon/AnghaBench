; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_qcom_spmi-regulator.c_spmi_regulator_find_range.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_qcom_spmi-regulator.c_spmi_regulator_find_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spmi_voltage_range = type { i64 }
%struct.spmi_regulator = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.spmi_voltage_range* }

@SPMI_COMMON_REG_VOLTAGE_RANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.spmi_voltage_range* (%struct.spmi_regulator*)* @spmi_regulator_find_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.spmi_voltage_range* @spmi_regulator_find_range(%struct.spmi_regulator* %0) #0 {
  %2 = alloca %struct.spmi_voltage_range*, align 8
  %3 = alloca %struct.spmi_regulator*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.spmi_voltage_range*, align 8
  %6 = alloca %struct.spmi_voltage_range*, align 8
  store %struct.spmi_regulator* %0, %struct.spmi_regulator** %3, align 8
  %7 = load %struct.spmi_regulator*, %struct.spmi_regulator** %3, align 8
  %8 = getelementptr inbounds %struct.spmi_regulator, %struct.spmi_regulator* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load %struct.spmi_voltage_range*, %struct.spmi_voltage_range** %10, align 8
  store %struct.spmi_voltage_range* %11, %struct.spmi_voltage_range** %5, align 8
  %12 = load %struct.spmi_voltage_range*, %struct.spmi_voltage_range** %5, align 8
  %13 = load %struct.spmi_regulator*, %struct.spmi_regulator** %3, align 8
  %14 = getelementptr inbounds %struct.spmi_regulator, %struct.spmi_regulator* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.spmi_voltage_range, %struct.spmi_voltage_range* %12, i64 %18
  store %struct.spmi_voltage_range* %19, %struct.spmi_voltage_range** %6, align 8
  %20 = load %struct.spmi_regulator*, %struct.spmi_regulator** %3, align 8
  %21 = load i32, i32* @SPMI_COMMON_REG_VOLTAGE_RANGE, align 4
  %22 = call i32 @spmi_vreg_read(%struct.spmi_regulator* %20, i32 %21, i64* %4, i32 1)
  br label %23

23:                                               ; preds = %36, %1
  %24 = load %struct.spmi_voltage_range*, %struct.spmi_voltage_range** %5, align 8
  %25 = load %struct.spmi_voltage_range*, %struct.spmi_voltage_range** %6, align 8
  %26 = icmp ult %struct.spmi_voltage_range* %24, %25
  br i1 %26, label %27, label %39

27:                                               ; preds = %23
  %28 = load %struct.spmi_voltage_range*, %struct.spmi_voltage_range** %5, align 8
  %29 = getelementptr inbounds %struct.spmi_voltage_range, %struct.spmi_voltage_range* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %4, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load %struct.spmi_voltage_range*, %struct.spmi_voltage_range** %5, align 8
  store %struct.spmi_voltage_range* %34, %struct.spmi_voltage_range** %2, align 8
  br label %40

35:                                               ; preds = %27
  br label %36

36:                                               ; preds = %35
  %37 = load %struct.spmi_voltage_range*, %struct.spmi_voltage_range** %5, align 8
  %38 = getelementptr inbounds %struct.spmi_voltage_range, %struct.spmi_voltage_range* %37, i32 1
  store %struct.spmi_voltage_range* %38, %struct.spmi_voltage_range** %5, align 8
  br label %23

39:                                               ; preds = %23
  store %struct.spmi_voltage_range* null, %struct.spmi_voltage_range** %2, align 8
  br label %40

40:                                               ; preds = %39, %33
  %41 = load %struct.spmi_voltage_range*, %struct.spmi_voltage_range** %2, align 8
  ret %struct.spmi_voltage_range* %41
}

declare dso_local i32 @spmi_vreg_read(%struct.spmi_regulator*, i32, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
