; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/tegra/extr_pinctrl-tegra20.c_tegra20_pinctrl_register_clock_muxes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/tegra/extr_pinctrl-tegra20.c_tegra20_pinctrl_register_clock_muxes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.tegra_pmx = type { i64* }

@.str = private unnamed_addr constant [10 x i8] c"cdev1_mux\00", align 1
@cdev1_parents = common dso_local global i32 0, align 4
@CLK_MUX_READ_ONLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"cdev2_mux\00", align 1
@cdev2_parents = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.platform_device*)* @tegra20_pinctrl_register_clock_muxes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra20_pinctrl_register_clock_muxes(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.tegra_pmx*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = call %struct.tegra_pmx* @platform_get_drvdata(%struct.platform_device* %4)
  store %struct.tegra_pmx* %5, %struct.tegra_pmx** %3, align 8
  %6 = load i32, i32* @cdev1_parents, align 4
  %7 = load %struct.tegra_pmx*, %struct.tegra_pmx** %3, align 8
  %8 = getelementptr inbounds %struct.tegra_pmx, %struct.tegra_pmx* %7, i32 0, i32 0
  %9 = load i64*, i64** %8, align 8
  %10 = getelementptr inbounds i64, i64* %9, i64 1
  %11 = load i64, i64* %10, align 8
  %12 = add nsw i64 %11, 8
  %13 = load i32, i32* @CLK_MUX_READ_ONLY, align 4
  %14 = call i32 @clk_register_mux(i32* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %6, i32 4, i32 0, i64 %12, i32 2, i32 2, i32 %13, i32* null)
  %15 = load i32, i32* @cdev2_parents, align 4
  %16 = load %struct.tegra_pmx*, %struct.tegra_pmx** %3, align 8
  %17 = getelementptr inbounds %struct.tegra_pmx, %struct.tegra_pmx* %16, i32 0, i32 0
  %18 = load i64*, i64** %17, align 8
  %19 = getelementptr inbounds i64, i64* %18, i64 1
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %20, 8
  %22 = load i32, i32* @CLK_MUX_READ_ONLY, align 4
  %23 = call i32 @clk_register_mux(i32* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %15, i32 4, i32 0, i64 %21, i32 4, i32 2, i32 %22, i32* null)
  ret void
}

declare dso_local %struct.tegra_pmx* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @clk_register_mux(i32*, i8*, i32, i32, i32, i64, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
