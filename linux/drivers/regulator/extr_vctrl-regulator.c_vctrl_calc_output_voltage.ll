; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_vctrl-regulator.c_vctrl_calc_output_voltage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_vctrl-regulator.c_vctrl_calc_output_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vctrl_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.vctrl_voltage_range, %struct.vctrl_voltage_range }
%struct.vctrl_voltage_range = type { i32, i32 }

@.str = private unnamed_addr constant [38 x i8] c"vctrl: failed to get control voltage\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vctrl_data*, i32)* @vctrl_calc_output_voltage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vctrl_calc_output_voltage(%struct.vctrl_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vctrl_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vctrl_voltage_range*, align 8
  %7 = alloca %struct.vctrl_voltage_range*, align 8
  store %struct.vctrl_data* %0, %struct.vctrl_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.vctrl_data*, %struct.vctrl_data** %4, align 8
  %9 = getelementptr inbounds %struct.vctrl_data, %struct.vctrl_data* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  store %struct.vctrl_voltage_range* %10, %struct.vctrl_voltage_range** %6, align 8
  %11 = load %struct.vctrl_data*, %struct.vctrl_data** %4, align 8
  %12 = getelementptr inbounds %struct.vctrl_data, %struct.vctrl_data* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store %struct.vctrl_voltage_range* %13, %struct.vctrl_voltage_range** %7, align 8
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = call i32 @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* %5, align 4
  store i32 %18, i32* %3, align 4
  br label %65

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.vctrl_voltage_range*, %struct.vctrl_voltage_range** %6, align 8
  %22 = getelementptr inbounds %struct.vctrl_voltage_range, %struct.vctrl_voltage_range* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %19
  %26 = load %struct.vctrl_voltage_range*, %struct.vctrl_voltage_range** %7, align 8
  %27 = getelementptr inbounds %struct.vctrl_voltage_range, %struct.vctrl_voltage_range* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %3, align 4
  br label %65

29:                                               ; preds = %19
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.vctrl_voltage_range*, %struct.vctrl_voltage_range** %6, align 8
  %32 = getelementptr inbounds %struct.vctrl_voltage_range, %struct.vctrl_voltage_range* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp sgt i32 %30, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = load %struct.vctrl_voltage_range*, %struct.vctrl_voltage_range** %7, align 8
  %37 = getelementptr inbounds %struct.vctrl_voltage_range, %struct.vctrl_voltage_range* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %3, align 4
  br label %65

39:                                               ; preds = %29
  %40 = load %struct.vctrl_voltage_range*, %struct.vctrl_voltage_range** %7, align 8
  %41 = getelementptr inbounds %struct.vctrl_voltage_range, %struct.vctrl_voltage_range* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %5, align 4
  %44 = load %struct.vctrl_voltage_range*, %struct.vctrl_voltage_range** %6, align 8
  %45 = getelementptr inbounds %struct.vctrl_voltage_range, %struct.vctrl_voltage_range* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = sub nsw i32 %43, %46
  %48 = load %struct.vctrl_voltage_range*, %struct.vctrl_voltage_range** %7, align 8
  %49 = getelementptr inbounds %struct.vctrl_voltage_range, %struct.vctrl_voltage_range* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.vctrl_voltage_range*, %struct.vctrl_voltage_range** %7, align 8
  %52 = getelementptr inbounds %struct.vctrl_voltage_range, %struct.vctrl_voltage_range* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = sub nsw i32 %50, %53
  %55 = mul nsw i32 %47, %54
  %56 = load %struct.vctrl_voltage_range*, %struct.vctrl_voltage_range** %6, align 8
  %57 = getelementptr inbounds %struct.vctrl_voltage_range, %struct.vctrl_voltage_range* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.vctrl_voltage_range*, %struct.vctrl_voltage_range** %6, align 8
  %60 = getelementptr inbounds %struct.vctrl_voltage_range, %struct.vctrl_voltage_range* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = sub nsw i32 %58, %61
  %63 = call i32 @DIV_ROUND_CLOSEST_ULL(i32 %55, i32 %62)
  %64 = add nsw i32 %42, %63
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %39, %35, %25, %16
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @DIV_ROUND_CLOSEST_ULL(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
