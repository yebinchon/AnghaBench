; ModuleID = '/home/carl/AnghaBench/linux/drivers/perf/hisilicon/extr_hisi_uncore_pmu.c_hisi_uncore_pmu_event_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/perf/hisilicon/extr_hisi_uncore_pmu.c_hisi_uncore_pmu_event_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i32, i32, %struct.TYPE_3__, %struct.TYPE_4__*, %struct.hw_perf_event }
%struct.TYPE_3__ = type { i64, i64 }
%struct.TYPE_4__ = type { i64 }
%struct.hw_perf_event = type { i32, i64 }
%struct.hisi_pmu = type { i64, i32 }

@ENOENT = common dso_local global i32 0, align 4
@PERF_ATTACH_TASK = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hisi_uncore_pmu_event_init(%struct.perf_event* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.perf_event*, align 8
  %4 = alloca %struct.hw_perf_event*, align 8
  %5 = alloca %struct.hisi_pmu*, align 8
  store %struct.perf_event* %0, %struct.perf_event** %3, align 8
  %6 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %7 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %6, i32 0, i32 4
  store %struct.hw_perf_event* %7, %struct.hw_perf_event** %4, align 8
  %8 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %9 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %13 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %12, i32 0, i32 3
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %11, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOENT, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %88

21:                                               ; preds = %1
  %22 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %23 = call i64 @is_sampling_event(%struct.perf_event* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %21
  %26 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %27 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @PERF_ATTACH_TASK, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %25, %21
  %33 = load i32, i32* @EOPNOTSUPP, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %88

35:                                               ; preds = %25
  %36 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %37 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %88

43:                                               ; preds = %35
  %44 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %45 = call i32 @hisi_validate_event_group(%struct.perf_event* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %43
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  br label %88

50:                                               ; preds = %43
  %51 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %52 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %51, i32 0, i32 3
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = call %struct.hisi_pmu* @to_hisi_pmu(%struct.TYPE_4__* %53)
  store %struct.hisi_pmu* %54, %struct.hisi_pmu** %5, align 8
  %55 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %56 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.hisi_pmu*, %struct.hisi_pmu** %5, align 8
  %60 = getelementptr inbounds %struct.hisi_pmu, %struct.hisi_pmu* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp sgt i64 %58, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %50
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %2, align 4
  br label %88

66:                                               ; preds = %50
  %67 = load %struct.hisi_pmu*, %struct.hisi_pmu** %5, align 8
  %68 = getelementptr inbounds %struct.hisi_pmu, %struct.hisi_pmu* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = icmp eq i32 %69, -1
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %2, align 4
  br label %88

74:                                               ; preds = %66
  %75 = load %struct.hw_perf_event*, %struct.hw_perf_event** %4, align 8
  %76 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %75, i32 0, i32 0
  store i32 -1, i32* %76, align 8
  %77 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %78 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.hw_perf_event*, %struct.hw_perf_event** %4, align 8
  %82 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %81, i32 0, i32 1
  store i64 %80, i64* %82, align 8
  %83 = load %struct.hisi_pmu*, %struct.hisi_pmu** %5, align 8
  %84 = getelementptr inbounds %struct.hisi_pmu, %struct.hisi_pmu* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %87 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 4
  store i32 0, i32* %2, align 4
  br label %88

88:                                               ; preds = %74, %71, %63, %47, %40, %32, %18
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local i64 @is_sampling_event(%struct.perf_event*) #1

declare dso_local i32 @hisi_validate_event_group(%struct.perf_event*) #1

declare dso_local %struct.hisi_pmu* @to_hisi_pmu(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
