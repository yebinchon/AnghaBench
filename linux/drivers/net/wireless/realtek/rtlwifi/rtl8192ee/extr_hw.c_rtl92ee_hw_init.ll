; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ee/extr_hw.c_rtl92ee_hw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ee/extr_hw.c_rtl92ee_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_12__, %struct.TYPE_11__*, %struct.TYPE_10__*, %struct.TYPE_8__, %struct.rtl_phy }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 (%struct.ieee80211_hw*)*, i32 (%struct.ieee80211_hw*)* }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 (%struct.ieee80211_hw*, i32, i32)* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.rtl_phy = type { i32*, i32, i32, i32*, i64 }
%struct.rtl_hal = type { i32, i32, i32, i32, i64, i8*, i64 }
%struct.rtl_mac = type { i32 }
%struct.rtl_ps_ctl = type { i32, i64 }

@COMP_INIT = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c" Rtl8192EE hw init\0A\00", align 1
@REG_SYS_CLKR = common dso_local global i64 0, align 8
@REG_CR = common dso_local global i64 0, align 8
@FW_PS_STATE_ALL_ON_92E = common dso_local global i8* null, align 8
@DBG_DMESG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"92ee dma hang!\0A\00", align 1
@REG_AFE_CTRL4 = common dso_local global i32 0, align 4
@REG_AFE_CTRL2 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"Init MAC failed\0A\00", align 1
@REG_PCIE_CTRL_REG = common dso_local global i32 0, align 4
@COMP_ERR = common dso_local global i32 0, align 4
@DBG_WARNING = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [49 x i8] c"Failed to download FW. Init HW without FW now..\0A\00", align 1
@RF90_PATH_A = common dso_local global i32 0, align 4
@RF_CHNLBW = common dso_local global i32 0, align 4
@RFREG_OFFSET_MASK = common dso_local global i32 0, align 4
@RF90_PATH_B = common dso_local global i32 0, align 4
@RF_RX_G1 = common dso_local global i32 0, align 4
@RFPGA0_RFMOD = common dso_local global i32 0, align 4
@BCCKEN = common dso_local global i32 0, align 4
@BOFDMEN = common dso_local global i32 0, align 4
@ERFON = common dso_local global i64 0, align 8
@HW_VAR_ETHER_ADDR = common dso_local global i32 0, align 4
@RF_2T2R = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [16 x i8] c"PA BIAS path A\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"PA BIAS path B\0A\00", align 1
@REG_NAV_UPPER = common dso_local global i32 0, align 4
@REG_SYS_SWR_CTRL1 = common dso_local global i32 0, align 4
@REG_SYS_SWR_CTRL2 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [29 x i8] c"end of Rtl8192EE hw init %x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtl92ee_hw_init(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.rtl_priv*, align 8
  %5 = alloca %struct.rtl_hal*, align 8
  %6 = alloca %struct.rtl_mac*, align 8
  %7 = alloca %struct.rtl_phy*, align 8
  %8 = alloca %struct.rtl_ps_ctl*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  %14 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %15 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %14)
  store %struct.rtl_priv* %15, %struct.rtl_priv** %4, align 8
  %16 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %17 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %16)
  %18 = call %struct.rtl_hal* @rtl_hal(%struct.rtl_priv* %17)
  store %struct.rtl_hal* %18, %struct.rtl_hal** %5, align 8
  %19 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %20 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %19)
  %21 = call %struct.rtl_mac* @rtl_mac(%struct.rtl_priv* %20)
  store %struct.rtl_mac* %21, %struct.rtl_mac** %6, align 8
  %22 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %23 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %22, i32 0, i32 4
  store %struct.rtl_phy* %23, %struct.rtl_phy** %7, align 8
  %24 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %25 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %24)
  %26 = call %struct.rtl_ps_ctl* @rtl_psc(%struct.rtl_priv* %25)
  store %struct.rtl_ps_ctl* %26, %struct.rtl_ps_ctl** %8, align 8
  store i32 1, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %27 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %28 = load i32, i32* @COMP_INIT, align 4
  %29 = load i32, i32* @DBG_LOUD, align 4
  %30 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %27, i32 %28, i32 %29, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %32 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 0
  store i32 1, i32* %33, align 8
  %34 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %35 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %34, i32 0, i32 1
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 1
  %38 = load i32 (%struct.ieee80211_hw*)*, i32 (%struct.ieee80211_hw*)** %37, align 8
  %39 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %40 = call i32 %38(%struct.ieee80211_hw* %39)
  %41 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %42 = load i64, i64* @REG_SYS_CLKR, align 8
  %43 = add nsw i64 %42, 1
  %44 = call i32 @rtl_read_byte(%struct.rtl_priv* %41, i64 %43)
  store i32 %44, i32* %11, align 4
  %45 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %46 = load i64, i64* @REG_CR, align 8
  %47 = call i32 @rtl_read_byte(%struct.rtl_priv* %45, i64 %46)
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %11, align 4
  %49 = call i32 @BIT(i32 3)
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %1
  %53 = load i32, i32* %12, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %52
  %56 = load i32, i32* %12, align 4
  %57 = icmp ne i32 %56, 234
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load %struct.rtl_hal*, %struct.rtl_hal** %5, align 8
  %60 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %59, i32 0, i32 0
  store i32 1, i32* %60, align 8
  br label %67

