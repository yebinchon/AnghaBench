; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_qcom_spmi-regulator.c_spmi_calculate_num_voltages.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_qcom_spmi-regulator.c_spmi_calculate_num_voltages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spmi_voltage_set_points = type { i32, i32, %struct.spmi_voltage_range* }
%struct.spmi_voltage_range = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spmi_voltage_set_points*)* @spmi_calculate_num_voltages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spmi_calculate_num_voltages(%struct.spmi_voltage_set_points* %0) #0 {
  %2 = alloca %struct.spmi_voltage_set_points*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.spmi_voltage_range*, align 8
  store %struct.spmi_voltage_set_points* %0, %struct.spmi_voltage_set_points** %2, align 8
  %5 = load %struct.spmi_voltage_set_points*, %struct.spmi_voltage_set_points** %2, align 8
  %6 = getelementptr inbounds %struct.spmi_voltage_set_points, %struct.spmi_voltage_set_points* %5, i32 0, i32 2
  %7 = load %struct.spmi_voltage_range*, %struct.spmi_voltage_range** %6, align 8
  store %struct.spmi_voltage_range* %7, %struct.spmi_voltage_range** %4, align 8
  br label %8

8:                                                ; preds = %47, %1
  %9 = load %struct.spmi_voltage_range*, %struct.spmi_voltage_range** %4, align 8
  %10 = load %struct.spmi_voltage_set_points*, %struct.spmi_voltage_set_points** %2, align 8
  %11 = getelementptr inbounds %struct.spmi_voltage_set_points, %struct.spmi_voltage_set_points* %10, i32 0, i32 2
  %12 = load %struct.spmi_voltage_range*, %struct.spmi_voltage_range** %11, align 8
  %13 = load %struct.spmi_voltage_set_points*, %struct.spmi_voltage_set_points** %2, align 8
  %14 = getelementptr inbounds %struct.spmi_voltage_set_points, %struct.spmi_voltage_set_points* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.spmi_voltage_range, %struct.spmi_voltage_range* %12, i64 %16
  %18 = icmp ult %struct.spmi_voltage_range* %9, %17
  br i1 %18, label %19, label %50

19:                                               ; preds = %8
  store i32 0, i32* %3, align 4
  %20 = load %struct.spmi_voltage_range*, %struct.spmi_voltage_range** %4, align 8
  %21 = getelementptr inbounds %struct.spmi_voltage_range, %struct.spmi_voltage_range* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %38

24:                                               ; preds = %19
  %25 = load %struct.spmi_voltage_range*, %struct.spmi_voltage_range** %4, align 8
  %26 = getelementptr inbounds %struct.spmi_voltage_range, %struct.spmi_voltage_range* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.spmi_voltage_range*, %struct.spmi_voltage_range** %4, align 8
  %29 = getelementptr inbounds %struct.spmi_voltage_range, %struct.spmi_voltage_range* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = sub i32 %27, %30
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* %3, align 4
  %33 = load %struct.spmi_voltage_range*, %struct.spmi_voltage_range** %4, align 8
  %34 = getelementptr inbounds %struct.spmi_voltage_range, %struct.spmi_voltage_range* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = udiv i32 %32, %35
  %37 = add i32 %36, 1
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %24, %19
  %39 = load i32, i32* %3, align 4
  %40 = load %struct.spmi_voltage_range*, %struct.spmi_voltage_range** %4, align 8
  %41 = getelementptr inbounds %struct.spmi_voltage_range, %struct.spmi_voltage_range* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* %3, align 4
  %43 = load %struct.spmi_voltage_set_points*, %struct.spmi_voltage_set_points** %2, align 8
  %44 = getelementptr inbounds %struct.spmi_voltage_set_points, %struct.spmi_voltage_set_points* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = add i32 %45, %42
  store i32 %46, i32* %44, align 4
  br label %47

47:                                               ; preds = %38
  %48 = load %struct.spmi_voltage_range*, %struct.spmi_voltage_range** %4, align 8
  %49 = getelementptr inbounds %struct.spmi_voltage_range, %struct.spmi_voltage_range* %48, i32 1
  store %struct.spmi_voltage_range* %49, %struct.spmi_voltage_range** %4, align 8
  br label %8

50:                                               ; preds = %8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
