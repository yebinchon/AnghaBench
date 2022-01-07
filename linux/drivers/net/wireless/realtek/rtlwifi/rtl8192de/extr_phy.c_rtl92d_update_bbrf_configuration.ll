; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_phy.c_rtl92d_update_bbrf_configuration.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_phy.c_rtl92d_update_bbrf_configuration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.rtl_phy }
%struct.rtl_phy = type { i64, i64, i8**, i8** }
%struct.rtl_hal = type { i64, i64, i64 }
%struct.rtl_efuse = type { i32, i32, i64* }

@COMP_INIT = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"==>\0A\00", align 1
@BAND_ON_2_4G = common dso_local global i64 0, align 8
@RFPGA0_XAB_RFPARAMETER = common dso_local global i32 0, align 4
@DUALMAC_DUALPHY = common dso_local global i64 0, align 8
@ROFDM0_AGCRSSITABLE = common dso_local global i32 0, align 4
@ROFDM1_CFOTRACKING = common dso_local global i32 0, align 4
@ROFDM0_XATXIQIMBALANCE = common dso_local global i32 0, align 4
@MASKDWORD = common dso_local global i32 0, align 4
@ROFDM0_XBTXIQIMBALANCE = common dso_local global i32 0, align 4
@RFPGA0_XAB_RFINTERFACESW = common dso_local global i32 0, align 4
@RFPGA0_XA_RFINTERFACEOE = common dso_local global i32 0, align 4
@RFPGA0_XB_RFINTERFACEOE = common dso_local global i32 0, align 4
@ROFDM0_XARXIQIMBALANCE = common dso_local global i32 0, align 4
@ROFDM0_XBRXIQIMBALANCE = common dso_local global i32 0, align 4
@ROFDM0_XCTXAFE = common dso_local global i32 0, align 4
@ROFDM0_ECCATHRESHOLD = common dso_local global i32 0, align 4
@ROFDM0_XDTXAFE = common dso_local global i32 0, align 4
@RF90_PATH_A = common dso_local global i64 0, align 8
@RF_CHNLBW = common dso_local global i32 0, align 4
@RF_1T1R = common dso_local global i64 0, align 8
@ROFDM0_TRXPATHENABLE = common dso_local global i32 0, align 4
@MASKBYTE0 = common dso_local global i32 0, align 4
@ROFDM1_TRXPATHENABLE = common dso_local global i32 0, align 4
@BDWORD = common dso_local global i32 0, align 4
@RFPGA0_ADDALLOCKEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"MAC1 use DBI to update 0x888\0A\00", align 1
@RFREG_OFFSET_MASK = common dso_local global i32 0, align 4
@COMP_RF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"RF 0x18 = 0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"<==\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl92d_update_bbrf_configuration(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.rtl_hal*, align 8
  %5 = alloca %struct.rtl_phy*, align 8
  %6 = alloca %struct.rtl_efuse*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %10 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %9)
  store %struct.rtl_priv* %10, %struct.rtl_priv** %3, align 8
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %12 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %11)
  %13 = call %struct.rtl_hal* @rtl_hal(%struct.rtl_priv* %12)
  store %struct.rtl_hal* %13, %struct.rtl_hal** %4, align 8
  %14 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %15 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %14, i32 0, i32 0
  store %struct.rtl_phy* %15, %struct.rtl_phy** %5, align 8
  %16 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %17 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %16)
  %18 = call %struct.rtl_efuse* @rtl_efuse(%struct.rtl_priv* %17)
  store %struct.rtl_efuse* %18, %struct.rtl_efuse** %6, align 8
  %19 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %20 = load i32, i32* @COMP_INIT, align 4
  %21 = load i32, i32* @DBG_LOUD, align 4
  %22 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %19, i32 %20, i32 %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.rtl_hal*, %struct.rtl_hal** %4, align 8
  %24 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @BAND_ON_2_4G, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %257

28:                                               ; preds = %1
  %29 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %30 = load i32, i32* @RFPGA0_XAB_RFPARAMETER, align 4
  %31 = call i32 @BIT(i32 0)
  %32 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %29, i32 %30, i32 %31, i32 0)
  %33 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %34 = load i32, i32* @RFPGA0_XAB_RFPARAMETER, align 4
  %35 = call i32 @BIT(i32 15)
  %36 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %33, i32 %34, i32 %35, i32 0)
  %37 = load %struct.rtl_hal*, %struct.rtl_hal** %4, align 8
  %38 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @DUALMAC_DUALPHY, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %51

