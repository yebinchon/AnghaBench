; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/samsung/extr_exynos5250-pmu.c_exynos5_powerdown_conf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/samsung/extr_exynos5250-pmu.c_exynos5_powerdown_conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@exynos5_list_both_cnt_feed = common dso_local global i32* null, align 8
@EXYNOS5_USE_SC_FEEDBACK = common dso_local global i32 0, align 4
@EXYNOS5_USE_SC_COUNTER = common dso_local global i32 0, align 4
@EXYNOS5_ARM_COMMON_OPTION = common dso_local global i32 0, align 4
@EXYNOS5_SKIP_DEACTIVATE_ACEACP_IN_PWDN = common dso_local global i32 0, align 4
@exynos5_list_disable_wfi_wfe = common dso_local global i32* null, align 8
@EXYNOS5_OPTION_USE_STANDBYWFE = common dso_local global i32 0, align 4
@EXYNOS5_OPTION_USE_STANDBYWFI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @exynos5_powerdown_conf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exynos5_powerdown_conf(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %29, %1
  %6 = load i32, i32* %3, align 4
  %7 = load i32*, i32** @exynos5_list_both_cnt_feed, align 8
  %8 = call i32 @ARRAY_SIZE(i32* %7)
  %9 = icmp ult i32 %6, %8
  br i1 %9, label %10, label %32

10:                                               ; preds = %5
  %11 = load i32*, i32** @exynos5_list_both_cnt_feed, align 8
  %12 = load i32, i32* %3, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %11, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @pmu_raw_readl(i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* @EXYNOS5_USE_SC_FEEDBACK, align 4
  %18 = load i32, i32* @EXYNOS5_USE_SC_COUNTER, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* %4, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load i32*, i32** @exynos5_list_both_cnt_feed, align 8
  %24 = load i32, i32* %3, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @pmu_raw_writel(i32 %22, i32 %27)
  br label %29

29:                                               ; preds = %10
  %30 = load i32, i32* %3, align 4
  %31 = add i32 %30, 1
  store i32 %31, i32* %3, align 4
  br label %5

32:                                               ; preds = %5
  %33 = load i32, i32* @EXYNOS5_ARM_COMMON_OPTION, align 4
  %34 = call i32 @pmu_raw_readl(i32 %33)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* @EXYNOS5_SKIP_DEACTIVATE_ACEACP_IN_PWDN, align 4
  %36 = load i32, i32* %4, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @EXYNOS5_ARM_COMMON_OPTION, align 4
  %40 = call i32 @pmu_raw_writel(i32 %38, i32 %39)
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %66, %32
  %42 = load i32, i32* %3, align 4
  %43 = load i32*, i32** @exynos5_list_disable_wfi_wfe, align 8
  %44 = call i32 @ARRAY_SIZE(i32* %43)
  %45 = icmp ult i32 %42, %44
  br i1 %45, label %46, label %69

46:                                               ; preds = %41
  %47 = load i32*, i32** @exynos5_list_disable_wfi_wfe, align 8
  %48 = load i32, i32* %3, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @pmu_raw_readl(i32 %51)
  store i32 %52, i32* %4, align 4
  %53 = load i32, i32* @EXYNOS5_OPTION_USE_STANDBYWFE, align 4
  %54 = load i32, i32* @EXYNOS5_OPTION_USE_STANDBYWFI, align 4
  %55 = or i32 %53, %54
  %56 = xor i32 %55, -1
  %57 = load i32, i32* %4, align 4
  %58 = and i32 %57, %56
  store i32 %58, i32* %4, align 4
  %59 = load i32, i32* %4, align 4
  %60 = load i32*, i32** @exynos5_list_disable_wfi_wfe, align 8
  %61 = load i32, i32* %3, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @pmu_raw_writel(i32 %59, i32 %64)
  br label %66

66:                                               ; preds = %46
  %67 = load i32, i32* %3, align 4
  %68 = add i32 %67, 1
  store i32 %68, i32* %3, align 4
  br label %41

69:                                               ; preds = %41
  ret void
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @pmu_raw_readl(i32) #1

declare dso_local i32 @pmu_raw_writel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
