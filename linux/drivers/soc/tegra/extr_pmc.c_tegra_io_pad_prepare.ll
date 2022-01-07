; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/tegra/extr_pmc.c_tegra_io_pad_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/tegra/extr_pmc.c_tegra_io_pad_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_pmc = type { i32, i64 }

@.str = private unnamed_addr constant [26 x i8] c"failed to get clock rate\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@DPD_SAMPLE_ENABLE = common dso_local global i64 0, align 8
@DPD_SAMPLE = common dso_local global i32 0, align 4
@SEL_DPD_TIM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_pmc*, i32, i64*, i64*, i32*)* @tegra_io_pad_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_io_pad_prepare(%struct.tegra_pmc* %0, i32 %1, i64* %2, i64* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.tegra_pmc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.tegra_pmc* %0, %struct.tegra_pmc** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64* %2, i64** %9, align 8
  store i64* %3, i64** %10, align 8
  store i32* %4, i32** %11, align 8
  %15 = load %struct.tegra_pmc*, %struct.tegra_pmc** %7, align 8
  %16 = load i32, i32* %8, align 4
  %17 = load i64*, i64** %9, align 8
  %18 = load i64*, i64** %10, align 8
  %19 = load i32*, i32** %11, align 8
  %20 = call i32 @tegra_io_pad_get_dpd_register_bit(%struct.tegra_pmc* %15, i32 %16, i64* %17, i64* %18, i32* %19)
  store i32 %20, i32* %14, align 4
  %21 = load i32, i32* %14, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %5
  %24 = load i32, i32* %14, align 4
  store i32 %24, i32* %6, align 4
  br label %58

25:                                               ; preds = %5
  %26 = load %struct.tegra_pmc*, %struct.tegra_pmc** %7, align 8
  %27 = getelementptr inbounds %struct.tegra_pmc, %struct.tegra_pmc* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %57

30:                                               ; preds = %25
  %31 = load %struct.tegra_pmc*, %struct.tegra_pmc** %7, align 8
  %32 = getelementptr inbounds %struct.tegra_pmc, %struct.tegra_pmc* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = call i64 @clk_get_rate(i64 %33)
  store i64 %34, i64* %12, align 8
  %35 = load i64, i64* %12, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %30
  %38 = load %struct.tegra_pmc*, %struct.tegra_pmc** %7, align 8
  %39 = getelementptr inbounds %struct.tegra_pmc, %struct.tegra_pmc* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @dev_err(i32 %40, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %42 = load i32, i32* @ENODEV, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %6, align 4
  br label %58

44:                                               ; preds = %30
  %45 = load %struct.tegra_pmc*, %struct.tegra_pmc** %7, align 8
  %46 = load i64, i64* @DPD_SAMPLE_ENABLE, align 8
  %47 = load i32, i32* @DPD_SAMPLE, align 4
  %48 = call i32 @tegra_pmc_writel(%struct.tegra_pmc* %45, i64 %46, i32 %47)
  %49 = load i64, i64* %12, align 8
  %50 = call i64 @DIV_ROUND_UP(i32 1000000000, i64 %49)
  store i64 %50, i64* %13, align 8
  %51 = load i64, i64* %13, align 8
  %52 = call i64 @DIV_ROUND_UP(i32 200, i64 %51)
  store i64 %52, i64* %13, align 8
  %53 = load %struct.tegra_pmc*, %struct.tegra_pmc** %7, align 8
  %54 = load i64, i64* %13, align 8
  %55 = load i32, i32* @SEL_DPD_TIM, align 4
  %56 = call i32 @tegra_pmc_writel(%struct.tegra_pmc* %53, i64 %54, i32 %55)
  br label %57

57:                                               ; preds = %44, %25
  store i32 0, i32* %6, align 4
  br label %58

58:                                               ; preds = %57, %37, %23
  %59 = load i32, i32* %6, align 4
  ret i32 %59
}

declare dso_local i32 @tegra_io_pad_get_dpd_register_bit(%struct.tegra_pmc*, i32, i64*, i64*, i32*) #1

declare dso_local i64 @clk_get_rate(i64) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @tegra_pmc_writel(%struct.tegra_pmc*, i64, i32) #1

declare dso_local i64 @DIV_ROUND_UP(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