42:                                               ; preds = %28
  %43 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %44 = load i32, i32* @RFPGA0_XAB_RFPARAMETER, align 4
  %45 = call i32 @BIT(i32 16)
  %46 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %43, i32 %44, i32 %45, i32 0)
  %47 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %48 = load i32, i32* @RFPGA0_XAB_RFPARAMETER, align 4
  %49 = call i32 @BIT(i32 31)
  %50 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %47, i32 %48, i32 %49, i32 0)
  br label %51

51:                                               ; preds = %42, %28
  %52 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %53 = load i32, i32* @ROFDM0_AGCRSSITABLE, align 4
  %54 = call i32 @BIT(i32 6)
  %55 = call i32 @BIT(i32 7)
  %56 = or i32 %54, %55
  %57 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %52, i32 %53, i32 %56, i32 0)
  %58 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %59 = load i32, i32* @ROFDM1_CFOTRACKING, align 4
  %60 = call i32 @BIT(i32 14)
  %61 = call i32 @BIT(i32 13)
  %62 = or i32 %60, %61
  %63 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %58, i32 %59, i32 %62, i32 0)
  %64 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %65 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %64, i32 2864, i32 15728640, i32 10)
  %66 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %67 = load i32, i32* @ROFDM0_XATXIQIMBALANCE, align 4
  %68 = load i32, i32* @MASKDWORD, align 4
  %69 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %66, i32 %67, i32 %68, i32 1073742080)
  %70 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %71 = load i32, i32* @ROFDM0_XBTXIQIMBALANCE, align 4
  %72 = load i32, i32* @MASKDWORD, align 4
  %73 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %70, i32 %71, i32 %72, i32 1073742080)
  %74 = load %struct.rtl_hal*, %struct.rtl_hal** %4, align 8
  %75 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @DUALMAC_DUALPHY, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %139

79:                                               ; preds = %51
  %80 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %81 = load i32, i32* @RFPGA0_XAB_RFINTERFACESW, align 4
  %82 = call i32 @BIT(i32 10)
  %83 = call i32 @BIT(i32 6)
  %84 = or i32 %82, %83
  %85 = call i32 @BIT(i32 5)
  %86 = or i32 %84, %85
  %87 = load %struct.rtl_efuse*, %struct.rtl_efuse** %6, align 8
  %88 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @BIT(i32 3)
  %91 = and i32 %89, %90
  %92 = ashr i32 %91, 3
  %93 = load %struct.rtl_efuse*, %struct.rtl_efuse** %6, align 8
  %94 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @BIT(i32 1)
  %97 = and i32 %95, %96
  %98 = or i32 %92, %97
  %99 = load %struct.rtl_efuse*, %struct.rtl_efuse** %6, align 8
  %100 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @BIT(i32 1)
  %103 = and i32 %101, %102
  %104 = shl i32 %103, 4
  %105 = or i32 %98, %104
  %106 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %80, i32 %81, i32 %86, i32 %105)
  %107 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %108 = load i32, i32* @RFPGA0_XA_RFINTERFACEOE, align 4
  %109 = call i32 @BIT(i32 10)
  %110 = call i32 @BIT(i32 6)
  %111 = or i32 %109, %110
  %112 = call i32 @BIT(i32 5)
  %113 = or i32 %111, %112
  %114 = load %struct.rtl_efuse*, %struct.rtl_efuse** %6, align 8
  %115 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @BIT(i32 2)
  %118 = and i32 %116, %117
  %119 = ashr i32 %118, 2
  %120 = load %struct.rtl_efuse*, %struct.rtl_efuse** %6, align 8
  %121 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @BIT(i32 0)
  %124 = and i32 %122, %123
  %125 = shl i32 %124, 1
  %126 = or i32 %119, %125
  %127 = load %struct.rtl_efuse*, %struct.rtl_efuse** %6, align 8
  %128 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @BIT(i32 0)
  %131 = and i32 %129, %130
  %132 = shl i32 %131, 5
  %133 = or i32 %126, %132
  %134 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %107, i32 %108, i32 %113, i32 %133)
  %135 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %136 = load i32, i32* @RFPGA0_XAB_RFPARAMETER, align 4
  %137 = call i32 @BIT(i32 15)
  %138 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %135, i32 %136, i32 %137, i32 0)
  br label %256

