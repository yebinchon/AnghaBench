; ModuleID = '/home/carl/AnghaBench/linux/drivers/perf/extr_qcom_l2_pmu.c_cluster_pmu_set_evfilter_sys_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/perf/extr_qcom_l2_pmu.c_cluster_pmu_set_evfilter_sys_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@L2PMXEVFILTER_SUFILTER_ALL = common dso_local global i32 0, align 4
@L2PMXEVFILTER_ORGFILTER_IDINDEP = common dso_local global i32 0, align 4
@L2PMXEVFILTER_ORGFILTER_ALL = common dso_local global i32 0, align 4
@IA_L2PMXEVFILTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @cluster_pmu_set_evfilter_sys_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cluster_pmu_set_evfilter_sys_mode(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @L2PMXEVFILTER_SUFILTER_ALL, align 4
  %5 = load i32, i32* @L2PMXEVFILTER_ORGFILTER_IDINDEP, align 4
  %6 = or i32 %4, %5
  %7 = load i32, i32* @L2PMXEVFILTER_ORGFILTER_ALL, align 4
  %8 = or i32 %6, %7
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* @IA_L2PMXEVFILTER, align 4
  %10 = load i32, i32* %2, align 4
  %11 = call i32 @reg_idx(i32 %9, i32 %10)
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @set_l2_indirect_reg(i32 %11, i32 %12)
  ret void
}

declare dso_local i32 @set_l2_indirect_reg(i32, i32) #1

declare dso_local i32 @reg_idx(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
