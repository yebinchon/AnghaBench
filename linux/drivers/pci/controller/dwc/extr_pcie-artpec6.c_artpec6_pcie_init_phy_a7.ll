; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-artpec6.c_artpec6_pcie_init_phy_a7.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-artpec6.c_artpec6_pcie_init_phy_a7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.artpec6_pcie = type { %struct.dw_pcie* }
%struct.dw_pcie = type { i32 }

@PCIESTAT = common dso_local global i32 0, align 4
@PCIESTAT_EXTREFCLK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Using reference clock: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"external\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"internal\00", align 1
@PCIECFG = common dso_local global i32 0, align 4
@PCIECFG_RISRCREN = common dso_local global i32 0, align 4
@PCIECFG_PCLK_ENABLE = common dso_local global i32 0, align 4
@PCIECFG_REFCLKSEL = common dso_local global i32 0, align 4
@NOCCFG = common dso_local global i32 0, align 4
@NOCCFG_ENABLE_CLK_PCIE = common dso_local global i32 0, align 4
@NOCCFG_POWER_PCIE_IDLEREQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.artpec6_pcie*)* @artpec6_pcie_init_phy_a7 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @artpec6_pcie_init_phy_a7(%struct.artpec6_pcie* %0) #0 {
  %2 = alloca %struct.artpec6_pcie*, align 8
  %3 = alloca %struct.dw_pcie*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.artpec6_pcie* %0, %struct.artpec6_pcie** %2, align 8
  %6 = load %struct.artpec6_pcie*, %struct.artpec6_pcie** %2, align 8
  %7 = getelementptr inbounds %struct.artpec6_pcie, %struct.artpec6_pcie* %6, i32 0, i32 0
  %8 = load %struct.dw_pcie*, %struct.dw_pcie** %7, align 8
  store %struct.dw_pcie* %8, %struct.dw_pcie** %3, align 8
  %9 = load %struct.artpec6_pcie*, %struct.artpec6_pcie** %2, align 8
  %10 = load i32, i32* @PCIESTAT, align 4
  %11 = call i32 @artpec6_pcie_readl(%struct.artpec6_pcie* %9, i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @PCIESTAT_EXTREFCLK, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  store i32 %18, i32* %5, align 4
  %19 = load %struct.dw_pcie*, %struct.dw_pcie** %3, align 8
  %20 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %26 = call i32 @dev_dbg(i32 %21, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %25)
  %27 = load %struct.artpec6_pcie*, %struct.artpec6_pcie** %2, align 8
  %28 = load i32, i32* @PCIECFG, align 4
  %29 = call i32 @artpec6_pcie_readl(%struct.artpec6_pcie* %27, i32 %28)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* @PCIECFG_RISRCREN, align 4
  %31 = load i32, i32* @PCIECFG_PCLK_ENABLE, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* %4, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %1
  %38 = load i32, i32* @PCIECFG_REFCLKSEL, align 4
  %39 = load i32, i32* %4, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %4, align 4
  br label %46

41:                                               ; preds = %1
  %42 = load i32, i32* @PCIECFG_REFCLKSEL, align 4
  %43 = xor i32 %42, -1
  %44 = load i32, i32* %4, align 4
  %45 = and i32 %44, %43
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %41, %37
  %47 = load %struct.artpec6_pcie*, %struct.artpec6_pcie** %2, align 8
  %48 = load i32, i32* @PCIECFG, align 4
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @artpec6_pcie_writel(%struct.artpec6_pcie* %47, i32 %48, i32 %49)
  %51 = call i32 @usleep_range(i32 10, i32 20)
  %52 = load %struct.artpec6_pcie*, %struct.artpec6_pcie** %2, align 8
  %53 = load i32, i32* @NOCCFG, align 4
  %54 = call i32 @artpec6_pcie_readl(%struct.artpec6_pcie* %52, i32 %53)
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* @NOCCFG_ENABLE_CLK_PCIE, align 4
  %56 = load i32, i32* %4, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %4, align 4
  %58 = load %struct.artpec6_pcie*, %struct.artpec6_pcie** %2, align 8
  %59 = load i32, i32* @NOCCFG, align 4
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @artpec6_pcie_writel(%struct.artpec6_pcie* %58, i32 %59, i32 %60)
  %62 = call i32 @usleep_range(i32 20, i32 30)
  %63 = load %struct.artpec6_pcie*, %struct.artpec6_pcie** %2, align 8
  %64 = load i32, i32* @NOCCFG, align 4
  %65 = call i32 @artpec6_pcie_readl(%struct.artpec6_pcie* %63, i32 %64)
  store i32 %65, i32* %4, align 4
  %66 = load i32, i32* @NOCCFG_POWER_PCIE_IDLEREQ, align 4
  %67 = xor i32 %66, -1
  %68 = load i32, i32* %4, align 4
  %69 = and i32 %68, %67
  store i32 %69, i32* %4, align 4
  %70 = load %struct.artpec6_pcie*, %struct.artpec6_pcie** %2, align 8
  %71 = load i32, i32* @NOCCFG, align 4
  %72 = load i32, i32* %4, align 4
  %73 = call i32 @artpec6_pcie_writel(%struct.artpec6_pcie* %70, i32 %71, i32 %72)
  ret void
}

declare dso_local i32 @artpec6_pcie_readl(%struct.artpec6_pcie*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i8*) #1

declare dso_local i32 @artpec6_pcie_writel(%struct.artpec6_pcie*, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
