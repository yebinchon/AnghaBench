; ModuleID = '/home/carl/AnghaBench/linux/drivers/perf/extr_fsl_imx8_ddr_perf.c_ddr_perf_counter_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/perf/extr_fsl_imx8_ddr_perf.c_ddr_perf_counter_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ddr_pmu = type { i64 }

@COUNTER_CNTL = common dso_local global i64 0, align 8
@CNTL_EN = common dso_local global i32 0, align 4
@CNTL_CLEAR = common dso_local global i32 0, align 4
@CNTL_CSV_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ddr_pmu*, i32, i32, i32)* @ddr_perf_counter_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ddr_perf_counter_enable(%struct.ddr_pmu* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ddr_pmu*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.ddr_pmu* %0, %struct.ddr_pmu** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %7, align 4
  %12 = mul nsw i32 %11, 4
  %13 = sext i32 %12 to i64
  %14 = load i64, i64* @COUNTER_CNTL, align 8
  %15 = add nsw i64 %13, %14
  store i64 %15, i64* %9, align 8
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %40

18:                                               ; preds = %4
  %19 = load %struct.ddr_pmu*, %struct.ddr_pmu** %5, align 8
  %20 = getelementptr inbounds %struct.ddr_pmu, %struct.ddr_pmu* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* %9, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @writel(i32 0, i64 %23)
  %25 = load i32, i32* @CNTL_EN, align 4
  %26 = load i32, i32* @CNTL_CLEAR, align 4
  %27 = or i32 %25, %26
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* @CNTL_CSV_MASK, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @FIELD_PREP(i32 %28, i32 %29)
  %31 = load i32, i32* %10, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = load %struct.ddr_pmu*, %struct.ddr_pmu** %5, align 8
  %35 = getelementptr inbounds %struct.ddr_pmu, %struct.ddr_pmu* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %9, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @writel(i32 %33, i64 %38)
  br label %47

40:                                               ; preds = %4
  %41 = load %struct.ddr_pmu*, %struct.ddr_pmu** %5, align 8
  %42 = getelementptr inbounds %struct.ddr_pmu, %struct.ddr_pmu* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %9, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @writel(i32 0, i64 %45)
  br label %47

47:                                               ; preds = %40, %18
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @FIELD_PREP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
