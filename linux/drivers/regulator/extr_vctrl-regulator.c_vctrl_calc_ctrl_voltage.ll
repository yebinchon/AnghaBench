; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_vctrl-regulator.c_vctrl_calc_ctrl_voltage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_vctrl-regulator.c_vctrl_calc_ctrl_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vctrl_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.vctrl_voltage_range, %struct.vctrl_voltage_range }
%struct.vctrl_voltage_range = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vctrl_data*, i32)* @vctrl_calc_ctrl_voltage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vctrl_calc_ctrl_voltage(%struct.vctrl_data* %0, i32 %1) #0 {
  %3 = alloca %struct.vctrl_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vctrl_voltage_range*, align 8
  %6 = alloca %struct.vctrl_voltage_range*, align 8
  store %struct.vctrl_data* %0, %struct.vctrl_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.vctrl_data*, %struct.vctrl_data** %3, align 8
  %8 = getelementptr inbounds %struct.vctrl_data, %struct.vctrl_data* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  store %struct.vctrl_voltage_range* %9, %struct.vctrl_voltage_range** %5, align 8
  %10 = load %struct.vctrl_data*, %struct.vctrl_data** %3, align 8
  %11 = getelementptr inbounds %struct.vctrl_data, %struct.vctrl_data* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.vctrl_voltage_range* %12, %struct.vctrl_voltage_range** %6, align 8
  %13 = load %struct.vctrl_voltage_range*, %struct.vctrl_voltage_range** %5, align 8
  %14 = getelementptr inbounds %struct.vctrl_voltage_range, %struct.vctrl_voltage_range* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.vctrl_voltage_range*, %struct.vctrl_voltage_range** %6, align 8
  %18 = getelementptr inbounds %struct.vctrl_voltage_range, %struct.vctrl_voltage_range* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = sub nsw i32 %16, %19
  %21 = load %struct.vctrl_voltage_range*, %struct.vctrl_voltage_range** %5, align 8
  %22 = getelementptr inbounds %struct.vctrl_voltage_range, %struct.vctrl_voltage_range* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.vctrl_voltage_range*, %struct.vctrl_voltage_range** %5, align 8
  %25 = getelementptr inbounds %struct.vctrl_voltage_range, %struct.vctrl_voltage_range* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = sub nsw i32 %23, %26
  %28 = mul nsw i32 %20, %27
  %29 = load %struct.vctrl_voltage_range*, %struct.vctrl_voltage_range** %6, align 8
  %30 = getelementptr inbounds %struct.vctrl_voltage_range, %struct.vctrl_voltage_range* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.vctrl_voltage_range*, %struct.vctrl_voltage_range** %6, align 8
  %33 = getelementptr inbounds %struct.vctrl_voltage_range, %struct.vctrl_voltage_range* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = sub nsw i32 %31, %34
  %36 = call i32 @DIV_ROUND_CLOSEST_ULL(i32 %28, i32 %35)
  %37 = add nsw i32 %15, %36
  ret i32 %37
}

declare dso_local i32 @DIV_ROUND_CLOSEST_ULL(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
