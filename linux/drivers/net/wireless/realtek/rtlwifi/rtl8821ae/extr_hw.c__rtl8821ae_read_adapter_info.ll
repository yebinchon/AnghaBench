; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_hw.c__rtl8821ae_read_adapter_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_hw.c__rtl8821ae_read_adapter_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64 }
%struct.rtl_efuse = type { i32, i32, i32, i32, i32, i32*, i32, i32, i32, i64, i32 }
%struct.rtl_hal = type { i64, i64, i64, i64, i64, i64, i32 }

@RTL_EEPROM_ID = common dso_local global i32 0, align 4
@EEPROM_VID = common dso_local global i32 0, align 4
@EEPROM_DID = common dso_local global i32 0, align 4
@EEPROM_SVID = common dso_local global i32 0, align 4
@EEPROM_SMID = common dso_local global i32 0, align 4
@EEPROM_MAC_ADDR = common dso_local global i32 0, align 4
@EEPROM_CHANNELPLAN = common dso_local global i32 0, align 4
@EEPROM_VERSION = common dso_local global i32 0, align 4
@EEPROM_CUSTOMER_ID = common dso_local global i32 0, align 4
@COUNTRY_CODE_WORLD_WIDE_13 = common dso_local global i32 0, align 4
@HWSET_MAX_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@HARDWARE_TYPE_RTL8812AE = common dso_local global i64 0, align 8
@ODM_BOARD_DEFAULT = common dso_local global i32 0, align 4
@ODM_BOARD_EXT_LNA = common dso_local global i32 0, align 4
@ODM_BOARD_EXT_LNA_5G = common dso_local global i32 0, align 4
@ODM_BOARD_EXT_PA = common dso_local global i32 0, align 4
@ODM_BOARD_EXT_PA_5G = common dso_local global i32 0, align 4
@ODM_BOARD_BT = common dso_local global i32 0, align 4
@COMP_INIT = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"board_type = 0x%x\0A\00", align 1
@EEPROM_XTAL_8821AE = common dso_local global i64 0, align 8
@EEPROM_THERMAL_METER = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"thermalmeter = 0x%x\0A\00", align 1
@EEPROM_RF_BOARD_OPTION = common dso_local global i64 0, align 8
@ANT_X1 = common dso_local global i64 0, align 8
@EEPROM_RF_ANTENNA_OPT_88E = common dso_local global i64 0, align 8
@FIXED_HW_ANTDIV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"SWAS: bHwAntDiv = %x, TRxAntDivType = %x\0A\00", align 1
@RT_CID_TOSHIBA = common dso_local global i64 0, align 8
@RT_CID_CCX = common dso_local global i64 0, align 8
@RT_CID_819X_QMI = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i32)* @_rtl8821ae_read_adapter_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl8821ae_read_adapter_info(%struct.ieee80211_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtl_priv*, align 8
  %6 = alloca %struct.rtl_efuse*, align 8
  %7 = alloca %struct.rtl_hal*, align 8
  %8 = alloca [10 x i32], align 16
  %9 = alloca i32*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %11 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %10)
  store %struct.rtl_priv* %11, %struct.rtl_priv** %5, align 8
  %12 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %13 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %12)
  %14 = call %struct.rtl_efuse* @rtl_efuse(%struct.rtl_priv* %13)
  store %struct.rtl_efuse* %14, %struct.rtl_efuse** %6, align 8
  %15 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %16 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %15)
  %17 = call %struct.rtl_hal* @rtl_hal(%struct.rtl_priv* %16)
  store %struct.rtl_hal* %17, %struct.rtl_hal** %7, align 8
  %18 = getelementptr inbounds [10 x i32], [10 x i32]* %8, i64 0, i64 0
  %19 = load i32, i32* @RTL_EEPROM_ID, align 4
  store i32 %19, i32* %18, align 4
  %20 = getelementptr inbounds i32, i32* %18, i64 1
  %21 = load i32, i32* @EEPROM_VID, align 4
  store i32 %21, i32* %20, align 4
  %22 = getelementptr inbounds i32, i32* %20, i64 1
  %23 = load i32, i32* @EEPROM_DID, align 4
  store i32 %23, i32* %22, align 4
  %24 = getelementptr inbounds i32, i32* %22, i64 1
  %25 = load i32, i32* @EEPROM_SVID, align 4
  store i32 %25, i32* %24, align 4
  %26 = getelementptr inbounds i32, i32* %24, i64 1
  %27 = load i32, i32* @EEPROM_SMID, align 4
  store i32 %27, i32* %26, align 4
  %28 = getelementptr inbounds i32, i32* %26, i64 1
  %29 = load i32, i32* @EEPROM_MAC_ADDR, align 4
  store i32 %29, i32* %28, align 4
  %30 = getelementptr inbounds i32, i32* %28, i64 1
  %31 = load i32, i32* @EEPROM_CHANNELPLAN, align 4
  store i32 %31, i32* %30, align 4
  %32 = getelementptr inbounds i32, i32* %30, i64 1
  %33 = load i32, i32* @EEPROM_VERSION, align 4
  store i32 %33, i32* %32, align 4
  %34 = getelementptr inbounds i32, i32* %32, i64 1
  %35 = load i32, i32* @EEPROM_CUSTOMER_ID, align 4
  store i32 %35, i32* %34, align 4
  %36 = getelementptr inbounds i32, i32* %34, i64 1
  %37 = load i32, i32* @COUNTRY_CODE_WORLD_WIDE_13, align 4
  store i32 %37, i32* %36, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %2
  br label %41

