; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-tegra.c_tegra_pcie_pll_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-tegra.c_tegra_pcie_pll_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_pcie = type { %struct.tegra_pcie_soc* }
%struct.tegra_pcie_soc = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@PADS_PLL_CTL_LOCKDET = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_pcie*, i64)* @tegra_pcie_pll_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_pcie_pll_wait(%struct.tegra_pcie* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tegra_pcie*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.tegra_pcie_soc*, align 8
  %7 = alloca i32, align 4
  store %struct.tegra_pcie* %0, %struct.tegra_pcie** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.tegra_pcie*, %struct.tegra_pcie** %4, align 8
  %9 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %8, i32 0, i32 0
  %10 = load %struct.tegra_pcie_soc*, %struct.tegra_pcie_soc** %9, align 8
  store %struct.tegra_pcie_soc* %10, %struct.tegra_pcie_soc** %6, align 8
  %11 = load i64, i64* @jiffies, align 8
  %12 = load i64, i64* %5, align 8
  %13 = call i64 @msecs_to_jiffies(i64 %12)
  %14 = add i64 %11, %13
  store i64 %14, i64* %5, align 8
  br label %15

15:                                               ; preds = %31, %2
  %16 = load i64, i64* @jiffies, align 8
  %17 = load i64, i64* %5, align 8
  %18 = call i64 @time_before(i64 %16, i64 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %32

20:                                               ; preds = %15
  %21 = load %struct.tegra_pcie*, %struct.tegra_pcie** %4, align 8
  %22 = load %struct.tegra_pcie_soc*, %struct.tegra_pcie_soc** %6, align 8
  %23 = getelementptr inbounds %struct.tegra_pcie_soc, %struct.tegra_pcie_soc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @pads_readl(%struct.tegra_pcie* %21, i32 %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @PADS_PLL_CTL_LOCKDET, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %35

31:                                               ; preds = %20
  br label %15

32:                                               ; preds = %15
  %33 = load i32, i32* @ETIMEDOUT, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %32, %30
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i64 @msecs_to_jiffies(i64) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @pads_readl(%struct.tegra_pcie*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
