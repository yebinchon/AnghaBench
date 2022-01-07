; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-tegra.c_tegra_pcie_apply_sw_fixup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-tegra.c_tegra_pcie_apply_sw_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_pcie_port = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.tegra_pcie_soc* }
%struct.tegra_pcie_soc = type { i32, i64, i64, i64 }

@RP_VEND_CTL0 = common dso_local global i64 0, align 8
@RP_VEND_CTL0_DSK_RST_PULSE_WIDTH_MASK = common dso_local global i32 0, align 4
@RP_VEND_CTL0_DSK_RST_PULSE_WIDTH = common dso_local global i32 0, align 4
@RP_RX_HDR_LIMIT = common dso_local global i64 0, align 8
@RP_RX_HDR_LIMIT_PW_MASK = common dso_local global i32 0, align 4
@RP_RX_HDR_LIMIT_PW = common dso_local global i32 0, align 4
@RP_PRIV_XP_DL = common dso_local global i64 0, align 8
@RP_PRIV_XP_DL_GEN2_UPD_FC_TSHOLD = common dso_local global i32 0, align 4
@RP_VEND_XP = common dso_local global i64 0, align 8
@RP_VEND_XP_UPDATE_FC_THRESHOLD_MASK = common dso_local global i32 0, align 4
@RP_LINK_CONTROL_STATUS_2 = common dso_local global i64 0, align 8
@PCI_EXP_LNKSTA_CLS = common dso_local global i32 0, align 4
@PCI_EXP_LNKSTA_CLS_2_5GB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra_pcie_port*)* @tegra_pcie_apply_sw_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_pcie_apply_sw_fixup(%struct.tegra_pcie_port* %0) #0 {
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
  %10 = load %struct.tegra_pcie_soc*, %struct.tegra_pcie_soc** %3, align 8
  %11 = getelementptr inbounds %struct.tegra_pcie_soc, %struct.tegra_pcie_soc* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %35

