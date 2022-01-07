; ModuleID = '/home/carl/AnghaBench/linux/drivers/perf/extr_xgene_pmu.c_xgene_perf_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/perf/extr_xgene_pmu.c_xgene_perf_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { %struct.hw_perf_event, i32 }
%struct.hw_perf_event = type { i32, i32 }
%struct.xgene_pmu_dev = type { %struct.xgene_pmu* }
%struct.xgene_pmu = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.xgene_pmu_dev*, i32, i32)* }

@PERF_HES_STOPPED = common dso_local global i32 0, align 4
@PERF_HES_UPTODATE = common dso_local global i32 0, align 4
@PERF_EF_RELOAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event*, i32)* @xgene_perf_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgene_perf_start(%struct.perf_event* %0, i32 %1) #0 {
  %3 = alloca %struct.perf_event*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.xgene_pmu_dev*, align 8
  %6 = alloca %struct.xgene_pmu*, align 8
  %7 = alloca %struct.hw_perf_event*, align 8
  %8 = alloca i32, align 4
  store %struct.perf_event* %0, %struct.perf_event** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %10 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.xgene_pmu_dev* @to_pmu_dev(i32 %11)
  store %struct.xgene_pmu_dev* %12, %struct.xgene_pmu_dev** %5, align 8
  %13 = load %struct.xgene_pmu_dev*, %struct.xgene_pmu_dev** %5, align 8
  %14 = getelementptr inbounds %struct.xgene_pmu_dev, %struct.xgene_pmu_dev* %13, i32 0, i32 0
  %15 = load %struct.xgene_pmu*, %struct.xgene_pmu** %14, align 8
  store %struct.xgene_pmu* %15, %struct.xgene_pmu** %6, align 8
  %16 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %17 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %16, i32 0, i32 0
  store %struct.hw_perf_event* %17, %struct.hw_perf_event** %7, align 8
  %18 = load %struct.hw_perf_event*, %struct.hw_perf_event** %7, align 8
  %19 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @PERF_HES_STOPPED, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i64 @WARN_ON_ONCE(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %2
  br label %66

29:                                               ; preds = %2
  %30 = load %struct.hw_perf_event*, %struct.hw_perf_event** %7, align 8
  %31 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @PERF_HES_UPTODATE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i64 @WARN_ON_ONCE(i32 %37)
  %39 = load %struct.hw_perf_event*, %struct.hw_perf_event** %7, align 8
  %40 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %39, i32 0, i32 0
  store i32 0, i32* %40, align 4
  %41 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %42 = call i32 @xgene_perf_event_set_period(%struct.perf_event* %41)
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @PERF_EF_RELOAD, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %61

47:                                               ; preds = %29
  %48 = load %struct.hw_perf_event*, %struct.hw_perf_event** %7, align 8
  %49 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %48, i32 0, i32 1
  %50 = call i32 @local64_read(i32* %49)
  store i32 %50, i32* %8, align 4
  %51 = load %struct.xgene_pmu*, %struct.xgene_pmu** %6, align 8
  %52 = getelementptr inbounds %struct.xgene_pmu, %struct.xgene_pmu* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32 (%struct.xgene_pmu_dev*, i32, i32)*, i32 (%struct.xgene_pmu_dev*, i32, i32)** %54, align 8
  %56 = load %struct.xgene_pmu_dev*, %struct.xgene_pmu_dev** %5, align 8
  %57 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %58 = call i32 @GET_CNTR(%struct.perf_event* %57)
  %59 = load i32, i32* %8, align 4
  %60 = call i32 %55(%struct.xgene_pmu_dev* %56, i32 %58, i32 %59)
  br label %61

61:                                               ; preds = %47, %29
  %62 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %63 = call i32 @xgene_perf_enable_event(%struct.perf_event* %62)
  %64 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %65 = call i32 @perf_event_update_userpage(%struct.perf_event* %64)
  br label %66

66:                                               ; preds = %61, %28
  ret void
}

declare dso_local %struct.xgene_pmu_dev* @to_pmu_dev(i32) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @xgene_perf_event_set_period(%struct.perf_event*) #1

declare dso_local i32 @local64_read(i32*) #1

declare dso_local i32 @GET_CNTR(%struct.perf_event*) #1

declare dso_local i32 @xgene_perf_enable_event(%struct.perf_event*) #1

declare dso_local i32 @perf_event_update_userpage(%struct.perf_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
