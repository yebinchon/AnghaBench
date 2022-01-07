; ModuleID = '/home/carl/AnghaBench/linux/drivers/perf/extr_xgene_pmu.c_xgene_perf_pmu_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/perf/extr_xgene_pmu.c_xgene_perf_pmu_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmu = type { i32 }
%struct.xgene_pmu_dev = type { i32, i32, %struct.xgene_pmu* }
%struct.xgene_pmu = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.xgene_pmu_dev*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pmu*)* @xgene_perf_pmu_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgene_perf_pmu_enable(%struct.pmu* %0) #0 {
  %2 = alloca %struct.pmu*, align 8
  %3 = alloca %struct.xgene_pmu_dev*, align 8
  %4 = alloca %struct.xgene_pmu*, align 8
  %5 = alloca i32, align 4
  store %struct.pmu* %0, %struct.pmu** %2, align 8
  %6 = load %struct.pmu*, %struct.pmu** %2, align 8
  %7 = call %struct.xgene_pmu_dev* @to_pmu_dev(%struct.pmu* %6)
  store %struct.xgene_pmu_dev* %7, %struct.xgene_pmu_dev** %3, align 8
  %8 = load %struct.xgene_pmu_dev*, %struct.xgene_pmu_dev** %3, align 8
  %9 = getelementptr inbounds %struct.xgene_pmu_dev, %struct.xgene_pmu_dev* %8, i32 0, i32 2
  %10 = load %struct.xgene_pmu*, %struct.xgene_pmu** %9, align 8
  store %struct.xgene_pmu* %10, %struct.xgene_pmu** %4, align 8
  %11 = load %struct.xgene_pmu_dev*, %struct.xgene_pmu_dev** %3, align 8
  %12 = getelementptr inbounds %struct.xgene_pmu_dev, %struct.xgene_pmu_dev* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.xgene_pmu_dev*, %struct.xgene_pmu_dev** %3, align 8
  %15 = getelementptr inbounds %struct.xgene_pmu_dev, %struct.xgene_pmu_dev* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @bitmap_weight(i32 %13, i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %1
  br label %29

21:                                               ; preds = %1
  %22 = load %struct.xgene_pmu*, %struct.xgene_pmu** %4, align 8
  %23 = getelementptr inbounds %struct.xgene_pmu, %struct.xgene_pmu* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32 (%struct.xgene_pmu_dev*)*, i32 (%struct.xgene_pmu_dev*)** %25, align 8
  %27 = load %struct.xgene_pmu_dev*, %struct.xgene_pmu_dev** %3, align 8
  %28 = call i32 %26(%struct.xgene_pmu_dev* %27)
  br label %29

29:                                               ; preds = %21, %20
  ret void
}

declare dso_local %struct.xgene_pmu_dev* @to_pmu_dev(%struct.pmu*) #1

declare dso_local i32 @bitmap_weight(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