139:                                              ; preds = %51
  %140 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %141 = load i32, i32* @RFPGA0_XAB_RFINTERFACESW, align 4
  %142 = call i32 @BIT(i32 26)
  %143 = call i32 @BIT(i32 22)
  %144 = or i32 %142, %143
  %145 = call i32 @BIT(i32 21)
  %146 = or i32 %144, %145
  %147 = call i32 @BIT(i32 10)
  %148 = or i32 %146, %147
  %149 = call i32 @BIT(i32 6)
  %150 = or i32 %148, %149
  %151 = call i32 @BIT(i32 5)
  %152 = or i32 %150, %151
  %153 = load %struct.rtl_efuse*, %struct.rtl_efuse** %6, align 8
  %154 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = call i32 @BIT(i32 3)
  %157 = and i32 %155, %156
  %158 = ashr i32 %157, 3
  %159 = load %struct.rtl_efuse*, %struct.rtl_efuse** %6, align 8
  %160 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = call i32 @BIT(i32 1)
  %163 = and i32 %161, %162
  %164 = or i32 %158, %163
  %165 = load %struct.rtl_efuse*, %struct.rtl_efuse** %6, align 8
  %166 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @BIT(i32 1)
  %169 = and i32 %167, %168
  %170 = shl i32 %169, 4
  %171 = or i32 %164, %170
  %172 = load %struct.rtl_efuse*, %struct.rtl_efuse** %6, align 8
  %173 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = call i32 @BIT(i32 7)
  %176 = and i32 %174, %175
  %177 = shl i32 %176, 9
  %178 = or i32 %171, %177
  %179 = load %struct.rtl_efuse*, %struct.rtl_efuse** %6, align 8
  %180 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = call i32 @BIT(i32 5)
  %183 = and i32 %181, %182
  %184 = shl i32 %183, 12
  %185 = or i32 %178, %184
  %186 = load %struct.rtl_efuse*, %struct.rtl_efuse** %6, align 8
  %187 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @BIT(i32 3)
  %190 = and i32 %188, %189
  %191 = shl i32 %190, 18
  %192 = or i32 %185, %191
  %193 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %140, i32 %141, i32 %152, i32 %192)
  %194 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %195 = load i32, i32* @RFPGA0_XA_RFINTERFACEOE, align 4
  %196 = call i32 @BIT(i32 10)
  %197 = call i32 @BIT(i32 6)
  %198 = or i32 %196, %197
  %199 = call i32 @BIT(i32 5)
  %200 = or i32 %198, %199
  %201 = load %struct.rtl_efuse*, %struct.rtl_efuse** %6, align 8
  %202 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = call i32 @BIT(i32 2)
  %205 = and i32 %203, %204
  %206 = ashr i32 %205, 2
  %207 = load %struct.rtl_efuse*, %struct.rtl_efuse** %6, align 8
  %208 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = call i32 @BIT(i32 0)
  %211 = and i32 %209, %210
  %212 = shl i32 %211, 1
  %213 = or i32 %206, %212
  %214 = load %struct.rtl_efuse*, %struct.rtl_efuse** %6, align 8
  %215 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = call i32 @BIT(i32 0)
  %218 = and i32 %216, %217
  %219 = shl i32 %218, 5
  %220 = or i32 %213, %219
  %221 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %194, i32 %195, i32 %200, i32 %220)
  %222 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %223 = load i32, i32* @RFPGA0_XB_RFINTERFACEOE, align 4
  %224 = call i32 @BIT(i32 10)
  %225 = call i32 @BIT(i32 6)
  %226 = or i32 %224, %225
  %227 = call i32 @BIT(i32 5)
  %228 = or i32 %226, %227
  %229 = load %struct.rtl_efuse*, %struct.rtl_efuse** %6, align 8
  %230 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = call i32 @BIT(i32 6)
  %233 = and i32 %231, %232
  %234 = ashr i32 %233, 6
  %235 = load %struct.rtl_efuse*, %struct.rtl_efuse** %6, align 8
  %236 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = call i32 @BIT(i32 4)
  %239 = and i32 %237, %238
  %240 = ashr i32 %239, 3
  %241 = or i32 %234, %240
  %242 = load %struct.rtl_efuse*, %struct.rtl_efuse** %6, align 8
  %243 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 4
  %245 = call i32 @BIT(i32 2)
  %246 = and i32 %244, %245
  %247 = shl i32 %246, 3
  %248 = or i32 %241, %247
  %249 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %222, i32 %223, i32 %228, i32 %248)
  %250 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %251 = load i32, i32* @RFPGA0_XAB_RFPARAMETER, align 4
  %252 = call i32 @BIT(i32 31)
  %253 = call i32 @BIT(i32 15)
  %254 = or i32 %252, %253
  %255 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %250, i32 %251, i32 %254, i32 0)
  br label %256