14:                                               ; preds = %1
  %15 = load %struct.tegra_pcie_port*, %struct.tegra_pcie_port** %2, align 8
  %16 = getelementptr inbounds %struct.tegra_pcie_port, %struct.tegra_pcie_port* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @RP_VEND_CTL0, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @readl(i64 %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* @RP_VEND_CTL0_DSK_RST_PULSE_WIDTH_MASK, align 4
  %22 = xor i32 %21, -1
  %23 = load i32, i32* %4, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* @RP_VEND_CTL0_DSK_RST_PULSE_WIDTH, align 4
  %26 = load i32, i32* %4, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = load %struct.tegra_pcie_port*, %struct.tegra_pcie_port** %2, align 8
  %30 = getelementptr inbounds %struct.tegra_pcie_port, %struct.tegra_pcie_port* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @RP_VEND_CTL0, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @writel(i32 %28, i64 %33)
  br label %35

35:                                               ; preds = %14, %1
  %36 = load %struct.tegra_pcie_soc*, %struct.tegra_pcie_soc** %3, align 8
  %37 = getelementptr inbounds %struct.tegra_pcie_soc, %struct.tegra_pcie_soc* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %99

40:                                               ; preds = %35
  %41 = load %struct.tegra_pcie_port*, %struct.tegra_pcie_port** %2, align 8
  %42 = getelementptr inbounds %struct.tegra_pcie_port, %struct.tegra_pcie_port* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @RP_RX_HDR_LIMIT, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @readl(i64 %45)
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* @RP_RX_HDR_LIMIT_PW_MASK, align 4
  %48 = xor i32 %47, -1
  %49 = load i32, i32* %4, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %4, align 4
  %51 = load i32, i32* @RP_RX_HDR_LIMIT_PW, align 4
  %52 = load i32, i32* %4, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %4, align 4
  %54 = load i32, i32* %4, align 4
  %55 = load %struct.tegra_pcie_port*, %struct.tegra_pcie_port** %2, align 8
  %56 = getelementptr inbounds %struct.tegra_pcie_port, %struct.tegra_pcie_port* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @RP_RX_HDR_LIMIT, align 8
  %59 = add nsw i64 %57, %58
  %60 = call i32 @writel(i32 %54, i64 %59)
  %61 = load %struct.tegra_pcie_port*, %struct.tegra_pcie_port** %2, align 8
  %62 = getelementptr inbounds %struct.tegra_pcie_port, %struct.tegra_pcie_port* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @RP_PRIV_XP_DL, align 8
  %65 = add nsw i64 %63, %64
  %66 = call i32 @readl(i64 %65)
  store i32 %66, i32* %4, align 4
  %67 = load i32, i32* @RP_PRIV_XP_DL_GEN2_UPD_FC_TSHOLD, align 4
  %68 = load i32, i32* %4, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %4, align 4
  %70 = load i32, i32* %4, align 4
  %71 = load %struct.tegra_pcie_port*, %struct.tegra_pcie_port** %2, align 8
  %72 = getelementptr inbounds %struct.tegra_pcie_port, %struct.tegra_pcie_port* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @RP_PRIV_XP_DL, align 8
  %75 = add nsw i64 %73, %74
  %76 = call i32 @writel(i32 %70, i64 %75)
  %77 = load %struct.tegra_pcie_port*, %struct.tegra_pcie_port** %2, align 8
  %78 = getelementptr inbounds %struct.tegra_pcie_port, %struct.tegra_pcie_port* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @RP_VEND_XP, align 8
  %81 = add nsw i64 %79, %80
  %82 = call i32 @readl(i64 %81)
  store i32 %82, i32* %4, align 4
  %83 = load i32, i32* @RP_VEND_XP_UPDATE_FC_THRESHOLD_MASK, align 4
  %84 = xor i32 %83, -1
  %85 = load i32, i32* %4, align 4
  %86 = and i32 %85, %84
  store i32 %86, i32* %4, align 4
  %87 = load %struct.tegra_pcie_soc*, %struct.tegra_pcie_soc** %3, align 8
  %88 = getelementptr inbounds %struct.tegra_pcie_soc, %struct.tegra_pcie_soc* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* %4, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %4, align 4
  %92 = load i32, i32* %4, align 4
  %93 = load %struct.tegra_pcie_port*, %struct.tegra_pcie_port** %2, align 8
  %94 = getelementptr inbounds %struct.tegra_pcie_port, %struct.tegra_pcie_port* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @RP_VEND_XP, align 8
  %97 = add nsw i64 %95, %96
  %98 = call i32 @writel(i32 %92, i64 %97)
  br label %99

99:                                               ; preds = %40, %35
  %100 = load %struct.tegra_pcie_soc*, %struct.tegra_pcie_soc** %3, align 8
  %101 = getelementptr inbounds %struct.tegra_pcie_soc, %struct.tegra_pcie_soc* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %127

104:                                              ; preds = %99
  %105 = load %struct.tegra_pcie_port*, %struct.tegra_pcie_port** %2, align 8
  %106 = getelementptr inbounds %struct.tegra_pcie_port, %struct.tegra_pcie_port* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @RP_VEND_XP, align 8
  %109 = add nsw i64 %107, %108
  %110 = call i32 @readl(i64 %109)
  store i32 %110, i32* %4, align 4
  %111 = load i32, i32* @RP_VEND_XP_UPDATE_FC_THRESHOLD_MASK, align 4
  %112 = xor i32 %111, -1
  %113 = load i32, i32* %4, align 4
  %114 = and i32 %113, %112
  store i32 %114, i32* %4, align 4
  %115 = load %struct.tegra_pcie_soc*, %struct.tegra_pcie_soc** %3, align 8
  %116 = getelementptr inbounds %struct.tegra_pcie_soc, %struct.tegra_pcie_soc* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* %4, align 4
  %119 = or i32 %118, %117
  store i32 %119, i32* %4, align 4
  %120 = load i32, i32* %4, align 4
  %121 = load %struct.tegra_pcie_port*, %struct.tegra_pcie_port** %2, align 8
  %122 = getelementptr inbounds %struct.tegra_pcie_port, %struct.tegra_pcie_port* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @RP_VEND_XP, align 8
  %125 = add nsw i64 %123, %124
  %126 = call i32 @writel(i32 %120, i64 %125)
  br label %127

127:                                              ; preds = %104, %99
  %128 = load %struct.tegra_pcie_port*, %struct.tegra_pcie_port** %2, align 8
  %129 = getelementptr inbounds %struct.tegra_pcie_port, %struct.tegra_pcie_port* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @RP_LINK_CONTROL_STATUS_2, align 8
  %132 = add nsw i64 %130, %131
  %133 = call i32 @readl(i64 %132)
  store i32 %133, i32* %4, align 4
  %134 = load i32, i32* @PCI_EXP_LNKSTA_CLS, align 4
  %135 = xor i32 %134, -1
  %136 = load i32, i32* %4, align 4
  %137 = and i32 %136, %135
  store i32 %137, i32* %4, align 4
  %138 = load i32, i32* @PCI_EXP_LNKSTA_CLS_2_5GB, align 4
  %139 = load i32, i32* %4, align 4
  %140 = or i32 %139, %138
  store i32 %140, i32* %4, align 4
  %141 = load i32, i32* %4, align 4
  %142 = load %struct.tegra_pcie_port*, %struct.tegra_pcie_port** %2, align 8
  %143 = getelementptr inbounds %struct.tegra_pcie_port, %struct.tegra_pcie_port* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @RP_LINK_CONTROL_STATUS_2, align 8
  %146 = add nsw i64 %144, %145
  %147 = call i32 @writel(i32 %141, i64 %146)
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
