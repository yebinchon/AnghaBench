; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_qcom_spmi-regulator.c_spmi_sw_selector_to_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_qcom_spmi-regulator.c_spmi_sw_selector_to_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spmi_regulator = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.spmi_voltage_range* }
%struct.spmi_voltage_range = type { i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spmi_regulator*, i32, i32*, i32*)* @spmi_sw_selector_to_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spmi_sw_selector_to_hw(%struct.spmi_regulator* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.spmi_regulator*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.spmi_voltage_range*, align 8
  %11 = alloca %struct.spmi_voltage_range*, align 8
  %12 = alloca i32, align 4
  store %struct.spmi_regulator* %0, %struct.spmi_regulator** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load %struct.spmi_regulator*, %struct.spmi_regulator** %6, align 8
  %14 = getelementptr inbounds %struct.spmi_regulator, %struct.spmi_regulator* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load %struct.spmi_voltage_range*, %struct.spmi_voltage_range** %16, align 8
  store %struct.spmi_voltage_range* %17, %struct.spmi_voltage_range** %10, align 8
  %18 = load %struct.spmi_voltage_range*, %struct.spmi_voltage_range** %10, align 8
  %19 = load %struct.spmi_regulator*, %struct.spmi_regulator** %6, align 8
  %20 = getelementptr inbounds %struct.spmi_regulator, %struct.spmi_regulator* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.spmi_voltage_range, %struct.spmi_voltage_range* %18, i64 %24
  store %struct.spmi_voltage_range* %25, %struct.spmi_voltage_range** %11, align 8
  br label %26

26:                                               ; preds = %63, %4
  %27 = load %struct.spmi_voltage_range*, %struct.spmi_voltage_range** %10, align 8
  %28 = load %struct.spmi_voltage_range*, %struct.spmi_voltage_range** %11, align 8
  %29 = icmp ult %struct.spmi_voltage_range* %27, %28
  br i1 %29, label %30, label %66

30:                                               ; preds = %26
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.spmi_voltage_range*, %struct.spmi_voltage_range** %10, align 8
  %33 = getelementptr inbounds %struct.spmi_voltage_range, %struct.spmi_voltage_range* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ult i32 %31, %34
  br i1 %35, label %36, label %57

36:                                               ; preds = %30
  %37 = load %struct.spmi_voltage_range*, %struct.spmi_voltage_range** %10, align 8
  %38 = getelementptr inbounds %struct.spmi_voltage_range, %struct.spmi_voltage_range* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.spmi_voltage_range*, %struct.spmi_voltage_range** %10, align 8
  %41 = getelementptr inbounds %struct.spmi_voltage_range, %struct.spmi_voltage_range* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = sub i32 %39, %42
  store i32 %43, i32* %12, align 4
  %44 = load %struct.spmi_voltage_range*, %struct.spmi_voltage_range** %10, align 8
  %45 = getelementptr inbounds %struct.spmi_voltage_range, %struct.spmi_voltage_range* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %12, align 4
  %48 = udiv i32 %47, %46
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %12, align 4
  %51 = add i32 %49, %50
  %52 = load i32*, i32** %9, align 8
  store i32 %51, i32* %52, align 4
  %53 = load %struct.spmi_voltage_range*, %struct.spmi_voltage_range** %10, align 8
  %54 = getelementptr inbounds %struct.spmi_voltage_range, %struct.spmi_voltage_range* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = load i32*, i32** %8, align 8
  store i32 %55, i32* %56, align 4
  store i32 0, i32* %5, align 4
  br label %69

57:                                               ; preds = %30
  %58 = load %struct.spmi_voltage_range*, %struct.spmi_voltage_range** %10, align 8
  %59 = getelementptr inbounds %struct.spmi_voltage_range, %struct.spmi_voltage_range* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %7, align 4
  %62 = sub i32 %61, %60
  store i32 %62, i32* %7, align 4
  br label %63

63:                                               ; preds = %57
  %64 = load %struct.spmi_voltage_range*, %struct.spmi_voltage_range** %10, align 8
  %65 = getelementptr inbounds %struct.spmi_voltage_range, %struct.spmi_voltage_range* %64, i32 1
  store %struct.spmi_voltage_range* %65, %struct.spmi_voltage_range** %10, align 8
  br label %26

66:                                               ; preds = %26
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %5, align 4
  br label %69

69:                                               ; preds = %66, %36
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
