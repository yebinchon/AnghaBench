; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-tegra194.c_tegra_pcie_config_controller.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-tegra194.c_tegra_pcie_config_controller.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_pcie_dw = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"Failed to enable controller %u: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Failed to enable regulator: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Failed to enable core clock: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"Failed to deassert core APB reset: %d\0A\00", align 1
@APPL_CTRL = common dso_local global i32 0, align 4
@APPL_CTRL_HW_HOT_RST_MODE_MASK = common dso_local global i32 0, align 4
@APPL_CTRL_HW_HOT_RST_MODE_SHIFT = common dso_local global i32 0, align 4
@APPL_CTRL_HW_HOT_RST_EN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"Failed to enable PHY: %d\0A\00", align 1
@APPL_CFG_BASE_ADDR_MASK = common dso_local global i32 0, align 4
@APPL_CFG_BASE_ADDR = common dso_local global i32 0, align 4
@APPL_DM_TYPE_RP = common dso_local global i32 0, align 4
@APPL_DM_TYPE = common dso_local global i32 0, align 4
@APPL_CFG_SLCG_OVERRIDE = common dso_local global i32 0, align 4
@APPL_CTRL_SYS_PRE_DET_STATE = common dso_local global i32 0, align 4
@APPL_CFG_MISC = common dso_local global i32 0, align 4
@APPL_CFG_MISC_ARCACHE_VAL = common dso_local global i32 0, align 4
@APPL_CFG_MISC_ARCACHE_SHIFT = common dso_local global i32 0, align 4
@APPL_PINMUX = common dso_local global i32 0, align 4
@APPL_PINMUX_CLKREQ_OUT_OVRD_EN = common dso_local global i32 0, align 4
@APPL_PINMUX_CLKREQ_OUT_OVRD = common dso_local global i32 0, align 4
@APPL_CFG_IATU_DMA_BASE_ADDR_MASK = common dso_local global i32 0, align 4
@APPL_CFG_IATU_DMA_BASE_ADDR = common dso_local global i32 0, align 4
@PCI_CAP_ID_EXP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_pcie_dw*, i32)* @tegra_pcie_config_controller to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_pcie_config_controller(%struct.tegra_pcie_dw* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tegra_pcie_dw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.tegra_pcie_dw* %0, %struct.tegra_pcie_dw** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %4, align 8
  %9 = call i32 @tegra_pcie_bpmp_set_ctrl_state(%struct.tegra_pcie_dw* %8, i32 1)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %2
  %13 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %4, align 8
  %14 = getelementptr inbounds %struct.tegra_pcie_dw, %struct.tegra_pcie_dw* %13, i32 0, i32 9
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %4, align 8
  %17 = getelementptr inbounds %struct.tegra_pcie_dw, %struct.tegra_pcie_dw* %16, i32 0, i32 10
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %15, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %19)
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %3, align 4
  br label %209

22:                                               ; preds = %2
  %23 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %4, align 8
  %24 = call i32 @tegra_pcie_enable_slot_regulators(%struct.tegra_pcie_dw* %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %205

28:                                               ; preds = %22
  %29 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %4, align 8
  %30 = getelementptr inbounds %struct.tegra_pcie_dw, %struct.tegra_pcie_dw* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @regulator_enable(i32 %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %28
  %36 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %4, align 8
  %37 = getelementptr inbounds %struct.tegra_pcie_dw, %struct.tegra_pcie_dw* %36, i32 0, i32 9
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %38, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  br label %202

41:                                               ; preds = %28
  %42 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %4, align 8
  %43 = getelementptr inbounds %struct.tegra_pcie_dw, %struct.tegra_pcie_dw* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @clk_prepare_enable(i32 %44)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %41
  %49 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %4, align 8
  %50 = getelementptr inbounds %struct.tegra_pcie_dw, %struct.tegra_pcie_dw* %49, i32 0, i32 9
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %6, align 4
  %53 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %51, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %52)
  br label %197

54:                                               ; preds = %41
  %55 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %4, align 8
  %56 = getelementptr inbounds %struct.tegra_pcie_dw, %struct.tegra_pcie_dw* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @reset_control_deassert(i32 %57)
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %54
  %62 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %4, align 8
  %63 = getelementptr inbounds %struct.tegra_pcie_dw, %struct.tegra_pcie_dw* %62, i32 0, i32 9
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* %6, align 4
  %66 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %64, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %65)
  br label %192

67:                                               ; preds = %54
  %68 = load i32, i32* %5, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %87

