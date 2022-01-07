; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/tegra/extr_pmc.c_tegra20_pmc_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/tegra/extr_pmc.c_tegra20_pmc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_pmc = type { i64 }

@PMC_CNTRL = common dso_local global i32 0, align 4
@PMC_CNTRL_CPU_PWRREQ_OE = common dso_local global i32 0, align 4
@PMC_CNTRL_SYSCLK_POLARITY = common dso_local global i32 0, align 4
@PMC_CNTRL_SYSCLK_OE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra_pmc*)* @tegra20_pmc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra20_pmc_init(%struct.tegra_pmc* %0) #0 {
  %2 = alloca %struct.tegra_pmc*, align 8
  %3 = alloca i32, align 4
  store %struct.tegra_pmc* %0, %struct.tegra_pmc** %2, align 8
  %4 = load %struct.tegra_pmc*, %struct.tegra_pmc** %2, align 8
  %5 = load i32, i32* @PMC_CNTRL, align 4
  %6 = call i32 @tegra_pmc_readl(%struct.tegra_pmc* %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* @PMC_CNTRL_CPU_PWRREQ_OE, align 4
  %8 = load i32, i32* %3, align 4
  %9 = or i32 %8, %7
  store i32 %9, i32* %3, align 4
  %10 = load %struct.tegra_pmc*, %struct.tegra_pmc** %2, align 8
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @PMC_CNTRL, align 4
  %13 = call i32 @tegra_pmc_writel(%struct.tegra_pmc* %10, i32 %11, i32 %12)
  %14 = load %struct.tegra_pmc*, %struct.tegra_pmc** %2, align 8
  %15 = load i32, i32* @PMC_CNTRL, align 4
  %16 = call i32 @tegra_pmc_readl(%struct.tegra_pmc* %14, i32 %15)
  store i32 %16, i32* %3, align 4
  %17 = load %struct.tegra_pmc*, %struct.tegra_pmc** %2, align 8
  %18 = getelementptr inbounds %struct.tegra_pmc, %struct.tegra_pmc* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %1
  %22 = load i32, i32* @PMC_CNTRL_SYSCLK_POLARITY, align 4
  %23 = xor i32 %22, -1
  %24 = load i32, i32* %3, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* %3, align 4
  br label %30

26:                                               ; preds = %1
  %27 = load i32, i32* @PMC_CNTRL_SYSCLK_POLARITY, align 4
  %28 = load i32, i32* %3, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %26, %21
  %31 = load %struct.tegra_pmc*, %struct.tegra_pmc** %2, align 8
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @PMC_CNTRL, align 4
  %34 = call i32 @tegra_pmc_writel(%struct.tegra_pmc* %31, i32 %32, i32 %33)
  %35 = load %struct.tegra_pmc*, %struct.tegra_pmc** %2, align 8
  %36 = load i32, i32* @PMC_CNTRL, align 4
  %37 = call i32 @tegra_pmc_readl(%struct.tegra_pmc* %35, i32 %36)
  store i32 %37, i32* %3, align 4
  %38 = load i32, i32* @PMC_CNTRL_SYSCLK_OE, align 4
  %39 = load i32, i32* %3, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %3, align 4
  %41 = load %struct.tegra_pmc*, %struct.tegra_pmc** %2, align 8
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* @PMC_CNTRL, align 4
  %44 = call i32 @tegra_pmc_writel(%struct.tegra_pmc* %41, i32 %42, i32 %43)
  ret void
}

declare dso_local i32 @tegra_pmc_readl(%struct.tegra_pmc*, i32) #1

declare dso_local i32 @tegra_pmc_writel(%struct.tegra_pmc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
