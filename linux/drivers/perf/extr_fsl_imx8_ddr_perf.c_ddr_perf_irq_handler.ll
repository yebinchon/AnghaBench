; ModuleID = '/home/carl/AnghaBench/linux/drivers/perf/extr_fsl_imx8_ddr_perf.c_ddr_perf_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/perf/extr_fsl_imx8_ddr_perf.c_ddr_perf_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ddr_pmu = type { %struct.perf_event** }
%struct.perf_event = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@EVENT_CYCLES_ID = common dso_local global i32 0, align 4
@EVENT_CYCLES_COUNTER = common dso_local global i64 0, align 8
@NUM_COUNTERS = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @ddr_perf_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ddr_perf_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ddr_pmu*, align 8
  %7 = alloca %struct.perf_event*, align 8
  %8 = alloca %struct.perf_event*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.ddr_pmu*
  store %struct.ddr_pmu* %10, %struct.ddr_pmu** %6, align 8
  store %struct.perf_event* null, %struct.perf_event** %8, align 8
  %11 = load %struct.ddr_pmu*, %struct.ddr_pmu** %6, align 8
  %12 = load i32, i32* @EVENT_CYCLES_ID, align 4
  %13 = load i64, i64* @EVENT_CYCLES_COUNTER, align 8
  %14 = call i32 @ddr_perf_counter_enable(%struct.ddr_pmu* %11, i32 %12, i64 %13, i32 0)
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %48, %2
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @NUM_COUNTERS, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %51

19:                                               ; preds = %15
  %20 = load %struct.ddr_pmu*, %struct.ddr_pmu** %6, align 8
  %21 = getelementptr inbounds %struct.ddr_pmu, %struct.ddr_pmu* %20, i32 0, i32 0
  %22 = load %struct.perf_event**, %struct.perf_event*** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.perf_event*, %struct.perf_event** %22, i64 %24
  %26 = load %struct.perf_event*, %struct.perf_event** %25, align 8
  %27 = icmp ne %struct.perf_event* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %19
  br label %48

29:                                               ; preds = %19
  %30 = load %struct.ddr_pmu*, %struct.ddr_pmu** %6, align 8
  %31 = getelementptr inbounds %struct.ddr_pmu, %struct.ddr_pmu* %30, i32 0, i32 0
  %32 = load %struct.perf_event**, %struct.perf_event*** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.perf_event*, %struct.perf_event** %32, i64 %34
  %36 = load %struct.perf_event*, %struct.perf_event** %35, align 8
  store %struct.perf_event* %36, %struct.perf_event** %7, align 8
  %37 = load %struct.perf_event*, %struct.perf_event** %7, align 8
  %38 = call i32 @ddr_perf_event_update(%struct.perf_event* %37)
  %39 = load %struct.perf_event*, %struct.perf_event** %7, align 8
  %40 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @EVENT_CYCLES_COUNTER, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %29
  %46 = load %struct.perf_event*, %struct.perf_event** %7, align 8
  store %struct.perf_event* %46, %struct.perf_event** %8, align 8
  br label %47

47:                                               ; preds = %45, %29
  br label %48

48:                                               ; preds = %47, %28
  %49 = load i32, i32* %5, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %5, align 4
  br label %15

51:                                               ; preds = %15
  %52 = load %struct.ddr_pmu*, %struct.ddr_pmu** %6, align 8
  %53 = load i32, i32* @EVENT_CYCLES_ID, align 4
  %54 = load i64, i64* @EVENT_CYCLES_COUNTER, align 8
  %55 = call i32 @ddr_perf_counter_enable(%struct.ddr_pmu* %52, i32 %53, i64 %54, i32 1)
  %56 = load %struct.perf_event*, %struct.perf_event** %8, align 8
  %57 = icmp ne %struct.perf_event* %56, null
  br i1 %57, label %58, label %61

58:                                               ; preds = %51
  %59 = load %struct.perf_event*, %struct.perf_event** %8, align 8
  %60 = call i32 @ddr_perf_event_update(%struct.perf_event* %59)
  br label %61

61:                                               ; preds = %58, %51
  %62 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %62
}

declare dso_local i32 @ddr_perf_counter_enable(%struct.ddr_pmu*, i32, i64, i32) #1

declare dso_local i32 @ddr_perf_event_update(%struct.perf_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
