; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/samsung/extr_exynos3250-pmu.c_exynos3250_pmu_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/samsung/extr_exynos3250-pmu.c_exynos3250_pmu_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EXYNOS3_ARM_COMMON_OPTION = common dso_local global i32 0, align 4
@EXYNOS3_OPTION_SKIP_DEACTIVATE_ACEACP_IN_PWDN = common dso_local global i32 0, align 4
@S5P_USE_STANDBY_WFI_ALL = common dso_local global i32 0, align 4
@S5P_CENTRAL_SEQ_OPTION = common dso_local global i32 0, align 4
@S5P_PS_HOLD_CONTROL = common dso_local global i32 0, align 4
@S5P_PS_HOLD_OUTPUT_HIGH = common dso_local global i32 0, align 4
@S5P_PS_HOLD_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @exynos3250_pmu_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exynos3250_pmu_init() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @EXYNOS3_ARM_COMMON_OPTION, align 4
  %3 = call i32 @pmu_raw_readl(i32 %2)
  store i32 %3, i32* %1, align 4
  %4 = load i32, i32* @EXYNOS3_OPTION_SKIP_DEACTIVATE_ACEACP_IN_PWDN, align 4
  %5 = load i32, i32* %1, align 4
  %6 = or i32 %5, %4
  store i32 %6, i32* %1, align 4
  %7 = load i32, i32* %1, align 4
  %8 = load i32, i32* @EXYNOS3_ARM_COMMON_OPTION, align 4
  %9 = call i32 @pmu_raw_writel(i32 %7, i32 %8)
  %10 = load i32, i32* @S5P_USE_STANDBY_WFI_ALL, align 4
  %11 = load i32, i32* @S5P_CENTRAL_SEQ_OPTION, align 4
  %12 = call i32 @pmu_raw_writel(i32 %10, i32 %11)
  %13 = load i32, i32* @S5P_PS_HOLD_CONTROL, align 4
  %14 = call i32 @pmu_raw_readl(i32 %13)
  store i32 %14, i32* %1, align 4
  %15 = load i32, i32* @S5P_PS_HOLD_OUTPUT_HIGH, align 4
  %16 = load i32, i32* %1, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %1, align 4
  %18 = load i32, i32* %1, align 4
  %19 = load i32, i32* @S5P_PS_HOLD_CONTROL, align 4
  %20 = call i32 @pmu_raw_writel(i32 %18, i32 %19)
  %21 = load i32, i32* @S5P_PS_HOLD_CONTROL, align 4
  %22 = call i32 @pmu_raw_readl(i32 %21)
  store i32 %22, i32* %1, align 4
  %23 = load i32, i32* @S5P_PS_HOLD_EN, align 4
  %24 = load i32, i32* %1, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %1, align 4
  %26 = load i32, i32* %1, align 4
  %27 = load i32, i32* @S5P_PS_HOLD_CONTROL, align 4
  %28 = call i32 @pmu_raw_writel(i32 %26, i32 %27)
  ret void
}

declare dso_local i32 @pmu_raw_readl(i32) #1

declare dso_local i32 @pmu_raw_writel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