61:                                               ; preds = %55, %52, %1
  %62 = load %struct.rtl_hal*, %struct.rtl_hal** %5, align 8
  %63 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %62, i32 0, i32 0
  store i32 0, i32* %63, align 8
  %64 = load i8*, i8** @FW_PS_STATE_ALL_ON_92E, align 8
  %65 = load %struct.rtl_hal*, %struct.rtl_hal** %5, align 8
  %66 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %65, i32 0, i32 5
  store i8* %64, i8** %66, align 8
  br label %67

67:                                               ; preds = %61, %58
  %68 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %69 = call i64 @_rtl8192ee_check_pcie_dma_hang(%struct.rtl_priv* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %83

71:                                               ; preds = %67
  %72 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %73 = load i32, i32* @COMP_INIT, align 4
  %74 = load i32, i32* @DBG_DMESG, align 4
  %75 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %72, i32 %73, i32 %74, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %76 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %77 = load %struct.rtl_hal*, %struct.rtl_hal** %5, align 8
  %78 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @_rtl8192ee_reset_pcie_interface_dma(%struct.rtl_priv* %76, i32 %79)
  %81 = load %struct.rtl_hal*, %struct.rtl_hal** %5, align 8
  %82 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %81, i32 0, i32 0
  store i32 0, i32* %82, align 8
  br label %83

83:                                               ; preds = %71, %67
  %84 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %85 = call i32 @_rtl92ee_init_mac(%struct.ieee80211_hw* %84)
  store i32 %85, i32* %9, align 4
  %86 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %87 = call i32 @rtl_write_byte(%struct.rtl_priv* %86, i32 1399, i32 3)
  %88 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %89 = load i32, i32* @REG_AFE_CTRL4, align 4
  %90 = call i32 @rtl_write_byte(%struct.rtl_priv* %88, i32 %89, i32 42)
  %91 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %92 = load i32, i32* @REG_AFE_CTRL4, align 4
  %93 = add nsw i32 %92, 1
  %94 = call i32 @rtl_write_byte(%struct.rtl_priv* %91, i32 %93, i32 0)
  %95 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %96 = load i32, i32* @REG_AFE_CTRL2, align 4
  %97 = call i32 @rtl_write_byte(%struct.rtl_priv* %95, i32 %96, i32 131)
  %98 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %99 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %98, i32 0, i32 3
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = icmp eq i32 %102, 1
  br i1 %103, label %104, label %109

104:                                              ; preds = %83
  %105 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %106 = call i32 @rtl_write_byte(%struct.rtl_priv* %105, i32 100, i32 0)
  %107 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %108 = call i32 @rtl_write_byte(%struct.rtl_priv* %107, i32 101, i32 1)
  br label %109

109:                                              ; preds = %104, %83
  %110 = load i32, i32* %9, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %115, label %112

112:                                              ; preds = %109
  %113 = call i32 @pr_err(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %10, align 4
  %114 = load i32, i32* %10, align 4
  store i32 %114, i32* %2, align 4
  br label %359

115:                                              ; preds = %109
  %116 = load %struct.rtl_hal*, %struct.rtl_hal** %5, align 8
  %117 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %116, i32 0, i32 6
  store i64 0, i64* %117, align 8
  %118 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %119 = load i32, i32* @REG_PCIE_CTRL_REG, align 4
  %120 = call i32 @rtl_write_word(%struct.rtl_priv* %118, i32 %119, i32 32768)
  %121 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %122 = call i32 @rtl92ee_download_fw(%struct.ieee80211_hw* %121, i32 0)
  store i32 %122, i32* %10, align 4
  %123 = load i32, i32* %10, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %133

125:                                              ; preds = %115
  %126 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %127 = load i32, i32* @COMP_ERR, align 4
  %128 = load i32, i32* @DBG_WARNING, align 4
  %129 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %126, i32 %127, i32 %128, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %10, align 4
  %130 = load %struct.rtl_hal*, %struct.rtl_hal** %5, align 8
  %131 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %130, i32 0, i32 1
  store i32 0, i32* %131, align 4
  %132 = load i32, i32* %10, align 4
  store i32 %132, i32* %2, align 4
  br label %359

133:                                              ; preds = %115
  %134 = load %struct.rtl_hal*, %struct.rtl_hal** %5, align 8
  %135 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %134, i32 0, i32 1
  store i32 1, i32* %135, align 4
  %136 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %8, align 8
  %137 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %136, i32 0, i32 0
  store i32 0, i32* %137, align 8
  %138 = load i8*, i8** @FW_PS_STATE_ALL_ON_92E, align 8
  %139 = load %struct.rtl_hal*, %struct.rtl_hal** %5, align 8
  %140 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %139, i32 0, i32 5
  store i8* %138, i8** %140, align 8
  %141 = load %struct.rtl_hal*, %struct.rtl_hal** %5, align 8
  %142 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %141, i32 0, i32 2
  store i32 0, i32* %142, align 8
  %143 = load %struct.rtl_hal*, %struct.rtl_hal** %5, align 8
  %144 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %143, i32 0, i32 3
  store i32 0, i32* %144, align 4
  %145 = load %struct.rtl_hal*, %struct.rtl_hal** %5, align 8
  %146 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %145, i32 0, i32 4
  store i64 0, i64* %146, align 8
  %147 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %148 = call i32 @rtl92ee_phy_mac_config(%struct.ieee80211_hw* %147)
  %149 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %150 = call i32 @rtl92ee_phy_bb_config(%struct.ieee80211_hw* %149)
  %151 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %152 = call i32 @rtl92ee_phy_rf_config(%struct.ieee80211_hw* %151)
  %153 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %154 = load i32, i32* @RF90_PATH_A, align 4
  %155 = load i32, i32* @RF_CHNLBW, align 4
  %156 = load i32, i32* @RFREG_OFFSET_MASK, align 4
  %157 = call i8* @rtl_get_rfreg(%struct.ieee80211_hw* %153, i32 %154, i32 %155, i32 %156)
  %158 = ptrtoint i8* %157 to i32
  %159 = load %struct.rtl_phy*, %struct.rtl_phy** %7, align 8
  %160 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %159, i32 0, i32 0
  %161 = load i32*, i32** %160, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 0
  store i32 %158, i32* %162, align 4
  %163 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %164 = load i32, i32* @RF90_PATH_B, align 4
  %165 = load i32, i32* @RF_CHNLBW, align 4
  %166 = load i32, i32* @RFREG_OFFSET_MASK, align 4
  %167 = call i8* @rtl_get_rfreg(%struct.ieee80211_hw* %163, i32 %164, i32 %165, i32 %166)
  %168 = ptrtoint i8* %167 to i32
  %169 = load %struct.rtl_phy*, %struct.rtl_phy** %7, align 8
  %170 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %169, i32 0, i32 0
  %171 = load i32*, i32** %170, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 1
  store i32 %168, i32* %172, align 4
  %173 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %174 = load i32, i32* @RF90_PATH_A, align 4
  %175 = load i32, i32* @RF_RX_G1, align 4
  %176 = load i32, i32* @RFREG_OFFSET_MASK, align 4
  %177 = call i8* @rtl_get_rfreg(%struct.ieee80211_hw* %173, i32 %174, i32 %175, i32 %176)
  %178 = ptrtoint i8* %177 to i32
  %179 = load %struct.rtl_phy*, %struct.rtl_phy** %7, align 8
  %180 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %179, i32 0, i32 1
  store i32 %178, i32* %180, align 8
  %181 = load %struct.rtl_phy*, %struct.rtl_phy** %7, align 8
  %182 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %181, i32 0, i32 0
  %183 = load i32*, i32** %182, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 0
  %185 = load i32, i32* %184, align 4
  %186 = and i32 %185, -3073
  %187 = call i32 @BIT(i32 10)
  %188 = or i32 %186, %187
  %189 = call i32 @BIT(i32 11)
  %190 = or i32 %188, %189
  %191 = load %struct.rtl_phy*, %struct.rtl_phy** %7, align 8
  %192 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %191, i32 0, i32 0
  %193 = load i32*, i32** %192, align 8
  %194 = getelementptr inbounds i32, i32* %193, i64 0
  store i32 %190, i32* %194, align 4
  %195 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %196 = load i32, i32* @RF90_PATH_A, align 4
  %197 = load i32, i32* @RF_CHNLBW, align 4
  %198 = load i32, i32* @RFREG_OFFSET_MASK, align 4
  %199 = load %struct.rtl_phy*, %struct.rtl_phy** %7, align 8
  %200 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %199, i32 0, i32 0
  %201 = load i32*, i32** %200, align 8
  %202 = getelementptr inbounds i32, i32* %201, i64 0
  %203 = load i32, i32* %202, align 4
  %204 = call i32 @rtl_set_rfreg(%struct.ieee80211_hw* %195, i32 %196, i32 %197, i32 %198, i32 %203)
  %205 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %206 = load i32, i32* @RF90_PATH_B, align 4
  %207 = load i32, i32* @RF_CHNLBW, align 4
  %208 = load i32, i32* @RFREG_OFFSET_MASK, align 4
  %209 = load %struct.rtl_phy*, %struct.rtl_phy** %7, align 8
  %210 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %209, i32 0, i32 0
  %211 = load i32*, i32** %210, align 8
  %212 = getelementptr inbounds i32, i32* %211, i64 0
  %213 = load i32, i32* %212, align 4
  %214 = call i32 @rtl_set_rfreg(%struct.ieee80211_hw* %205, i32 %206, i32 %207, i32 %208, i32 %213)
  %215 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %216 = load i32, i32* @RFPGA0_RFMOD, align 4
  %217 = load i32, i32* @BCCKEN, align 4
  %218 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %215, i32 %216, i32 %217, i32 1)
  %219 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %220 = load i32, i32* @RFPGA0_RFMOD, align 4
  %221 = load i32, i32* @BOFDMEN, align 4
  %222 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %219, i32 %220, i32 %221, i32 1)
  %223 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %224 = load i32, i32* @RF90_PATH_A, align 4
  %225 = load i32, i32* @RFREG_OFFSET_MASK, align 4
  %226 = call i32 @rtl_set_rfreg(%struct.ieee80211_hw* %223, i32 %224, i32 177, i32 %225, i32 345112)
  %227 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %228 = call i32 @_rtl92ee_hw_configure(%struct.ieee80211_hw* %227)
  %229 = load %struct.rtl_hal*, %struct.rtl_hal** %5, align 8
  %230 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %229, i32 0, i32 0
  store i32 1, i32* %230, align 8
  %231 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %232 = call i32 @rtl_cam_reset_all_entry(%struct.ieee80211_hw* %231)
  %233 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %234 = call i32 @rtl92ee_enable_hw_security_config(%struct.ieee80211_hw* %233)
  %235 = load i64, i64* @ERFON, align 8
  %236 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %8, align 8
  %237 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %236, i32 0, i32 1
  store i64 %235, i64* %237, align 8
  %238 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %239 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %238, i32 0, i32 2
  %240 = load %struct.TYPE_10__*, %struct.TYPE_10__** %239, align 8
  %241 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %240, i32 0, i32 0
  %242 = load %struct.TYPE_9__*, %struct.TYPE_9__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %242, i32 0, i32 0
  %244 = load i32 (%struct.ieee80211_hw*, i32, i32)*, i32 (%struct.ieee80211_hw*, i32, i32)** %243, align 8
  %245 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %246 = load i32, i32* @HW_VAR_ETHER_ADDR, align 4
  %247 = load %struct.rtl_mac*, %struct.rtl_mac** %6, align 8
  %248 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 4
  %250 = call i32 %244(%struct.ieee80211_hw* %245, i32 %246, i32 %249)
  %251 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %252 = call i32 @_rtl92ee_enable_aspm_back_door(%struct.ieee80211_hw* %251)
  %253 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %254 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %253, i32 0, i32 1
  %255 = load %struct.TYPE_11__*, %struct.TYPE_11__** %254, align 8
  %256 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %255, i32 0, i32 0
  %257 = load i32 (%struct.ieee80211_hw*)*, i32 (%struct.ieee80211_hw*)** %256, align 8
  %258 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %259 = call i32 %257(%struct.ieee80211_hw* %258)
  %260 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %261 = call i32 @rtl92ee_bt_hw_init(%struct.ieee80211_hw* %260)
  %262 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %263 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %262, i32 0, i32 0
  %264 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %263, i32 0, i32 0
  store i32 0, i32* %264, align 8
  %265 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %8, align 8
  %266 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %265, i32 0, i32 1
  %267 = load i64, i64* %266, align 8
  %268 = load i64, i64* @ERFON, align 8
  %269 = icmp eq i64 %267, %268
  br i1 %269, label %270, label %284