70:                                               ; preds = %67
  %71 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %4, align 8
  %72 = load i32, i32* @APPL_CTRL, align 4
  %73 = call i32 @appl_readl(%struct.tegra_pcie_dw* %71, i32 %72)
  store i32 %73, i32* %7, align 4
  %74 = load i32, i32* @APPL_CTRL_HW_HOT_RST_MODE_MASK, align 4
  %75 = load i32, i32* @APPL_CTRL_HW_HOT_RST_MODE_SHIFT, align 4
  %76 = shl i32 %74, %75
  %77 = xor i32 %76, -1
  %78 = load i32, i32* %7, align 4
  %79 = and i32 %78, %77
  store i32 %79, i32* %7, align 4
  %80 = load i32, i32* @APPL_CTRL_HW_HOT_RST_EN, align 4
  %81 = load i32, i32* %7, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %7, align 4
  %83 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %4, align 8
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* @APPL_CTRL, align 4
  %86 = call i32 @appl_writel(%struct.tegra_pcie_dw* %83, i32 %84, i32 %85)
  br label %87

87:                                               ; preds = %70, %67
  %88 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %4, align 8
  %89 = call i32 @tegra_pcie_enable_phy(%struct.tegra_pcie_dw* %88)
  store i32 %89, i32* %6, align 4
  %90 = load i32, i32* %6, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %87
  %93 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %4, align 8
  %94 = getelementptr inbounds %struct.tegra_pcie_dw, %struct.tegra_pcie_dw* %93, i32 0, i32 9
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* %6, align 4
  %97 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %95, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %96)
  br label %187

98:                                               ; preds = %87
  %99 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %4, align 8
  %100 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %4, align 8
  %101 = getelementptr inbounds %struct.tegra_pcie_dw, %struct.tegra_pcie_dw* %100, i32 0, i32 8
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @APPL_CFG_BASE_ADDR_MASK, align 4
  %106 = and i32 %104, %105
  %107 = load i32, i32* @APPL_CFG_BASE_ADDR, align 4
  %108 = call i32 @appl_writel(%struct.tegra_pcie_dw* %99, i32 %106, i32 %107)
  %109 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %4, align 8
  %110 = load i32, i32* @APPL_DM_TYPE_RP, align 4
  %111 = load i32, i32* @APPL_DM_TYPE, align 4
  %112 = call i32 @appl_writel(%struct.tegra_pcie_dw* %109, i32 %110, i32 %111)
  %113 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %4, align 8
  %114 = load i32, i32* @APPL_CFG_SLCG_OVERRIDE, align 4
  %115 = call i32 @appl_writel(%struct.tegra_pcie_dw* %113, i32 0, i32 %114)
  %116 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %4, align 8
  %117 = load i32, i32* @APPL_CTRL, align 4
  %118 = call i32 @appl_readl(%struct.tegra_pcie_dw* %116, i32 %117)
  store i32 %118, i32* %7, align 4
  %119 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %4, align 8
  %120 = load i32, i32* %7, align 4
  %121 = load i32, i32* @APPL_CTRL_SYS_PRE_DET_STATE, align 4
  %122 = or i32 %120, %121
  %123 = load i32, i32* @APPL_CTRL, align 4
  %124 = call i32 @appl_writel(%struct.tegra_pcie_dw* %119, i32 %122, i32 %123)
  %125 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %4, align 8
  %126 = load i32, i32* @APPL_CFG_MISC, align 4
  %127 = call i32 @appl_readl(%struct.tegra_pcie_dw* %125, i32 %126)
  store i32 %127, i32* %7, align 4
  %128 = load i32, i32* @APPL_CFG_MISC_ARCACHE_VAL, align 4
  %129 = load i32, i32* @APPL_CFG_MISC_ARCACHE_SHIFT, align 4
  %130 = shl i32 %128, %129
  %131 = load i32, i32* %7, align 4
  %132 = or i32 %131, %130
  store i32 %132, i32* %7, align 4
  %133 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %4, align 8
  %134 = load i32, i32* %7, align 4
  %135 = load i32, i32* @APPL_CFG_MISC, align 4
  %136 = call i32 @appl_writel(%struct.tegra_pcie_dw* %133, i32 %134, i32 %135)
  %137 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %4, align 8
  %138 = getelementptr inbounds %struct.tegra_pcie_dw, %struct.tegra_pcie_dw* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %155, label %141

141:                                              ; preds = %98
  %142 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %4, align 8
  %143 = load i32, i32* @APPL_PINMUX, align 4
  %144 = call i32 @appl_readl(%struct.tegra_pcie_dw* %142, i32 %143)
  store i32 %144, i32* %7, align 4
  %145 = load i32, i32* @APPL_PINMUX_CLKREQ_OUT_OVRD_EN, align 4
  %146 = load i32, i32* %7, align 4
  %147 = or i32 %146, %145
  store i32 %147, i32* %7, align 4
  %148 = load i32, i32* @APPL_PINMUX_CLKREQ_OUT_OVRD, align 4
  %149 = load i32, i32* %7, align 4
  %150 = or i32 %149, %148
  store i32 %150, i32* %7, align 4
  %151 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %4, align 8
  %152 = load i32, i32* %7, align 4
  %153 = load i32, i32* @APPL_PINMUX, align 4
  %154 = call i32 @appl_writel(%struct.tegra_pcie_dw* %151, i32 %152, i32 %153)
  br label %155

