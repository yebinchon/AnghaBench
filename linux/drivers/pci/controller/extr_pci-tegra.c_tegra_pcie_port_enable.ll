; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-tegra.c_tegra_pcie_port_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-tegra.c_tegra_pcie_port_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_pcie_port = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.tegra_pcie_soc* }
%struct.tegra_pcie_soc = type { %struct.TYPE_4__, i64, i64 }
%struct.TYPE_4__ = type { i64 }

@AFI_PEX_CTRL_REFCLK_EN = common dso_local global i64 0, align 8
@AFI_PEX_CTRL_CLKREQ_EN = common dso_local global i64 0, align 8
@AFI_PEX_CTRL_OVERRIDE_EN = common dso_local global i64 0, align 8
@RP_VEND_CTL2 = common dso_local global i64 0, align 8
@RP_VEND_CTL2_PCA_ENABLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra_pcie_port*)* @tegra_pcie_port_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_pcie_port_enable(%struct.tegra_pcie_port* %0) #0 {
  %2 = alloca %struct.tegra_pcie_port*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.tegra_pcie_soc*, align 8
  %5 = alloca i64, align 8
  store %struct.tegra_pcie_port* %0, %struct.tegra_pcie_port** %2, align 8
  %6 = load %struct.tegra_pcie_port*, %struct.tegra_pcie_port** %2, align 8
  %7 = call i64 @tegra_pcie_port_get_pex_ctrl(%struct.tegra_pcie_port* %6)
  store i64 %7, i64* %3, align 8
  %8 = load %struct.tegra_pcie_port*, %struct.tegra_pcie_port** %2, align 8
  %9 = getelementptr inbounds %struct.tegra_pcie_port, %struct.tegra_pcie_port* %8, i32 0, i32 1
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load %struct.tegra_pcie_soc*, %struct.tegra_pcie_soc** %11, align 8
  store %struct.tegra_pcie_soc* %12, %struct.tegra_pcie_soc** %4, align 8
  %13 = load %struct.tegra_pcie_port*, %struct.tegra_pcie_port** %2, align 8
  %14 = getelementptr inbounds %struct.tegra_pcie_port, %struct.tegra_pcie_port* %13, i32 0, i32 1
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = load i64, i64* %3, align 8
  %17 = call i64 @afi_readl(%struct.TYPE_5__* %15, i64 %16)
  store i64 %17, i64* %5, align 8
  %18 = load i64, i64* @AFI_PEX_CTRL_REFCLK_EN, align 8
  %19 = load i64, i64* %5, align 8
  %20 = or i64 %19, %18
  store i64 %20, i64* %5, align 8
  %21 = load %struct.tegra_pcie_soc*, %struct.tegra_pcie_soc** %4, align 8
  %22 = getelementptr inbounds %struct.tegra_pcie_soc, %struct.tegra_pcie_soc* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %1
  %26 = load i64, i64* @AFI_PEX_CTRL_CLKREQ_EN, align 8
  %27 = load i64, i64* %5, align 8
  %28 = or i64 %27, %26
  store i64 %28, i64* %5, align 8
  br label %29

29:                                               ; preds = %25, %1
  %30 = load i64, i64* @AFI_PEX_CTRL_OVERRIDE_EN, align 8
  %31 = load i64, i64* %5, align 8
  %32 = or i64 %31, %30
  store i64 %32, i64* %5, align 8
  %33 = load %struct.tegra_pcie_port*, %struct.tegra_pcie_port** %2, align 8
  %34 = getelementptr inbounds %struct.tegra_pcie_port, %struct.tegra_pcie_port* %33, i32 0, i32 1
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = load i64, i64* %5, align 8
  %37 = load i64, i64* %3, align 8
  %38 = call i32 @afi_writel(%struct.TYPE_5__* %35, i64 %36, i64 %37)
  %39 = load %struct.tegra_pcie_port*, %struct.tegra_pcie_port** %2, align 8
  %40 = call i32 @tegra_pcie_port_reset(%struct.tegra_pcie_port* %39)
  %41 = load %struct.tegra_pcie_soc*, %struct.tegra_pcie_soc** %4, align 8
  %42 = getelementptr inbounds %struct.tegra_pcie_soc, %struct.tegra_pcie_soc* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %62

45:                                               ; preds = %29
  %46 = load %struct.tegra_pcie_port*, %struct.tegra_pcie_port** %2, align 8
  %47 = getelementptr inbounds %struct.tegra_pcie_port, %struct.tegra_pcie_port* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @RP_VEND_CTL2, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i64 @readl(i64 %50)
  store i64 %51, i64* %5, align 8
  %52 = load i64, i64* @RP_VEND_CTL2_PCA_ENABLE, align 8
  %53 = load i64, i64* %5, align 8
  %54 = or i64 %53, %52
  store i64 %54, i64* %5, align 8
  %55 = load i64, i64* %5, align 8
  %56 = load %struct.tegra_pcie_port*, %struct.tegra_pcie_port** %2, align 8
  %57 = getelementptr inbounds %struct.tegra_pcie_port, %struct.tegra_pcie_port* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @RP_VEND_CTL2, align 8
  %60 = add nsw i64 %58, %59
  %61 = call i32 @writel(i64 %55, i64 %60)
  br label %62

62:                                               ; preds = %45, %29
  %63 = load %struct.tegra_pcie_port*, %struct.tegra_pcie_port** %2, align 8
  %64 = call i32 @tegra_pcie_enable_rp_features(%struct.tegra_pcie_port* %63)
  %65 = load %struct.tegra_pcie_soc*, %struct.tegra_pcie_soc** %4, align 8
  %66 = getelementptr inbounds %struct.tegra_pcie_soc, %struct.tegra_pcie_soc* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %62
  %71 = load %struct.tegra_pcie_port*, %struct.tegra_pcie_port** %2, align 8
  %72 = call i32 @tegra_pcie_program_ectl_settings(%struct.tegra_pcie_port* %71)
  br label %73

73:                                               ; preds = %70, %62
  %74 = load %struct.tegra_pcie_port*, %struct.tegra_pcie_port** %2, align 8
  %75 = call i32 @tegra_pcie_apply_sw_fixup(%struct.tegra_pcie_port* %74)
  ret void
}

declare dso_local i64 @tegra_pcie_port_get_pex_ctrl(%struct.tegra_pcie_port*) #1

declare dso_local i64 @afi_readl(%struct.TYPE_5__*, i64) #1

declare dso_local i32 @afi_writel(%struct.TYPE_5__*, i64, i64) #1

declare dso_local i32 @tegra_pcie_port_reset(%struct.tegra_pcie_port*) #1

declare dso_local i64 @readl(i64) #1

declare dso_local i32 @writel(i64, i64) #1

declare dso_local i32 @tegra_pcie_enable_rp_features(%struct.tegra_pcie_port*) #1

declare dso_local i32 @tegra_pcie_program_ectl_settings(%struct.tegra_pcie_port*) #1

declare dso_local i32 @tegra_pcie_apply_sw_fixup(%struct.tegra_pcie_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
