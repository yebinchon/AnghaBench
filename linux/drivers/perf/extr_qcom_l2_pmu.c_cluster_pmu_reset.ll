; ModuleID = '/home/carl/AnghaBench/linux/drivers/perf/extr_qcom_l2_pmu.c_cluster_pmu_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/perf/extr_qcom_l2_pmu.c_cluster_pmu_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@L2PMCR = common dso_local global i32 0, align 4
@L2PMCR_RESET_ALL = common dso_local global i32 0, align 4
@L2PMCNTENCLR = common dso_local global i32 0, align 4
@l2_counter_present_mask = common dso_local global i32 0, align 4
@L2PMINTENCLR = common dso_local global i32 0, align 4
@L2PMOVSCLR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @cluster_pmu_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cluster_pmu_reset() #0 {
  %1 = load i32, i32* @L2PMCR, align 4
  %2 = load i32, i32* @L2PMCR_RESET_ALL, align 4
  %3 = call i32 @set_l2_indirect_reg(i32 %1, i32 %2)
  %4 = load i32, i32* @L2PMCNTENCLR, align 4
  %5 = load i32, i32* @l2_counter_present_mask, align 4
  %6 = call i32 @set_l2_indirect_reg(i32 %4, i32 %5)
  %7 = load i32, i32* @L2PMINTENCLR, align 4
  %8 = load i32, i32* @l2_counter_present_mask, align 4
  %9 = call i32 @set_l2_indirect_reg(i32 %7, i32 %8)
  %10 = load i32, i32* @L2PMOVSCLR, align 4
  %11 = load i32, i32* @l2_counter_present_mask, align 4
  %12 = call i32 @set_l2_indirect_reg(i32 %10, i32 %11)
  ret void
}

declare dso_local i32 @set_l2_indirect_reg(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
