; ModuleID = '/home/carl/AnghaBench/linux/drivers/perf/hisilicon/extr_hisi_uncore_hha_pmu.c_hisi_hha_pmu_write_evtype.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/perf/hisilicon/extr_hisi_uncore_hha_pmu.c_hisi_hha_pmu_write_evtype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_pmu = type { i32 }

@HHA_EVENT_TYPE0 = common dso_local global i32 0, align 4
@HHA_EVTYPE_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hisi_pmu*, i32, i32)* @hisi_hha_pmu_write_evtype to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hisi_hha_pmu_write_evtype(%struct.hisi_pmu* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.hisi_pmu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.hisi_pmu* %0, %struct.hisi_pmu** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* @HHA_EVENT_TYPE0, align 4
  %12 = load i32, i32* %5, align 4
  %13 = sdiv i32 %12, 4
  %14 = mul nsw i32 4, %13
  %15 = add nsw i32 %11, %14
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %5, align 4
  %17 = srem i32 %16, 4
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = mul nsw i32 8, %18
  store i32 %19, i32* %9, align 4
  %20 = load %struct.hisi_pmu*, %struct.hisi_pmu** %4, align 8
  %21 = getelementptr inbounds %struct.hisi_pmu, %struct.hisi_pmu* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %7, align 4
  %24 = add nsw i32 %22, %23
  %25 = call i32 @readl(i32 %24)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* @HHA_EVTYPE_NONE, align 4
  %27 = load i32, i32* %9, align 4
  %28 = shl i32 %26, %27
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %10, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %9, align 4
  %34 = shl i32 %32, %33
  %35 = load i32, i32* %10, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = load %struct.hisi_pmu*, %struct.hisi_pmu** %4, align 8
  %39 = getelementptr inbounds %struct.hisi_pmu, %struct.hisi_pmu* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %7, align 4
  %42 = add nsw i32 %40, %41
  %43 = call i32 @writel(i32 %37, i32 %42)
  ret void
}

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @writel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
