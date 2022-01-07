; ModuleID = '/home/carl/AnghaBench/linux/drivers/sh/clk/extr_core.c_clk_rate_table_iter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/sh/clk/extr_core.c_clk_rate_table_iter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_rate_round_data = type { %struct.cpufreq_frequency_table* }
%struct.cpufreq_frequency_table = type { i64 }

@CPUFREQ_ENTRY_INVALID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, %struct.clk_rate_round_data*)* @clk_rate_table_iter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @clk_rate_table_iter(i32 %0, %struct.clk_rate_round_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clk_rate_round_data*, align 8
  %5 = alloca %struct.cpufreq_frequency_table*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store %struct.clk_rate_round_data* %1, %struct.clk_rate_round_data** %4, align 8
  %7 = load %struct.clk_rate_round_data*, %struct.clk_rate_round_data** %4, align 8
  %8 = getelementptr inbounds %struct.clk_rate_round_data, %struct.clk_rate_round_data* %7, i32 0, i32 0
  %9 = load %struct.cpufreq_frequency_table*, %struct.cpufreq_frequency_table** %8, align 8
  store %struct.cpufreq_frequency_table* %9, %struct.cpufreq_frequency_table** %5, align 8
  %10 = load %struct.cpufreq_frequency_table*, %struct.cpufreq_frequency_table** %5, align 8
  %11 = load i32, i32* %3, align 4
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %10, i64 %12
  %14 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %6, align 8
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* @CPUFREQ_ENTRY_INVALID, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i64 0, i64* %6, align 8
  br label %20

20:                                               ; preds = %19, %2
  %21 = load i64, i64* %6, align 8
  ret i64 %21
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
