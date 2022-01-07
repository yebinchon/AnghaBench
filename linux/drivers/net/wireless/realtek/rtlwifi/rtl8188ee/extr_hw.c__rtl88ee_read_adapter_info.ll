; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8188ee/extr_hw.c__rtl88ee_read_adapter_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8188ee/extr_hw.c__rtl88ee_read_adapter_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }
%struct.rtl_efuse = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rtl_hal = type { i32, i64 }

@RTL8188E_EEPROM_ID = common dso_local global i32 0, align 4
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
@COMP_INIT = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"EEPROM Customer ID: 0x%2x\0A\00", align 1
@EEPROM_RF_BOARD_OPTION_88E = common dso_local global i64 0, align 8
@EEPROM_RF_FEATURE_OPTION_88E = common dso_local global i64 0, align 8
@EEPROM_XTAL_88E = common dso_local global i64 0, align 8
@ANT_X1 = common dso_local global i64 0, align 8
@EEPROM_RF_ANTENNA_OPT_88E = common dso_local global i64 0, align 8
@CG_TRX_HW_ANTDIV = common dso_local global i32 0, align 4
@CGCS_RX_HW_ANTDIV = common dso_local global i32 0, align 4
@RT_CID_DEFAULT = common dso_local global i64 0, align 8
@RT_CID_819X_ACER = common dso_local global i64 0, align 8
@RT_CID_819X_LENOVO = common dso_local global i64 0, align 8
@RT_CID_819X_HP = common dso_local global i64 0, align 8
@RT_CID_TOSHIBA = common dso_local global i64 0, align 8
@RT_CID_819X_QMI = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @_rtl88ee_read_adapter_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl88ee_read_adapter_info(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.rtl_efuse*, align 8
  %5 = alloca %struct.rtl_hal*, align 8
  %6 = alloca [10 x i32], align 16
  %7 = alloca i32*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %9 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %8)
  store %struct.rtl_priv* %9, %struct.rtl_priv** %3, align 8
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %11 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %10)
  %12 = call %struct.rtl_efuse* @rtl_efuse(%struct.rtl_priv* %11)
  store %struct.rtl_efuse* %12, %struct.rtl_efuse** %4, align 8
  %13 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %14 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %13)
  %15 = call %struct.rtl_hal* @rtl_hal(%struct.rtl_priv* %14)
  store %struct.rtl_hal* %15, %struct.rtl_hal** %5, align 8
  %16 = getelementptr inbounds [10 x i32], [10 x i32]* %6, i64 0, i64 0
  %17 = load i32, i32* @RTL8188E_EEPROM_ID, align 4
  store i32 %17, i32* %16, align 4
  %18 = getelementptr inbounds i32, i32* %16, i64 1
  %19 = load i32, i32* @EEPROM_VID, align 4
  store i32 %19, i32* %18, align 4
  %20 = getelementptr inbounds i32, i32* %18, i64 1
  %21 = load i32, i32* @EEPROM_DID, align 4
  store i32 %21, i32* %20, align 4
  %22 = getelementptr inbounds i32, i32* %20, i64 1
  %23 = load i32, i32* @EEPROM_SVID, align 4
  store i32 %23, i32* %22, align 4
  %24 = getelementptr inbounds i32, i32* %22, i64 1
  %25 = load i32, i32* @EEPROM_SMID, align 4
  store i32 %25, i32* %24, align 4
  %26 = getelementptr inbounds i32, i32* %24, i64 1
  %27 = load i32, i32* @EEPROM_MAC_ADDR, align 4
  store i32 %27, i32* %26, align 4
  %28 = getelementptr inbounds i32, i32* %26, i64 1
  %29 = load i32, i32* @EEPROM_CHANNELPLAN, align 4
  store i32 %29, i32* %28, align 4
  %30 = getelementptr inbounds i32, i32* %28, i64 1
  %31 = load i32, i32* @EEPROM_VERSION, align 4
  store i32 %31, i32* %30, align 4
  %32 = getelementptr inbounds i32, i32* %30, i64 1
  %33 = load i32, i32* @EEPROM_CUSTOMER_ID, align 4
  store i32 %33, i32* %32, align 4
  %34 = getelementptr inbounds i32, i32* %32, i64 1
  %35 = load i32, i32* @COUNTRY_CODE_WORLD_WIDE_13, align 4
  store i32 %35, i32* %34, align 4
  %36 = load i32, i32* @HWSET_MAX_SIZE, align 4
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call i32* @kzalloc(i32 %36, i32 %37)
  store i32* %38, i32** %7, align 8
  %39 = load i32*, i32** %7, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %1
  br label %275

