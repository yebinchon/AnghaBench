; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/tegra/extr_pinctrl-tegra.c_tegra_pinctrl_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/tegra/extr_pinctrl-tegra.c_tegra_pinctrl_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.tegra_pmx = type { i32, i32, i32**, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @tegra_pinctrl_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_pinctrl_suspend(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.tegra_pmx*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %9 = load %struct.device*, %struct.device** %2, align 8
  %10 = call %struct.tegra_pmx* @dev_get_drvdata(%struct.device* %9)
  store %struct.tegra_pmx* %10, %struct.tegra_pmx** %3, align 8
  %11 = load %struct.tegra_pmx*, %struct.tegra_pmx** %3, align 8
  %12 = getelementptr inbounds %struct.tegra_pmx, %struct.tegra_pmx* %11, i32 0, i32 3
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %4, align 8
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %47, %1
  %15 = load i32, i32* %7, align 4
  %16 = load %struct.tegra_pmx*, %struct.tegra_pmx** %3, align 8
  %17 = getelementptr inbounds %struct.tegra_pmx, %struct.tegra_pmx* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ult i32 %15, %18
  br i1 %19, label %20, label %50

20:                                               ; preds = %14
  %21 = load %struct.device*, %struct.device** %2, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i64 @tegra_pinctrl_get_bank_size(%struct.device* %21, i32 %22)
  store i64 %23, i64* %6, align 8
  %24 = load %struct.tegra_pmx*, %struct.tegra_pmx** %3, align 8
  %25 = getelementptr inbounds %struct.tegra_pmx, %struct.tegra_pmx* %24, i32 0, i32 2
  %26 = load i32**, i32*** %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds i32*, i32** %26, i64 %28
  %30 = load i32*, i32** %29, align 8
  store i32* %30, i32** %5, align 8
  store i32 0, i32* %8, align 4
  br label %31

31:                                               ; preds = %43, %20
  %32 = load i32, i32* %8, align 4
  %33 = zext i32 %32 to i64
  %34 = load i64, i64* %6, align 8
  %35 = icmp ult i64 %33, %34
  br i1 %35, label %36, label %46

36:                                               ; preds = %31
  %37 = load i32*, i32** %5, align 8
  %38 = getelementptr inbounds i32, i32* %37, i32 1
  store i32* %38, i32** %5, align 8
  %39 = ptrtoint i32* %37 to i32
  %40 = call i32 @readl_relaxed(i32 %39)
  %41 = load i32*, i32** %4, align 8
  %42 = getelementptr inbounds i32, i32* %41, i32 1
  store i32* %42, i32** %4, align 8
  store i32 %40, i32* %41, align 4
  br label %43

43:                                               ; preds = %36
  %44 = load i32, i32* %8, align 4
  %45 = add i32 %44, 1
  store i32 %45, i32* %8, align 4
  br label %31

46:                                               ; preds = %31
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %7, align 4
  %49 = add i32 %48, 1
  store i32 %49, i32* %7, align 4
  br label %14

50:                                               ; preds = %14
  %51 = load %struct.tegra_pmx*, %struct.tegra_pmx** %3, align 8
  %52 = getelementptr inbounds %struct.tegra_pmx, %struct.tegra_pmx* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @pinctrl_force_sleep(i32 %53)
  ret i32 %54
}

declare dso_local %struct.tegra_pmx* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @tegra_pinctrl_get_bank_size(%struct.device*, i32) #1

declare dso_local i32 @readl_relaxed(i32) #1

declare dso_local i32 @pinctrl_force_sleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
