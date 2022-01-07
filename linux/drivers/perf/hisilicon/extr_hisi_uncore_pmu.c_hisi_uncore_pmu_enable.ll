; ModuleID = '/home/carl/AnghaBench/linux/drivers/perf/hisilicon/extr_hisi_uncore_pmu.c_hisi_uncore_pmu_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/perf/hisilicon/extr_hisi_uncore_pmu.c_hisi_uncore_pmu_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmu = type { i32 }
%struct.hisi_pmu = type { %struct.TYPE_4__*, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 (%struct.hisi_pmu*)* }
%struct.TYPE_3__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hisi_uncore_pmu_enable(%struct.pmu* %0) #0 {
  %2 = alloca %struct.pmu*, align 8
  %3 = alloca %struct.hisi_pmu*, align 8
  %4 = alloca i32, align 4
  store %struct.pmu* %0, %struct.pmu** %2, align 8
  %5 = load %struct.pmu*, %struct.pmu** %2, align 8
  %6 = call %struct.hisi_pmu* @to_hisi_pmu(%struct.pmu* %5)
  store %struct.hisi_pmu* %6, %struct.hisi_pmu** %3, align 8
  %7 = load %struct.hisi_pmu*, %struct.hisi_pmu** %3, align 8
  %8 = getelementptr inbounds %struct.hisi_pmu, %struct.hisi_pmu* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.hisi_pmu*, %struct.hisi_pmu** %3, align 8
  %12 = getelementptr inbounds %struct.hisi_pmu, %struct.hisi_pmu* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @bitmap_weight(i32 %10, i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  br label %26

18:                                               ; preds = %1
  %19 = load %struct.hisi_pmu*, %struct.hisi_pmu** %3, align 8
  %20 = getelementptr inbounds %struct.hisi_pmu, %struct.hisi_pmu* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32 (%struct.hisi_pmu*)*, i32 (%struct.hisi_pmu*)** %22, align 8
  %24 = load %struct.hisi_pmu*, %struct.hisi_pmu** %3, align 8
  %25 = call i32 %23(%struct.hisi_pmu* %24)
  br label %26

26:                                               ; preds = %18, %17
  ret void
}

declare dso_local %struct.hisi_pmu* @to_hisi_pmu(%struct.pmu*) #1

declare dso_local i32 @bitmap_weight(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
