; ModuleID = '/home/carl/AnghaBench/linux/drivers/perf/extr_xgene_pmu.c_xgene_perf_enable_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/perf/extr_xgene_pmu.c_xgene_perf_enable_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i32 }
%struct.xgene_pmu_dev = type { %struct.TYPE_3__*, %struct.xgene_pmu* }
%struct.TYPE_3__ = type { i64 }
%struct.xgene_pmu = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.xgene_pmu_dev*, i32)*, i32 (%struct.xgene_pmu_dev*, i32)*, i32 (%struct.xgene_pmu_dev*, i32)*, i32 (%struct.xgene_pmu_dev*, i32)*, i32 (%struct.xgene_pmu_dev*, i32, i32)* }

@PMU_TYPE_IOB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event*)* @xgene_perf_enable_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgene_perf_enable_event(%struct.perf_event* %0) #0 {
  %2 = alloca %struct.perf_event*, align 8
  %3 = alloca %struct.xgene_pmu_dev*, align 8
  %4 = alloca %struct.xgene_pmu*, align 8
  store %struct.perf_event* %0, %struct.perf_event** %2, align 8
  %5 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %6 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.xgene_pmu_dev* @to_pmu_dev(i32 %7)
  store %struct.xgene_pmu_dev* %8, %struct.xgene_pmu_dev** %3, align 8
  %9 = load %struct.xgene_pmu_dev*, %struct.xgene_pmu_dev** %3, align 8
  %10 = getelementptr inbounds %struct.xgene_pmu_dev, %struct.xgene_pmu_dev* %9, i32 0, i32 1
  %11 = load %struct.xgene_pmu*, %struct.xgene_pmu** %10, align 8
  store %struct.xgene_pmu* %11, %struct.xgene_pmu** %4, align 8
  %12 = load %struct.xgene_pmu*, %struct.xgene_pmu** %4, align 8
  %13 = getelementptr inbounds %struct.xgene_pmu, %struct.xgene_pmu* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 4
  %16 = load i32 (%struct.xgene_pmu_dev*, i32, i32)*, i32 (%struct.xgene_pmu_dev*, i32, i32)** %15, align 8
  %17 = load %struct.xgene_pmu_dev*, %struct.xgene_pmu_dev** %3, align 8
  %18 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %19 = call i32 @GET_CNTR(%struct.perf_event* %18)
  %20 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %21 = call i32 @GET_EVENTID(%struct.perf_event* %20)
  %22 = call i32 %16(%struct.xgene_pmu_dev* %17, i32 %19, i32 %21)
  %23 = load %struct.xgene_pmu*, %struct.xgene_pmu** %4, align 8
  %24 = getelementptr inbounds %struct.xgene_pmu, %struct.xgene_pmu* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 3
  %27 = load i32 (%struct.xgene_pmu_dev*, i32)*, i32 (%struct.xgene_pmu_dev*, i32)** %26, align 8
  %28 = load %struct.xgene_pmu_dev*, %struct.xgene_pmu_dev** %3, align 8
  %29 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %30 = call i64 @GET_AGENTID(%struct.perf_event* %29)
  %31 = trunc i64 %30 to i32
  %32 = xor i32 %31, -1
  %33 = call i32 %27(%struct.xgene_pmu_dev* %28, i32 %32)
  %34 = load %struct.xgene_pmu_dev*, %struct.xgene_pmu_dev** %3, align 8
  %35 = getelementptr inbounds %struct.xgene_pmu_dev, %struct.xgene_pmu_dev* %34, i32 0, i32 0
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @PMU_TYPE_IOB, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %53

41:                                               ; preds = %1
  %42 = load %struct.xgene_pmu*, %struct.xgene_pmu** %4, align 8
  %43 = getelementptr inbounds %struct.xgene_pmu, %struct.xgene_pmu* %42, i32 0, i32 0
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 2
  %46 = load i32 (%struct.xgene_pmu_dev*, i32)*, i32 (%struct.xgene_pmu_dev*, i32)** %45, align 8
  %47 = load %struct.xgene_pmu_dev*, %struct.xgene_pmu_dev** %3, align 8
  %48 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %49 = call i64 @GET_AGENT1ID(%struct.perf_event* %48)
  %50 = trunc i64 %49 to i32
  %51 = xor i32 %50, -1
  %52 = call i32 %46(%struct.xgene_pmu_dev* %47, i32 %51)
  br label %53

53:                                               ; preds = %41, %1
  %54 = load %struct.xgene_pmu*, %struct.xgene_pmu** %4, align 8
  %55 = getelementptr inbounds %struct.xgene_pmu, %struct.xgene_pmu* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = load i32 (%struct.xgene_pmu_dev*, i32)*, i32 (%struct.xgene_pmu_dev*, i32)** %57, align 8
  %59 = load %struct.xgene_pmu_dev*, %struct.xgene_pmu_dev** %3, align 8
  %60 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %61 = call i32 @GET_CNTR(%struct.perf_event* %60)
  %62 = call i32 %58(%struct.xgene_pmu_dev* %59, i32 %61)
  %63 = load %struct.xgene_pmu*, %struct.xgene_pmu** %4, align 8
  %64 = getelementptr inbounds %struct.xgene_pmu, %struct.xgene_pmu* %63, i32 0, i32 0
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32 (%struct.xgene_pmu_dev*, i32)*, i32 (%struct.xgene_pmu_dev*, i32)** %66, align 8
  %68 = load %struct.xgene_pmu_dev*, %struct.xgene_pmu_dev** %3, align 8
  %69 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %70 = call i32 @GET_CNTR(%struct.perf_event* %69)
  %71 = call i32 %67(%struct.xgene_pmu_dev* %68, i32 %70)
  ret void
}

declare dso_local %struct.xgene_pmu_dev* @to_pmu_dev(i32) #1

declare dso_local i32 @GET_CNTR(%struct.perf_event*) #1

declare dso_local i32 @GET_EVENTID(%struct.perf_event*) #1

declare dso_local i64 @GET_AGENTID(%struct.perf_event*) #1

declare dso_local i64 @GET_AGENT1ID(%struct.perf_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