270:                                              ; preds = %133
  %271 = load %struct.rtl_phy*, %struct.rtl_phy** %7, align 8
  %272 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %271, i32 0, i32 2
  %273 = load i32, i32* %272, align 4
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %278

275:                                              ; preds = %270
  %276 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %277 = call i32 @rtl92ee_phy_iq_calibrate(%struct.ieee80211_hw* %276, i32 1)
  br label %283

278:                                              ; preds = %270
  %279 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %280 = call i32 @rtl92ee_phy_iq_calibrate(%struct.ieee80211_hw* %279, i32 0)
  %281 = load %struct.rtl_phy*, %struct.rtl_phy** %7, align 8
  %282 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %281, i32 0, i32 2
  store i32 1, i32* %282, align 4
  br label %283

283:                                              ; preds = %278, %275
  br label %284

284:                                              ; preds = %283, %133
  %285 = load %struct.rtl_phy*, %struct.rtl_phy** %7, align 8
  %286 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %285, i32 0, i32 3
  %287 = load i32*, i32** %286, align 8
  %288 = getelementptr inbounds i32, i32* %287, i64 0
  store i32 1, i32* %288, align 4
  %289 = load %struct.rtl_phy*, %struct.rtl_phy** %7, align 8
  %290 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %289, i32 0, i32 4
  %291 = load i64, i64* %290, align 8
  %292 = load i64, i64* @RF_2T2R, align 8
  %293 = icmp eq i64 %291, %292
  br i1 %293, label %294, label %299

