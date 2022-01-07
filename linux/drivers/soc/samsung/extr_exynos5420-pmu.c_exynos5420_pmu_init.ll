; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/samsung/extr_exynos5420-pmu.c_exynos5420_pmu_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/samsung/extr_exynos5420-pmu.c_exynos5420_pmu_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@exynos5420_list_disable_pmu_reg = common dso_local global i32* null, align 8
@EXYNOS5420_USE_STANDBY_WFI_ALL = common dso_local global i32 0, align 4
@S5P_CENTRAL_SEQ_OPTION = common dso_local global i32 0, align 4
@EXYNOS_L2_USE_RETENTION = common dso_local global i32 0, align 4
@EXYNOS5420_LPI_MASK = common dso_local global i32 0, align 4
@EXYNOS5420_ATB_ISP_ARM = common dso_local global i32 0, align 4
@EXYNOS5420_LPI_MASK1 = common dso_local global i32 0, align 4
@EXYNOS5420_ATB_KFC = common dso_local global i32 0, align 4
@EXYNOS5420_ARM_COMMON_OPTION = common dso_local global i32 0, align 4
@EXYNOS5_SKIP_DEACTIVATE_ACEACP_IN_PWDN = common dso_local global i32 0, align 4
@EXYNOS5420_KFC_COMMON_OPTION = common dso_local global i32 0, align 4
@DUR_WAIT_RESET = common dso_local global i32 0, align 4
@EXYNOS5420_LOGIC_RESET_DURATION3 = common dso_local global i32 0, align 4
@SPREAD_ENABLE = common dso_local global i32 0, align 4
@EXYNOS5420_ARM_INTR_SPREAD_ENABLE = common dso_local global i32 0, align 4
@SPREAD_USE_STANDWFI = common dso_local global i32 0, align 4
@EXYNOS5420_ARM_INTR_SPREAD_USE_STANDBYWFI = common dso_local global i32 0, align 4
@EXYNOS5420_UP_SCHEDULER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"EXYNOS5420 PMU initialized\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @exynos5420_pmu_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exynos5420_pmu_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  br label %3

3:                                                ; preds = %15, %0
  %4 = load i32, i32* %2, align 4
  %5 = load i32*, i32** @exynos5420_list_disable_pmu_reg, align 8
  %6 = call i32 @ARRAY_SIZE(i32* %5)
  %7 = icmp slt i32 %4, %6
  br i1 %7, label %8, label %18

8:                                                ; preds = %3
  %9 = load i32*, i32** @exynos5420_list_disable_pmu_reg, align 8
  %10 = load i32, i32* %2, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i32, i32* %9, i64 %11
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @pmu_raw_writel(i32 0, i32 %13)
  br label %15

15:                                               ; preds = %8
  %16 = load i32, i32* %2, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %2, align 4
  br label %3

