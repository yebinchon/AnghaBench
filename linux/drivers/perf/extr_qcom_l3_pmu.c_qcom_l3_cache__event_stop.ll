; ModuleID = '/home/carl/AnghaBench/linux/drivers/perf/extr_qcom_l3_pmu.c_qcom_l3_cache__event_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/perf/extr_qcom_l3_pmu.c_qcom_l3_cache__event_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { %struct.hw_perf_event }
%struct.hw_perf_event = type { i32 }
%struct.l3cache_event_ops = type { i32 (%struct.perf_event*)*, i32 (%struct.perf_event*, i32)* }

@PERF_HES_STOPPED = common dso_local global i32 0, align 4
@PERF_EF_UPDATE = common dso_local global i32 0, align 4
@PERF_HES_UPTODATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event*, i32)* @qcom_l3_cache__event_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qcom_l3_cache__event_stop(%struct.perf_event* %0, i32 %1) #0 {
  %3 = alloca %struct.perf_event*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hw_perf_event*, align 8
  %6 = alloca %struct.l3cache_event_ops*, align 8
  store %struct.perf_event* %0, %struct.perf_event** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %8 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %7, i32 0, i32 0
  store %struct.hw_perf_event* %8, %struct.hw_perf_event** %5, align 8
  %9 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %10 = call %struct.l3cache_event_ops* @l3cache_event_get_ops(%struct.perf_event* %9)
  store %struct.l3cache_event_ops* %10, %struct.l3cache_event_ops** %6, align 8
  %11 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %12 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @PERF_HES_STOPPED, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %43

18:                                               ; preds = %2
  %19 = load %struct.l3cache_event_ops*, %struct.l3cache_event_ops** %6, align 8
  %20 = getelementptr inbounds %struct.l3cache_event_ops, %struct.l3cache_event_ops* %19, i32 0, i32 1
  %21 = load i32 (%struct.perf_event*, i32)*, i32 (%struct.perf_event*, i32)** %20, align 8
  %22 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %23 = load i32, i32* %4, align 4
  %24 = call i32 %21(%struct.perf_event* %22, i32 %23)
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @PERF_EF_UPDATE, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %18
  %30 = load %struct.l3cache_event_ops*, %struct.l3cache_event_ops** %6, align 8
  %31 = getelementptr inbounds %struct.l3cache_event_ops, %struct.l3cache_event_ops* %30, i32 0, i32 0
  %32 = load i32 (%struct.perf_event*)*, i32 (%struct.perf_event*)** %31, align 8
  %33 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %34 = call i32 %32(%struct.perf_event* %33)
  br label %35

35:                                               ; preds = %29, %18
  %36 = load i32, i32* @PERF_HES_STOPPED, align 4
  %37 = load i32, i32* @PERF_HES_UPTODATE, align 4
  %38 = or i32 %36, %37
  %39 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %40 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 4
  br label %43

43:                                               ; preds = %35, %17
  ret void
}

declare dso_local %struct.l3cache_event_ops* @l3cache_event_get_ops(%struct.perf_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
