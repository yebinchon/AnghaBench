; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-tegra.c_tegra_pcie_port_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-tegra.c_tegra_pcie_port_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_pcie_port = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { %struct.tegra_pcie_soc* }
%struct.tegra_pcie_soc = type { i64 }

@AFI_PEX_CTRL_RST = common dso_local global i64 0, align 8
@AFI_PEX_CTRL_CLKREQ_EN = common dso_local global i64 0, align 8
@AFI_PEX_CTRL_REFCLK_EN = common dso_local global i64 0, align 8
@AFI_PCIE_CONFIG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra_pcie_port*)* @tegra_pcie_port_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_pcie_port_disable(%struct.tegra_pcie_port* %0) #0 {
  %2 = alloca %struct.tegra_pcie_port*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.tegra_pcie_soc*, align 8
  %5 = alloca i64, align 8
  store %struct.tegra_pcie_port* %0, %struct.tegra_pcie_port** %2, align 8
  %6 = load %struct.tegra_pcie_port*, %struct.tegra_pcie_port** %2, align 8
  %7 = call i64 @tegra_pcie_port_get_pex_ctrl(%struct.tegra_pcie_port* %6)
  store i64 %7, i64* %3, align 8
  %8 = load %struct.tegra_pcie_port*, %struct.tegra_pcie_port** %2, align 8
  %9 = getelementptr inbounds %struct.tegra_pcie_port, %struct.tegra_pcie_port* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.tegra_pcie_soc*, %struct.tegra_pcie_soc** %11, align 8
  store %struct.tegra_pcie_soc* %12, %struct.tegra_pcie_soc** %4, align 8
  %13 = load %struct.tegra_pcie_port*, %struct.tegra_pcie_port** %2, align 8
  %14 = getelementptr inbounds %struct.tegra_pcie_port, %struct.tegra_pcie_port* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = load i64, i64* %3, align 8
  %17 = call i64 @afi_readl(%struct.TYPE_3__* %15, i64 %16)
  store i64 %17, i64* %5, align 8
  %18 = load i64, i64* @AFI_PEX_CTRL_RST, align 8
  %19 = xor i64 %18, -1
  %20 = load i64, i64* %5, align 8
  %21 = and i64 %20, %19
  store i64 %21, i64* %5, align 8
  %22 = load %struct.tegra_pcie_port*, %struct.tegra_pcie_port** %2, align 8
  %23 = getelementptr inbounds %struct.tegra_pcie_port, %struct.tegra_pcie_port* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = load i64, i64* %5, align 8
  %26 = load i64, i64* %3, align 8
  %27 = call i32 @afi_writel(%struct.TYPE_3__* %24, i64 %25, i64 %26)
  %28 = load %struct.tegra_pcie_port*, %struct.tegra_pcie_port** %2, align 8
  %29 = getelementptr inbounds %struct.tegra_pcie_port, %struct.tegra_pcie_port* %28, i32 0, i32 0
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = load i64, i64* %3, align 8
  %32 = call i64 @afi_readl(%struct.TYPE_3__* %30, i64 %31)
  store i64 %32, i64* %5, align 8
  %33 = load %struct.tegra_pcie_soc*, %struct.tegra_pcie_soc** %4, align 8
  %34 = getelementptr inbounds %struct.tegra_pcie_soc, %struct.tegra_pcie_soc* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %1
  %38 = load i64, i64* @AFI_PEX_CTRL_CLKREQ_EN, align 8
  %39 = xor i64 %38, -1
  %40 = load i64, i64* %5, align 8
  %41 = and i64 %40, %39
  store i64 %41, i64* %5, align 8
  br label %42

42:                                               ; preds = %37, %1
  %43 = load i64, i64* @AFI_PEX_CTRL_REFCLK_EN, align 8
  %44 = xor i64 %43, -1
  %45 = load i64, i64* %5, align 8
  %46 = and i64 %45, %44
  store i64 %46, i64* %5, align 8
  %47 = load %struct.tegra_pcie_port*, %struct.tegra_pcie_port** %2, align 8
  %48 = getelementptr inbounds %struct.tegra_pcie_port, %struct.tegra_pcie_port* %47, i32 0, i32 0
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = load i64, i64* %5, align 8
  %51 = load i64, i64* %3, align 8
  %52 = call i32 @afi_writel(%struct.TYPE_3__* %49, i64 %50, i64 %51)
  %53 = load %struct.tegra_pcie_port*, %struct.tegra_pcie_port** %2, align 8
  %54 = getelementptr inbounds %struct.tegra_pcie_port, %struct.tegra_pcie_port* %53, i32 0, i32 0
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = load i64, i64* @AFI_PCIE_CONFIG, align 8
  %57 = call i64 @afi_readl(%struct.TYPE_3__* %55, i64 %56)
  store i64 %57, i64* %5, align 8
  %58 = load %struct.tegra_pcie_port*, %struct.tegra_pcie_port** %2, align 8
  %59 = getelementptr inbounds %struct.tegra_pcie_port, %struct.tegra_pcie_port* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i64 @AFI_PCIE_CONFIG_PCIE_DISABLE(i32 %60)
  %62 = load i64, i64* %5, align 8
  %63 = or i64 %62, %61
  store i64 %63, i64* %5, align 8
  %64 = load %struct.tegra_pcie_port*, %struct.tegra_pcie_port** %2, align 8
  %65 = getelementptr inbounds %struct.tegra_pcie_port, %struct.tegra_pcie_port* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = call i64 @AFI_PCIE_CONFIG_PCIE_CLKREQ_GPIO(i32 %66)
  %68 = load i64, i64* %5, align 8
  %69 = or i64 %68, %67
  store i64 %69, i64* %5, align 8
  %70 = load %struct.tegra_pcie_port*, %struct.tegra_pcie_port** %2, align 8
  %71 = getelementptr inbounds %struct.tegra_pcie_port, %struct.tegra_pcie_port* %70, i32 0, i32 0
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = load i64, i64* %5, align 8
  %74 = load i64, i64* @AFI_PCIE_CONFIG, align 8
  %75 = call i32 @afi_writel(%struct.TYPE_3__* %72, i64 %73, i64 %74)
  ret void
}

declare dso_local i64 @tegra_pcie_port_get_pex_ctrl(%struct.tegra_pcie_port*) #1

declare dso_local i64 @afi_readl(%struct.TYPE_3__*, i64) #1

declare dso_local i32 @afi_writel(%struct.TYPE_3__*, i64, i64) #1

declare dso_local i64 @AFI_PCIE_CONFIG_PCIE_DISABLE(i32) #1

declare dso_local i64 @AFI_PCIE_CONFIG_PCIE_CLKREQ_GPIO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
