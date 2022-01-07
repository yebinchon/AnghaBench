; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723be/extr_hw.c__rtl8723be_read_adapter_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723be/extr_hw.c__rtl8723be_read_adapter_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.rtl_efuse = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rtl_hal = type { i64, i32, i32 }

@RTL8723BE_EEPROM_ID = common dso_local global i32 0, align 4
@EEPROM_VID = common dso_local global i32 0, align 4
@EEPROM_DID = common dso_local global i32 0, align 4
@EEPROM_SVID = common dso_local global i32 0, align 4
@EEPROM_SMID = common dso_local global i32 0, align 4
@EEPROM_MAC_ADDR = common dso_local global i32 0, align 4
@EEPROM_CHANNELPLAN = common dso_local global i32 0, align 4
@EEPROM_VERSION = common dso_local global i32 0, align 4
@EEPROM_CUSTOMER_ID = common dso_local global i32 0, align 4
@COUNTRY_CODE_WORLD_WIDE_13 = common dso_local global i32 0, align 4
@__const._rtl8723be_read_adapter_info.toshiba_smid1 = private unnamed_addr constant [32 x i32] [i32 24913, i32 24914, i32 24916, i32 24917, i32 24951, i32 24952, i32 24953, i32 24960, i32 29009, i32 29010, i32 29012, i32 29013, i32 29047, i32 29048, i32 29049, i32 29056, i32 33105, i32 33106, i32 33108, i32 33109, i32 33153, i32 33154, i32 33156, i32 33157, i32 37201, i32 37202, i32 37204, i32 37205, i32 37249, i32 37250, i32 37252, i32 37253], align 16
@__const._rtl8723be_read_adapter_info.toshiba_smid2 = private unnamed_addr constant [15 x i32] [i32 24961, i32 24964, i32 24965, i32 29057, i32 29058, i32 29060, i32 29061, i32 33153, i32 33154, i32 33156, i32 33157, i32 37249, i32 37250, i32 37252, i32 37253], align 16
@__const._rtl8723be_read_adapter_info.samsung_smid = private unnamed_addr constant [12 x i32] [i32 24977, i32 24978, i32 24979, i32 29073, i32 29074, i32 29075, i32 33169, i32 33170, i32 33171, i32 37265, i32 37266, i32 37267], align 16
@__const._rtl8723be_read_adapter_info.lenovo_smid = private unnamed_addr constant [8 x i32] [i32 33173, i32 37269, i32 29076, i32 33280, i32 33281, i32 33282, i32 37273, i32 37376], align 16
@HWSET_MAX_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@EEPROM_XTAL_8723BE = common dso_local global i64 0, align 8
@COMP_INIT = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"board_type = 0x%x\0A\00", align 1
@RT_CID_DEFAULT = common dso_local global i64 0, align 8
@RT_CID_TOSHIBA = common dso_local global i8* null, align 8
@RT_CID_819X_ACER = common dso_local global i8* null, align 8
@RT_CID_819X_SAMSUNG = common dso_local global i64 0, align 8
@RT_CID_819X_LENOVO = common dso_local global i64 0, align 8
@RT_CID_819X_CLEVO = common dso_local global i64 0, align 8
@RT_CID_819X_DELL = common dso_local global i64 0, align 8
@RT_CID_819X_HP = common dso_local global i64 0, align 8
@RT_CID_819X_QMI = common dso_local global i8* null, align 8
@RT_CID_819X_PRONETS = common dso_local global i8* null, align 8
@RT_CID_819X_EDIMAX_ASUS = common dso_local global i8* null, align 8
@RT_CID_CCX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i32)* @_rtl8723be_read_adapter_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl8723be_read_adapter_info(%struct.ieee80211_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtl_priv*, align 8
  %6 = alloca %struct.rtl_efuse*, align 8
  %7 = alloca %struct.rtl_hal*, align 8
  %8 = alloca [10 x i32], align 16
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [32 x i32], align 16
  %16 = alloca [15 x i32], align 16
  %17 = alloca [12 x i32], align 16
  %18 = alloca [8 x i32], align 16
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %19 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %20 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %19)
  store %struct.rtl_priv* %20, %struct.rtl_priv** %5, align 8
  %21 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %22 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %21)
  %23 = call %struct.rtl_efuse* @rtl_efuse(%struct.rtl_priv* %22)
  store %struct.rtl_efuse* %23, %struct.rtl_efuse** %6, align 8
  %24 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %25 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %24)
  %26 = call %struct.rtl_hal* @rtl_hal(%struct.rtl_priv* %25)
  store %struct.rtl_hal* %26, %struct.rtl_hal** %7, align 8
  %27 = getelementptr inbounds [10 x i32], [10 x i32]* %8, i64 0, i64 0
  %28 = load i32, i32* @RTL8723BE_EEPROM_ID, align 4
  store i32 %28, i32* %27, align 4
  %29 = getelementptr inbounds i32, i32* %27, i64 1
  %30 = load i32, i32* @EEPROM_VID, align 4
  store i32 %30, i32* %29, align 4
  %31 = getelementptr inbounds i32, i32* %29, i64 1
  %32 = load i32, i32* @EEPROM_DID, align 4
  store i32 %32, i32* %31, align 4
  %33 = getelementptr inbounds i32, i32* %31, i64 1
  %34 = load i32, i32* @EEPROM_SVID, align 4
  store i32 %34, i32* %33, align 4
  %35 = getelementptr inbounds i32, i32* %33, i64 1
  %36 = load i32, i32* @EEPROM_SMID, align 4
  store i32 %36, i32* %35, align 4
  %37 = getelementptr inbounds i32, i32* %35, i64 1
  %38 = load i32, i32* @EEPROM_MAC_ADDR, align 4
  store i32 %38, i32* %37, align 4
  %39 = getelementptr inbounds i32, i32* %37, i64 1
  %40 = load i32, i32* @EEPROM_CHANNELPLAN, align 4
  store i32 %40, i32* %39, align 4
  %41 = getelementptr inbounds i32, i32* %39, i64 1
  %42 = load i32, i32* @EEPROM_VERSION, align 4
  store i32 %42, i32* %41, align 4
  %43 = getelementptr inbounds i32, i32* %41, i64 1
  %44 = load i32, i32* @EEPROM_CUSTOMER_ID, align 4
  store i32 %44, i32* %43, align 4
  %45 = getelementptr inbounds i32, i32* %43, i64 1
  %46 = load i32, i32* @COUNTRY_CODE_WORLD_WIDE_13, align 4
  store i32 %46, i32* %45, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %47 = bitcast [32 x i32]* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %47, i8* align 16 bitcast ([32 x i32]* @__const._rtl8723be_read_adapter_info.toshiba_smid1 to i8*), i64 128, i1 false)
  %48 = bitcast [15 x i32]* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %48, i8* align 16 bitcast ([15 x i32]* @__const._rtl8723be_read_adapter_info.toshiba_smid2 to i8*), i64 60, i1 false)
  %49 = bitcast [12 x i32]* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %49, i8* align 16 bitcast ([12 x i32]* @__const._rtl8723be_read_adapter_info.samsung_smid to i8*), i64 48, i1 false)
  %50 = bitcast [8 x i32]* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %50, i8* align 16 bitcast ([8 x i32]* @__const._rtl8723be_read_adapter_info.lenovo_smid to i8*), i64 32, i1 false)
  %51 = load i32, i32* %4, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %2
  br label %509

