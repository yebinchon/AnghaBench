; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-tegra194.c_tegra_pcie_rp_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-tegra194.c_tegra_pcie_rp_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_pcie_dw = type { i64, %struct.dw_pcie }
%struct.dw_pcie = type { i32, %struct.pcie_port }
%struct.pcie_port = type { i32 }

@APPL_INTR_STATUS_L0 = common dso_local global i32 0, align 4
@APPL_INTR_STATUS_L0_LINK_STATE_INT = common dso_local global i32 0, align 4
@APPL_INTR_STATUS_L1_0_0 = common dso_local global i32 0, align 4
@APPL_INTR_STATUS_L1_0_0_LINK_REQ_RST_NOT_CHGED = common dso_local global i32 0, align 4
@APPL_CAR_RESET_OVRD = common dso_local global i32 0, align 4
@APPL_CAR_RESET_OVRD_CYA_OVERRIDE_CORE_RST_N = common dso_local global i32 0, align 4
@PORT_LOGIC_GEN2_CTRL = common dso_local global i32 0, align 4
@PORT_LOGIC_GEN2_CTRL_DIRECT_SPEED_CHANGE = common dso_local global i32 0, align 4
@APPL_INTR_STATUS_L0_INT_INT = common dso_local global i32 0, align 4
@APPL_INTR_STATUS_L1_8_0 = common dso_local global i32 0, align 4
@APPL_INTR_STATUS_L1_8_0_AUTO_BW_INT_STS = common dso_local global i32 0, align 4
@APPL_INTR_STATUS_L1_8_0_BW_MGT_INT_STS = common dso_local global i32 0, align 4
@PCI_EXP_LNKSTA = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"Link Speed : Gen-%u\0A\00", align 1
@PCI_EXP_LNKSTA_CLS = common dso_local global i32 0, align 4
@APPL_INTR_STATUS_L0_CDM_REG_CHK_INT = common dso_local global i32 0, align 4
@APPL_INTR_STATUS_L1_18 = common dso_local global i32 0, align 4
@PCIE_PL_CHK_REG_CONTROL_STATUS = common dso_local global i32 0, align 4
@APPL_INTR_STATUS_L1_18_CDM_REG_CHK_CMPLT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"CDM check complete\0A\00", align 1
@PCIE_PL_CHK_REG_CHK_REG_COMPLETE = common dso_local global i32 0, align 4
@APPL_INTR_STATUS_L1_18_CDM_REG_CHK_CMP_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"CDM comparison mismatch\0A\00", align 1
@PCIE_PL_CHK_REG_CHK_REG_COMPARISON_ERROR = common dso_local global i32 0, align 4
@APPL_INTR_STATUS_L1_18_CDM_REG_CHK_LOGIC_ERR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"CDM Logic error\0A\00", align 1
@PCIE_PL_CHK_REG_CHK_REG_LOGIC_ERROR = common dso_local global i32 0, align 4
@PCIE_PL_CHK_REG_ERR_ADDR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"CDM Error Address Offset = 0x%08X\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_pcie_dw*)* @tegra_pcie_rp_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_pcie_rp_irq_handler(%struct.tegra_pcie_dw* %0) #0 {
  %2 = alloca %struct.tegra_pcie_dw*, align 8
  %3 = alloca %struct.dw_pcie*, align 8
  %4 = alloca %struct.pcie_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.tegra_pcie_dw* %0, %struct.tegra_pcie_dw** %2, align 8
  %8 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %2, align 8
  %9 = getelementptr inbounds %struct.tegra_pcie_dw, %struct.tegra_pcie_dw* %8, i32 0, i32 1
  store %struct.dw_pcie* %9, %struct.dw_pcie** %3, align 8
  %10 = load %struct.dw_pcie*, %struct.dw_pcie** %3, align 8
  %11 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %10, i32 0, i32 1
  store %struct.pcie_port* %11, %struct.pcie_port** %4, align 8
  %12 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %2, align 8
  %13 = load i32, i32* @APPL_INTR_STATUS_L0, align 4
  %14 = call i32 @appl_readl(%struct.tegra_pcie_dw* %12, i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @APPL_INTR_STATUS_L0_LINK_STATE_INT, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %65

19:                                               ; preds = %1
  %20 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %2, align 8
  %21 = load i32, i32* @APPL_INTR_STATUS_L1_0_0, align 4
  %22 = call i32 @appl_readl(%struct.tegra_pcie_dw* %20, i32 %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @APPL_INTR_STATUS_L1_0_0_LINK_REQ_RST_NOT_CHGED, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %64

27:                                               ; preds = %19
  %28 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %2, align 8
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @APPL_INTR_STATUS_L1_0_0, align 4
  %31 = call i32 @appl_writel(%struct.tegra_pcie_dw* %28, i32 %29, i32 %30)
  %32 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %2, align 8
  %33 = load i32, i32* @APPL_CAR_RESET_OVRD, align 4
  %34 = call i32 @appl_readl(%struct.tegra_pcie_dw* %32, i32 %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* @APPL_CAR_RESET_OVRD_CYA_OVERRIDE_CORE_RST_N, align 4
  %36 = xor i32 %35, -1
  %37 = load i32, i32* %5, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %5, align 4
  %39 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %2, align 8
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @APPL_CAR_RESET_OVRD, align 4
  %42 = call i32 @appl_writel(%struct.tegra_pcie_dw* %39, i32 %40, i32 %41)
  %43 = call i32 @udelay(i32 1)
  %44 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %2, align 8
  %45 = load i32, i32* @APPL_CAR_RESET_OVRD, align 4
  %46 = call i32 @appl_readl(%struct.tegra_pcie_dw* %44, i32 %45)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* @APPL_CAR_RESET_OVRD_CYA_OVERRIDE_CORE_RST_N, align 4
  %48 = load i32, i32* %5, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %5, align 4
  %50 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %2, align 8
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @APPL_CAR_RESET_OVRD, align 4
  %53 = call i32 @appl_writel(%struct.tegra_pcie_dw* %50, i32 %51, i32 %52)
  %54 = load %struct.dw_pcie*, %struct.dw_pcie** %3, align 8
  %55 = load i32, i32* @PORT_LOGIC_GEN2_CTRL, align 4
  %56 = call i32 @dw_pcie_readl_dbi(%struct.dw_pcie* %54, i32 %55)
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* @PORT_LOGIC_GEN2_CTRL_DIRECT_SPEED_CHANGE, align 4
  %58 = load i32, i32* %5, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %5, align 4
  %60 = load %struct.dw_pcie*, %struct.dw_pcie** %3, align 8
  %61 = load i32, i32* @PORT_LOGIC_GEN2_CTRL, align 4
  %62 = load i32, i32* %5, align 4
  %63 = call i32 @dw_pcie_writel_dbi(%struct.dw_pcie* %60, i32 %61, i32 %62)
  br label %64

64:                                               ; preds = %27, %19
  br label %65

65:                                               ; preds = %64, %1
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* @APPL_INTR_STATUS_L0_INT_INT, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %110

70:                                               ; preds = %65
  %71 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %2, align 8
  %72 = load i32, i32* @APPL_INTR_STATUS_L1_8_0, align 4
  %73 = call i32 @appl_readl(%struct.tegra_pcie_dw* %71, i32 %72)
  store i32 %73, i32* %5, align 4
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* @APPL_INTR_STATUS_L1_8_0_AUTO_BW_INT_STS, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %70
  %79 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %2, align 8
  %80 = load i32, i32* @APPL_INTR_STATUS_L1_8_0_AUTO_BW_INT_STS, align 4
  %81 = load i32, i32* @APPL_INTR_STATUS_L1_8_0, align 4
  %82 = call i32 @appl_writel(%struct.tegra_pcie_dw* %79, i32 %80, i32 %81)
  %83 = load %struct.pcie_port*, %struct.pcie_port** %4, align 8
  %84 = call i32 @apply_bad_link_workaround(%struct.pcie_port* %83)
  br label %85

85:                                               ; preds = %78, %70
  %86 = load i32, i32* %5, align 4
  %87 = load i32, i32* @APPL_INTR_STATUS_L1_8_0_BW_MGT_INT_STS, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %109

90:                                               ; preds = %85
  %91 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %2, align 8
  %92 = load i32, i32* @APPL_INTR_STATUS_L1_8_0_BW_MGT_INT_STS, align 4
  %93 = load i32, i32* @APPL_INTR_STATUS_L1_8_0, align 4
  %94 = call i32 @appl_writel(%struct.tegra_pcie_dw* %91, i32 %92, i32 %93)
  %95 = load %struct.dw_pcie*, %struct.dw_pcie** %3, align 8
  %96 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %2, align 8
  %97 = getelementptr inbounds %struct.tegra_pcie_dw, %struct.tegra_pcie_dw* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @PCI_EXP_LNKSTA, align 8
  %100 = add nsw i64 %98, %99
  %101 = call i32 @dw_pcie_readw_dbi(%struct.dw_pcie* %95, i64 %100)
  store i32 %101, i32* %7, align 4
  %102 = load %struct.dw_pcie*, %struct.dw_pcie** %3, align 8
  %103 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %7, align 4
  %106 = load i32, i32* @PCI_EXP_LNKSTA_CLS, align 4
  %107 = and i32 %105, %106
  %108 = call i32 @dev_dbg(i32 %104, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %107)
  br label %109

109:                                              ; preds = %90, %85
  br label %110

110:                                              ; preds = %109, %65
  %111 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %2, align 8
  %112 = load i32, i32* @APPL_INTR_STATUS_L0, align 4
  %113 = call i32 @appl_readl(%struct.tegra_pcie_dw* %111, i32 %112)
  store i32 %113, i32* %5, align 4
  %114 = load i32, i32* %5, align 4
  %115 = load i32, i32* @APPL_INTR_STATUS_L0_CDM_REG_CHK_INT, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %176

118:                                              ; preds = %110
  %119 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %2, align 8
  %120 = load i32, i32* @APPL_INTR_STATUS_L1_18, align 4
  %121 = call i32 @appl_readl(%struct.tegra_pcie_dw* %119, i32 %120)
  store i32 %121, i32* %5, align 4
  %122 = load %struct.dw_pcie*, %struct.dw_pcie** %3, align 8
  %123 = load i32, i32* @PCIE_PL_CHK_REG_CONTROL_STATUS, align 4
  %124 = call i32 @dw_pcie_readl_dbi(%struct.dw_pcie* %122, i32 %123)
  store i32 %124, i32* %6, align 4
  %125 = load i32, i32* %5, align 4
  %126 = load i32, i32* @APPL_INTR_STATUS_L1_18_CDM_REG_CHK_CMPLT, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %137

129:                                              ; preds = %118
  %130 = load %struct.dw_pcie*, %struct.dw_pcie** %3, align 8
  %131 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @dev_info(i32 %132, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %134 = load i32, i32* @PCIE_PL_CHK_REG_CHK_REG_COMPLETE, align 4
  %135 = load i32, i32* %6, align 4
  %136 = or i32 %135, %134
  store i32 %136, i32* %6, align 4
  br label %137

137:                                              ; preds = %129, %118
  %138 = load i32, i32* %5, align 4
  %139 = load i32, i32* @APPL_INTR_STATUS_L1_18_CDM_REG_CHK_CMP_ERR, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %150

142:                                              ; preds = %137
  %143 = load %struct.dw_pcie*, %struct.dw_pcie** %3, align 8
  %144 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = call i32 (i32, i8*, ...) @dev_err(i32 %145, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %147 = load i32, i32* @PCIE_PL_CHK_REG_CHK_REG_COMPARISON_ERROR, align 4
  %148 = load i32, i32* %6, align 4
  %149 = or i32 %148, %147
  store i32 %149, i32* %6, align 4
  br label %150

150:                                              ; preds = %142, %137
  %151 = load i32, i32* %5, align 4
  %152 = load i32, i32* @APPL_INTR_STATUS_L1_18_CDM_REG_CHK_LOGIC_ERR, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %163

155:                                              ; preds = %150
  %156 = load %struct.dw_pcie*, %struct.dw_pcie** %3, align 8
  %157 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = call i32 (i32, i8*, ...) @dev_err(i32 %158, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %160 = load i32, i32* @PCIE_PL_CHK_REG_CHK_REG_LOGIC_ERROR, align 4
  %161 = load i32, i32* %6, align 4
  %162 = or i32 %161, %160
  store i32 %162, i32* %6, align 4
  br label %163

163:                                              ; preds = %155, %150
  %164 = load %struct.dw_pcie*, %struct.dw_pcie** %3, align 8
  %165 = load i32, i32* @PCIE_PL_CHK_REG_CONTROL_STATUS, align 4
  %166 = load i32, i32* %6, align 4
  %167 = call i32 @dw_pcie_writel_dbi(%struct.dw_pcie* %164, i32 %165, i32 %166)
  %168 = load %struct.dw_pcie*, %struct.dw_pcie** %3, align 8
  %169 = load i32, i32* @PCIE_PL_CHK_REG_ERR_ADDR, align 4
  %170 = call i32 @dw_pcie_readl_dbi(%struct.dw_pcie* %168, i32 %169)
  store i32 %170, i32* %6, align 4
  %171 = load %struct.dw_pcie*, %struct.dw_pcie** %3, align 8
  %172 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* %6, align 4
  %175 = call i32 (i32, i8*, ...) @dev_err(i32 %173, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %174)
  br label %176

176:                                              ; preds = %163, %110
  %177 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %177
}

declare dso_local i32 @appl_readl(%struct.tegra_pcie_dw*, i32) #1

declare dso_local i32 @appl_writel(%struct.tegra_pcie_dw*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @dw_pcie_readl_dbi(%struct.dw_pcie*, i32) #1

declare dso_local i32 @dw_pcie_writel_dbi(%struct.dw_pcie*, i32, i32) #1

declare dso_local i32 @apply_bad_link_workaround(%struct.pcie_port*) #1

declare dso_local i32 @dw_pcie_readw_dbi(%struct.dw_pcie*, i64) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @dev_info(i32, i8*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