294:                                              ; preds = %284
  %295 = load %struct.rtl_phy*, %struct.rtl_phy** %7, align 8
  %296 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %295, i32 0, i32 3
  %297 = load i32*, i32** %296, align 8
  %298 = getelementptr inbounds i32, i32* %297, i64 1
  store i32 1, i32* %298, align 4
  br label %299

299:                                              ; preds = %294, %284
  %300 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %301 = call i32 @efuse_one_byte_read(%struct.ieee80211_hw* %300, i32 506, i32* %11)
  %302 = load i32, i32* %11, align 4
  %303 = call i32 @BIT(i32 0)
  %304 = and i32 %302, %303
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %314, label %306

306:                                              ; preds = %299
  %307 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %308 = load i32, i32* @RF90_PATH_A, align 4
  %309 = call i32 @rtl_set_rfreg(%struct.ieee80211_hw* %307, i32 %308, i32 21, i32 15, i32 5)
  %310 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %311 = load i32, i32* @COMP_INIT, align 4
  %312 = load i32, i32* @DBG_LOUD, align 4
  %313 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %310, i32 %311, i32 %312, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  br label %314

314:                                              ; preds = %306, %299
  %315 = load i32, i32* %11, align 4
  %316 = call i32 @BIT(i32 1)
  %317 = and i32 %315, %316
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %333, label %319

