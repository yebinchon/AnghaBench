; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-rockchip-host.c_rockchip_pcie_host_init_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-rockchip-host.c_rockchip_pcie_host_init_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rockchip_pcie = type { i32, i32, i32*, i64, i32, %struct.device* }
%struct.device = type { i32 }

@MAX_LANE_NUM = common dso_local global i32 0, align 4
@PCIE_CORE_CTRL_PLC1 = common dso_local global i64 0, align 8
@PCIE_CORE_CTRL_PLC1_FTS_MASK = common dso_local global i32 0, align 4
@PCIE_CORE_CTRL_PLC1_FTS_CNT = common dso_local global i32 0, align 4
@PCIE_CORE_CTRL_PLC1_FTS_SHIFT = common dso_local global i32 0, align 4
@PCIE_RC_CONFIG_LCS = common dso_local global i64 0, align 8
@PCI_EXP_LNKSTA_SLC = common dso_local global i32 0, align 4
@PCI_EXP_LNKCTL_RCB = common dso_local global i32 0, align 4
@PCIE_CLIENT_LINK_TRAIN_ENABLE = common dso_local global i32 0, align 4
@PCIE_CLIENT_CONFIG = common dso_local global i64 0, align 8
@PCIE_CLIENT_BASIC_STATUS1 = common dso_local global i64 0, align 8
@USEC_PER_MSEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"PCIe link training gen1 timeout!\0A\00", align 1
@PCI_EXP_LNKCTL_RL = common dso_local global i32 0, align 4
@PCIE_CORE_CTRL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [53 x i8] c"PCIe link training gen2 timeout, fall back to gen1!\0A\00", align 1
@PCIE_CORE_PL_CONF_LANE_MASK = common dso_local global i32 0, align 4
@PCIE_CORE_PL_CONF_LANE_SHIFT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"current link width is x%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"idling lane %d\0A\00", align 1
@ROCKCHIP_VENDOR_ID = common dso_local global i32 0, align 4
@PCIE_CORE_CONFIG_VENDOR = common dso_local global i64 0, align 8
@PCI_CLASS_BRIDGE_PCI = common dso_local global i32 0, align 4
@PCIE_RC_CONFIG_SCC_SHIFT = common dso_local global i32 0, align 4
@PCIE_RC_CONFIG_RID_CCR = common dso_local global i64 0, align 8
@PCIE_RC_CONFIG_THP_CAP = common dso_local global i64 0, align 8
@PCIE_RC_CONFIG_THP_CAP_NEXT_MASK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"aspm-no-l0s\00", align 1
@PCIE_RC_CONFIG_LINK_CAP = common dso_local global i64 0, align 8
@PCIE_RC_CONFIG_LINK_CAP_L0S = common dso_local global i32 0, align 4
@PCIE_RC_CONFIG_DCSR = common dso_local global i64 0, align 8
@PCIE_RC_CONFIG_DCSR_MPS_MASK = common dso_local global i32 0, align 4
@PCIE_RC_CONFIG_DCSR_MPS_256 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rockchip_pcie*)* @rockchip_pcie_host_init_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rockchip_pcie_host_init_port(%struct.rockchip_pcie* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rockchip_pcie*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rockchip_pcie* %0, %struct.rockchip_pcie** %3, align 8
  %8 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %9 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %8, i32 0, i32 5
  %10 = load %struct.device*, %struct.device** %9, align 8
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load i32, i32* @MAX_LANE_NUM, align 4
  store i32 %11, i32* %6, align 4
  %12 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %13 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @gpiod_set_value_cansleep(i32 %14, i32 0)
  %16 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %17 = call i32 @rockchip_pcie_init_port(%struct.rockchip_pcie* %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* %5, align 4
  store i32 %21, i32* %2, align 4
  br label %248

22:                                               ; preds = %1
  %23 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %24 = load i64, i64* @PCIE_CORE_CTRL_PLC1, align 8
  %25 = call i32 @rockchip_pcie_read(%struct.rockchip_pcie* %23, i64 %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @PCIE_CORE_CTRL_PLC1_FTS_MASK, align 4
  %28 = xor i32 %27, -1
  %29 = and i32 %26, %28
  %30 = load i32, i32* @PCIE_CORE_CTRL_PLC1_FTS_CNT, align 4
  %31 = load i32, i32* @PCIE_CORE_CTRL_PLC1_FTS_SHIFT, align 4
  %32 = shl i32 %30, %31
  %33 = or i32 %29, %32
  store i32 %33, i32* %7, align 4
  %34 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load i64, i64* @PCIE_CORE_CTRL_PLC1, align 8
  %37 = call i32 @rockchip_pcie_write(%struct.rockchip_pcie* %34, i32 %35, i64 %36)
  %38 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %39 = call i32 @rockchip_pcie_set_power_limit(%struct.rockchip_pcie* %38)
  %40 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %41 = load i64, i64* @PCIE_RC_CONFIG_LCS, align 8
  %42 = call i32 @rockchip_pcie_read(%struct.rockchip_pcie* %40, i64 %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* @PCI_EXP_LNKSTA_SLC, align 4
  %44 = shl i32 %43, 16
  %45 = load i32, i32* %7, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %7, align 4
  %47 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %48 = load i32, i32* %7, align 4
  %49 = load i64, i64* @PCIE_RC_CONFIG_LCS, align 8
  %50 = call i32 @rockchip_pcie_write(%struct.rockchip_pcie* %47, i32 %48, i64 %49)
  %51 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %52 = load i64, i64* @PCIE_RC_CONFIG_LCS, align 8
  %53 = call i32 @rockchip_pcie_read(%struct.rockchip_pcie* %51, i64 %52)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* @PCI_EXP_LNKCTL_RCB, align 4
  %55 = load i32, i32* %7, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %7, align 4
  %57 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %58 = load i32, i32* %7, align 4
  %59 = load i64, i64* @PCIE_RC_CONFIG_LCS, align 8
  %60 = call i32 @rockchip_pcie_write(%struct.rockchip_pcie* %57, i32 %58, i64 %59)
  %61 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %62 = load i32, i32* @PCIE_CLIENT_LINK_TRAIN_ENABLE, align 4
  %63 = load i64, i64* @PCIE_CLIENT_CONFIG, align 8
  %64 = call i32 @rockchip_pcie_write(%struct.rockchip_pcie* %61, i32 %62, i64 %63)
  %65 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %66 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @gpiod_set_value_cansleep(i32 %67, i32 1)
  %69 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %70 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %69, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @PCIE_CLIENT_BASIC_STATUS1, align 8
  %73 = add nsw i64 %71, %72
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @PCIE_LINK_UP(i32 %75)
  %77 = load i32, i32* @USEC_PER_MSEC, align 4
  %78 = mul nsw i32 500, %77
  %79 = call i32 @readl_poll_timeout(i64 %73, i32 %74, i32 %76, i32 20, i32 %78)
  store i32 %79, i32* %5, align 4
  %80 = load i32, i32* %5, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %22
  %83 = load %struct.device*, %struct.device** %4, align 8
  %84 = call i32 @dev_err(%struct.device* %83, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %217

85:                                               ; preds = %22
  %86 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %87 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp eq i32 %88, 2
  br i1 %89, label %90, label %118

90:                                               ; preds = %85
  %91 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %92 = load i64, i64* @PCIE_RC_CONFIG_LCS, align 8
  %93 = call i32 @rockchip_pcie_read(%struct.rockchip_pcie* %91, i64 %92)
  store i32 %93, i32* %7, align 4
  %94 = load i32, i32* @PCI_EXP_LNKCTL_RL, align 4
  %95 = load i32, i32* %7, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %7, align 4
  %97 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %98 = load i32, i32* %7, align 4
  %99 = load i64, i64* @PCIE_RC_CONFIG_LCS, align 8
  %100 = call i32 @rockchip_pcie_write(%struct.rockchip_pcie* %97, i32 %98, i64 %99)
  %101 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %102 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %101, i32 0, i32 3
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @PCIE_CORE_CTRL, align 8
  %105 = add nsw i64 %103, %104
  %106 = load i32, i32* %7, align 4
  %107 = load i32, i32* %7, align 4
  %108 = call i32 @PCIE_LINK_IS_GEN2(i32 %107)
  %109 = load i32, i32* @USEC_PER_MSEC, align 4
  %110 = mul nsw i32 500, %109
  %111 = call i32 @readl_poll_timeout(i64 %105, i32 %106, i32 %108, i32 20, i32 %110)
  store i32 %111, i32* %5, align 4
  %112 = load i32, i32* %5, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %90
  %115 = load %struct.device*, %struct.device** %4, align 8
  %116 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %115, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  br label %117

117:                                              ; preds = %114, %90
  br label %118

118:                                              ; preds = %117, %85
  %119 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %120 = load i64, i64* @PCIE_CORE_CTRL, align 8
  %121 = call i32 @rockchip_pcie_read(%struct.rockchip_pcie* %119, i64 %120)
  store i32 %121, i32* %7, align 4
  %122 = load i32, i32* %7, align 4
  %123 = load i32, i32* @PCIE_CORE_PL_CONF_LANE_MASK, align 4
  %124 = and i32 %122, %123
  %125 = load i32, i32* @PCIE_CORE_PL_CONF_LANE_SHIFT, align 4
  %126 = ashr i32 %124, %125
  %127 = shl i32 1, %126
  store i32 %127, i32* %7, align 4
  %128 = load %struct.device*, %struct.device** %4, align 8
  %129 = load i32, i32* %7, align 4
  %130 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %128, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %129)
  %131 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %132 = call i32 @rockchip_pcie_lane_map(%struct.rockchip_pcie* %131)
  %133 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %134 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %133, i32 0, i32 1
  store i32 %132, i32* %134, align 4
  store i32 0, i32* %6, align 4
  br label %135

135:                                              ; preds = %160, %118
  %136 = load i32, i32* %6, align 4
  %137 = load i32, i32* @MAX_LANE_NUM, align 4
  %138 = icmp slt i32 %136, %137
  br i1 %138, label %139, label %163

139:                                              ; preds = %135
  %140 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %141 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* %6, align 4
  %144 = call i32 @BIT(i32 %143)
  %145 = and i32 %142, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %159, label %147

147:                                              ; preds = %139
  %148 = load %struct.device*, %struct.device** %4, align 8
  %149 = load i32, i32* %6, align 4
  %150 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %148, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %149)
  %151 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %152 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %151, i32 0, i32 2
  %153 = load i32*, i32** %152, align 8
  %154 = load i32, i32* %6, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %153, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @phy_power_off(i32 %157)
  br label %159

159:                                              ; preds = %147, %139
  br label %160

160:                                              ; preds = %159
  %161 = load i32, i32* %6, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %6, align 4
  br label %135

163:                                              ; preds = %135
  %164 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %165 = load i32, i32* @ROCKCHIP_VENDOR_ID, align 4
  %166 = load i64, i64* @PCIE_CORE_CONFIG_VENDOR, align 8
  %167 = call i32 @rockchip_pcie_write(%struct.rockchip_pcie* %164, i32 %165, i64 %166)
  %168 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %169 = load i32, i32* @PCI_CLASS_BRIDGE_PCI, align 4
  %170 = load i32, i32* @PCIE_RC_CONFIG_SCC_SHIFT, align 4
  %171 = shl i32 %169, %170
  %172 = load i64, i64* @PCIE_RC_CONFIG_RID_CCR, align 8
  %173 = call i32 @rockchip_pcie_write(%struct.rockchip_pcie* %168, i32 %171, i64 %172)
  %174 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %175 = load i64, i64* @PCIE_RC_CONFIG_THP_CAP, align 8
  %176 = call i32 @rockchip_pcie_read(%struct.rockchip_pcie* %174, i64 %175)
  store i32 %176, i32* %7, align 4
  %177 = load i32, i32* @PCIE_RC_CONFIG_THP_CAP_NEXT_MASK, align 4
  %178 = xor i32 %177, -1
  %179 = load i32, i32* %7, align 4
  %180 = and i32 %179, %178
  store i32 %180, i32* %7, align 4
  %181 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %182 = load i32, i32* %7, align 4
  %183 = load i64, i64* @PCIE_RC_CONFIG_THP_CAP, align 8
  %184 = call i32 @rockchip_pcie_write(%struct.rockchip_pcie* %181, i32 %182, i64 %183)
  %185 = load %struct.device*, %struct.device** %4, align 8
  %186 = getelementptr inbounds %struct.device, %struct.device* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = call i64 @of_property_read_bool(i32 %187, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %202

190:                                              ; preds = %163
  %191 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %192 = load i64, i64* @PCIE_RC_CONFIG_LINK_CAP, align 8
  %193 = call i32 @rockchip_pcie_read(%struct.rockchip_pcie* %191, i64 %192)
  store i32 %193, i32* %7, align 4
  %194 = load i32, i32* @PCIE_RC_CONFIG_LINK_CAP_L0S, align 4
  %195 = xor i32 %194, -1
  %196 = load i32, i32* %7, align 4
  %197 = and i32 %196, %195
  store i32 %197, i32* %7, align 4
  %198 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %199 = load i32, i32* %7, align 4
  %200 = load i64, i64* @PCIE_RC_CONFIG_LINK_CAP, align 8
  %201 = call i32 @rockchip_pcie_write(%struct.rockchip_pcie* %198, i32 %199, i64 %200)
  br label %202

202:                                              ; preds = %190, %163
  %203 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %204 = load i64, i64* @PCIE_RC_CONFIG_DCSR, align 8
  %205 = call i32 @rockchip_pcie_read(%struct.rockchip_pcie* %203, i64 %204)
  store i32 %205, i32* %7, align 4
  %206 = load i32, i32* @PCIE_RC_CONFIG_DCSR_MPS_MASK, align 4
  %207 = xor i32 %206, -1
  %208 = load i32, i32* %7, align 4
  %209 = and i32 %208, %207
  store i32 %209, i32* %7, align 4
  %210 = load i32, i32* @PCIE_RC_CONFIG_DCSR_MPS_256, align 4
  %211 = load i32, i32* %7, align 4
  %212 = or i32 %211, %210
  store i32 %212, i32* %7, align 4
  %213 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %214 = load i32, i32* %7, align 4
  %215 = load i64, i64* @PCIE_RC_CONFIG_DCSR, align 8
  %216 = call i32 @rockchip_pcie_write(%struct.rockchip_pcie* %213, i32 %214, i64 %215)
  store i32 0, i32* %2, align 4
  br label %248

217:                                              ; preds = %82
  br label %218

218:                                              ; preds = %222, %217
  %219 = load i32, i32* %6, align 4
  %220 = add nsw i32 %219, -1
  store i32 %220, i32* %6, align 4
  %221 = icmp ne i32 %219, 0
  br i1 %221, label %222, label %231

222:                                              ; preds = %218
  %223 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %224 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %223, i32 0, i32 2
  %225 = load i32*, i32** %224, align 8
  %226 = load i32, i32* %6, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i32, i32* %225, i64 %227
  %229 = load i32, i32* %228, align 4
  %230 = call i32 @phy_power_off(i32 %229)
  br label %218

231:                                              ; preds = %218
  %232 = load i32, i32* @MAX_LANE_NUM, align 4
  store i32 %232, i32* %6, align 4
  br label %233

233:                                              ; preds = %237, %231
  %234 = load i32, i32* %6, align 4
  %235 = add nsw i32 %234, -1
  store i32 %235, i32* %6, align 4
  %236 = icmp ne i32 %234, 0
  br i1 %236, label %237, label %246

237:                                              ; preds = %233
  %238 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %239 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %238, i32 0, i32 2
  %240 = load i32*, i32** %239, align 8
  %241 = load i32, i32* %6, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i32, i32* %240, i64 %242
  %244 = load i32, i32* %243, align 4
  %245 = call i32 @phy_exit(i32 %244)
  br label %233

246:                                              ; preds = %233
  %247 = load i32, i32* %5, align 4
  store i32 %247, i32* %2, align 4
  br label %248

248:                                              ; preds = %246, %202, %20
  %249 = load i32, i32* %2, align 4
  ret i32 %249
}

declare dso_local i32 @gpiod_set_value_cansleep(i32, i32) #1

declare dso_local i32 @rockchip_pcie_init_port(%struct.rockchip_pcie*) #1

declare dso_local i32 @rockchip_pcie_read(%struct.rockchip_pcie*, i64) #1

declare dso_local i32 @rockchip_pcie_write(%struct.rockchip_pcie*, i32, i64) #1

declare dso_local i32 @rockchip_pcie_set_power_limit(%struct.rockchip_pcie*) #1

declare dso_local i32 @readl_poll_timeout(i64, i32, i32, i32, i32) #1

declare dso_local i32 @PCIE_LINK_UP(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @PCIE_LINK_IS_GEN2(i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, ...) #1

declare dso_local i32 @rockchip_pcie_lane_map(%struct.rockchip_pcie*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @phy_power_off(i32) #1

declare dso_local i64 @of_property_read_bool(i32, i8*) #1

declare dso_local i32 @phy_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
