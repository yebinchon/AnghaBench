; ModuleID = '/home/carl/AnghaBench/linux/drivers/perf/hisilicon/extr_hisi_uncore_hha_pmu.c_hisi_hha_pmu_read_counter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/perf/hisilicon/extr_hisi_uncore_hha_pmu.c_hisi_hha_pmu_read_counter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_pmu = type { i64, i32 }
%struct.hw_perf_event = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"Unsupported event index:%d!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hisi_pmu*, %struct.hw_perf_event*)* @hisi_hha_pmu_read_counter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hisi_hha_pmu_read_counter(%struct.hisi_pmu* %0, %struct.hw_perf_event* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hisi_pmu*, align 8
  %5 = alloca %struct.hw_perf_event*, align 8
  %6 = alloca i32, align 4
  store %struct.hisi_pmu* %0, %struct.hisi_pmu** %4, align 8
  store %struct.hw_perf_event* %1, %struct.hw_perf_event** %5, align 8
  %7 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %8 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %6, align 4
  %10 = load %struct.hisi_pmu*, %struct.hisi_pmu** %4, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @hisi_uncore_pmu_counter_valid(%struct.hisi_pmu* %10, i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %2
  %15 = load %struct.hisi_pmu*, %struct.hisi_pmu** %4, align 8
  %16 = getelementptr inbounds %struct.hisi_pmu, %struct.hisi_pmu* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @dev_err(i32 %17, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %18)
  store i32 0, i32* %3, align 4
  br label %28

20:                                               ; preds = %2
  %21 = load %struct.hisi_pmu*, %struct.hisi_pmu** %4, align 8
  %22 = getelementptr inbounds %struct.hisi_pmu, %struct.hisi_pmu* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i64 @hisi_hha_pmu_get_counter_offset(i32 %24)
  %26 = add nsw i64 %23, %25
  %27 = call i32 @readq(i64 %26)
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %20, %14
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @hisi_uncore_pmu_counter_valid(%struct.hisi_pmu*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @readq(i64) #1

declare dso_local i64 @hisi_hha_pmu_get_counter_offset(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