256:                                              ; preds = %139, %79
  br label %435

257:                                              ; preds = %1
  %258 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %259 = load i32, i32* @RFPGA0_XAB_RFPARAMETER, align 4
  %260 = call i32 @BIT(i32 0)
  %261 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %258, i32 %259, i32 %260, i32 1)
  %262 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %263 = load i32, i32* @RFPGA0_XAB_RFPARAMETER, align 4
  %264 = call i32 @BIT(i32 15)
  %265 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %262, i32 %263, i32 %264, i32 1)
  %266 = load %struct.rtl_hal*, %struct.rtl_hal** %4, align 8
  %267 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %266, i32 0, i32 1
  %268 = load i64, i64* %267, align 8
  %269 = load i64, i64* @DUALMAC_DUALPHY, align 8
  %270 = icmp ne i64 %268, %269
  br i1 %270, label %271, label %280

271:                                              ; preds = %257
  %272 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %273 = load i32, i32* @RFPGA0_XAB_RFPARAMETER, align 4
  %274 = call i32 @BIT(i32 16)
  %275 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %272, i32 %273, i32 %274, i32 1)
  %276 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %277 = load i32, i32* @RFPGA0_XAB_RFPARAMETER, align 4
  %278 = call i32 @BIT(i32 31)
  %279 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %276, i32 %277, i32 %278, i32 1)
  br label %280

280:                                              ; preds = %271, %257
  %281 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %282 = load i32, i32* @ROFDM0_AGCRSSITABLE, align 4
  %283 = call i32 @BIT(i32 6)
  %284 = call i32 @BIT(i32 7)
  %285 = or i32 %283, %284
  %286 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %281, i32 %282, i32 %285, i32 1)
  %287 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %288 = load i32, i32* @ROFDM1_CFOTRACKING, align 4
  %289 = call i32 @BIT(i32 14)
  %290 = call i32 @BIT(i32 13)
  %291 = or i32 %289, %290
  %292 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %287, i32 %288, i32 %291, i32 1)
  %293 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %294 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %293, i32 2864, i32 15728640, i32 0)
  %295 = load %struct.rtl_efuse*, %struct.rtl_efuse** %6, align 8
  %296 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %295, i32 0, i32 2
  %297 = load i64*, i64** %296, align 8
  %298 = getelementptr inbounds i64, i64* %297, i64 0
  %299 = load i64, i64* %298, align 8
  %300 = icmp ne i64 %299, 0
  br i1 %300, label %301, label %306

301:                                              ; preds = %280
  %302 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %303 = load i32, i32* @ROFDM0_XATXIQIMBALANCE, align 4
  %304 = load i32, i32* @MASKDWORD, align 4
  %305 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %302, i32 %303, i32 %304, i32 759169205)
  br label %311

306:                                              ; preds = %280
  %307 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %308 = load i32, i32* @ROFDM0_XATXIQIMBALANCE, align 4
  %309 = load i32, i32* @MASKDWORD, align 4
  %310 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %307, i32 %308, i32 %309, i32 536871040)
  br label %311

311:                                              ; preds = %306, %301
  %312 = load %struct.rtl_efuse*, %struct.rtl_efuse** %6, align 8
  %313 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %312, i32 0, i32 2
  %314 = load i64*, i64** %313, align 8
  %315 = getelementptr inbounds i64, i64* %314, i64 1
  %316 = load i64, i64* %315, align 8
  %317 = icmp ne i64 %316, 0
  br i1 %317, label %318, label %323

318:                                              ; preds = %311
  %319 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %320 = load i32, i32* @ROFDM0_XBTXIQIMBALANCE, align 4
  %321 = load i32, i32* @MASKDWORD, align 4
  %322 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %319, i32 %320, i32 %321, i32 759169205)
  br label %328

323:                                              ; preds = %311
  %324 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %325 = load i32, i32* @ROFDM0_XBTXIQIMBALANCE, align 4
  %326 = load i32, i32* @MASKDWORD, align 4
  %327 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %324, i32 %325, i32 %326, i32 536871040)
  br label %328

