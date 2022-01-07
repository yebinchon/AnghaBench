; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-tegra194.c_config_gen3_gen4_eq_presets.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-tegra194.c_config_gen3_gen4_eq_presets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_pcie_dw = type { i32, %struct.dw_pcie }
%struct.dw_pcie = type { i32 }

@CAP_SPCIE_CAP_OFF = common dso_local global i32 0, align 4
@CAP_SPCIE_CAP_OFF_DSP_TX_PRESET0_MASK = common dso_local global i32 0, align 4
@GEN3_GEN4_EQ_PRESET_INIT = common dso_local global i32 0, align 4
@CAP_SPCIE_CAP_OFF_USP_TX_PRESET0_MASK = common dso_local global i32 0, align 4
@CAP_SPCIE_CAP_OFF_USP_TX_PRESET0_SHIFT = common dso_local global i32 0, align 4
@PCI_EXT_CAP_ID_PL_16GT = common dso_local global i32 0, align 4
@PCI_PL_16GT_LE_CTRL = common dso_local global i32 0, align 4
@PCI_PL_16GT_LE_CTRL_DSP_TX_PRESET_MASK = common dso_local global i32 0, align 4
@PCI_PL_16GT_LE_CTRL_USP_TX_PRESET_MASK = common dso_local global i32 0, align 4
@PCI_PL_16GT_LE_CTRL_USP_TX_PRESET_SHIFT = common dso_local global i32 0, align 4
@GEN3_RELATED_OFF = common dso_local global i32 0, align 4
@GEN3_RELATED_OFF_RATE_SHADOW_SEL_MASK = common dso_local global i32 0, align 4
@GEN3_EQ_CONTROL_OFF = common dso_local global i32 0, align 4
@GEN3_EQ_CONTROL_OFF_PSET_REQ_VEC_MASK = common dso_local global i32 0, align 4
@GEN3_EQ_CONTROL_OFF_PSET_REQ_VEC_SHIFT = common dso_local global i32 0, align 4
@GEN3_EQ_CONTROL_OFF_FB_MODE_MASK = common dso_local global i32 0, align 4
@GEN3_RELATED_OFF_RATE_SHADOW_SEL_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra_pcie_dw*)* @config_gen3_gen4_eq_presets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @config_gen3_gen4_eq_presets(%struct.tegra_pcie_dw* %0) #0 {
  %2 = alloca %struct.tegra_pcie_dw*, align 8
  %3 = alloca %struct.dw_pcie*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.tegra_pcie_dw* %0, %struct.tegra_pcie_dw** %2, align 8
  %7 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %2, align 8
  %8 = getelementptr inbounds %struct.tegra_pcie_dw, %struct.tegra_pcie_dw* %7, i32 0, i32 1
  store %struct.dw_pcie* %8, %struct.dw_pcie** %3, align 8
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %89, %1
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %2, align 8
  %12 = getelementptr inbounds %struct.tegra_pcie_dw, %struct.tegra_pcie_dw* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %92