41:                                               ; preds = %40, %2
  %42 = load i32, i32* @HWSET_MAX_SIZE, align 4
  %43 = load i32, i32* @GFP_KERNEL, align 4
  %44 = call i32* @kzalloc(i32 %42, i32 %43)
  store i32* %44, i32** %9, align 8
  %45 = load i32*, i32** %9, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %41
  br label %345

48:                                               ; preds = %41
  %49 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %50 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %51 = load i32, i32* @HWSET_MAX_SIZE, align 4
  %52 = load i32*, i32** %9, align 8
  %53 = getelementptr inbounds [10 x i32], [10 x i32]* %8, i64 0, i64 0
  %54 = call i64 @rtl_get_hwinfo(%struct.ieee80211_hw* %49, %struct.rtl_priv* %50, i32 %51, i32* %52, i32* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %48
  br label %342

57:                                               ; preds = %48
  %58 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %59 = load %struct.rtl_efuse*, %struct.rtl_efuse** %6, align 8
  %60 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %59, i32 0, i32 9
  %61 = load i64, i64* %60, align 8
  %62 = load i32*, i32** %9, align 8
  %63 = call i32 @_rtl8821ae_read_txpower_info_from_hwpg(%struct.ieee80211_hw* %58, i64 %61, i32* %62)
  %64 = load %struct.rtl_hal*, %struct.rtl_hal** %7, align 8
  %65 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @HARDWARE_TYPE_RTL8812AE, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %82

69:                                               ; preds = %57
  %70 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %71 = load i32*, i32** %9, align 8
  %72 = load %struct.rtl_efuse*, %struct.rtl_efuse** %6, align 8
  %73 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %72, i32 0, i32 9
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @_rtl8812ae_read_amplifier_type(%struct.ieee80211_hw* %70, i32* %71, i64 %74)
  %76 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %77 = load %struct.rtl_efuse*, %struct.rtl_efuse** %6, align 8
  %78 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %77, i32 0, i32 9
  %79 = load i64, i64* %78, align 8
  %80 = load i32*, i32** %9, align 8
  %81 = call i32 @_rtl8812ae_read_bt_coexist_info_from_hwpg(%struct.ieee80211_hw* %76, i64 %79, i32* %80)
  br label %95

82:                                               ; preds = %57
  %83 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %84 = load i32*, i32** %9, align 8
  %85 = load %struct.rtl_efuse*, %struct.rtl_efuse** %6, align 8
  %86 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %85, i32 0, i32 9
  %87 = load i64, i64* %86, align 8
  %88 = call i32 @_rtl8821ae_read_pa_type(%struct.ieee80211_hw* %83, i32* %84, i64 %87)
  %89 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %90 = load %struct.rtl_efuse*, %struct.rtl_efuse** %6, align 8
  %91 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %90, i32 0, i32 9
  %92 = load i64, i64* %91, align 8
  %93 = load i32*, i32** %9, align 8
  %94 = call i32 @_rtl8821ae_read_bt_coexist_info_from_hwpg(%struct.ieee80211_hw* %89, i64 %92, i32* %93)
  br label %95

95:                                               ; preds = %82, %69
  %96 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %97 = load i32*, i32** %9, align 8
  %98 = load %struct.rtl_efuse*, %struct.rtl_efuse** %6, align 8
  %99 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %98, i32 0, i32 9
  %100 = load i64, i64* %99, align 8
  %101 = call i32 @_rtl8821ae_read_rfe_type(%struct.ieee80211_hw* %96, i32* %97, i64 %100)
  %102 = load i32, i32* @ODM_BOARD_DEFAULT, align 4
  %103 = load %struct.rtl_efuse*, %struct.rtl_efuse** %6, align 8
  %104 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %103, i32 0, i32 10
  store i32 %102, i32* %104, align 8
  %105 = load %struct.rtl_hal*, %struct.rtl_hal** %7, align 8
  %106 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %95
  %110 = load i32, i32* @ODM_BOARD_EXT_LNA, align 4
  %111 = load %struct.rtl_efuse*, %struct.rtl_efuse** %6, align 8
  %112 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %111, i32 0, i32 10
  %113 = load i32, i32* %112, align 8
  %114 = or i32 %113, %110
  store i32 %114, i32* %112, align 8
  br label %115

115:                                              ; preds = %109, %95
  %116 = load %struct.rtl_hal*, %struct.rtl_hal** %7, align 8
  %117 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %126

120:                                              ; preds = %115
  %121 = load i32, i32* @ODM_BOARD_EXT_LNA_5G, align 4
  %122 = load %struct.rtl_efuse*, %struct.rtl_efuse** %6, align 8
  %123 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %122, i32 0, i32 10
  %124 = load i32, i32* %123, align 8
  %125 = or i32 %124, %121
  store i32 %125, i32* %123, align 8
  br label %126

126:                                              ; preds = %120, %115
  %127 = load %struct.rtl_hal*, %struct.rtl_hal** %7, align 8
  %128 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %127, i32 0, i32 3
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %137

131:                                              ; preds = %126
  %132 = load i32, i32* @ODM_BOARD_EXT_PA, align 4
  %133 = load %struct.rtl_efuse*, %struct.rtl_efuse** %6, align 8
  %134 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %133, i32 0, i32 10
  %135 = load i32, i32* %134, align 8
  %136 = or i32 %135, %132
  store i32 %136, i32* %134, align 8
  br label %137

137:                                              ; preds = %131, %126
  %138 = load %struct.rtl_hal*, %struct.rtl_hal** %7, align 8
  %139 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %138, i32 0, i32 4
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %148

142:                                              ; preds = %137
  %143 = load i32, i32* @ODM_BOARD_EXT_PA_5G, align 4
  %144 = load %struct.rtl_efuse*, %struct.rtl_efuse** %6, align 8
  %145 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %144, i32 0, i32 10
  %146 = load i32, i32* %145, align 8
  %147 = or i32 %146, %143
  store i32 %147, i32* %145, align 8
  br label %148

148:                                              ; preds = %142, %137
  %149 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %150 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = icmp eq i32 %153, 1
  br i1 %154, label %155, label %161

155:                                              ; preds = %148
  %156 = load i32, i32* @ODM_BOARD_BT, align 4
  %157 = load %struct.rtl_efuse*, %struct.rtl_efuse** %6, align 8
  %158 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %157, i32 0, i32 10
  %159 = load i32, i32* %158, align 8
  %160 = or i32 %159, %156
  store i32 %160, i32* %158, align 8
  br label %161

161:                                              ; preds = %155, %148
  %162 = load %struct.rtl_efuse*, %struct.rtl_efuse** %6, align 8
  %163 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %162, i32 0, i32 10
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.rtl_hal*, %struct.rtl_hal** %7, align 8
  %166 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %165, i32 0, i32 6
  store i32 %164, i32* %166, align 8
  %167 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %168 = load i32, i32* @COMP_INIT, align 4
  %169 = load i32, i32* @DBG_LOUD, align 4
  %170 = load %struct.rtl_efuse*, %struct.rtl_efuse** %6, align 8
  %171 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %170, i32 0, i32 10
  %172 = load i32, i32* %171, align 8
  %173 = call i32 (%struct.rtl_priv*, i32, i32, i8*, i32, ...) @RT_TRACE(%struct.rtl_priv* %167, i32 %168, i32 %169, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %172)
  %174 = load i32*, i32** %9, align 8
  %175 = load i32, i32* @EEPROM_CHANNELPLAN, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32, i32* %174, i64 %176
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.rtl_efuse*, %struct.rtl_efuse** %6, align 8
  %180 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %179, i32 0, i32 0
  store i32 %178, i32* %180, align 8
  %181 = load %struct.rtl_efuse*, %struct.rtl_efuse** %6, align 8
  %182 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = icmp eq i32 %183, 255
  br i1 %184, label %185, label %188

185:                                              ; preds = %161
  %186 = load %struct.rtl_efuse*, %struct.rtl_efuse** %6, align 8
  %187 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %186, i32 0, i32 0
  store i32 127, i32* %187, align 8
  br label %188

188:                                              ; preds = %185, %161
  %189 = load %struct.rtl_efuse*, %struct.rtl_efuse** %6, align 8
  %190 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = load %struct.rtl_efuse*, %struct.rtl_efuse** %6, align 8
  %193 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %192, i32 0, i32 1
  store i32 %191, i32* %193, align 4
  %194 = load i32*, i32** %9, align 8
  %195 = load i64, i64* @EEPROM_XTAL_8821AE, align 8
  %196 = getelementptr inbounds i32, i32* %194, i64 %195
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.rtl_efuse*, %struct.rtl_efuse** %6, align 8
  %199 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %198, i32 0, i32 2
  store i32 %197, i32* %199, align 8
  %200 = load %struct.rtl_efuse*, %struct.rtl_efuse** %6, align 8
  %201 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %200, i32 0, i32 2
  %202 = load i32, i32* %201, align 8
  %203 = icmp eq i32 %202, 255
  br i1 %203, label %204, label %207

204:                                              ; preds = %188
  %205 = load %struct.rtl_efuse*, %struct.rtl_efuse** %6, align 8
  %206 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %205, i32 0, i32 2
  store i32 32, i32* %206, align 8
  br label %207

207:                                              ; preds = %204, %188
  %208 = load i32*, i32** %9, align 8
  %209 = load i64, i64* @EEPROM_THERMAL_METER, align 8
  %210 = getelementptr inbounds i32, i32* %208, i64 %209
  %211 = load i32, i32* %210, align 4
  %212 = load %struct.rtl_efuse*, %struct.rtl_efuse** %6, align 8
  %213 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %212, i32 0, i32 3
  store i32 %211, i32* %213, align 4
  %214 = load %struct.rtl_efuse*, %struct.rtl_efuse** %6, align 8
  %215 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %214, i32 0, i32 3
  %216 = load i32, i32* %215, align 4
  %217 = icmp eq i32 %216, 255
  br i1 %217, label %223, label %218

218:                                              ; preds = %207
  %219 = load %struct.rtl_efuse*, %struct.rtl_efuse** %6, align 8
  %220 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %219, i32 0, i32 9
  %221 = load i64, i64* %220, align 8
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %228

223:                                              ; preds = %218, %207
  %224 = load %struct.rtl_efuse*, %struct.rtl_efuse** %6, align 8
  %225 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %224, i32 0, i32 4
  store i32 1, i32* %225, align 8
  %226 = load %struct.rtl_efuse*, %struct.rtl_efuse** %6, align 8
  %227 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %226, i32 0, i32 3
  store i32 255, i32* %227, align 4
  br label %228

228:                                              ; preds = %223, %218
  %229 = load %struct.rtl_efuse*, %struct.rtl_efuse** %6, align 8
  %230 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %229, i32 0, i32 3
  %231 = load i32, i32* %230, align 4
  %232 = load %struct.rtl_efuse*, %struct.rtl_efuse** %6, align 8
  %233 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %232, i32 0, i32 5
  %234 = load i32*, i32** %233, align 8
  %235 = getelementptr inbounds i32, i32* %234, i64 0
  store i32 %231, i32* %235, align 4
  %236 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %237 = load i32, i32* @COMP_INIT, align 4
  %238 = load i32, i32* @DBG_LOUD, align 4
  %239 = load %struct.rtl_efuse*, %struct.rtl_efuse** %6, align 8
  %240 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %239, i32 0, i32 3
  %241 = load i32, i32* %240, align 4
  %242 = call i32 (%struct.rtl_priv*, i32, i32, i8*, i32, ...) @RT_TRACE(%struct.rtl_priv* %236, i32 %237, i32 %238, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %241)
  %243 = load %struct.rtl_efuse*, %struct.rtl_efuse** %6, align 8
  %244 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %243, i32 0, i32 9
  %245 = load i64, i64* %244, align 8
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %298, label %247

247:                                              ; preds = %228
  %248 = load i32*, i32** %9, align 8
  %249 = load i64, i64* @EEPROM_RF_BOARD_OPTION, align 8
  %250 = getelementptr inbounds i32, i32* %248, i64 %249
  %251 = load i32, i32* %250, align 4
  %252 = and i32 %251, 24
  %253 = ashr i32 %252, 3
  %254 = load %struct.rtl_efuse*, %struct.rtl_efuse** %6, align 8
  %255 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %254, i32 0, i32 6
  store i32 %253, i32* %255, align 8
  %256 = load i32*, i32** %9, align 8
  %257 = load i64, i64* @EEPROM_RF_BOARD_OPTION, align 8
  %258 = getelementptr inbounds i32, i32* %256, i64 %257
  %259 = load i32, i32* %258, align 4
  %260 = icmp eq i32 %259, 255
  br i1 %260, label %261, label %264

261:                                              ; preds = %247
  %262 = load %struct.rtl_efuse*, %struct.rtl_efuse** %6, align 8
  %263 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %262, i32 0, i32 6
  store i32 0, i32* %263, align 8
  br label %264

264:                                              ; preds = %261, %247
  %265 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %266 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %265, i32 0, i32 1
  %267 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %266, i32 0, i32 0
  %268 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = icmp eq i32 %269, 1
  br i1 %270, label %271, label %282

271:                                              ; preds = %264
  %272 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %273 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %272, i32 0, i32 1
  %274 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %273, i32 0, i32 0
  %275 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %274, i32 0, i32 1
  %276 = load i64, i64* %275, align 8
  %277 = load i64, i64* @ANT_X1, align 8
  %278 = icmp eq i64 %276, %277
  br i1 %278, label %279, label %282

279:                                              ; preds = %271
  %280 = load %struct.rtl_efuse*, %struct.rtl_efuse** %6, align 8
  %281 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %280, i32 0, i32 6
  store i32 0, i32* %281, align 8
  br label %282

282:                                              ; preds = %279, %271, %264
  %283 = load i32*, i32** %9, align 8
  %284 = load i64, i64* @EEPROM_RF_ANTENNA_OPT_88E, align 8
  %285 = getelementptr inbounds i32, i32* %283, i64 %284
  %286 = load i32, i32* %285, align 4
  %287 = load %struct.rtl_efuse*, %struct.rtl_efuse** %6, align 8
  %288 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %287, i32 0, i32 7
  store i32 %286, i32* %288, align 4
  %289 = load %struct.rtl_efuse*, %struct.rtl_efuse** %6, align 8
  %290 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %289, i32 0, i32 7
  %291 = load i32, i32* %290, align 4
  %292 = icmp eq i32 %291, 255
  br i1 %292, label %293, label %297

293:                                              ; preds = %282
  %294 = load i32, i32* @FIXED_HW_ANTDIV, align 4
  %295 = load %struct.rtl_efuse*, %struct.rtl_efuse** %6, align 8
  %296 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %295, i32 0, i32 7
  store i32 %294, i32* %296, align 4
  br label %297

297:                                              ; preds = %293, %282
  br label %303

298:                                              ; preds = %228
  %299 = load %struct.rtl_efuse*, %struct.rtl_efuse** %6, align 8
  %300 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %299, i32 0, i32 6
  store i32 0, i32* %300, align 8
  %301 = load %struct.rtl_efuse*, %struct.rtl_efuse** %6, align 8
  %302 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %301, i32 0, i32 7
  store i32 0, i32* %302, align 4
  br label %303

303:                                              ; preds = %298, %297
  %304 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %305 = load i32, i32* @COMP_INIT, align 4
  %306 = load i32, i32* @DBG_LOUD, align 4
  %307 = load %struct.rtl_efuse*, %struct.rtl_efuse** %6, align 8
  %308 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %307, i32 0, i32 6
  %309 = load i32, i32* %308, align 8
  %310 = load %struct.rtl_efuse*, %struct.rtl_efuse** %6, align 8
  %311 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %310, i32 0, i32 7
  %312 = load i32, i32* %311, align 4
  %313 = call i32 (%struct.rtl_priv*, i32, i32, i8*, i32, ...) @RT_TRACE(%struct.rtl_priv* %304, i32 %305, i32 %306, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %309, i32 %312)
  %314 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %315 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %314, i32 0, i32 0
  %316 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %315, i32 0, i32 0
  store i32 1, i32* %316, align 8
  %317 = load %struct.rtl_hal*, %struct.rtl_hal** %7, align 8
  %318 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %317, i32 0, i32 5
  %319 = load i64, i64* %318, align 8
  %320 = icmp eq i64 %319, 128
  br i1 %320, label %321, label %341

321:                                              ; preds = %303
  %322 = load %struct.rtl_efuse*, %struct.rtl_efuse** %6, align 8
  %323 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %322, i32 0, i32 8
  %324 = load i32, i32* %323, align 8
  switch i32 %324, label %339 [
    i32 128, label %325
    i32 130, label %326
    i32 132, label %330
    i32 131, label %334
    i32 129, label %338
  ]

325:                                              ; preds = %321
  br label %340

326:                                              ; preds = %321
  %327 = load i64, i64* @RT_CID_TOSHIBA, align 8
  %328 = load %struct.rtl_hal*, %struct.rtl_hal** %7, align 8
  %329 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %328, i32 0, i32 5
  store i64 %327, i64* %329, align 8
  br label %340

330:                                              ; preds = %321
  %331 = load i64, i64* @RT_CID_CCX, align 8
  %332 = load %struct.rtl_hal*, %struct.rtl_hal** %7, align 8
  %333 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %332, i32 0, i32 5
  store i64 %331, i64* %333, align 8
  br label %340

334:                                              ; preds = %321
  %335 = load i64, i64* @RT_CID_819X_QMI, align 8
  %336 = load %struct.rtl_hal*, %struct.rtl_hal** %7, align 8
  %337 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %336, i32 0, i32 5
  store i64 %335, i64* %337, align 8
  br label %340

338:                                              ; preds = %321
  br label %340

339:                                              ; preds = %321
  br label %340

340:                                              ; preds = %339, %338, %334, %330, %326, %325
  br label %341

341:                                              ; preds = %340, %303
  br label %342

342:                                              ; preds = %341, %56
  %343 = load i32*, i32** %9, align 8
  %344 = call i32 @kfree(i32* %343)
  br label %345

345:                                              ; preds = %342, %47
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_efuse* @rtl_efuse(%struct.rtl_priv*) #1

declare dso_local %struct.rtl_hal* @rtl_hal(%struct.rtl_priv*) #1

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i64 @rtl_get_hwinfo(%struct.ieee80211_hw*, %struct.rtl_priv*, i32, i32*, i32*) #1

declare dso_local i32 @_rtl8821ae_read_txpower_info_from_hwpg(%struct.ieee80211_hw*, i64, i32*) #1

declare dso_local i32 @_rtl8812ae_read_amplifier_type(%struct.ieee80211_hw*, i32*, i64) #1

declare dso_local i32 @_rtl8812ae_read_bt_coexist_info_from_hwpg(%struct.ieee80211_hw*, i64, i32*) #1

declare dso_local i32 @_rtl8821ae_read_pa_type(%struct.ieee80211_hw*, i32*, i64) #1

declare dso_local i32 @_rtl8821ae_read_bt_coexist_info_from_hwpg(%struct.ieee80211_hw*, i64, i32*) #1

declare dso_local i32 @_rtl8821ae_read_rfe_type(%struct.ieee80211_hw*, i32*, i64) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i32, ...) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
