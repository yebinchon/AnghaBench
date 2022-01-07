; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/tegra/extr_soctherm.c_tegra_soctherm_throttle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/tegra/extr_soctherm.c_tegra_soctherm_throttle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.tegra_soctherm = type { i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@TEGRA_SOCTHERM_THROT_LEVEL_LOW = common dso_local global i32 0, align 4
@TEGRA_SOCTHERM_THROT_LEVEL_MED = common dso_local global i32 0, align 4
@TEGRA_SOCTHERM_THROT_LEVEL_HIGH = common dso_local global i32 0, align 4
@THROTTLE_SIZE = common dso_local global i32 0, align 4
@THROT_GLOBAL_ENB_MASK = common dso_local global i32 0, align 4
@CCROC_GLOBAL_CFG = common dso_local global i32 0, align 4
@CCROC_SUPER_CCLKG_DIVIDER = common dso_local global i32 0, align 4
@CDIVG_USE_THERM_CONTROLS_MASK = common dso_local global i32 0, align 4
@THROT_GLOBAL_CFG = common dso_local global i64 0, align 8
@CAR_SUPER_CCLKG_DIVIDER = common dso_local global i64 0, align 8
@STATS_CTL_CLR_DN = common dso_local global i32 0, align 4
@STATS_CTL_EN_DN = common dso_local global i32 0, align 4
@STATS_CTL_CLR_UP = common dso_local global i32 0, align 4
@STATS_CTL_EN_UP = common dso_local global i32 0, align 4
@THERMCTL_STATS_CTL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*)* @tegra_soctherm_throttle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_soctherm_throttle(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.tegra_soctherm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %6 = load %struct.device*, %struct.device** %2, align 8
  %7 = call %struct.tegra_soctherm* @dev_get_drvdata(%struct.device* %6)
  store %struct.tegra_soctherm* %7, %struct.tegra_soctherm** %3, align 8
  %8 = load %struct.tegra_soctherm*, %struct.tegra_soctherm** %3, align 8
  %9 = getelementptr inbounds %struct.tegra_soctherm, %struct.tegra_soctherm* %8, i32 0, i32 2
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %1
  %15 = load %struct.tegra_soctherm*, %struct.tegra_soctherm** %3, align 8
  %16 = load i32, i32* @TEGRA_SOCTHERM_THROT_LEVEL_LOW, align 4
  %17 = call i32 @throttlectl_cpu_level_cfg(%struct.tegra_soctherm* %15, i32 %16)
  %18 = load %struct.tegra_soctherm*, %struct.tegra_soctherm** %3, align 8
  %19 = load i32, i32* @TEGRA_SOCTHERM_THROT_LEVEL_MED, align 4
  %20 = call i32 @throttlectl_cpu_level_cfg(%struct.tegra_soctherm* %18, i32 %19)
  %21 = load %struct.tegra_soctherm*, %struct.tegra_soctherm** %3, align 8
  %22 = load i32, i32* @TEGRA_SOCTHERM_THROT_LEVEL_HIGH, align 4
  %23 = call i32 @throttlectl_cpu_level_cfg(%struct.tegra_soctherm* %21, i32 %22)
  br label %24

24:                                               ; preds = %14, %1
  store i32 0, i32* %5, align 4
  br label %25

25:                                               ; preds = %33, %24
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @THROTTLE_SIZE, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %25
  %30 = load %struct.tegra_soctherm*, %struct.tegra_soctherm** %3, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @soctherm_throttle_program(%struct.tegra_soctherm* %30, i32 %31)
  br label %33

33:                                               ; preds = %29
  %34 = load i32, i32* %5, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %5, align 4
  br label %25

36:                                               ; preds = %25
  %37 = load i32, i32* @THROT_GLOBAL_ENB_MASK, align 4
  %38 = call i32 @REG_SET_MASK(i32 0, i32 %37, i32 1)
  store i32 %38, i32* %4, align 4
  %39 = load %struct.tegra_soctherm*, %struct.tegra_soctherm** %3, align 8
  %40 = getelementptr inbounds %struct.tegra_soctherm, %struct.tegra_soctherm* %39, i32 0, i32 2
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %60

45:                                               ; preds = %36
  %46 = load %struct.tegra_soctherm*, %struct.tegra_soctherm** %3, align 8
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @CCROC_GLOBAL_CFG, align 4
  %49 = call i32 @ccroc_writel(%struct.tegra_soctherm* %46, i32 %47, i32 %48)
  %50 = load %struct.tegra_soctherm*, %struct.tegra_soctherm** %3, align 8
  %51 = load i32, i32* @CCROC_SUPER_CCLKG_DIVIDER, align 4
  %52 = call i32 @ccroc_readl(%struct.tegra_soctherm* %50, i32 %51)
  store i32 %52, i32* %4, align 4
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* @CDIVG_USE_THERM_CONTROLS_MASK, align 4
  %55 = call i32 @REG_SET_MASK(i32 %53, i32 %54, i32 1)
  store i32 %55, i32* %4, align 4
  %56 = load %struct.tegra_soctherm*, %struct.tegra_soctherm** %3, align 8
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* @CCROC_SUPER_CCLKG_DIVIDER, align 4
  %59 = call i32 @ccroc_writel(%struct.tegra_soctherm* %56, i32 %57, i32 %58)
  br label %84

60:                                               ; preds = %36
  %61 = load i32, i32* %4, align 4
  %62 = load %struct.tegra_soctherm*, %struct.tegra_soctherm** %3, align 8
  %63 = getelementptr inbounds %struct.tegra_soctherm, %struct.tegra_soctherm* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @THROT_GLOBAL_CFG, align 8
  %66 = add nsw i64 %64, %65
  %67 = call i32 @writel(i32 %61, i64 %66)
  %68 = load %struct.tegra_soctherm*, %struct.tegra_soctherm** %3, align 8
  %69 = getelementptr inbounds %struct.tegra_soctherm, %struct.tegra_soctherm* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @CAR_SUPER_CCLKG_DIVIDER, align 8
  %72 = add nsw i64 %70, %71
  %73 = call i32 @readl(i64 %72)
  store i32 %73, i32* %4, align 4
  %74 = load i32, i32* %4, align 4
  %75 = load i32, i32* @CDIVG_USE_THERM_CONTROLS_MASK, align 4
  %76 = call i32 @REG_SET_MASK(i32 %74, i32 %75, i32 1)
  store i32 %76, i32* %4, align 4
  %77 = load i32, i32* %4, align 4
  %78 = load %struct.tegra_soctherm*, %struct.tegra_soctherm** %3, align 8
  %79 = getelementptr inbounds %struct.tegra_soctherm, %struct.tegra_soctherm* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @CAR_SUPER_CCLKG_DIVIDER, align 8
  %82 = add nsw i64 %80, %81
  %83 = call i32 @writel(i32 %77, i64 %82)
  br label %84

84:                                               ; preds = %60, %45
  %85 = load i32, i32* @STATS_CTL_CLR_DN, align 4
  %86 = load i32, i32* @STATS_CTL_EN_DN, align 4
  %87 = or i32 %85, %86
  %88 = load i32, i32* @STATS_CTL_CLR_UP, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* @STATS_CTL_EN_UP, align 4
  %91 = or i32 %89, %90
  store i32 %91, i32* %4, align 4
  %92 = load i32, i32* %4, align 4
  %93 = load %struct.tegra_soctherm*, %struct.tegra_soctherm** %3, align 8
  %94 = getelementptr inbounds %struct.tegra_soctherm, %struct.tegra_soctherm* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @THERMCTL_STATS_CTL, align 8
  %97 = add nsw i64 %95, %96
  %98 = call i32 @writel(i32 %92, i64 %97)
  ret void
}

declare dso_local %struct.tegra_soctherm* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @throttlectl_cpu_level_cfg(%struct.tegra_soctherm*, i32) #1

declare dso_local i32 @soctherm_throttle_program(%struct.tegra_soctherm*, i32) #1

declare dso_local i32 @REG_SET_MASK(i32, i32, i32) #1

declare dso_local i32 @ccroc_writel(%struct.tegra_soctherm*, i32, i32) #1

declare dso_local i32 @ccroc_readl(%struct.tegra_soctherm*, i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