15:                                               ; preds = %9
  %16 = load %struct.dw_pcie*, %struct.dw_pcie** %3, align 8
  %17 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @CAP_SPCIE_CAP_OFF, align 4
  %20 = add nsw i32 %18, %19
  %21 = load i32, i32* %6, align 4
  %22 = mul nsw i32 %21, 2
  %23 = add nsw i32 %20, %22
  %24 = call i32 @dw_pcie_read(i32 %23, i32 2, i32* %4)
  %25 = load i32, i32* @CAP_SPCIE_CAP_OFF_DSP_TX_PRESET0_MASK, align 4
  %26 = xor i32 %25, -1
  %27 = load i32, i32* %4, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* @GEN3_GEN4_EQ_PRESET_INIT, align 4
  %30 = load i32, i32* %4, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* @CAP_SPCIE_CAP_OFF_USP_TX_PRESET0_MASK, align 4
  %33 = xor i32 %32, -1
  %34 = load i32, i32* %4, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* @GEN3_GEN4_EQ_PRESET_INIT, align 4
  %37 = load i32, i32* @CAP_SPCIE_CAP_OFF_USP_TX_PRESET0_SHIFT, align 4
  %38 = shl i32 %36, %37
  %39 = load i32, i32* %4, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %4, align 4
  %41 = load %struct.dw_pcie*, %struct.dw_pcie** %3, align 8
  %42 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @CAP_SPCIE_CAP_OFF, align 4
  %45 = add nsw i32 %43, %44
  %46 = load i32, i32* %6, align 4
  %47 = mul nsw i32 %46, 2
  %48 = add nsw i32 %45, %47
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @dw_pcie_write(i32 %48, i32 2, i32 %49)
  %51 = load %struct.dw_pcie*, %struct.dw_pcie** %3, align 8
  %52 = load i32, i32* @PCI_EXT_CAP_ID_PL_16GT, align 4
  %53 = call i32 @dw_pcie_find_ext_capability(%struct.dw_pcie* %51, i32 %52)
  %54 = load i32, i32* @PCI_PL_16GT_LE_CTRL, align 4
  %55 = add nsw i32 %53, %54
  store i32 %55, i32* %5, align 4
  %56 = load %struct.dw_pcie*, %struct.dw_pcie** %3, align 8
  %57 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %5, align 4
  %60 = add nsw i32 %58, %59
  %61 = load i32, i32* %6, align 4
  %62 = add nsw i32 %60, %61
  %63 = call i32 @dw_pcie_read(i32 %62, i32 1, i32* %4)
  %64 = load i32, i32* @PCI_PL_16GT_LE_CTRL_DSP_TX_PRESET_MASK, align 4
  %65 = xor i32 %64, -1
  %66 = load i32, i32* %4, align 4
  %67 = and i32 %66, %65
  store i32 %67, i32* %4, align 4
  %68 = load i32, i32* @GEN3_GEN4_EQ_PRESET_INIT, align 4
  %69 = load i32, i32* %4, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %4, align 4
  %71 = load i32, i32* @PCI_PL_16GT_LE_CTRL_USP_TX_PRESET_MASK, align 4
  %72 = xor i32 %71, -1
  %73 = load i32, i32* %4, align 4
  %74 = and i32 %73, %72
  store i32 %74, i32* %4, align 4
  %75 = load i32, i32* @GEN3_GEN4_EQ_PRESET_INIT, align 4
  %76 = load i32, i32* @PCI_PL_16GT_LE_CTRL_USP_TX_PRESET_SHIFT, align 4
  %77 = shl i32 %75, %76
  %78 = load i32, i32* %4, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %4, align 4
  %80 = load %struct.dw_pcie*, %struct.dw_pcie** %3, align 8
  %81 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %5, align 4
  %84 = add nsw i32 %82, %83
  %85 = load i32, i32* %6, align 4
  %86 = add nsw i32 %84, %85
  %87 = load i32, i32* %4, align 4
  %88 = call i32 @dw_pcie_write(i32 %86, i32 1, i32 %87)
  br label %89

89:                                               ; preds = %15
  %90 = load i32, i32* %6, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %6, align 4
  br label %9