319:                                              ; preds = %314
  %320 = load %struct.rtl_phy*, %struct.rtl_phy** %7, align 8
  %321 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %320, i32 0, i32 4
  %322 = load i64, i64* %321, align 8
  %323 = load i64, i64* @RF_2T2R, align 8
  %324 = icmp eq i64 %322, %323
  br i1 %324, label %325, label %333

325:                                              ; preds = %319
  %326 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %327 = load i32, i32* @RF90_PATH_B, align 4
  %328 = call i32 @rtl_set_rfreg(%struct.ieee80211_hw* %326, i32 %327, i32 21, i32 15, i32 5)
  %329 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %330 = load i32, i32* @COMP_INIT, align 4
  %331 = load i32, i32* @DBG_LOUD, align 4
  %332 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %329, i32 %330, i32 %331, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  br label %333

333:                                              ; preds = %325, %319, %314
  %334 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %335 = load i32, i32* @REG_NAV_UPPER, align 4
  %336 = call i32 @rtl_write_byte(%struct.rtl_priv* %334, i32 %335, i32 235)
  %337 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %338 = load i32, i32* @REG_SYS_SWR_CTRL1, align 4
  %339 = call i32 @rtl_read_dword(%struct.rtl_priv* %337, i32 %338)
  store i32 %339, i32* %13, align 4
  %340 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %341 = load i32, i32* @REG_SYS_SWR_CTRL2, align 4
  %342 = call i32 @rtl_write_byte(%struct.rtl_priv* %340, i32 %341, i32 117)
  %343 = load i32, i32* %13, align 4
  %344 = and i32 %343, -1044481
  %345 = or i32 %344, 516096
  store i32 %345, i32* %13, align 4
  %346 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %347 = load i32, i32* @REG_SYS_SWR_CTRL1, align 4
  %348 = load i32, i32* %13, align 4
  %349 = call i32 @rtl_write_dword(%struct.rtl_priv* %346, i32 %347, i32 %348)
  %350 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %351 = call i32 @rtl92ee_dm_init(%struct.ieee80211_hw* %350)
  %352 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %353 = call i32 @rtl_write_dword(%struct.rtl_priv* %352, i32 1276, i32 0)
  %354 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %355 = load i32, i32* @COMP_INIT, align 4
  %356 = load i32, i32* @DBG_LOUD, align 4
  %357 = load i32, i32* %10, align 4
  %358 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %354, i32 %355, i32 %356, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i32 %357)
  store i32 0, i32* %2, align 4
  br label %359

