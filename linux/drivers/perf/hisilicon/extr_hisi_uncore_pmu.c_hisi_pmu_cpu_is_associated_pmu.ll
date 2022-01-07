; ModuleID = '/home/carl/AnghaBench/linux/drivers/perf/hisilicon/extr_hisi_uncore_pmu.c_hisi_pmu_cpu_is_associated_pmu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/perf/hisilicon/extr_hisi_uncore_pmu.c_hisi_pmu_cpu_is_associated_pmu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_pmu = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hisi_pmu*)* @hisi_pmu_cpu_is_associated_pmu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hisi_pmu_cpu_is_associated_pmu(%struct.hisi_pmu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hisi_pmu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.hisi_pmu* %0, %struct.hisi_pmu** %3, align 8
  %6 = load %struct.hisi_pmu*, %struct.hisi_pmu** %3, align 8
  %7 = getelementptr inbounds %struct.hisi_pmu, %struct.hisi_pmu* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %10, label %18

10:                                               ; preds = %1
  %11 = call i32 @hisi_read_sccl_and_ccl_id(i32* %4, i32* null)
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.hisi_pmu*, %struct.hisi_pmu** %3, align 8
  %14 = getelementptr inbounds %struct.hisi_pmu, %struct.hisi_pmu* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp eq i32 %12, %15
  %17 = zext i1 %16 to i32
  store i32 %17, i32* %2, align 4
  br label %34

18:                                               ; preds = %1
  %19 = call i32 @hisi_read_sccl_and_ccl_id(i32* %4, i32* %5)
  %20 = load i32, i32* %4, align 4
  %21 = load %struct.hisi_pmu*, %struct.hisi_pmu** %3, align 8
  %22 = getelementptr inbounds %struct.hisi_pmu, %struct.hisi_pmu* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %20, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %18
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.hisi_pmu*, %struct.hisi_pmu** %3, align 8
  %28 = getelementptr inbounds %struct.hisi_pmu, %struct.hisi_pmu* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %26, %29
  br label %31

31:                                               ; preds = %25, %18
  %32 = phi i1 [ false, %18 ], [ %30, %25 ]
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %31, %10
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @hisi_read_sccl_and_ccl_id(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