92:                                               ; preds = %9
  %93 = load %struct.dw_pcie*, %struct.dw_pcie** %3, align 8
  %94 = load i32, i32* @GEN3_RELATED_OFF, align 4
  %95 = call i32 @dw_pcie_readl_dbi(%struct.dw_pcie* %93, i32 %94)
  store i32 %95, i32* %4, align 4
  %96 = load i32, i32* @GEN3_RELATED_OFF_RATE_SHADOW_SEL_MASK, align 4
  %97 = xor i32 %96, -1
  %98 = load i32, i32* %4, align 4
  %99 = and i32 %98, %97
  store i32 %99, i32* %4, align 4
  %100 = load %struct.dw_pcie*, %struct.dw_pcie** %3, align 8
  %101 = load i32, i32* @GEN3_RELATED_OFF, align 4
  %102 = load i32, i32* %4, align 4
  %103 = call i32 @dw_pcie_writel_dbi(%struct.dw_pcie* %100, i32 %101, i32 %102)
  %104 = load %struct.dw_pcie*, %struct.dw_pcie** %3, align 8
  %105 = load i32, i32* @GEN3_EQ_CONTROL_OFF, align 4
  %106 = call i32 @dw_pcie_readl_dbi(%struct.dw_pcie* %104, i32 %105)
  store i32 %106, i32* %4, align 4
  %107 = load i32, i32* @GEN3_EQ_CONTROL_OFF_PSET_REQ_VEC_MASK, align 4
  %108 = xor i32 %107, -1
  %109 = load i32, i32* %4, align 4
  %110 = and i32 %109, %108
  store i32 %110, i32* %4, align 4
  %111 = load i32, i32* @GEN3_EQ_CONTROL_OFF_PSET_REQ_VEC_SHIFT, align 4
  %112 = shl i32 1023, %111
  %113 = load i32, i32* %4, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %4, align 4
  %115 = load i32, i32* @GEN3_EQ_CONTROL_OFF_FB_MODE_MASK, align 4
  %116 = xor i32 %115, -1
  %117 = load i32, i32* %4, align 4
  %118 = and i32 %117, %116
  store i32 %118, i32* %4, align 4
  %119 = load %struct.dw_pcie*, %struct.dw_pcie** %3, align 8
  %120 = load i32, i32* @GEN3_EQ_CONTROL_OFF, align 4
  %121 = load i32, i32* %4, align 4
  %122 = call i32 @dw_pcie_writel_dbi(%struct.dw_pcie* %119, i32 %120, i32 %121)
  %123 = load %struct.dw_pcie*, %struct.dw_pcie** %3, align 8
  %124 = load i32, i32* @GEN3_RELATED_OFF, align 4
  %125 = call i32 @dw_pcie_readl_dbi(%struct.dw_pcie* %123, i32 %124)
  store i32 %125, i32* %4, align 4
  %126 = load i32, i32* @GEN3_RELATED_OFF_RATE_SHADOW_SEL_MASK, align 4
  %127 = xor i32 %126, -1
  %128 = load i32, i32* %4, align 4
  %129 = and i32 %128, %127
  store i32 %129, i32* %4, align 4
  %130 = load i32, i32* @GEN3_RELATED_OFF_RATE_SHADOW_SEL_SHIFT, align 4
  %131 = shl i32 1, %130
  %132 = load i32, i32* %4, align 4
  %133 = or i32 %132, %131
  store i32 %133, i32* %4, align 4
  %134 = load %struct.dw_pcie*, %struct.dw_pcie** %3, align 8
  %135 = load i32, i32* @GEN3_RELATED_OFF, align 4
  %136 = load i32, i32* %4, align 4
  %137 = call i32 @dw_pcie_writel_dbi(%struct.dw_pcie* %134, i32 %135, i32 %136)
  %138 = load %struct.dw_pcie*, %struct.dw_pcie** %3, align 8
  %139 = load i32, i32* @GEN3_EQ_CONTROL_OFF, align 4
  %140 = call i32 @dw_pcie_readl_dbi(%struct.dw_pcie* %138, i32 %139)
  store i32 %140, i32* %4, align 4
  %141 = load i32, i32* @GEN3_EQ_CONTROL_OFF_PSET_REQ_VEC_MASK, align 4
  %142 = xor i32 %141, -1
  %143 = load i32, i32* %4, align 4
  %144 = and i32 %143, %142
  store i32 %144, i32* %4, align 4
  %145 = load i32, i32* @GEN3_EQ_CONTROL_OFF_PSET_REQ_VEC_SHIFT, align 4
  %146 = shl i32 864, %145
  %147 = load i32, i32* %4, align 4
  %148 = or i32 %147, %146
  store i32 %148, i32* %4, align 4
  %149 = load i32, i32* @GEN3_EQ_CONTROL_OFF_FB_MODE_MASK, align 4
  %150 = xor i32 %149, -1
  %151 = load i32, i32* %4, align 4
  %152 = and i32 %151, %150
  store i32 %152, i32* %4, align 4
  %153 = load %struct.dw_pcie*, %struct.dw_pcie** %3, align 8
  %154 = load i32, i32* @GEN3_EQ_CONTROL_OFF, align 4
  %155 = load i32, i32* %4, align 4
  %156 = call i32 @dw_pcie_writel_dbi(%struct.dw_pcie* %153, i32 %154, i32 %155)
  %157 = load %struct.dw_pcie*, %struct.dw_pcie** %3, align 8
  %158 = load i32, i32* @GEN3_RELATED_OFF, align 4
  %159 = call i32 @dw_pcie_readl_dbi(%struct.dw_pcie* %157, i32 %158)
  store i32 %159, i32* %4, align 4
  %160 = load i32, i32* @GEN3_RELATED_OFF_RATE_SHADOW_SEL_MASK, align 4
  %161 = xor i32 %160, -1
  %162 = load i32, i32* %4, align 4
  %163 = and i32 %162, %161
  store i32 %163, i32* %4, align 4
  %164 = load %struct.dw_pcie*, %struct.dw_pcie** %3, align 8
  %165 = load i32, i32* @GEN3_RELATED_OFF, align 4
  %166 = load i32, i32* %4, align 4
  %167 = call i32 @dw_pcie_writel_dbi(%struct.dw_pcie* %164, i32 %165, i32 %166)
  ret void
}

declare dso_local i32 @dw_pcie_read(i32, i32, i32*) #1

declare dso_local i32 @dw_pcie_write(i32, i32, i32) #1

declare dso_local i32 @dw_pcie_find_ext_capability(%struct.dw_pcie*, i32) #1

declare dso_local i32 @dw_pcie_readl_dbi(%struct.dw_pcie*, i32) #1

declare dso_local i32 @dw_pcie_writel_dbi(%struct.dw_pcie*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