328:                                              ; preds = %323, %318
  %329 = load %struct.rtl_hal*, %struct.rtl_hal** %4, align 8
  %330 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %329, i32 0, i32 1
  %331 = load i64, i64* %330, align 8
  %332 = load i64, i64* @DUALMAC_DUALPHY, align 8
  %333 = icmp eq i64 %331, %332
  br i1 %333, label %334, label %368

334:                                              ; preds = %328
  %335 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %336 = load i32, i32* @RFPGA0_XAB_RFINTERFACESW, align 4
  %337 = call i32 @BIT(i32 10)
  %338 = call i32 @BIT(i32 6)
  %339 = or i32 %337, %338
  %340 = call i32 @BIT(i32 5)
  %341 = or i32 %339, %340
  %342 = load %struct.rtl_efuse*, %struct.rtl_efuse** %6, align 8
  %343 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %342, i32 0, i32 1
  %344 = load i32, i32* %343, align 4
  %345 = call i32 @BIT(i32 5)
  %346 = and i32 %344, %345
  %347 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %335, i32 %336, i32 %341, i32 %346)
  %348 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %349 = load i32, i32* @RFPGA0_XA_RFINTERFACEOE, align 4
  %350 = call i32 @BIT(i32 10)
  %351 = load %struct.rtl_efuse*, %struct.rtl_efuse** %6, align 8
  %352 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %351, i32 0, i32 1
  %353 = load i32, i32* %352, align 4
  %354 = call i32 @BIT(i32 4)
  %355 = and i32 %353, %354
  %356 = ashr i32 %355, 4
  %357 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %348, i32 %349, i32 %350, i32 %356)
  %358 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %359 = load i32, i32* @RFPGA0_XAB_RFPARAMETER, align 4
  %360 = call i32 @BIT(i32 15)
  %361 = load %struct.rtl_efuse*, %struct.rtl_efuse** %6, align 8
  %362 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %361, i32 0, i32 1
  %363 = load i32, i32* %362, align 4
  %364 = call i32 @BIT(i32 4)
  %365 = and i32 %363, %364
  %366 = ashr i32 %365, 4
  %367 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %358, i32 %359, i32 %360, i32 %366)
  br label %434

368:                                              ; preds = %328
  %369 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %370 = load i32, i32* @RFPGA0_XAB_RFINTERFACESW, align 4
  %371 = call i32 @BIT(i32 26)
  %372 = call i32 @BIT(i32 22)
  %373 = or i32 %371, %372
  %374 = call i32 @BIT(i32 21)
  %375 = or i32 %373, %374
  %376 = call i32 @BIT(i32 10)
  %377 = or i32 %375, %376
  %378 = call i32 @BIT(i32 6)
  %379 = or i32 %377, %378
  %380 = call i32 @BIT(i32 5)
  %381 = or i32 %379, %380
  %382 = load %struct.rtl_efuse*, %struct.rtl_efuse** %6, align 8
  %383 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %382, i32 0, i32 1
  %384 = load i32, i32* %383, align 4
  %385 = call i32 @BIT(i32 5)
  %386 = and i32 %384, %385
  %387 = load %struct.rtl_efuse*, %struct.rtl_efuse** %6, align 8
  %388 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %387, i32 0, i32 1
  %389 = load i32, i32* %388, align 4
  %390 = call i32 @BIT(i32 7)
  %391 = and i32 %389, %390
  %392 = shl i32 %391, 14
  %393 = or i32 %386, %392
  %394 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %369, i32 %370, i32 %381, i32 %393)
  %395 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %396 = load i32, i32* @RFPGA0_XA_RFINTERFACEOE, align 4
  %397 = call i32 @BIT(i32 10)
  %398 = load %struct.rtl_efuse*, %struct.rtl_efuse** %6, align 8
  %399 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %398, i32 0, i32 1
  %400 = load i32, i32* %399, align 4
  %401 = call i32 @BIT(i32 4)
  %402 = and i32 %400, %401
  %403 = ashr i32 %402, 4
  %404 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %395, i32 %396, i32 %397, i32 %403)
  %405 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %406 = load i32, i32* @RFPGA0_XB_RFINTERFACEOE, align 4
  %407 = call i32 @BIT(i32 10)
  %408 = load %struct.rtl_efuse*, %struct.rtl_efuse** %6, align 8
  %409 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %408, i32 0, i32 1
  %410 = load i32, i32* %409, align 4
  %411 = call i32 @BIT(i32 6)
  %412 = and i32 %410, %411
  %413 = ashr i32 %412, 6
  %414 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %405, i32 %406, i32 %407, i32 %413)
  %415 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %416 = load i32, i32* @RFPGA0_XAB_RFPARAMETER, align 4
  %417 = call i32 @BIT(i32 31)
  %418 = call i32 @BIT(i32 15)
  %419 = or i32 %417, %418
  %420 = load %struct.rtl_efuse*, %struct.rtl_efuse** %6, align 8
  %421 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %420, i32 0, i32 1
  %422 = load i32, i32* %421, align 4
  %423 = call i32 @BIT(i32 4)
  %424 = and i32 %422, %423
  %425 = ashr i32 %424, 4
  %426 = load %struct.rtl_efuse*, %struct.rtl_efuse** %6, align 8
  %427 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %426, i32 0, i32 1
  %428 = load i32, i32* %427, align 4
  %429 = call i32 @BIT(i32 6)
  %430 = and i32 %428, %429
  %431 = shl i32 %430, 10
  %432 = or i32 %425, %431
  %433 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %415, i32 %416, i32 %419, i32 %432)
  br label %434