18:                                               ; preds = %3
  %19 = load i32, i32* @EXYNOS5420_USE_STANDBY_WFI_ALL, align 4
  %20 = load i32, i32* @S5P_CENTRAL_SEQ_OPTION, align 4
  %21 = call i32 @pmu_raw_writel(i32 %19, i32 %20)
  %22 = call i32 @EXYNOS_L2_OPTION(i32 0)
  %23 = call i32 @pmu_raw_readl(i32 %22)
  store i32 %23, i32* %1, align 4
  %24 = load i32, i32* @EXYNOS_L2_USE_RETENTION, align 4
  %25 = xor i32 %24, -1
  %26 = load i32, i32* %1, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %1, align 4
  %28 = load i32, i32* %1, align 4
  %29 = call i32 @EXYNOS_L2_OPTION(i32 0)
  %30 = call i32 @pmu_raw_writel(i32 %28, i32 %29)
  %31 = call i32 @EXYNOS_L2_OPTION(i32 1)
  %32 = call i32 @pmu_raw_readl(i32 %31)
  store i32 %32, i32* %1, align 4
  %33 = load i32, i32* @EXYNOS_L2_USE_RETENTION, align 4
  %34 = xor i32 %33, -1
  %35 = load i32, i32* %1, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %1, align 4
  %37 = load i32, i32* %1, align 4
  %38 = call i32 @EXYNOS_L2_OPTION(i32 1)
  %39 = call i32 @pmu_raw_writel(i32 %37, i32 %38)
  %40 = load i32, i32* @EXYNOS5420_LPI_MASK, align 4
  %41 = call i32 @pmu_raw_readl(i32 %40)
  store i32 %41, i32* %1, align 4
  %42 = load i32, i32* @EXYNOS5420_ATB_ISP_ARM, align 4
  %43 = load i32, i32* %1, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %1, align 4
  %45 = load i32, i32* %1, align 4
  %46 = load i32, i32* @EXYNOS5420_LPI_MASK, align 4
  %47 = call i32 @pmu_raw_writel(i32 %45, i32 %46)
  %48 = load i32, i32* @EXYNOS5420_LPI_MASK1, align 4
  %49 = call i32 @pmu_raw_readl(i32 %48)
  store i32 %49, i32* %1, align 4
  %50 = load i32, i32* @EXYNOS5420_ATB_KFC, align 4
  %51 = load i32, i32* %1, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %1, align 4
  %53 = load i32, i32* %1, align 4
  %54 = load i32, i32* @EXYNOS5420_LPI_MASK1, align 4
  %55 = call i32 @pmu_raw_writel(i32 %53, i32 %54)
  %56 = load i32, i32* @EXYNOS5420_ARM_COMMON_OPTION, align 4
  %57 = call i32 @pmu_raw_readl(i32 %56)
  store i32 %57, i32* %1, align 4
  %58 = load i32, i32* @EXYNOS5_SKIP_DEACTIVATE_ACEACP_IN_PWDN, align 4
  %59 = load i32, i32* %1, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %1, align 4
  %61 = load i32, i32* %1, align 4
  %62 = load i32, i32* @EXYNOS5420_ARM_COMMON_OPTION, align 4
  %63 = call i32 @pmu_raw_writel(i32 %61, i32 %62)
  %64 = load i32, i32* @EXYNOS5420_KFC_COMMON_OPTION, align 4
  %65 = call i32 @pmu_raw_readl(i32 %64)
  store i32 %65, i32* %1, align 4
  %66 = load i32, i32* @EXYNOS5_SKIP_DEACTIVATE_ACEACP_IN_PWDN, align 4
  %67 = load i32, i32* %1, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %1, align 4
  %69 = load i32, i32* %1, align 4
  %70 = load i32, i32* @EXYNOS5420_KFC_COMMON_OPTION, align 4
  %71 = call i32 @pmu_raw_writel(i32 %69, i32 %70)
  %72 = load i32, i32* @DUR_WAIT_RESET, align 4
  %73 = load i32, i32* @EXYNOS5420_LOGIC_RESET_DURATION3, align 4
  %74 = call i32 @pmu_raw_writel(i32 %72, i32 %73)
  %75 = load i32, i32* @SPREAD_ENABLE, align 4
  %76 = load i32, i32* @EXYNOS5420_ARM_INTR_SPREAD_ENABLE, align 4
  %77 = call i32 @pmu_raw_writel(i32 %75, i32 %76)
  %78 = load i32, i32* @SPREAD_USE_STANDWFI, align 4
  %79 = load i32, i32* @EXYNOS5420_ARM_INTR_SPREAD_USE_STANDBYWFI, align 4
  %80 = call i32 @pmu_raw_writel(i32 %78, i32 %79)
  %81 = load i32, i32* @EXYNOS5420_UP_SCHEDULER, align 4
  %82 = call i32 @pmu_raw_writel(i32 1, i32 %81)
  %83 = call i32 @pr_info(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @pmu_raw_writel(i32, i32) #1

declare dso_local i32 @pmu_raw_readl(i32) #1

declare dso_local i32 @EXYNOS_L2_OPTION(i32) #1

declare dso_local i32 @pr_info(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
