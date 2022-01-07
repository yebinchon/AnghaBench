; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-tegra.c_tegra_pcie_enable_rp_features.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-tegra.c_tegra_pcie_enable_rp_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_pcie_port = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.tegra_pcie_soc* }
%struct.tegra_pcie_soc = type { i64 }

@RP_VEND_CTL1 = common dso_local global i64 0, align 8
@RP_VEND_CTL1_ERPT = common dso_local global i32 0, align 4
@RP_VEND_XP = common dso_local global i64 0, align 8
@RP_VEND_XP_OPPORTUNISTIC_ACK = common dso_local global i32 0, align 4
@RP_VEND_XP_OPPORTUNISTIC_UPDATEFC = common dso_local global i32 0, align 4
@RP_VEND_XP_BIST = common dso_local global i64 0, align 8
@RP_VEND_XP_BIST_GOTO_L1_L2_AFTER_DLLP_DONE = common dso_local global i32 0, align 4
@RP_PRIV_MISC = common dso_local global i64 0, align 8
@RP_PRIV_MISC_CTLR_CLK_CLAMP_ENABLE = common dso_local global i32 0, align 4
@RP_PRIV_MISC_TMS_CLK_CLAMP_ENABLE = common dso_local global i32 0, align 4
@RP_PRIV_MISC_CTLR_CLK_CLAMP_THRESHOLD_MASK = common dso_local global i32 0, align 4
@RP_PRIV_MISC_TMS_CLK_CLAMP_THRESHOLD_MASK = common dso_local global i32 0, align 4
@RP_PRIV_MISC_CTLR_CLK_CLAMP_THRESHOLD = common dso_local global i32 0, align 4
@RP_PRIV_MISC_TMS_CLK_CLAMP_THRESHOLD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra_pcie_port*)* @tegra_pcie_enable_rp_features to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_pcie_enable_rp_features(%struct.tegra_pcie_port* %0) #0 {
  %2 = alloca %struct.tegra_pcie_port*, align 8
  %3 = alloca %struct.tegra_pcie_soc*, align 8
  %4 = alloca i32, align 4
  store %struct.tegra_pcie_port* %0, %struct.tegra_pcie_port** %2, align 8
  %5 = load %struct.tegra_pcie_port*, %struct.tegra_pcie_port** %2, align 8
  %6 = getelementptr inbounds %struct.tegra_pcie_port, %struct.tegra_pcie_port* %5, i32 0, i32 1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.tegra_pcie_soc*, %struct.tegra_pcie_soc** %8, align 8
  store %struct.tegra_pcie_soc* %9, %struct.tegra_pcie_soc** %3, align 8
  %10 = load %struct.tegra_pcie_port*, %struct.tegra_pcie_port** %2, align 8
  %11 = getelementptr inbounds %struct.tegra_pcie_port, %struct.tegra_pcie_port* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @RP_VEND_CTL1, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @readl(i64 %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* @RP_VEND_CTL1_ERPT, align 4
  %17 = load i32, i32* %4, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = load %struct.tegra_pcie_port*, %struct.tegra_pcie_port** %2, align 8
  %21 = getelementptr inbounds %struct.tegra_pcie_port, %struct.tegra_pcie_port* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @RP_VEND_CTL1, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @writel(i32 %19, i64 %24)
  %26 = load %struct.tegra_pcie_port*, %struct.tegra_pcie_port** %2, align 8
  %27 = getelementptr inbounds %struct.tegra_pcie_port, %struct.tegra_pcie_port* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @RP_VEND_XP, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @readl(i64 %30)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* @RP_VEND_XP_OPPORTUNISTIC_ACK, align 4
  %33 = load i32, i32* %4, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* @RP_VEND_XP_OPPORTUNISTIC_UPDATEFC, align 4
  %36 = load i32, i32* %4, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = load %struct.tegra_pcie_port*, %struct.tegra_pcie_port** %2, align 8
  %40 = getelementptr inbounds %struct.tegra_pcie_port, %struct.tegra_pcie_port* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @RP_VEND_XP, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @writel(i32 %38, i64 %43)
  %45 = load %struct.tegra_pcie_port*, %struct.tegra_pcie_port** %2, align 8
  %46 = getelementptr inbounds %struct.tegra_pcie_port, %struct.tegra_pcie_port* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @RP_VEND_XP_BIST, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @readl(i64 %49)
  store i32 %50, i32* %4, align 4
  %51 = load i32, i32* @RP_VEND_XP_BIST_GOTO_L1_L2_AFTER_DLLP_DONE, align 4
  %52 = load i32, i32* %4, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %4, align 4
  %54 = load i32, i32* %4, align 4
  %55 = load %struct.tegra_pcie_port*, %struct.tegra_pcie_port** %2, align 8
  %56 = getelementptr inbounds %struct.tegra_pcie_port, %struct.tegra_pcie_port* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @RP_VEND_XP_BIST, align 8
  %59 = add nsw i64 %57, %58
  %60 = call i32 @writel(i32 %54, i64 %59)
  %61 = load %struct.tegra_pcie_port*, %struct.tegra_pcie_port** %2, align 8
  %62 = getelementptr inbounds %struct.tegra_pcie_port, %struct.tegra_pcie_port* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @RP_PRIV_MISC, align 8
  %65 = add nsw i64 %63, %64
  %66 = call i32 @readl(i64 %65)
  store i32 %66, i32* %4, align 4
  %67 = load i32, i32* @RP_PRIV_MISC_CTLR_CLK_CLAMP_ENABLE, align 4
  %68 = load i32, i32* %4, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %4, align 4
  %70 = load i32, i32* @RP_PRIV_MISC_TMS_CLK_CLAMP_ENABLE, align 4
  %71 = load i32, i32* %4, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %4, align 4
  %73 = load %struct.tegra_pcie_soc*, %struct.tegra_pcie_soc** %3, align 8
  %74 = getelementptr inbounds %struct.tegra_pcie_soc, %struct.tegra_pcie_soc* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %89

77:                                               ; preds = %1
  %78 = load i32, i32* @RP_PRIV_MISC_CTLR_CLK_CLAMP_THRESHOLD_MASK, align 4
  %79 = load i32, i32* @RP_PRIV_MISC_TMS_CLK_CLAMP_THRESHOLD_MASK, align 4
  %80 = or i32 %78, %79
  %81 = xor i32 %80, -1
  %82 = load i32, i32* %4, align 4
  %83 = and i32 %82, %81
  store i32 %83, i32* %4, align 4
  %84 = load i32, i32* @RP_PRIV_MISC_CTLR_CLK_CLAMP_THRESHOLD, align 4
  %85 = load i32, i32* @RP_PRIV_MISC_TMS_CLK_CLAMP_THRESHOLD, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* %4, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %4, align 4
  br label %89

89:                                               ; preds = %77, %1
  %90 = load i32, i32* %4, align 4
  %91 = load %struct.tegra_pcie_port*, %struct.tegra_pcie_port** %2, align 8
  %92 = getelementptr inbounds %struct.tegra_pcie_port, %struct.tegra_pcie_port* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @RP_PRIV_MISC, align 8
  %95 = add nsw i64 %93, %94
  %96 = call i32 @writel(i32 %90, i64 %95)
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