359:                                              ; preds = %333, %125, %112
  %360 = load i32, i32* %2, align 4
  ret i32 %360
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_hal* @rtl_hal(%struct.rtl_priv*) #1

declare dso_local %struct.rtl_mac* @rtl_mac(%struct.rtl_priv*) #1

declare dso_local %struct.rtl_ps_ctl* @rtl_psc(%struct.rtl_priv*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, ...) #1

declare dso_local i32 @rtl_read_byte(%struct.rtl_priv*, i64) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i64 @_rtl8192ee_check_pcie_dma_hang(%struct.rtl_priv*) #1

declare dso_local i32 @_rtl8192ee_reset_pcie_interface_dma(%struct.rtl_priv*, i32) #1

declare dso_local i32 @_rtl92ee_init_mac(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl_write_byte(%struct.rtl_priv*, i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @rtl_write_word(%struct.rtl_priv*, i32, i32) #1

declare dso_local i32 @rtl92ee_download_fw(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @rtl92ee_phy_mac_config(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl92ee_phy_bb_config(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl92ee_phy_rf_config(%struct.ieee80211_hw*) #1

declare dso_local i8* @rtl_get_rfreg(%struct.ieee80211_hw*, i32, i32, i32) #1

declare dso_local i32 @rtl_set_rfreg(%struct.ieee80211_hw*, i32, i32, i32, i32) #1

declare dso_local i32 @rtl_set_bbreg(%struct.ieee80211_hw*, i32, i32, i32) #1

declare dso_local i32 @_rtl92ee_hw_configure(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl_cam_reset_all_entry(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl92ee_enable_hw_security_config(%struct.ieee80211_hw*) #1

declare dso_local i32 @_rtl92ee_enable_aspm_back_door(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl92ee_bt_hw_init(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl92ee_phy_iq_calibrate(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @efuse_one_byte_read(%struct.ieee80211_hw*, i32, i32*) #1

declare dso_local i32 @rtl_read_dword(%struct.rtl_priv*, i32) #1

declare dso_local i32 @rtl_write_dword(%struct.rtl_priv*, i32, i32) #1

declare dso_local i32 @rtl92ee_dm_init(%struct.ieee80211_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