434:                                              ; preds = %368, %334
  br label %435

435:                                              ; preds = %434, %256
  %436 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %437 = load i32, i32* @ROFDM0_XARXIQIMBALANCE, align 4
  %438 = load i32, i32* @MASKDWORD, align 4
  %439 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %436, i32 %437, i32 %438, i32 1073742080)
  %440 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %441 = load i32, i32* @ROFDM0_XBRXIQIMBALANCE, align 4
  %442 = load i32, i32* @MASKDWORD, align 4
  %443 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %440, i32 %441, i32 %442, i32 1073742080)
  %444 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %445 = load i32, i32* @ROFDM0_XCTXAFE, align 4
  %446 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %444, i32 %445, i32 -268435456, i32 0)
  %447 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %448 = load i32, i32* @ROFDM0_ECCATHRESHOLD, align 4
  %449 = call i32 @BIT(i32 30)
  %450 = call i32 @BIT(i32 28)
  %451 = or i32 %449, %450
  %452 = call i32 @BIT(i32 26)
  %453 = or i32 %451, %452
  %454 = call i32 @BIT(i32 24)
  %455 = or i32 %453, %454
  %456 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %447, i32 %448, i32 %455, i32 0)
  %457 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %458 = load i32, i32* @ROFDM0_XDTXAFE, align 4
  %459 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %457, i32 %458, i32 -268435456, i32 0)
  %460 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %461 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %460, i32 3232, i32 -268435456, i32 0)
  %462 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %463 = load i32, i32* @ROFDM0_AGCRSSITABLE, align 4
  %464 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %462, i32 %463, i32 61440, i32 0)
  %465 = load i64, i64* @RF90_PATH_A, align 8
  store i64 %465, i64* %7, align 8
  br label %466

466:                                              ; preds = %508, %435
  %467 = load i64, i64* %7, align 8
  %468 = load %struct.rtl_phy*, %struct.rtl_phy** %5, align 8
  %469 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %468, i32 0, i32 0
  %470 = load i64, i64* %469, align 8
  %471 = icmp ult i64 %467, %470
  br i1 %471, label %472, label %511

472:                                              ; preds = %466
  %473 = load %struct.rtl_hal*, %struct.rtl_hal** %4, align 8
  %474 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %473, i32 0, i32 0
  %475 = load i64, i64* %474, align 8
  %476 = load i64, i64* @BAND_ON_2_4G, align 8
  %477 = icmp eq i64 %475, %476
  br i1 %477, label %478, label %493

478:                                              ; preds = %472
  %479 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %480 = load i64, i64* %7, align 8
  %481 = load i32, i32* @RF_CHNLBW, align 4
  %482 = call i32 @BIT(i32 8)
  %483 = call i32 @BIT(i32 16)
  %484 = or i32 %482, %483
  %485 = call i32 @BIT(i32 18)
  %486 = or i32 %484, %485
  %487 = call i32 @rtl_set_rfreg(%struct.ieee80211_hw* %479, i64 %480, i32 %481, i32 %486, i32 0)
  %488 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %489 = load i64, i64* %7, align 8
  %490 = trunc i64 %489 to i32
  %491 = zext i32 %490 to i64
  %492 = call i32 @rtl_set_rfreg(%struct.ieee80211_hw* %488, i64 %491, i32 11, i32 114688, i32 7)
  br label %507