155:                                              ; preds = %141, %98
  %156 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %4, align 8
  %157 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %4, align 8
  %158 = getelementptr inbounds %struct.tegra_pcie_dw, %struct.tegra_pcie_dw* %157, i32 0, i32 7
  %159 = load %struct.TYPE_4__*, %struct.TYPE_4__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* @APPL_CFG_IATU_DMA_BASE_ADDR_MASK, align 4
  %163 = and i32 %161, %162
  %164 = load i32, i32* @APPL_CFG_IATU_DMA_BASE_ADDR, align 4
  %165 = call i32 @appl_writel(%struct.tegra_pcie_dw* %156, i32 %163, i32 %164)
  %166 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %4, align 8
  %167 = getelementptr inbounds %struct.tegra_pcie_dw, %struct.tegra_pcie_dw* %166, i32 0, i32 6
  %168 = load i32, i32* %167, align 8
  %169 = call i32 @reset_control_deassert(i32 %168)
  %170 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %4, align 8
  %171 = getelementptr inbounds %struct.tegra_pcie_dw, %struct.tegra_pcie_dw* %170, i32 0, i32 4
  %172 = load i32, i32* @PCI_CAP_ID_EXP, align 4
  %173 = call i32 @dw_pcie_find_capability(i32* %171, i32 %172)
  %174 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %4, align 8
  %175 = getelementptr inbounds %struct.tegra_pcie_dw, %struct.tegra_pcie_dw* %174, i32 0, i32 5
  store i32 %173, i32* %175, align 4
  %176 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %4, align 8
  %177 = getelementptr inbounds %struct.tegra_pcie_dw, %struct.tegra_pcie_dw* %176, i32 0, i32 3
  %178 = load i32, i32* %177, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %185, label %180

180:                                              ; preds = %155
  %181 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %4, align 8
  %182 = call i32 @disable_aspm_l11(%struct.tegra_pcie_dw* %181)
  %183 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %4, align 8
  %184 = call i32 @disable_aspm_l12(%struct.tegra_pcie_dw* %183)
  br label %185

185:                                              ; preds = %180, %155
  %186 = load i32, i32* %6, align 4
  store i32 %186, i32* %3, align 4
  br label %209

187:                                              ; preds = %92
  %188 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %4, align 8
  %189 = getelementptr inbounds %struct.tegra_pcie_dw, %struct.tegra_pcie_dw* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 8
  %191 = call i32 @reset_control_assert(i32 %190)
  br label %192

192:                                              ; preds = %187, %61
  %193 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %4, align 8
  %194 = getelementptr inbounds %struct.tegra_pcie_dw, %struct.tegra_pcie_dw* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = call i32 @clk_disable_unprepare(i32 %195)
  br label %197

197:                                              ; preds = %192, %48
  %198 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %4, align 8
  %199 = getelementptr inbounds %struct.tegra_pcie_dw, %struct.tegra_pcie_dw* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = call i32 @regulator_disable(i32 %200)
  br label %202

202:                                              ; preds = %197, %35
  %203 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %4, align 8
  %204 = call i32 @tegra_pcie_disable_slot_regulators(%struct.tegra_pcie_dw* %203)
  br label %205

205:                                              ; preds = %202, %27
  %206 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %4, align 8
  %207 = call i32 @tegra_pcie_bpmp_set_ctrl_state(%struct.tegra_pcie_dw* %206, i32 0)
  %208 = load i32, i32* %6, align 4
  store i32 %208, i32* %3, align 4
  br label %209

209:                                              ; preds = %205, %185, %12
  %210 = load i32, i32* %3, align 4
  ret i32 %210
}

declare dso_local i32 @tegra_pcie_bpmp_set_ctrl_state(%struct.tegra_pcie_dw*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, ...) #1

declare dso_local i32 @tegra_pcie_enable_slot_regulators(%struct.tegra_pcie_dw*) #1

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @reset_control_deassert(i32) #1

declare dso_local i32 @appl_readl(%struct.tegra_pcie_dw*, i32) #1

declare dso_local i32 @appl_writel(%struct.tegra_pcie_dw*, i32, i32) #1

declare dso_local i32 @tegra_pcie_enable_phy(%struct.tegra_pcie_dw*) #1

declare dso_local i32 @dw_pcie_find_capability(i32*, i32) #1

declare dso_local i32 @disable_aspm_l11(%struct.tegra_pcie_dw*) #1

declare dso_local i32 @disable_aspm_l12(%struct.tegra_pcie_dw*) #1

declare dso_local i32 @reset_control_assert(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @regulator_disable(i32) #1

declare dso_local i32 @tegra_pcie_disable_slot_regulators(%struct.tegra_pcie_dw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
