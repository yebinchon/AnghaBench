; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/samsung/extr_exynos3250-pmu.c_exynos3250_powerdown_conf_extra.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/samsung/extr_exynos3250-pmu.c_exynos3250_powerdown_conf_extra.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@exynos3250_list_feed = common dso_local global i32* null, align 8
@EXYNOS3_OPTION_USE_SC_COUNTER = common dso_local global i32 0, align 4
@EXYNOS3_OPTION_USE_SC_FEEDBACK = common dso_local global i32 0, align 4
@SYS_SLEEP = common dso_local global i32 0, align 4
@XUSBXTI_DURATION = common dso_local global i32 0, align 4
@EXYNOS3_XUSBXTI_DURATION = common dso_local global i32 0, align 4
@XXTI_DURATION = common dso_local global i32 0, align 4
@EXYNOS3_XXTI_DURATION = common dso_local global i32 0, align 4
@EXT_REGULATOR_DURATION = common dso_local global i32 0, align 4
@EXYNOS3_EXT_REGULATOR_DURATION = common dso_local global i32 0, align 4
@EXT_REGULATOR_COREBLK_DURATION = common dso_local global i32 0, align 4
@EXYNOS3_EXT_REGULATOR_COREBLK_DURATION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @exynos3250_powerdown_conf_extra to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exynos3250_powerdown_conf_extra(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %31, %1
  %6 = load i32, i32* %3, align 4
  %7 = load i32*, i32** @exynos3250_list_feed, align 8
  %8 = call i32 @ARRAY_SIZE(i32* %7)
  %9 = icmp ult i32 %6, %8
  br i1 %9, label %10, label %34

10:                                               ; preds = %5
  %11 = load i32*, i32** @exynos3250_list_feed, align 8
  %12 = load i32, i32* %3, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %11, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @pmu_raw_readl(i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* @EXYNOS3_OPTION_USE_SC_COUNTER, align 4
  %18 = xor i32 %17, -1
  %19 = load i32, i32* %4, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* @EXYNOS3_OPTION_USE_SC_FEEDBACK, align 4
  %22 = load i32, i32* %4, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load i32*, i32** @exynos3250_list_feed, align 8
  %26 = load i32, i32* %3, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @pmu_raw_writel(i32 %24, i32 %29)
  br label %31

31:                                               ; preds = %10
  %32 = load i32, i32* %3, align 4
  %33 = add i32 %32, 1
  store i32 %33, i32* %3, align 4
  br label %5

34:                                               ; preds = %5
  %35 = load i32, i32* %2, align 4
  %36 = load i32, i32* @SYS_SLEEP, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  br label %52

39:                                               ; preds = %34
  %40 = load i32, i32* @XUSBXTI_DURATION, align 4
  %41 = load i32, i32* @EXYNOS3_XUSBXTI_DURATION, align 4
  %42 = call i32 @pmu_raw_writel(i32 %40, i32 %41)
  %43 = load i32, i32* @XXTI_DURATION, align 4
  %44 = load i32, i32* @EXYNOS3_XXTI_DURATION, align 4
  %45 = call i32 @pmu_raw_writel(i32 %43, i32 %44)
  %46 = load i32, i32* @EXT_REGULATOR_DURATION, align 4
  %47 = load i32, i32* @EXYNOS3_EXT_REGULATOR_DURATION, align 4
  %48 = call i32 @pmu_raw_writel(i32 %46, i32 %47)
  %49 = load i32, i32* @EXT_REGULATOR_COREBLK_DURATION, align 4
  %50 = load i32, i32* @EXYNOS3_EXT_REGULATOR_COREBLK_DURATION, align 4
  %51 = call i32 @pmu_raw_writel(i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %39, %38
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
