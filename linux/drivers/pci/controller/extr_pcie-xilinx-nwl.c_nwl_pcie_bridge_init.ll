; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-xilinx-nwl.c_nwl_pcie_bridge_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-xilinx-nwl.c_nwl_pcie_bridge_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nwl_pcie = type { i32, i32, i32, i64, i32, i32, %struct.device* }
%struct.device = type { i32 }
%struct.platform_device = type { i32 }

@E_BREG_CAPABILITIES = common dso_local global i32 0, align 4
@BREG_PRESENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"BREG is not present\0A\00", align 1
@E_BREG_BASE_LO = common dso_local global i32 0, align 4
@E_BREG_BASE_HI = common dso_local global i32 0, align 4
@BREG_ENABLE_FORCE = common dso_local global i32 0, align 4
@BREG_ENABLE = common dso_local global i32 0, align 4
@E_BREG_CONTROL = common dso_local global i32 0, align 4
@BRCFG_PCIE_RX0 = common dso_local global i32 0, align 4
@CFG_DMA_REG_BAR = common dso_local global i32 0, align 4
@SET_ISUB_CONTROL = common dso_local global i32 0, align 4
@I_ISUB_CONTROL = common dso_local global i32 0, align 4
@CFG_ENABLE_MSG_FILTER_MASK = common dso_local global i32 0, align 4
@BRCFG_PCIE_RX_MSG_FILTER = common dso_local global i32 0, align 4
@E_ECAM_CAPABILITIES = common dso_local global i32 0, align 4
@E_ECAM_PRESENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"ECAM is not present\0A\00", align 1
@E_ECAM_CONTROL = common dso_local global i32 0, align 4
@E_ECAM_CR_ENABLE = common dso_local global i32 0, align 4
@E_ECAM_SIZE_SHIFT = common dso_local global i32 0, align 4
@E_ECAM_BASE_LO = common dso_local global i32 0, align 4
@E_ECAM_BASE_HI = common dso_local global i32 0, align 4
@E_ECAM_SIZE_LOC = common dso_local global i32 0, align 4
@PCI_PRIMARY_BUS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [12 x i8] c"Link is UP\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"Link is DOWN\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"misc\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"failed to get misc IRQ %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@nwl_pcie_misc_handler = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [14 x i8] c"nwl_pcie:misc\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"fail to register misc IRQ#%d\0A\00", align 1
@MSGF_MISC_SR_MASKALL = common dso_local global i32 0, align 4
@MSGF_MISC_MASK = common dso_local global i32 0, align 4
@MSGF_MISC_STATUS = common dso_local global i32 0, align 4
@MSGF_LEG_SR_MASKALL = common dso_local global i32 0, align 4
@MSGF_LEG_MASK = common dso_local global i32 0, align 4
@MSGF_LEG_STATUS = common dso_local global i32 0, align 4
@BRCFG_INTERRUPT = common dso_local global i32 0, align 4
@BRCFG_INTERRUPT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nwl_pcie*)* @nwl_pcie_bridge_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nwl_pcie_bridge_init(%struct.nwl_pcie* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nwl_pcie*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.nwl_pcie* %0, %struct.nwl_pcie** %3, align 8
  %10 = load %struct.nwl_pcie*, %struct.nwl_pcie** %3, align 8
  %11 = getelementptr inbounds %struct.nwl_pcie, %struct.nwl_pcie* %10, i32 0, i32 6
  %12 = load %struct.device*, %struct.device** %11, align 8
  store %struct.device* %12, %struct.device** %4, align 8
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = call %struct.platform_device* @to_platform_device(%struct.device* %13)
  store %struct.platform_device* %14, %struct.platform_device** %5, align 8
  store i32 0, i32* %8, align 4
  %15 = load %struct.nwl_pcie*, %struct.nwl_pcie** %3, align 8
  %16 = load i32, i32* @E_BREG_CAPABILITIES, align 4
  %17 = call i32 @nwl_bridge_readl(%struct.nwl_pcie* %15, i32 %16)
  %18 = load i32, i32* @BREG_PRESENT, align 4
  %19 = and i32 %17, %18
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %1
  %23 = load %struct.device*, %struct.device** %4, align 8
  %24 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %23, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %2, align 4
  br label %234

26:                                               ; preds = %1
  %27 = load %struct.nwl_pcie*, %struct.nwl_pcie** %3, align 8
  %28 = load %struct.nwl_pcie*, %struct.nwl_pcie** %3, align 8
  %29 = getelementptr inbounds %struct.nwl_pcie, %struct.nwl_pcie* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @lower_32_bits(i32 %30)
  %32 = load i32, i32* @E_BREG_BASE_LO, align 4
  %33 = call i32 @nwl_bridge_writel(%struct.nwl_pcie* %27, i32 %31, i32 %32)
  %34 = load %struct.nwl_pcie*, %struct.nwl_pcie** %3, align 8
  %35 = load %struct.nwl_pcie*, %struct.nwl_pcie** %3, align 8
  %36 = getelementptr inbounds %struct.nwl_pcie, %struct.nwl_pcie* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @upper_32_bits(i32 %37)
  %39 = load i32, i32* @E_BREG_BASE_HI, align 4
  %40 = call i32 @nwl_bridge_writel(%struct.nwl_pcie* %34, i32 %38, i32 %39)
  %41 = load %struct.nwl_pcie*, %struct.nwl_pcie** %3, align 8
  %42 = load i32, i32* @BREG_ENABLE_FORCE, align 4
  %43 = xor i32 %42, -1
  %44 = load i32, i32* @BREG_ENABLE, align 4
  %45 = and i32 %43, %44
  %46 = load i32, i32* @E_BREG_CONTROL, align 4
  %47 = call i32 @nwl_bridge_writel(%struct.nwl_pcie* %41, i32 %45, i32 %46)
  %48 = load %struct.nwl_pcie*, %struct.nwl_pcie** %3, align 8
  %49 = load %struct.nwl_pcie*, %struct.nwl_pcie** %3, align 8
  %50 = load i32, i32* @BRCFG_PCIE_RX0, align 4
  %51 = call i32 @nwl_bridge_readl(%struct.nwl_pcie* %49, i32 %50)
  %52 = load i32, i32* @CFG_DMA_REG_BAR, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @BRCFG_PCIE_RX0, align 4
  %55 = call i32 @nwl_bridge_writel(%struct.nwl_pcie* %48, i32 %53, i32 %54)
  %56 = load %struct.nwl_pcie*, %struct.nwl_pcie** %3, align 8
  %57 = load i32, i32* @SET_ISUB_CONTROL, align 4
  %58 = load i32, i32* @I_ISUB_CONTROL, align 4
  %59 = call i32 @nwl_bridge_writel(%struct.nwl_pcie* %56, i32 %57, i32 %58)
  %60 = load %struct.nwl_pcie*, %struct.nwl_pcie** %3, align 8
  %61 = load i32, i32* @CFG_ENABLE_MSG_FILTER_MASK, align 4
  %62 = load i32, i32* @BRCFG_PCIE_RX_MSG_FILTER, align 4
  %63 = call i32 @nwl_bridge_writel(%struct.nwl_pcie* %60, i32 %61, i32 %62)
  %64 = load %struct.nwl_pcie*, %struct.nwl_pcie** %3, align 8
  %65 = call i32 @nwl_wait_for_link(%struct.nwl_pcie* %64)
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %9, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %26
  %69 = load i32, i32* %9, align 4
  store i32 %69, i32* %2, align 4
  br label %234

70:                                               ; preds = %26
  %71 = load %struct.nwl_pcie*, %struct.nwl_pcie** %3, align 8
  %72 = load i32, i32* @E_ECAM_CAPABILITIES, align 4
  %73 = call i32 @nwl_bridge_readl(%struct.nwl_pcie* %71, i32 %72)
  %74 = load i32, i32* @E_ECAM_PRESENT, align 4
  %75 = and i32 %73, %74
  store i32 %75, i32* %7, align 4
  %76 = load i32, i32* %7, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %70
  %79 = load %struct.device*, %struct.device** %4, align 8
  %80 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %79, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %81 = load i32, i32* %7, align 4
  store i32 %81, i32* %2, align 4
  br label %234

82:                                               ; preds = %70
  %83 = load %struct.nwl_pcie*, %struct.nwl_pcie** %3, align 8
  %84 = load %struct.nwl_pcie*, %struct.nwl_pcie** %3, align 8
  %85 = load i32, i32* @E_ECAM_CONTROL, align 4
  %86 = call i32 @nwl_bridge_readl(%struct.nwl_pcie* %84, i32 %85)
  %87 = load i32, i32* @E_ECAM_CR_ENABLE, align 4
  %88 = or i32 %86, %87
  %89 = load i32, i32* @E_ECAM_CONTROL, align 4
  %90 = call i32 @nwl_bridge_writel(%struct.nwl_pcie* %83, i32 %88, i32 %89)
  %91 = load %struct.nwl_pcie*, %struct.nwl_pcie** %3, align 8
  %92 = load %struct.nwl_pcie*, %struct.nwl_pcie** %3, align 8
  %93 = load i32, i32* @E_ECAM_CONTROL, align 4
  %94 = call i32 @nwl_bridge_readl(%struct.nwl_pcie* %92, i32 %93)
  %95 = load %struct.nwl_pcie*, %struct.nwl_pcie** %3, align 8
  %96 = getelementptr inbounds %struct.nwl_pcie, %struct.nwl_pcie* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @E_ECAM_SIZE_SHIFT, align 4
  %99 = shl i32 %97, %98
  %100 = or i32 %94, %99
  %101 = load i32, i32* @E_ECAM_CONTROL, align 4
  %102 = call i32 @nwl_bridge_writel(%struct.nwl_pcie* %91, i32 %100, i32 %101)
  %103 = load %struct.nwl_pcie*, %struct.nwl_pcie** %3, align 8
  %104 = load %struct.nwl_pcie*, %struct.nwl_pcie** %3, align 8
  %105 = getelementptr inbounds %struct.nwl_pcie, %struct.nwl_pcie* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @lower_32_bits(i32 %106)
  %108 = load i32, i32* @E_ECAM_BASE_LO, align 4
  %109 = call i32 @nwl_bridge_writel(%struct.nwl_pcie* %103, i32 %107, i32 %108)
  %110 = load %struct.nwl_pcie*, %struct.nwl_pcie** %3, align 8
  %111 = load %struct.nwl_pcie*, %struct.nwl_pcie** %3, align 8
  %112 = getelementptr inbounds %struct.nwl_pcie, %struct.nwl_pcie* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @upper_32_bits(i32 %113)
  %115 = load i32, i32* @E_ECAM_BASE_HI, align 4
  %116 = call i32 @nwl_bridge_writel(%struct.nwl_pcie* %110, i32 %114, i32 %115)
  %117 = load %struct.nwl_pcie*, %struct.nwl_pcie** %3, align 8
  %118 = load i32, i32* @E_ECAM_CONTROL, align 4
  %119 = call i32 @nwl_bridge_readl(%struct.nwl_pcie* %117, i32 %118)
  store i32 %119, i32* %7, align 4
  %120 = load i32, i32* %7, align 4
  %121 = load i32, i32* @E_ECAM_SIZE_LOC, align 4
  %122 = and i32 %120, %121
  %123 = load i32, i32* @E_ECAM_SIZE_SHIFT, align 4
  %124 = ashr i32 %122, %123
  %125 = load %struct.nwl_pcie*, %struct.nwl_pcie** %3, align 8
  %126 = getelementptr inbounds %struct.nwl_pcie, %struct.nwl_pcie* %125, i32 0, i32 1
  store i32 %124, i32* %126, align 4
  %127 = load i32, i32* %8, align 4
  store i32 %127, i32* %7, align 4
  %128 = load i32, i32* %8, align 4
  %129 = add nsw i32 %128, 1
  %130 = shl i32 %129, 8
  %131 = load i32, i32* %7, align 4
  %132 = or i32 %131, %130
  store i32 %132, i32* %7, align 4
  %133 = load %struct.nwl_pcie*, %struct.nwl_pcie** %3, align 8
  %134 = getelementptr inbounds %struct.nwl_pcie, %struct.nwl_pcie* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @E_ECAM_SIZE_SHIFT, align 4
  %137 = shl i32 %135, %136
  %138 = load i32, i32* %7, align 4
  %139 = or i32 %138, %137
  store i32 %139, i32* %7, align 4
  %140 = load i32, i32* %7, align 4
  %141 = load %struct.nwl_pcie*, %struct.nwl_pcie** %3, align 8
  %142 = getelementptr inbounds %struct.nwl_pcie, %struct.nwl_pcie* %141, i32 0, i32 3
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @PCI_PRIMARY_BUS, align 8
  %145 = add nsw i64 %143, %144
  %146 = call i32 @writel(i32 %140, i64 %145)
  %147 = load %struct.nwl_pcie*, %struct.nwl_pcie** %3, align 8
  %148 = call i64 @nwl_pcie_link_up(%struct.nwl_pcie* %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %82
  %151 = load %struct.device*, %struct.device** %4, align 8
  %152 = call i32 @dev_info(%struct.device* %151, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  br label %156

153:                                              ; preds = %82
  %154 = load %struct.device*, %struct.device** %4, align 8
  %155 = call i32 @dev_info(%struct.device* %154, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  br label %156

156:                                              ; preds = %153, %150
  %157 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %158 = call i32 @platform_get_irq_byname(%struct.platform_device* %157, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %159 = load %struct.nwl_pcie*, %struct.nwl_pcie** %3, align 8
  %160 = getelementptr inbounds %struct.nwl_pcie, %struct.nwl_pcie* %159, i32 0, i32 2
  store i32 %158, i32* %160, align 8
  %161 = load %struct.nwl_pcie*, %struct.nwl_pcie** %3, align 8
  %162 = getelementptr inbounds %struct.nwl_pcie, %struct.nwl_pcie* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = icmp slt i32 %163, 0
  br i1 %164, label %165, label %173

165:                                              ; preds = %156
  %166 = load %struct.device*, %struct.device** %4, align 8
  %167 = load %struct.nwl_pcie*, %struct.nwl_pcie** %3, align 8
  %168 = getelementptr inbounds %struct.nwl_pcie, %struct.nwl_pcie* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %166, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32 %169)
  %171 = load i32, i32* @EINVAL, align 4
  %172 = sub nsw i32 0, %171
  store i32 %172, i32* %2, align 4
  br label %234

173:                                              ; preds = %156
  %174 = load %struct.device*, %struct.device** %4, align 8
  %175 = load %struct.nwl_pcie*, %struct.nwl_pcie** %3, align 8
  %176 = getelementptr inbounds %struct.nwl_pcie, %struct.nwl_pcie* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 8
  %178 = load i32, i32* @nwl_pcie_misc_handler, align 4
  %179 = load i32, i32* @IRQF_SHARED, align 4
  %180 = load %struct.nwl_pcie*, %struct.nwl_pcie** %3, align 8
  %181 = call i32 @devm_request_irq(%struct.device* %174, i32 %177, i32 %178, i32 %179, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), %struct.nwl_pcie* %180)
  store i32 %181, i32* %9, align 4
  %182 = load i32, i32* %9, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %191

184:                                              ; preds = %173
  %185 = load %struct.device*, %struct.device** %4, align 8
  %186 = load %struct.nwl_pcie*, %struct.nwl_pcie** %3, align 8
  %187 = getelementptr inbounds %struct.nwl_pcie, %struct.nwl_pcie* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 8
  %189 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %185, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i32 %188)
  %190 = load i32, i32* %9, align 4
  store i32 %190, i32* %2, align 4
  br label %234

191:                                              ; preds = %173
  %192 = load %struct.nwl_pcie*, %struct.nwl_pcie** %3, align 8
  %193 = load i32, i32* @MSGF_MISC_SR_MASKALL, align 4
  %194 = xor i32 %193, -1
  %195 = load i32, i32* @MSGF_MISC_MASK, align 4
  %196 = call i32 @nwl_bridge_writel(%struct.nwl_pcie* %192, i32 %194, i32 %195)
  %197 = load %struct.nwl_pcie*, %struct.nwl_pcie** %3, align 8
  %198 = load %struct.nwl_pcie*, %struct.nwl_pcie** %3, align 8
  %199 = load i32, i32* @MSGF_MISC_STATUS, align 4
  %200 = call i32 @nwl_bridge_readl(%struct.nwl_pcie* %198, i32 %199)
  %201 = load i32, i32* @MSGF_MISC_SR_MASKALL, align 4
  %202 = and i32 %200, %201
  %203 = load i32, i32* @MSGF_MISC_STATUS, align 4
  %204 = call i32 @nwl_bridge_writel(%struct.nwl_pcie* %197, i32 %202, i32 %203)
  %205 = load %struct.nwl_pcie*, %struct.nwl_pcie** %3, align 8
  %206 = load i32, i32* @MSGF_MISC_SR_MASKALL, align 4
  %207 = load i32, i32* @MSGF_MISC_MASK, align 4
  %208 = call i32 @nwl_bridge_writel(%struct.nwl_pcie* %205, i32 %206, i32 %207)
  %209 = load %struct.nwl_pcie*, %struct.nwl_pcie** %3, align 8
  %210 = load i32, i32* @MSGF_LEG_SR_MASKALL, align 4
  %211 = xor i32 %210, -1
  %212 = load i32, i32* @MSGF_LEG_MASK, align 4
  %213 = call i32 @nwl_bridge_writel(%struct.nwl_pcie* %209, i32 %211, i32 %212)
  %214 = load %struct.nwl_pcie*, %struct.nwl_pcie** %3, align 8
  %215 = load %struct.nwl_pcie*, %struct.nwl_pcie** %3, align 8
  %216 = load i32, i32* @MSGF_LEG_STATUS, align 4
  %217 = call i32 @nwl_bridge_readl(%struct.nwl_pcie* %215, i32 %216)
  %218 = load i32, i32* @MSGF_LEG_SR_MASKALL, align 4
  %219 = and i32 %217, %218
  %220 = load i32, i32* @MSGF_LEG_STATUS, align 4
  %221 = call i32 @nwl_bridge_writel(%struct.nwl_pcie* %214, i32 %219, i32 %220)
  %222 = load %struct.nwl_pcie*, %struct.nwl_pcie** %3, align 8
  %223 = load i32, i32* @MSGF_LEG_SR_MASKALL, align 4
  %224 = load i32, i32* @MSGF_LEG_MASK, align 4
  %225 = call i32 @nwl_bridge_writel(%struct.nwl_pcie* %222, i32 %223, i32 %224)
  %226 = load %struct.nwl_pcie*, %struct.nwl_pcie** %3, align 8
  %227 = load %struct.nwl_pcie*, %struct.nwl_pcie** %3, align 8
  %228 = load i32, i32* @BRCFG_INTERRUPT, align 4
  %229 = call i32 @nwl_bridge_readl(%struct.nwl_pcie* %227, i32 %228)
  %230 = load i32, i32* @BRCFG_INTERRUPT_MASK, align 4
  %231 = or i32 %229, %230
  %232 = load i32, i32* @BRCFG_INTERRUPT, align 4
  %233 = call i32 @nwl_bridge_writel(%struct.nwl_pcie* %226, i32 %231, i32 %232)
  store i32 0, i32* %2, align 4
  br label %234

234:                                              ; preds = %191, %184, %165, %78, %68, %22
  %235 = load i32, i32* %2, align 4
  ret i32 %235
}

declare dso_local %struct.platform_device* @to_platform_device(%struct.device*) #1

declare dso_local i32 @nwl_bridge_readl(%struct.nwl_pcie*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @nwl_bridge_writel(%struct.nwl_pcie*, i32, i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @nwl_wait_for_link(%struct.nwl_pcie*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @nwl_pcie_link_up(%struct.nwl_pcie*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

declare dso_local i32 @platform_get_irq_byname(%struct.platform_device*, i8*) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i8*, %struct.nwl_pcie*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
