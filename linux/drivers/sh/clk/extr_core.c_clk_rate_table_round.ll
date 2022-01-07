; ModuleID = '/home/carl/AnghaBench/linux/drivers/sh/clk/extr_core.c_clk_rate_table_round.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/sh/clk/extr_core.c_clk_rate_table_round.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32 }
%struct.cpufreq_frequency_table = type { i32 }
%struct.clk_rate_round_data = type { i32, i64, %struct.cpufreq_frequency_table*, i32, i32 }

@clk_rate_table_iter = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @clk_rate_table_round(%struct.clk* %0, %struct.cpufreq_frequency_table* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.clk*, align 8
  %6 = alloca %struct.cpufreq_frequency_table*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.clk_rate_round_data, align 8
  store %struct.clk* %0, %struct.clk** %5, align 8
  store %struct.cpufreq_frequency_table* %1, %struct.cpufreq_frequency_table** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = getelementptr inbounds %struct.clk_rate_round_data, %struct.clk_rate_round_data* %8, i32 0, i32 0
  %10 = load %struct.clk*, %struct.clk** %5, align 8
  %11 = getelementptr inbounds %struct.clk, %struct.clk* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = sub nsw i32 %12, 1
  store i32 %13, i32* %9, align 8
  %14 = getelementptr inbounds %struct.clk_rate_round_data, %struct.clk_rate_round_data* %8, i32 0, i32 1
  %15 = load i64, i64* %7, align 8
  store i64 %15, i64* %14, align 8
  %16 = getelementptr inbounds %struct.clk_rate_round_data, %struct.clk_rate_round_data* %8, i32 0, i32 2
  %17 = load %struct.cpufreq_frequency_table*, %struct.cpufreq_frequency_table** %6, align 8
  store %struct.cpufreq_frequency_table* %17, %struct.cpufreq_frequency_table** %16, align 8
  %18 = getelementptr inbounds %struct.clk_rate_round_data, %struct.clk_rate_round_data* %8, i32 0, i32 3
  %19 = load i32, i32* @clk_rate_table_iter, align 4
  store i32 %19, i32* %18, align 8
  %20 = getelementptr inbounds %struct.clk_rate_round_data, %struct.clk_rate_round_data* %8, i32 0, i32 4
  store i32 0, i32* %20, align 4
  %21 = load %struct.clk*, %struct.clk** %5, align 8
  %22 = getelementptr inbounds %struct.clk, %struct.clk* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp slt i32 %23, 1
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load i64, i64* @ENOSYS, align 8
  %27 = sub nsw i64 0, %26
  store i64 %27, i64* %4, align 8
  br label %30

28:                                               ; preds = %3
  %29 = call i64 @clk_rate_round_helper(%struct.clk_rate_round_data* %8)
  store i64 %29, i64* %4, align 8
  br label %30

30:                                               ; preds = %28, %25
  %31 = load i64, i64* %4, align 8
  ret i64 %31
}

declare dso_local i64 @clk_rate_round_helper(%struct.clk_rate_round_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
