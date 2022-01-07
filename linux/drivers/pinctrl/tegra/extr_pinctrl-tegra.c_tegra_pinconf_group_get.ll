; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/tegra/extr_pinctrl-tegra.c_tegra_pinconf_group_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/tegra/extr_pinctrl-tegra.c_tegra_pinconf_group_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.tegra_pmx = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.tegra_pingroup* }
%struct.tegra_pingroup = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i64*)* @tegra_pinconf_group_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_pinconf_group_get(%struct.pinctrl_dev* %0, i32 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pinctrl_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca %struct.tegra_pmx*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.tegra_pingroup*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  %19 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %20 = call %struct.tegra_pmx* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %19)
  store %struct.tegra_pmx* %20, %struct.tegra_pmx** %8, align 8
  %21 = load i64*, i64** %7, align 8
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @TEGRA_PINCONF_UNPACK_PARAM(i64 %22)
  store i32 %23, i32* %9, align 4
  %24 = load %struct.tegra_pmx*, %struct.tegra_pmx** %8, align 8
  %25 = getelementptr inbounds %struct.tegra_pmx, %struct.tegra_pmx* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load %struct.tegra_pingroup*, %struct.tegra_pingroup** %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.tegra_pingroup, %struct.tegra_pingroup* %28, i64 %30
  store %struct.tegra_pingroup* %31, %struct.tegra_pingroup** %11, align 8
  %32 = load %struct.tegra_pmx*, %struct.tegra_pmx** %8, align 8
  %33 = load %struct.tegra_pingroup*, %struct.tegra_pingroup** %11, align 8
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @tegra_pinconf_reg(%struct.tegra_pmx* %32, %struct.tegra_pingroup* %33, i32 %34, i32 1, i32* %13, i32* %16, i32* %14, i32* %15)
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* %12, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %3
  %39 = load i32, i32* %12, align 4
  store i32 %39, i32* %4, align 4
  br label %57

40:                                               ; preds = %3
  %41 = load %struct.tegra_pmx*, %struct.tegra_pmx** %8, align 8
  %42 = load i32, i32* %13, align 4
  %43 = load i32, i32* %16, align 4
  %44 = call i32 @pmx_readl(%struct.tegra_pmx* %41, i32 %42, i32 %43)
  store i32 %44, i32* %17, align 4
  %45 = load i32, i32* %15, align 4
  %46 = shl i32 1, %45
  %47 = sub nsw i32 %46, 1
  store i32 %47, i32* %18, align 4
  %48 = load i32, i32* %17, align 4
  %49 = load i32, i32* %14, align 4
  %50 = ashr i32 %48, %49
  %51 = load i32, i32* %18, align 4
  %52 = and i32 %50, %51
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %10, align 4
  %55 = call i64 @TEGRA_PINCONF_PACK(i32 %53, i32 %54)
  %56 = load i64*, i64** %7, align 8
  store i64 %55, i64* %56, align 8
  store i32 0, i32* %4, align 4
  br label %57

57:                                               ; preds = %40, %38
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local %struct.tegra_pmx* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i32 @TEGRA_PINCONF_UNPACK_PARAM(i64) #1

declare dso_local i32 @tegra_pinconf_reg(%struct.tegra_pmx*, %struct.tegra_pingroup*, i32, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @pmx_readl(%struct.tegra_pmx*, i32, i32) #1

declare dso_local i64 @TEGRA_PINCONF_PACK(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