54:                                               ; preds = %2
  %55 = load i32, i32* @HWSET_MAX_SIZE, align 4
  %56 = load i32, i32* @GFP_KERNEL, align 4
  %57 = call i32* @kzalloc(i32 %55, i32 %56)
  store i32* %57, i32** %9, align 8
  %58 = load i32*, i32** %9, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %54
  br label %509

61:                                               ; preds = %54
  %62 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %63 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %64 = load i32, i32* @HWSET_MAX_SIZE, align 4
  %65 = load i32*, i32** %9, align 8
  %66 = getelementptr inbounds [10 x i32], [10 x i32]* %8, i64 0, i64 0
  %67 = call i64 @rtl_get_hwinfo(%struct.ieee80211_hw* %62, %struct.rtl_priv* %63, i32 %64, i32* %65, i32* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %61
  br label %506

70:                                               ; preds = %61
  %71 = load i32*, i32** %9, align 8
  %72 = load i64, i64* @EEPROM_XTAL_8723BE, align 8
  %73 = getelementptr inbounds i32, i32* %71, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.rtl_efuse*, %struct.rtl_efuse** %6, align 8
  %76 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 4
  %77 = load %struct.rtl_efuse*, %struct.rtl_efuse** %6, align 8
  %78 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = icmp eq i32 %79, 255
  br i1 %80, label %81, label %84

81:                                               ; preds = %70
  %82 = load %struct.rtl_efuse*, %struct.rtl_efuse** %6, align 8
  %83 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %82, i32 0, i32 0
  store i32 32, i32* %83, align 4
  br label %84

84:                                               ; preds = %81, %70
  %85 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %86 = load %struct.rtl_efuse*, %struct.rtl_efuse** %6, align 8
  %87 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %86, i32 0, i32 8
  %88 = load i32, i32* %87, align 4
  %89 = load i32*, i32** %9, align 8
  %90 = call i32 @_rtl8723be_read_txpower_info_from_hwpg(%struct.ieee80211_hw* %85, i32 %88, i32* %89)
  %91 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %92 = load %struct.rtl_efuse*, %struct.rtl_efuse** %6, align 8
  %93 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %92, i32 0, i32 8
  %94 = load i32, i32* %93, align 4
  %95 = load i32*, i32** %9, align 8
  %96 = call i32 @rtl8723be_read_bt_coexist_info_from_hwpg(%struct.ieee80211_hw* %91, i32 %94, i32* %95)
  %97 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %98 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = icmp eq i32 %101, 1
  br i1 %102, label %103, label %109

103:                                              ; preds = %84
  %104 = call i32 @BIT(i32 2)
  %105 = load %struct.rtl_efuse*, %struct.rtl_efuse** %6, align 8
  %106 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %105, i32 0, i32 7
  %107 = load i32, i32* %106, align 4
  %108 = or i32 %107, %104
  store i32 %108, i32* %106, align 4
  br label %109

109:                                              ; preds = %103, %84
  %110 = load %struct.rtl_efuse*, %struct.rtl_efuse** %6, align 8
  %111 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %110, i32 0, i32 7
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.rtl_hal*, %struct.rtl_hal** %7, align 8
  %114 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %113, i32 0, i32 2
  store i32 %112, i32* %114, align 4
  %115 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %116 = load i32, i32* @COMP_INIT, align 4
  %117 = load i32, i32* @DBG_LOUD, align 4
  %118 = load %struct.rtl_efuse*, %struct.rtl_efuse** %6, align 8
  %119 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %118, i32 0, i32 7
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @RT_TRACE(%struct.rtl_priv* %115, i32 %116, i32 %117, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %120)
  %122 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %123 = call i32 @_rtl8723be_read_package_type(%struct.ieee80211_hw* %122)
  %124 = load %struct.rtl_hal*, %struct.rtl_hal** %7, align 8
  %125 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %124, i32 0, i32 1
  store i32 %123, i32* %125, align 8
  %126 = load %struct.rtl_efuse*, %struct.rtl_efuse** %6, align 8
  %127 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %126, i32 0, i32 5
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.rtl_efuse*, %struct.rtl_efuse** %6, align 8
  %130 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %129, i32 0, i32 6
  store i32 %128, i32* %130, align 4
  %131 = load %struct.rtl_hal*, %struct.rtl_hal** %7, align 8
  %132 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @RT_CID_DEFAULT, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %136, label %505

136:                                              ; preds = %109
  store i32 0, i32* %10, align 4
  br label %137

137:                                              ; preds = %153, %136
  %138 = load i32, i32* %10, align 4
  %139 = getelementptr inbounds [32 x i32], [32 x i32]* %15, i64 0, i64 0
  %140 = call i32 @ARRAY_SIZE(i32* %139)
  %141 = icmp slt i32 %138, %140
  br i1 %141, label %142, label %156

142:                                              ; preds = %137
  %143 = load %struct.rtl_efuse*, %struct.rtl_efuse** %6, align 8
  %144 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* %10, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds [32 x i32], [32 x i32]* %15, i64 0, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = icmp eq i32 %145, %149
  br i1 %150, label %151, label %152

151:                                              ; preds = %142
  store i32 1, i32* %11, align 4
  br label %156

152:                                              ; preds = %142
  br label %153

153:                                              ; preds = %152
  %154 = load i32, i32* %10, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %10, align 4
  br label %137

156:                                              ; preds = %151, %137
  store i32 0, i32* %10, align 4
  br label %157

157:                                              ; preds = %173, %156
  %158 = load i32, i32* %10, align 4
  %159 = getelementptr inbounds [15 x i32], [15 x i32]* %16, i64 0, i64 0
  %160 = call i32 @ARRAY_SIZE(i32* %159)
  %161 = icmp slt i32 %158, %160
  br i1 %161, label %162, label %176

162:                                              ; preds = %157
  %163 = load %struct.rtl_efuse*, %struct.rtl_efuse** %6, align 8
  %164 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* %10, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds [15 x i32], [15 x i32]* %16, i64 0, i64 %167
  %169 = load i32, i32* %168, align 4
  %170 = icmp eq i32 %165, %169
  br i1 %170, label %171, label %172

171:                                              ; preds = %162
  store i32 1, i32* %12, align 4
  br label %176

172:                                              ; preds = %162
  br label %173

173:                                              ; preds = %172
  %174 = load i32, i32* %10, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %10, align 4
  br label %157

176:                                              ; preds = %171, %157
  store i32 0, i32* %10, align 4
  br label %177

177:                                              ; preds = %193, %176
  %178 = load i32, i32* %10, align 4
  %179 = getelementptr inbounds [12 x i32], [12 x i32]* %17, i64 0, i64 0
  %180 = call i32 @ARRAY_SIZE(i32* %179)
  %181 = icmp slt i32 %178, %180
  br i1 %181, label %182, label %196

182:                                              ; preds = %177
  %183 = load %struct.rtl_efuse*, %struct.rtl_efuse** %6, align 8
  %184 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* %10, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds [12 x i32], [12 x i32]* %17, i64 0, i64 %187
  %189 = load i32, i32* %188, align 4
  %190 = icmp eq i32 %185, %189
  br i1 %190, label %191, label %192

191:                                              ; preds = %182
  store i32 1, i32* %13, align 4
  br label %196

192:                                              ; preds = %182
  br label %193

193:                                              ; preds = %192
  %194 = load i32, i32* %10, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %10, align 4
  br label %177

196:                                              ; preds = %191, %177
  store i32 0, i32* %10, align 4
  br label %197

197:                                              ; preds = %213, %196
  %198 = load i32, i32* %10, align 4
  %199 = getelementptr inbounds [8 x i32], [8 x i32]* %18, i64 0, i64 0
  %200 = call i32 @ARRAY_SIZE(i32* %199)
  %201 = icmp slt i32 %198, %200
  br i1 %201, label %202, label %216

202:                                              ; preds = %197
  %203 = load %struct.rtl_efuse*, %struct.rtl_efuse** %6, align 8
  %204 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = load i32, i32* %10, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds [8 x i32], [8 x i32]* %18, i64 0, i64 %207
  %209 = load i32, i32* %208, align 4
  %210 = icmp eq i32 %205, %209
  br i1 %210, label %211, label %212

211:                                              ; preds = %202
  store i32 1, i32* %14, align 4
  br label %216

212:                                              ; preds = %202
  br label %213

213:                                              ; preds = %212
  %214 = load i32, i32* %10, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %10, align 4
  br label %197

216:                                              ; preds = %211, %197
  %217 = load %struct.rtl_efuse*, %struct.rtl_efuse** %6, align 8
  %218 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %217, i32 0, i32 2
  %219 = load i32, i32* %218, align 4
  switch i32 %219, label %500 [
    i32 131, label %220
    i32 129, label %485
    i32 132, label %490
    i32 130, label %494
    i32 128, label %499
  ]

220:                                              ; preds = %216
  %221 = load %struct.rtl_efuse*, %struct.rtl_efuse** %6, align 8
  %222 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %221, i32 0, i32 3
  %223 = load i32, i32* %222, align 4
  %224 = icmp eq i32 %223, 33142
  br i1 %224, label %225, label %413

225:                                              ; preds = %220
  %226 = load %struct.rtl_efuse*, %struct.rtl_efuse** %6, align 8
  %227 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %226, i32 0, i32 4
  %228 = load i32, i32* %227, align 4
  %229 = icmp eq i32 %228, 4332
  br i1 %229, label %230, label %238

230:                                              ; preds = %225
  %231 = load i32, i32* %11, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %238

233:                                              ; preds = %230
  %234 = load i8*, i8** @RT_CID_TOSHIBA, align 8
  %235 = ptrtoint i8* %234 to i64
  %236 = load %struct.rtl_hal*, %struct.rtl_hal** %7, align 8
  %237 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %236, i32 0, i32 0
  store i64 %235, i64* %237, align 8
  br label %412

238:                                              ; preds = %230, %225
  %239 = load %struct.rtl_efuse*, %struct.rtl_efuse** %6, align 8
  %240 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %239, i32 0, i32 4
  %241 = load i32, i32* %240, align 4
  %242 = icmp eq i32 %241, 4133
  br i1 %242, label %243, label %248

243:                                              ; preds = %238
  %244 = load i8*, i8** @RT_CID_819X_ACER, align 8
  %245 = ptrtoint i8* %244 to i64
  %246 = load %struct.rtl_hal*, %struct.rtl_hal** %7, align 8
  %247 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %246, i32 0, i32 0
  store i64 %245, i64* %247, align 8
  br label %411

248:                                              ; preds = %238
  %249 = load %struct.rtl_efuse*, %struct.rtl_efuse** %6, align 8
  %250 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %249, i32 0, i32 4
  %251 = load i32, i32* %250, align 4
  %252 = icmp eq i32 %251, 4332
  br i1 %252, label %253, label %260

253:                                              ; preds = %248
  %254 = load i32, i32* %13, align 4
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %260

256:                                              ; preds = %253
  %257 = load i64, i64* @RT_CID_819X_SAMSUNG, align 8
  %258 = load %struct.rtl_hal*, %struct.rtl_hal** %7, align 8
  %259 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %258, i32 0, i32 0
  store i64 %257, i64* %259, align 8
  br label %410

260:                                              ; preds = %253, %248
  %261 = load %struct.rtl_efuse*, %struct.rtl_efuse** %6, align 8
  %262 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %261, i32 0, i32 4
  %263 = load i32, i32* %262, align 4
  %264 = icmp eq i32 %263, 4332
  br i1 %264, label %265, label %272

265:                                              ; preds = %260
  %266 = load i32, i32* %14, align 4
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %272

268:                                              ; preds = %265
  %269 = load i64, i64* @RT_CID_819X_LENOVO, align 8
  %270 = load %struct.rtl_hal*, %struct.rtl_hal** %7, align 8
  %271 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %270, i32 0, i32 0
  store i64 %269, i64* %271, align 8
  br label %409

272:                                              ; preds = %265, %260
  %273 = load %struct.rtl_efuse*, %struct.rtl_efuse** %6, align 8
  %274 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %273, i32 0, i32 4
  %275 = load i32, i32* %274, align 4
  %276 = icmp eq i32 %275, 4332
  br i1 %276, label %277, label %282

277:                                              ; preds = %272
  %278 = load %struct.rtl_efuse*, %struct.rtl_efuse** %6, align 8
  %279 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %278, i32 0, i32 1
  %280 = load i32, i32* %279, align 4
  %281 = icmp eq i32 %280, 33175
  br i1 %281, label %292, label %282

282:                                              ; preds = %277, %272
  %283 = load %struct.rtl_efuse*, %struct.rtl_efuse** %6, align 8
  %284 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %283, i32 0, i32 4
  %285 = load i32, i32* %284, align 4
  %286 = icmp eq i32 %285, 4332
  br i1 %286, label %287, label %296

287:                                              ; preds = %282
  %288 = load %struct.rtl_efuse*, %struct.rtl_efuse** %6, align 8
  %289 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %288, i32 0, i32 1
  %290 = load i32, i32* %289, align 4
  %291 = icmp eq i32 %290, 37270
  br i1 %291, label %292, label %296

292:                                              ; preds = %287, %277
  %293 = load i64, i64* @RT_CID_819X_CLEVO, align 8
  %294 = load %struct.rtl_hal*, %struct.rtl_hal** %7, align 8
  %295 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %294, i32 0, i32 0
  store i64 %293, i64* %295, align 8
  br label %408

296:                                              ; preds = %287, %282
  %297 = load %struct.rtl_efuse*, %struct.rtl_efuse** %6, align 8
  %298 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %297, i32 0, i32 4
  %299 = load i32, i32* %298, align 4
  %300 = icmp eq i32 %299, 4136
  br i1 %300, label %301, label %306

301:                                              ; preds = %296
  %302 = load %struct.rtl_efuse*, %struct.rtl_efuse** %6, align 8
  %303 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %302, i32 0, i32 1
  %304 = load i32, i32* %303, align 4
  %305 = icmp eq i32 %304, 33172
  br i1 %305, label %336, label %306

306:                                              ; preds = %301, %296
  %307 = load %struct.rtl_efuse*, %struct.rtl_efuse** %6, align 8
  %308 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %307, i32 0, i32 4
  %309 = load i32, i32* %308, align 4
  %310 = icmp eq i32 %309, 4136
  br i1 %310, label %311, label %316

311:                                              ; preds = %306
  %312 = load %struct.rtl_efuse*, %struct.rtl_efuse** %6, align 8
  %313 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %312, i32 0, i32 1
  %314 = load i32, i32* %313, align 4
  %315 = icmp eq i32 %314, 33176
  br i1 %315, label %336, label %316

316:                                              ; preds = %311, %306
  %317 = load %struct.rtl_efuse*, %struct.rtl_efuse** %6, align 8
  %318 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %317, i32 0, i32 4
  %319 = load i32, i32* %318, align 4
  %320 = icmp eq i32 %319, 4136
  br i1 %320, label %321, label %326

321:                                              ; preds = %316
  %322 = load %struct.rtl_efuse*, %struct.rtl_efuse** %6, align 8
  %323 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %322, i32 0, i32 1
  %324 = load i32, i32* %323, align 4
  %325 = icmp eq i32 %324, 37271
  br i1 %325, label %336, label %326

326:                                              ; preds = %321, %316
  %327 = load %struct.rtl_efuse*, %struct.rtl_efuse** %6, align 8
  %328 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %327, i32 0, i32 4
  %329 = load i32, i32* %328, align 4
  %330 = icmp eq i32 %329, 4136
  br i1 %330, label %331, label %340

331:                                              ; preds = %326
  %332 = load %struct.rtl_efuse*, %struct.rtl_efuse** %6, align 8
  %333 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %332, i32 0, i32 1
  %334 = load i32, i32* %333, align 4
  %335 = icmp eq i32 %334, 37272
  br i1 %335, label %336, label %340

336:                                              ; preds = %331, %321, %311, %301
  %337 = load i64, i64* @RT_CID_819X_DELL, align 8
  %338 = load %struct.rtl_hal*, %struct.rtl_hal** %7, align 8
  %339 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %338, i32 0, i32 0
  store i64 %337, i64* %339, align 8
  br label %407

340:                                              ; preds = %331, %326
  %341 = load %struct.rtl_efuse*, %struct.rtl_efuse** %6, align 8
  %342 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %341, i32 0, i32 4
  %343 = load i32, i32* %342, align 4
  %344 = icmp eq i32 %343, 4156
  br i1 %344, label %345, label %354

345:                                              ; preds = %340
  %346 = load %struct.rtl_efuse*, %struct.rtl_efuse** %6, align 8
  %347 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %346, i32 0, i32 1
  %348 = load i32, i32* %347, align 4
  %349 = icmp eq i32 %348, 5673
  br i1 %349, label %350, label %354

350:                                              ; preds = %345
  %351 = load i64, i64* @RT_CID_819X_HP, align 8
  %352 = load %struct.rtl_hal*, %struct.rtl_hal** %7, align 8
  %353 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %352, i32 0, i32 0
  store i64 %351, i64* %353, align 8
  br label %406

354:                                              ; preds = %345, %340
  %355 = load %struct.rtl_efuse*, %struct.rtl_efuse** %6, align 8
  %356 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %355, i32 0, i32 4
  %357 = load i32, i32* %356, align 4
  %358 = icmp eq i32 %357, 6706
  br i1 %358, label %359, label %369

359:                                              ; preds = %354
  %360 = load %struct.rtl_efuse*, %struct.rtl_efuse** %6, align 8
  %361 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %360, i32 0, i32 1
  %362 = load i32, i32* %361, align 4
  %363 = icmp eq i32 %362, 8981
  br i1 %363, label %364, label %369

364:                                              ; preds = %359
  %365 = load i8*, i8** @RT_CID_819X_QMI, align 8
  %366 = ptrtoint i8* %365 to i64
  %367 = load %struct.rtl_hal*, %struct.rtl_hal** %7, align 8
  %368 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %367, i32 0, i32 0
  store i64 %366, i64* %368, align 8
  br label %405

369:                                              ; preds = %359, %354
  %370 = load %struct.rtl_efuse*, %struct.rtl_efuse** %6, align 8
  %371 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %370, i32 0, i32 4
  %372 = load i32, i32* %371, align 4
  %373 = icmp eq i32 %372, 4332
  br i1 %373, label %374, label %384

374:                                              ; preds = %369
  %375 = load %struct.rtl_efuse*, %struct.rtl_efuse** %6, align 8
  %376 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %375, i32 0, i32 1
  %377 = load i32, i32* %376, align 4
  %378 = icmp eq i32 %377, 33283
  br i1 %378, label %379, label %384

379:                                              ; preds = %374
  %380 = load i8*, i8** @RT_CID_819X_PRONETS, align 8
  %381 = ptrtoint i8* %380 to i64
  %382 = load %struct.rtl_hal*, %struct.rtl_hal** %7, align 8
  %383 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %382, i32 0, i32 0
  store i64 %381, i64* %383, align 8
  br label %404

384:                                              ; preds = %374, %369
  %385 = load %struct.rtl_efuse*, %struct.rtl_efuse** %6, align 8
  %386 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %385, i32 0, i32 4
  %387 = load i32, i32* %386, align 4
  %388 = icmp eq i32 %387, 4163
  br i1 %388, label %389, label %399

389:                                              ; preds = %384
  %390 = load %struct.rtl_efuse*, %struct.rtl_efuse** %6, align 8
  %391 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %390, i32 0, i32 1
  %392 = load i32, i32* %391, align 4
  %393 = icmp eq i32 %392, 33973
  br i1 %393, label %394, label %399

394:                                              ; preds = %389
  %395 = load i8*, i8** @RT_CID_819X_EDIMAX_ASUS, align 8
  %396 = ptrtoint i8* %395 to i64
  %397 = load %struct.rtl_hal*, %struct.rtl_hal** %7, align 8
  %398 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %397, i32 0, i32 0
  store i64 %396, i64* %398, align 8
  br label %403

399:                                              ; preds = %389, %384
  %400 = load i64, i64* @RT_CID_DEFAULT, align 8
  %401 = load %struct.rtl_hal*, %struct.rtl_hal** %7, align 8
  %402 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %401, i32 0, i32 0
  store i64 %400, i64* %402, align 8
  br label %403

403:                                              ; preds = %399, %394
  br label %404

404:                                              ; preds = %403, %379
  br label %405

405:                                              ; preds = %404, %364
  br label %406

406:                                              ; preds = %405, %350
  br label %407

407:                                              ; preds = %406, %336
  br label %408

408:                                              ; preds = %407, %292
  br label %409

409:                                              ; preds = %408, %268
  br label %410

410:                                              ; preds = %409, %256
  br label %411

411:                                              ; preds = %410, %243
  br label %412

412:                                              ; preds = %411, %233
  br label %484

413:                                              ; preds = %220
  %414 = load %struct.rtl_efuse*, %struct.rtl_efuse** %6, align 8
  %415 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %414, i32 0, i32 3
  %416 = load i32, i32* %415, align 4
  %417 = icmp eq i32 %416, 33144
  br i1 %417, label %418, label %479

418:                                              ; preds = %413
  %419 = load %struct.rtl_efuse*, %struct.rtl_efuse** %6, align 8
  %420 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %419, i32 0, i32 4
  %421 = load i32, i32* %420, align 4
  %422 = icmp eq i32 %421, 4332
  br i1 %422, label %423, label %431

423:                                              ; preds = %418
  %424 = load i32, i32* %12, align 4
  %425 = icmp ne i32 %424, 0
  br i1 %425, label %426, label %431

426:                                              ; preds = %423
  %427 = load i8*, i8** @RT_CID_TOSHIBA, align 8
  %428 = ptrtoint i8* %427 to i64
  %429 = load %struct.rtl_hal*, %struct.rtl_hal** %7, align 8
  %430 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %429, i32 0, i32 0
  store i64 %428, i64* %430, align 8
  br label %478

431:                                              ; preds = %423, %418
  %432 = load %struct.rtl_efuse*, %struct.rtl_efuse** %6, align 8
  %433 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %432, i32 0, i32 4
  %434 = load i32, i32* %433, align 4
  %435 = icmp eq i32 %434, 4133
  br i1 %435, label %436, label %441

436:                                              ; preds = %431
  %437 = load i8*, i8** @RT_CID_819X_ACER, align 8
  %438 = ptrtoint i8* %437 to i64
  %439 = load %struct.rtl_hal*, %struct.rtl_hal** %7, align 8
  %440 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %439, i32 0, i32 0
  store i64 %438, i64* %440, align 8
  br label %477

441:                                              ; preds = %431
  %442 = load %struct.rtl_efuse*, %struct.rtl_efuse** %6, align 8
  %443 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %442, i32 0, i32 4
  %444 = load i32, i32* %443, align 4
  %445 = icmp eq i32 %444, 4332
  br i1 %445, label %446, label %456

446:                                              ; preds = %441
  %447 = load %struct.rtl_efuse*, %struct.rtl_efuse** %6, align 8
  %448 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %447, i32 0, i32 1
  %449 = load i32, i32* %448, align 4
  %450 = icmp eq i32 %449, 33158
  br i1 %450, label %451, label %456

451:                                              ; preds = %446
  %452 = load i8*, i8** @RT_CID_819X_PRONETS, align 8
  %453 = ptrtoint i8* %452 to i64
  %454 = load %struct.rtl_hal*, %struct.rtl_hal** %7, align 8
  %455 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %454, i32 0, i32 0
  store i64 %453, i64* %455, align 8
  br label %476

456:                                              ; preds = %446, %441
  %457 = load %struct.rtl_efuse*, %struct.rtl_efuse** %6, align 8
  %458 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %457, i32 0, i32 4
  %459 = load i32, i32* %458, align 4
  %460 = icmp eq i32 %459, 4163
  br i1 %460, label %461, label %471

461:                                              ; preds = %456
  %462 = load %struct.rtl_efuse*, %struct.rtl_efuse** %6, align 8
  %463 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %462, i32 0, i32 1
  %464 = load i32, i32* %463, align 4
  %465 = icmp eq i32 %464, 33974
  br i1 %465, label %466, label %471

466:                                              ; preds = %461
  %467 = load i8*, i8** @RT_CID_819X_EDIMAX_ASUS, align 8
  %468 = ptrtoint i8* %467 to i64
  %469 = load %struct.rtl_hal*, %struct.rtl_hal** %7, align 8
  %470 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %469, i32 0, i32 0
  store i64 %468, i64* %470, align 8
  br label %475

471:                                              ; preds = %461, %456
  %472 = load i64, i64* @RT_CID_DEFAULT, align 8
  %473 = load %struct.rtl_hal*, %struct.rtl_hal** %7, align 8
  %474 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %473, i32 0, i32 0
  store i64 %472, i64* %474, align 8
  br label %475

475:                                              ; preds = %471, %466
  br label %476

476:                                              ; preds = %475, %451
  br label %477

477:                                              ; preds = %476, %436
  br label %478

478:                                              ; preds = %477, %426
  br label %483

479:                                              ; preds = %413
  %480 = load i64, i64* @RT_CID_DEFAULT, align 8
  %481 = load %struct.rtl_hal*, %struct.rtl_hal** %7, align 8
  %482 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %481, i32 0, i32 0
  store i64 %480, i64* %482, align 8
  br label %483

483:                                              ; preds = %479, %478
  br label %484

484:                                              ; preds = %483, %412
  br label %504

485:                                              ; preds = %216
  %486 = load i8*, i8** @RT_CID_TOSHIBA, align 8
  %487 = ptrtoint i8* %486 to i64
  %488 = load %struct.rtl_hal*, %struct.rtl_hal** %7, align 8
  %489 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %488, i32 0, i32 0
  store i64 %487, i64* %489, align 8
  br label %504

490:                                              ; preds = %216
  %491 = load i64, i64* @RT_CID_CCX, align 8
  %492 = load %struct.rtl_hal*, %struct.rtl_hal** %7, align 8
  %493 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %492, i32 0, i32 0
  store i64 %491, i64* %493, align 8
  br label %504

494:                                              ; preds = %216
  %495 = load i8*, i8** @RT_CID_819X_QMI, align 8
  %496 = ptrtoint i8* %495 to i64
  %497 = load %struct.rtl_hal*, %struct.rtl_hal** %7, align 8
  %498 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %497, i32 0, i32 0
  store i64 %496, i64* %498, align 8
  br label %504

499:                                              ; preds = %216
  br label %504

500:                                              ; preds = %216
  %501 = load i64, i64* @RT_CID_DEFAULT, align 8
  %502 = load %struct.rtl_hal*, %struct.rtl_hal** %7, align 8
  %503 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %502, i32 0, i32 0
  store i64 %501, i64* %503, align 8
  br label %504

504:                                              ; preds = %500, %499, %494, %490, %485, %484
  br label %505

505:                                              ; preds = %504, %109
  br label %506

506:                                              ; preds = %505, %69
  %507 = load i32*, i32** %9, align 8
  %508 = call i32 @kfree(i32* %507)
  br label %509

509:                                              ; preds = %506, %60, %53
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_efuse* @rtl_efuse(%struct.rtl_priv*) #1

declare dso_local %struct.rtl_hal* @rtl_hal(%struct.rtl_priv*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i64 @rtl_get_hwinfo(%struct.ieee80211_hw*, %struct.rtl_priv*, i32, i32*, i32*) #1

declare dso_local i32 @_rtl8723be_read_txpower_info_from_hwpg(%struct.ieee80211_hw*, i32, i32*) #1

declare dso_local i32 @rtl8723be_read_bt_coexist_info_from_hwpg(%struct.ieee80211_hw*, i32, i32*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i32) #1

declare dso_local i32 @_rtl8723be_read_package_type(%struct.ieee80211_hw*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