42:                                               ; preds = %1
  %43 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %44 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %45 = load i32, i32* @HWSET_MAX_SIZE, align 4
  %46 = load i32*, i32** %7, align 8
  %47 = getelementptr inbounds [10 x i32], [10 x i32]* %6, i64 0, i64 0
  %48 = call i64 @rtl_get_hwinfo(%struct.ieee80211_hw* %43, %struct.rtl_priv* %44, i32 %45, i32* %46, i32* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %42
  br label %272

51:                                               ; preds = %42
  %52 = load %struct.rtl_efuse*, %struct.rtl_efuse** %4, align 8
  %53 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp eq i32 %54, 255
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load %struct.rtl_efuse*, %struct.rtl_efuse** %4, align 8
  %58 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %57, i32 0, i32 0
  store i32 0, i32* %58, align 4
  br label %59

59:                                               ; preds = %56, %51
  %60 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %61 = load i32, i32* @COMP_INIT, align 4
  %62 = load i32, i32* @DBG_LOUD, align 4
  %63 = load %struct.rtl_efuse*, %struct.rtl_efuse** %4, align 8
  %64 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @RT_TRACE(%struct.rtl_priv* %60, i32 %61, i32 %62, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %65)
  %67 = load %struct.rtl_efuse*, %struct.rtl_efuse** %4, align 8
  %68 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %67, i32 0, i32 11
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.rtl_efuse*, %struct.rtl_efuse** %4, align 8
  %71 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %70, i32 0, i32 12
  store i32 %69, i32* %71, align 4
  %72 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %73 = load %struct.rtl_efuse*, %struct.rtl_efuse** %4, align 8
  %74 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %73, i32 0, i32 10
  %75 = load i32, i32* %74, align 4
  %76 = load i32*, i32** %7, align 8
  %77 = call i32 @_rtl88ee_read_txpower_info_from_hwpg(%struct.ieee80211_hw* %72, i32 %75, i32* %76)
  %78 = load %struct.rtl_efuse*, %struct.rtl_efuse** %4, align 8
  %79 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %78, i32 0, i32 1
  store i32 1, i32* %79, align 4
  %80 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %81 = load %struct.rtl_efuse*, %struct.rtl_efuse** %4, align 8
  %82 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %81, i32 0, i32 10
  %83 = load i32, i32* %82, align 4
  %84 = load i32*, i32** %7, align 8
  %85 = call i32 @rtl8188ee_read_bt_coexist_info_from_hwpg(%struct.ieee80211_hw* %80, i32 %83, i32* %84)
  %86 = load i32*, i32** %7, align 8
  %87 = load i64, i64* @EEPROM_RF_BOARD_OPTION_88E, align 8
  %88 = getelementptr inbounds i32, i32* %86, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = and i32 %89, 224
  %91 = ashr i32 %90, 5
  %92 = load %struct.rtl_efuse*, %struct.rtl_efuse** %4, align 8
  %93 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %92, i32 0, i32 2
  store i32 %91, i32* %93, align 4
  %94 = load %struct.rtl_efuse*, %struct.rtl_efuse** %4, align 8
  %95 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.rtl_hal*, %struct.rtl_hal** %5, align 8
  %98 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 8
  %99 = load i32*, i32** %7, align 8
  %100 = load i64, i64* @EEPROM_RF_FEATURE_OPTION_88E, align 8
  %101 = getelementptr inbounds i32, i32* %99, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = and i32 %102, 64
  %104 = ashr i32 %103, 6
  %105 = load %struct.rtl_efuse*, %struct.rtl_efuse** %4, align 8
  %106 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %105, i32 0, i32 3
  store i32 %104, i32* %106, align 4
  %107 = load i32*, i32** %7, align 8
  %108 = load i64, i64* @EEPROM_XTAL_88E, align 8
  %109 = getelementptr inbounds i32, i32* %107, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.rtl_efuse*, %struct.rtl_efuse** %4, align 8
  %112 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %111, i32 0, i32 4
  store i32 %110, i32* %112, align 4
  %113 = load i32*, i32** %7, align 8
  %114 = load i64, i64* @EEPROM_XTAL_88E, align 8
  %115 = getelementptr inbounds i32, i32* %113, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %59
  %119 = load %struct.rtl_efuse*, %struct.rtl_efuse** %4, align 8
  %120 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %119, i32 0, i32 4
  store i32 32, i32* %120, align 4
  br label %121

121:                                              ; preds = %118, %59
  %122 = load i32*, i32** %7, align 8
  %123 = load i64, i64* @EEPROM_RF_BOARD_OPTION_88E, align 8
  %124 = getelementptr inbounds i32, i32* %122, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = and i32 %125, 24
  %127 = ashr i32 %126, 3
  %128 = load %struct.rtl_efuse*, %struct.rtl_efuse** %4, align 8
  %129 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %128, i32 0, i32 5
  store i32 %127, i32* %129, align 4
  %130 = load i32*, i32** %7, align 8
  %131 = load i64, i64* @EEPROM_RF_BOARD_OPTION_88E, align 8
  %132 = getelementptr inbounds i32, i32* %130, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = icmp eq i32 %133, 255
  br i1 %134, label %135, label %138

135:                                              ; preds = %121
  %136 = load %struct.rtl_efuse*, %struct.rtl_efuse** %4, align 8
  %137 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %136, i32 0, i32 5
  store i32 0, i32* %137, align 4
  br label %138

138:                                              ; preds = %135, %121
  %139 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %140 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %154

144:                                              ; preds = %138
  %145 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %146 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @ANT_X1, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %151, label %154

151:                                              ; preds = %144
  %152 = load %struct.rtl_efuse*, %struct.rtl_efuse** %4, align 8
  %153 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %152, i32 0, i32 5
  store i32 0, i32* %153, align 4
  br label %154

154:                                              ; preds = %151, %144, %138
  %155 = load i32*, i32** %7, align 8
  %156 = load i64, i64* @EEPROM_RF_ANTENNA_OPT_88E, align 8
  %157 = getelementptr inbounds i32, i32* %155, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.rtl_efuse*, %struct.rtl_efuse** %4, align 8
  %160 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %159, i32 0, i32 6
  store i32 %158, i32* %160, align 4
  %161 = load %struct.rtl_efuse*, %struct.rtl_efuse** %4, align 8
  %162 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %161, i32 0, i32 6
  %163 = load i32, i32* %162, align 4
  %164 = icmp eq i32 %163, 255
  br i1 %164, label %165, label %168

165:                                              ; preds = %154
  %166 = load %struct.rtl_efuse*, %struct.rtl_efuse** %4, align 8
  %167 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %166, i32 0, i32 6
  store i32 1, i32* %167, align 4
  br label %168

168:                                              ; preds = %165, %154
  %169 = load %struct.rtl_efuse*, %struct.rtl_efuse** %4, align 8
  %170 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %169, i32 0, i32 6
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* @CG_TRX_HW_ANTDIV, align 4
  %173 = icmp eq i32 %171, %172
  br i1 %173, label %180, label %174

174:                                              ; preds = %168
  %175 = load %struct.rtl_efuse*, %struct.rtl_efuse** %4, align 8
  %176 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %175, i32 0, i32 6
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* @CGCS_RX_HW_ANTDIV, align 4
  %179 = icmp eq i32 %177, %178
  br i1 %179, label %180, label %183

180:                                              ; preds = %174, %168
  %181 = load %struct.rtl_efuse*, %struct.rtl_efuse** %4, align 8
  %182 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %181, i32 0, i32 5
  store i32 1, i32* %182, align 4
  br label %183

183:                                              ; preds = %180, %174
  %184 = load %struct.rtl_hal*, %struct.rtl_hal** %5, align 8
  %185 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %184, i32 0, i32 1
  %186 = load i64, i64* %185, align 8
  %187 = load i64, i64* @RT_CID_DEFAULT, align 8
  %188 = icmp eq i64 %186, %187
  br i1 %188, label %189, label %271

189:                                              ; preds = %183
  %190 = load %struct.rtl_efuse*, %struct.rtl_efuse** %4, align 8
  %191 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  switch i32 %192, label %266 [
    i32 131, label %193
    i32 129, label %257
    i32 130, label %261
    i32 128, label %265
  ]

193:                                              ; preds = %189
  %194 = load %struct.rtl_efuse*, %struct.rtl_efuse** %4, align 8
  %195 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %194, i32 0, i32 7
  %196 = load i32, i32* %195, align 4
  %197 = icmp eq i32 %196, 33145
  br i1 %197, label %198, label %252

198:                                              ; preds = %193
  %199 = load %struct.rtl_efuse*, %struct.rtl_efuse** %4, align 8
  %200 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %199, i32 0, i32 8
  %201 = load i32, i32* %200, align 4
  %202 = icmp eq i32 %201, 4133
  br i1 %202, label %203, label %207

203:                                              ; preds = %198
  %204 = load i64, i64* @RT_CID_819X_ACER, align 8
  %205 = load %struct.rtl_hal*, %struct.rtl_hal** %5, align 8
  %206 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %205, i32 0, i32 1
  store i64 %204, i64* %206, align 8
  br label %251

207:                                              ; preds = %198
  %208 = load %struct.rtl_efuse*, %struct.rtl_efuse** %4, align 8
  %209 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %208, i32 0, i32 8
  %210 = load i32, i32* %209, align 4
  %211 = icmp eq i32 %210, 4332
  br i1 %211, label %212, label %217

212:                                              ; preds = %207
  %213 = load %struct.rtl_efuse*, %struct.rtl_efuse** %4, align 8
  %214 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %213, i32 0, i32 9
  %215 = load i32, i32* %214, align 4
  %216 = icmp eq i32 %215, 377
  br i1 %216, label %227, label %217

217:                                              ; preds = %212, %207
  %218 = load %struct.rtl_efuse*, %struct.rtl_efuse** %4, align 8
  %219 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %218, i32 0, i32 8
  %220 = load i32, i32* %219, align 4
  %221 = icmp eq i32 %220, 6058
  br i1 %221, label %222, label %231

222:                                              ; preds = %217
  %223 = load %struct.rtl_efuse*, %struct.rtl_efuse** %4, align 8
  %224 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %223, i32 0, i32 9
  %225 = load i32, i32* %224, align 4
  %226 = icmp eq i32 %225, 377
  br i1 %226, label %227, label %231

227:                                              ; preds = %222, %212
  %228 = load i64, i64* @RT_CID_819X_LENOVO, align 8
  %229 = load %struct.rtl_hal*, %struct.rtl_hal** %5, align 8
  %230 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %229, i32 0, i32 1
  store i64 %228, i64* %230, align 8
  br label %250

231:                                              ; preds = %222, %217
  %232 = load %struct.rtl_efuse*, %struct.rtl_efuse** %4, align 8
  %233 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %232, i32 0, i32 8
  %234 = load i32, i32* %233, align 4
  %235 = icmp eq i32 %234, 4156
  br i1 %235, label %236, label %245

236:                                              ; preds = %231
  %237 = load %struct.rtl_efuse*, %struct.rtl_efuse** %4, align 8
  %238 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %237, i32 0, i32 9
  %239 = load i32, i32* %238, align 4
  %240 = icmp eq i32 %239, 6525
  br i1 %240, label %241, label %245

241:                                              ; preds = %236
  %242 = load i64, i64* @RT_CID_819X_HP, align 8
  %243 = load %struct.rtl_hal*, %struct.rtl_hal** %5, align 8
  %244 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %243, i32 0, i32 1
  store i64 %242, i64* %244, align 8
  br label %249

245:                                              ; preds = %236, %231
  %246 = load i64, i64* @RT_CID_DEFAULT, align 8
  %247 = load %struct.rtl_hal*, %struct.rtl_hal** %5, align 8
  %248 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %247, i32 0, i32 1
  store i64 %246, i64* %248, align 8
  br label %249

249:                                              ; preds = %245, %241
  br label %250

250:                                              ; preds = %249, %227
  br label %251

251:                                              ; preds = %250, %203
  br label %256

252:                                              ; preds = %193
  %253 = load i64, i64* @RT_CID_DEFAULT, align 8
  %254 = load %struct.rtl_hal*, %struct.rtl_hal** %5, align 8
  %255 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %254, i32 0, i32 1
  store i64 %253, i64* %255, align 8
  br label %256

256:                                              ; preds = %252, %251
  br label %270

257:                                              ; preds = %189
  %258 = load i64, i64* @RT_CID_TOSHIBA, align 8
  %259 = load %struct.rtl_hal*, %struct.rtl_hal** %5, align 8
  %260 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %259, i32 0, i32 1
  store i64 %258, i64* %260, align 8
  br label %270

261:                                              ; preds = %189
  %262 = load i64, i64* @RT_CID_819X_QMI, align 8
  %263 = load %struct.rtl_hal*, %struct.rtl_hal** %5, align 8
  %264 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %263, i32 0, i32 1
  store i64 %262, i64* %264, align 8
  br label %270

265:                                              ; preds = %189
  br label %266

266:                                              ; preds = %189, %265
  %267 = load i64, i64* @RT_CID_DEFAULT, align 8
  %268 = load %struct.rtl_hal*, %struct.rtl_hal** %5, align 8
  %269 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %268, i32 0, i32 1
  store i64 %267, i64* %269, align 8
  br label %270

270:                                              ; preds = %266, %261, %257, %256
  br label %271

271:                                              ; preds = %270, %183
  br label %272

272:                                              ; preds = %271, %50
  %273 = load i32*, i32** %7, align 8
  %274 = call i32 @kfree(i32* %273)
  br label %275

275:                                              ; preds = %272, %41
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_efuse* @rtl_efuse(%struct.rtl_priv*) #1

declare dso_local %struct.rtl_hal* @rtl_hal(%struct.rtl_priv*) #1

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i64 @rtl_get_hwinfo(%struct.ieee80211_hw*, %struct.rtl_priv*, i32, i32*, i32*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i32) #1

declare dso_local i32 @_rtl88ee_read_txpower_info_from_hwpg(%struct.ieee80211_hw*, i32, i32*) #1

declare dso_local i32 @rtl8188ee_read_bt_coexist_info_from_hwpg(%struct.ieee80211_hw*, i32, i32*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