493:                                              ; preds = %472
  %494 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %495 = load i64, i64* %7, align 8
  %496 = load i32, i32* @RF_CHNLBW, align 4
  %497 = call i32 @BIT(i32 8)
  %498 = call i32 @BIT(i32 16)
  %499 = or i32 %497, %498
  %500 = call i32 @BIT(i32 18)
  %501 = or i32 %499, %500
  %502 = call i32 @BIT(i32 16)
  %503 = call i32 @BIT(i32 8)
  %504 = or i32 %502, %503
  %505 = ashr i32 %504, 8
  %506 = call i32 @rtl_set_rfreg(%struct.ieee80211_hw* %494, i64 %495, i32 %496, i32 %501, i32 %505)
  br label %507

507:                                              ; preds = %493, %478
  br label %508

508:                                              ; preds = %507
  %509 = load i64, i64* %7, align 8
  %510 = add i64 %509, 1
  store i64 %510, i64* %7, align 8
  br label %466

511:                                              ; preds = %466
  %512 = load %struct.rtl_phy*, %struct.rtl_phy** %5, align 8
  %513 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %512, i32 0, i32 1
  %514 = load i64, i64* %513, align 8
  %515 = load i64, i64* @RF_1T1R, align 8
  %516 = icmp eq i64 %514, %515
  br i1 %516, label %517, label %559

517:                                              ; preds = %511
  %518 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %519 = load i32, i32* @ROFDM0_TRXPATHENABLE, align 4
  %520 = load i32, i32* @MASKBYTE0, align 4
  %521 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %518, i32 %519, i32 %520, i32 17)
  %522 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %523 = load i32, i32* @ROFDM1_TRXPATHENABLE, align 4
  %524 = load i32, i32* @BDWORD, align 4
  %525 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %522, i32 %523, i32 %524, i32 1)
  %526 = load %struct.rtl_hal*, %struct.rtl_hal** %4, align 8
  %527 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %526, i32 0, i32 2
  %528 = load i64, i64* %527, align 8
  %529 = icmp eq i64 %528, 0
  br i1 %529, label %530, label %537

530:                                              ; preds = %517
  %531 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %532 = load i32, i32* @RFPGA0_ADDALLOCKEN, align 4
  %533 = call i32 @BIT(i32 12)
  %534 = call i32 @BIT(i32 13)
  %535 = or i32 %533, %534
  %536 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %531, i32 %532, i32 %535, i32 3)
  br label %558

537:                                              ; preds = %517
  %538 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %539 = call i32 @rtl92d_phy_enable_anotherphy(%struct.ieee80211_hw* %538, i32 0)
  %540 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %541 = load i32, i32* @COMP_INIT, align 4
  %542 = load i32, i32* @DBG_LOUD, align 4
  %543 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %540, i32 %541, i32 %542, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %544 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %545 = load i32, i32* @RFPGA0_ADDALLOCKEN, align 4
  %546 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %547 = load i32, i32* @RFPGA0_ADDALLOCKEN, align 4
  %548 = call i32 @BIT(i32 3)
  %549 = call i32 @rtl92de_read_dword_dbi(%struct.ieee80211_hw* %546, i32 %547, i32 %548)
  %550 = call i32 @BIT(i32 12)
  %551 = or i32 %549, %550
  %552 = call i32 @BIT(i32 13)
  %553 = or i32 %551, %552
  %554 = call i32 @BIT(i32 3)
  %555 = call i32 @rtl92de_write_dword_dbi(%struct.ieee80211_hw* %544, i32 %545, i32 %553, i32 %554)
  %556 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %557 = call i32 @rtl92d_phy_powerdown_anotherphy(%struct.ieee80211_hw* %556, i32 0)
  br label %558

558:                                              ; preds = %537, %530
  br label %574

559:                                              ; preds = %511
  %560 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %561 = load i32, i32* @ROFDM0_TRXPATHENABLE, align 4
  %562 = load i32, i32* @MASKBYTE0, align 4
  %563 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %560, i32 %561, i32 %562, i32 51)
  %564 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %565 = load i32, i32* @ROFDM1_TRXPATHENABLE, align 4
  %566 = load i32, i32* @BDWORD, align 4
  %567 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %564, i32 %565, i32 %566, i32 3)
  %568 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %569 = load i32, i32* @RFPGA0_ADDALLOCKEN, align 4
  %570 = call i32 @BIT(i32 12)
  %571 = call i32 @BIT(i32 13)
  %572 = or i32 %570, %571
  %573 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %568, i32 %569, i32 %572, i32 0)
  br label %574

