; ModuleID = '/home/carl/AnghaBench/linux/drivers/sh/clk/extr_core.c_clk_rate_table_build.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/sh/clk/extr_core.c_clk_rate_table_build.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.cpufreq_frequency_table = type { i32, i64 }
%struct.clk_div_mult_table = type { i64*, i32, i64*, i32 }

@CPUFREQ_ENTRY_INVALID = common dso_local global i64 0, align 8
@CPUFREQ_TABLE_END = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clk_rate_table_build(%struct.clk* %0, %struct.cpufreq_frequency_table* %1, i32 %2, %struct.clk_div_mult_table* %3, i64* %4) #0 {
  %6 = alloca %struct.clk*, align 8
  %7 = alloca %struct.cpufreq_frequency_table*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.clk_div_mult_table*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.clk* %0, %struct.clk** %6, align 8
  store %struct.cpufreq_frequency_table* %1, %struct.cpufreq_frequency_table** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.clk_div_mult_table* %3, %struct.clk_div_mult_table** %9, align 8
  store i64* %4, i64** %10, align 8
  %15 = load i32, i32* %8, align 4
  %16 = load %struct.clk*, %struct.clk** %6, align 8
  %17 = getelementptr inbounds %struct.clk, %struct.clk* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  store i32 0, i32* %14, align 4
  br label %18

18:                                               ; preds = %99, %5
  %19 = load i32, i32* %14, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %102

22:                                               ; preds = %18
  store i64 1, i64* %12, align 8
  store i64 1, i64* %11, align 8
  %23 = load %struct.clk_div_mult_table*, %struct.clk_div_mult_table** %9, align 8
  %24 = getelementptr inbounds %struct.clk_div_mult_table, %struct.clk_div_mult_table* %23, i32 0, i32 0
  %25 = load i64*, i64** %24, align 8
  %26 = icmp ne i64* %25, null
  br i1 %26, label %27, label %41

27:                                               ; preds = %22
  %28 = load i32, i32* %14, align 4
  %29 = load %struct.clk_div_mult_table*, %struct.clk_div_mult_table** %9, align 8
  %30 = getelementptr inbounds %struct.clk_div_mult_table, %struct.clk_div_mult_table* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %27
  %34 = load %struct.clk_div_mult_table*, %struct.clk_div_mult_table** %9, align 8
  %35 = getelementptr inbounds %struct.clk_div_mult_table, %struct.clk_div_mult_table* %34, i32 0, i32 0
  %36 = load i64*, i64** %35, align 8
  %37 = load i32, i32* %14, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i64, i64* %36, i64 %38
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %12, align 8
  br label %41

41:                                               ; preds = %33, %27, %22
  %42 = load %struct.clk_div_mult_table*, %struct.clk_div_mult_table** %9, align 8
  %43 = getelementptr inbounds %struct.clk_div_mult_table, %struct.clk_div_mult_table* %42, i32 0, i32 2
  %44 = load i64*, i64** %43, align 8
  %45 = icmp ne i64* %44, null
  br i1 %45, label %46, label %60

46:                                               ; preds = %41
  %47 = load i32, i32* %14, align 4
  %48 = load %struct.clk_div_mult_table*, %struct.clk_div_mult_table** %9, align 8
  %49 = getelementptr inbounds %struct.clk_div_mult_table, %struct.clk_div_mult_table* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = icmp slt i32 %47, %50
  br i1 %51, label %52, label %60

52:                                               ; preds = %46
  %53 = load %struct.clk_div_mult_table*, %struct.clk_div_mult_table** %9, align 8
  %54 = getelementptr inbounds %struct.clk_div_mult_table, %struct.clk_div_mult_table* %53, i32 0, i32 2
  %55 = load i64*, i64** %54, align 8
  %56 = load i32, i32* %14, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i64, i64* %55, i64 %57
  %59 = load i64, i64* %58, align 8
  store i64 %59, i64* %11, align 8
  br label %60

60:                                               ; preds = %52, %46, %41
  %61 = load i64, i64* %12, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %74

63:                                               ; preds = %60
  %64 = load i64, i64* %11, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %63
  %67 = load i64*, i64** %10, align 8
  %68 = icmp ne i64* %67, null
  br i1 %68, label %69, label %76

69:                                               ; preds = %66
  %70 = load i32, i32* %14, align 4
  %71 = load i64*, i64** %10, align 8
  %72 = call i32 @test_bit(i32 %70, i64* %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %76, label %74

74:                                               ; preds = %69, %63, %60
  %75 = load i64, i64* @CPUFREQ_ENTRY_INVALID, align 8
  store i64 %75, i64* %13, align 8
  br label %86

76:                                               ; preds = %69, %66
  %77 = load %struct.clk*, %struct.clk** %6, align 8
  %78 = getelementptr inbounds %struct.clk, %struct.clk* %77, i32 0, i32 1
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* %11, align 8
  %83 = mul i64 %81, %82
  %84 = load i64, i64* %12, align 8
  %85 = udiv i64 %83, %84
  store i64 %85, i64* %13, align 8
  br label %86

86:                                               ; preds = %76, %74
  %87 = load i32, i32* %14, align 4
  %88 = load %struct.cpufreq_frequency_table*, %struct.cpufreq_frequency_table** %7, align 8
  %89 = load i32, i32* %14, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %88, i64 %90
  %92 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %91, i32 0, i32 0
  store i32 %87, i32* %92, align 8
  %93 = load i64, i64* %13, align 8
  %94 = load %struct.cpufreq_frequency_table*, %struct.cpufreq_frequency_table** %7, align 8
  %95 = load i32, i32* %14, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %94, i64 %96
  %98 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %97, i32 0, i32 1
  store i64 %93, i64* %98, align 8
  br label %99

99:                                               ; preds = %86
  %100 = load i32, i32* %14, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %14, align 4
  br label %18

102:                                              ; preds = %18
  %103 = load i32, i32* %14, align 4
  %104 = load %struct.cpufreq_frequency_table*, %struct.cpufreq_frequency_table** %7, align 8
  %105 = load i32, i32* %14, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %104, i64 %106
  %108 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %107, i32 0, i32 0
  store i32 %103, i32* %108, align 8
  %109 = load i64, i64* @CPUFREQ_TABLE_END, align 8
  %110 = load %struct.cpufreq_frequency_table*, %struct.cpufreq_frequency_table** %7, align 8
  %111 = load i32, i32* %14, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %110, i64 %112
  %114 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %113, i32 0, i32 1
  store i64 %109, i64* %114, align 8
  ret void
}

declare dso_local i32 @test_bit(i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
