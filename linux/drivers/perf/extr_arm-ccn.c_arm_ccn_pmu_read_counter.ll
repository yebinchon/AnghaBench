; ModuleID = '/home/carl/AnghaBench/linux/drivers/perf/extr_arm-ccn.c_arm_ccn_pmu_read_counter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/perf/extr_arm-ccn.c_arm_ccn_pmu_read_counter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arm_ccn = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@CCN_IDX_PMU_CYCLE_COUNTER = common dso_local global i32 0, align 4
@CCN_DT_PMSR_REQ = common dso_local global i64 0, align 8
@CCN_DT_PMSR = common dso_local global i64 0, align 8
@CCN_DT_PMSR_CLR = common dso_local global i64 0, align 8
@CCN_DT_PMCCNTRSR = common dso_local global i64 0, align 8
@CCN_DT_PMCCNTR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.arm_ccn*, i32)* @arm_ccn_pmu_read_counter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arm_ccn_pmu_read_counter(%struct.arm_ccn* %0, i32 %1) #0 {
  %3 = alloca %struct.arm_ccn*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.arm_ccn* %0, %struct.arm_ccn** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @CCN_IDX_PMU_CYCLE_COUNTER, align 4
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %9, label %57

9:                                                ; preds = %2
  %10 = load %struct.arm_ccn*, %struct.arm_ccn** %3, align 8
  %11 = getelementptr inbounds %struct.arm_ccn, %struct.arm_ccn* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @CCN_DT_PMSR_REQ, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @writel(i32 1, i64 %15)
  br label %17

17:                                               ; preds = %28, %9
  %18 = load %struct.arm_ccn*, %struct.arm_ccn** %3, align 8
  %19 = getelementptr inbounds %struct.arm_ccn, %struct.arm_ccn* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @CCN_DT_PMSR, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @readl(i64 %23)
  %25 = and i32 %24, 1
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  br i1 %27, label %28, label %29

28:                                               ; preds = %17
  br label %17

29:                                               ; preds = %17
  %30 = load %struct.arm_ccn*, %struct.arm_ccn** %3, align 8
  %31 = getelementptr inbounds %struct.arm_ccn, %struct.arm_ccn* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @CCN_DT_PMSR_CLR, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @writel(i32 1, i64 %35)
  %37 = load %struct.arm_ccn*, %struct.arm_ccn** %3, align 8
  %38 = getelementptr inbounds %struct.arm_ccn, %struct.arm_ccn* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @CCN_DT_PMCCNTRSR, align 8
  %42 = add nsw i64 %40, %41
  %43 = add nsw i64 %42, 4
  %44 = call i32 @readl(i64 %43)
  %45 = and i32 %44, 255
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = shl i32 %46, 32
  store i32 %47, i32* %5, align 4
  %48 = load %struct.arm_ccn*, %struct.arm_ccn** %3, align 8
  %49 = getelementptr inbounds %struct.arm_ccn, %struct.arm_ccn* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @CCN_DT_PMCCNTRSR, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i32 @readl(i64 %53)
  %55 = load i32, i32* %5, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %5, align 4
  br label %66

57:                                               ; preds = %2
  %58 = load %struct.arm_ccn*, %struct.arm_ccn** %3, align 8
  %59 = getelementptr inbounds %struct.arm_ccn, %struct.arm_ccn* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i32, i32* %4, align 4
  %63 = call i64 @CCN_DT_PMEVCNT(i32 %62)
  %64 = add nsw i64 %61, %63
  %65 = call i32 @readl(i64 %64)
  store i32 %65, i32* %5, align 4
  br label %66

66:                                               ; preds = %57, %29
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i64 @CCN_DT_PMEVCNT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