574:                                              ; preds = %559, %558
  %575 = load i64, i64* @RF90_PATH_A, align 8
  store i64 %575, i64* %7, align 8
  br label %576

576:                                              ; preds = %602, %574
  %577 = load i64, i64* %7, align 8
  %578 = load %struct.rtl_phy*, %struct.rtl_phy** %5, align 8
  %579 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %578, i32 0, i32 0
  %580 = load i64, i64* %579, align 8
  %581 = icmp ult i64 %577, %580
  br i1 %581, label %582, label %605

582:                                              ; preds = %576
  %583 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %584 = load i64, i64* %7, align 8
  %585 = load i32, i32* @RF_CHNLBW, align 4
  %586 = load i32, i32* @RFREG_OFFSET_MASK, align 4
  %587 = call i8* @rtl_get_rfreg(%struct.ieee80211_hw* %583, i64 %584, i32 %585, i32 %586)
  %588 = load %struct.rtl_phy*, %struct.rtl_phy** %5, align 8
  %589 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %588, i32 0, i32 2
  %590 = load i8**, i8*** %589, align 8
  %591 = load i64, i64* %7, align 8
  %592 = getelementptr inbounds i8*, i8** %590, i64 %591
  store i8* %587, i8** %592, align 8
  %593 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %594 = load i64, i64* %7, align 8
  %595 = load i32, i32* @RFREG_OFFSET_MASK, align 4
  %596 = call i8* @rtl_get_rfreg(%struct.ieee80211_hw* %593, i64 %594, i32 60, i32 %595)
  %597 = load %struct.rtl_phy*, %struct.rtl_phy** %5, align 8
  %598 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %597, i32 0, i32 3
  %599 = load i8**, i8*** %598, align 8
  %600 = load i64, i64* %7, align 8
  %601 = getelementptr inbounds i8*, i8** %599, i64 %600
  store i8* %596, i8** %601, align 8
  br label %602

602:                                              ; preds = %582
  %603 = load i64, i64* %7, align 8
  %604 = add i64 %603, 1
  store i64 %604, i64* %7, align 8
  br label %576

605:                                              ; preds = %576
  store i64 0, i64* %8, align 8
  br label %606

606:                                              ; preds = %620, %605
  %607 = load i64, i64* %8, align 8
  %608 = icmp ult i64 %607, 2
  br i1 %608, label %609, label %623

609:                                              ; preds = %606
  %610 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %611 = load i32, i32* @COMP_RF, align 4
  %612 = load i32, i32* @DBG_LOUD, align 4
  %613 = load %struct.rtl_phy*, %struct.rtl_phy** %5, align 8
  %614 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %613, i32 0, i32 2
  %615 = load i8**, i8*** %614, align 8
  %616 = load i64, i64* %8, align 8
  %617 = getelementptr inbounds i8*, i8** %615, i64 %616
  %618 = load i8*, i8** %617, align 8
  %619 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %610, i32 %611, i32 %612, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* %618)
  br label %620

620:                                              ; preds = %609
  %621 = load i64, i64* %8, align 8
  %622 = add i64 %621, 1
  store i64 %622, i64* %8, align 8
  br label %606

623:                                              ; preds = %606
  %624 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %625 = load i32, i32* @COMP_INIT, align 4
  %626 = load i32, i32* @DBG_LOUD, align 4
  %627 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %624, i32 %625, i32 %626, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_hal* @rtl_hal(%struct.rtl_priv*) #1

declare dso_local %struct.rtl_efuse* @rtl_efuse(%struct.rtl_priv*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, ...) #1

declare dso_local i32 @rtl_set_bbreg(%struct.ieee80211_hw*, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @rtl_set_rfreg(%struct.ieee80211_hw*, i64, i32, i32, i32) #1

declare dso_local i32 @rtl92d_phy_enable_anotherphy(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @rtl92de_write_dword_dbi(%struct.ieee80211_hw*, i32, i32, i32) #1

declare dso_local i32 @rtl92de_read_dword_dbi(%struct.ieee80211_hw*, i32, i32) #1

declare dso_local i32 @rtl92d_phy_powerdown_anotherphy(%struct.ieee80211_hw*, i32) #1

declare dso_local i8* @rtl_get_rfreg(%struct.ieee80211_hw*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
