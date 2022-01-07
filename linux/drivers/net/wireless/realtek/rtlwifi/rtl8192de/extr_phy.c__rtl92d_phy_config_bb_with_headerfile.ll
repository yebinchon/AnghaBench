; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_phy.c__rtl92d_phy_config_bb_with_headerfile.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_phy.c__rtl92d_phy_config_bb_with_headerfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { i32 }
%struct.rtl_hal = type { i64, i64 }

@AGCTAB_ARRAYLENGTH = common dso_local global i32 0, align 4
@rtl8192de_agctab_array = common dso_local global i32* null, align 8
@COMP_INIT = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c" ===> phy:MAC0, Rtl819XAGCTAB_Array\0A\00", align 1
@BAND_ON_2_4G = common dso_local global i64 0, align 8
@AGCTAB_2G_ARRAYLENGTH = common dso_local global i32 0, align 4
@rtl8192de_agctab_2garray = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c" ===> phy:MAC1, Rtl819XAGCTAB_2GArray\0A\00", align 1
@AGCTAB_5G_ARRAYLENGTH = common dso_local global i32 0, align 4
@rtl8192de_agctab_5garray = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [39 x i8] c" ===> phy:MAC1, Rtl819XAGCTAB_5GArray\0A\00", align 1
@PHY_REG_2T_ARRAYLENGTH = common dso_local global i32 0, align 4
@rtl8192de_phy_reg_2tarray = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [35 x i8] c" ===> phy:Rtl819XPHY_REG_Array_PG\0A\00", align 1
@BASEBAND_CONFIG_PHY_REG = common dso_local global i64 0, align 8
@MASKDWORD = common dso_local global i32 0, align 4
@DBG_TRACE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [62 x i8] c"The phy_regarray_table[0] is %x Rtl819XPHY_REGArray[1] is %x\0A\00", align 1
@BASEBAND_CONFIG_AGC_TAB = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [69 x i8] c"The Rtl819XAGCTAB_Array_Table[0] is %u Rtl819XPHY_REGArray[1] is %u\0A\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"Normal Chip, MAC0, load Rtl819XAGCTAB_Array\0A\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"Load Rtl819XAGCTAB_2GArray\0A\00", align 1
@.str.8 = private unnamed_addr constant [71 x i8] c"The Rtl819XAGCTAB_5GArray_Table[0] is %u Rtl819XPHY_REGArray[1] is %u\0A\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"Load Rtl819XAGCTAB_5GArray\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, i64)* @_rtl92d_phy_config_bb_with_headerfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_rtl92d_phy_config_bb_with_headerfile(%struct.ieee80211_hw* %0, i64 %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.rtl_priv*, align 8
  %13 = alloca %struct.rtl_hal*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32* null, i32** %7, align 8
  store i32 0, i32* %10, align 4
  %14 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %15 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %14)
  store %struct.rtl_priv* %15, %struct.rtl_priv** %12, align 8
  %16 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %17 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %16)
  %18 = call %struct.rtl_hal* @rtl_hal(%struct.rtl_priv* %17)
  store %struct.rtl_hal* %18, %struct.rtl_hal** %13, align 8
  %19 = load %struct.rtl_hal*, %struct.rtl_hal** %13, align 8
  %20 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %2
  %24 = load i32, i32* @AGCTAB_ARRAYLENGTH, align 4
  store i32 %24, i32* %10, align 4
  %25 = load i32*, i32** @rtl8192de_agctab_array, align 8
  store i32* %25, i32** %7, align 8
  %26 = load %struct.rtl_priv*, %struct.rtl_priv** %12, align 8
  %27 = load i32, i32* @COMP_INIT, align 4
  %28 = load i32, i32* @DBG_LOUD, align 4
  %29 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %26, i32 %27, i32 %28, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %51

30:                                               ; preds = %2
  %31 = load %struct.rtl_hal*, %struct.rtl_hal** %13, align 8
  %32 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @BAND_ON_2_4G, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %30
  %37 = load i32, i32* @AGCTAB_2G_ARRAYLENGTH, align 4
  store i32 %37, i32* %10, align 4
  %38 = load i32*, i32** @rtl8192de_agctab_2garray, align 8
  store i32* %38, i32** %7, align 8
  %39 = load %struct.rtl_priv*, %struct.rtl_priv** %12, align 8
  %40 = load i32, i32* @COMP_INIT, align 4
  %41 = load i32, i32* @DBG_LOUD, align 4
  %42 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %39, i32 %40, i32 %41, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %50

43:                                               ; preds = %30
  %44 = load i32, i32* @AGCTAB_5G_ARRAYLENGTH, align 4
  store i32 %44, i32* %11, align 4
  %45 = load i32*, i32** @rtl8192de_agctab_5garray, align 8
  store i32* %45, i32** %8, align 8
  %46 = load %struct.rtl_priv*, %struct.rtl_priv** %12, align 8
  %47 = load i32, i32* @COMP_INIT, align 4
  %48 = load i32, i32* @DBG_LOUD, align 4
  %49 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %46, i32 %47, i32 %48, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  br label %50

50:                                               ; preds = %43, %36
  br label %51

51:                                               ; preds = %50, %23
  %52 = load i32, i32* @PHY_REG_2T_ARRAYLENGTH, align 4
  store i32 %52, i32* %9, align 4
  %53 = load i32*, i32** @rtl8192de_phy_reg_2tarray, align 8
  store i32* %53, i32** %6, align 8
  %54 = load %struct.rtl_priv*, %struct.rtl_priv** %12, align 8
  %55 = load i32, i32* @COMP_INIT, align 4
  %56 = load i32, i32* @DBG_LOUD, align 4
  %57 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %54, i32 %55, i32 %56, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %58 = load i64, i64* %4, align 8
  %59 = load i64, i64* @BASEBAND_CONFIG_PHY_REG, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %107

61:                                               ; preds = %51
  store i32 0, i32* %5, align 4
  br label %62

62:                                               ; preds = %103, %61
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* %9, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %106

66:                                               ; preds = %62
  %67 = load i32*, i32** %6, align 8
  %68 = load i32, i32* %5, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @rtl_addr_delay(i32 %71)
  %73 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %74 = load i32*, i32** %6, align 8
  %75 = load i32, i32* %5, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @MASKDWORD, align 4
  %80 = load i32*, i32** %6, align 8
  %81 = load i32, i32* %5, align 4
  %82 = add nsw i32 %81, 1
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %80, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %73, i32 %78, i32 %79, i32 %85)
  %87 = call i32 @udelay(i32 1)
  %88 = load %struct.rtl_priv*, %struct.rtl_priv** %12, align 8
  %89 = load i32, i32* @COMP_INIT, align 4
  %90 = load i32, i32* @DBG_TRACE, align 4
  %91 = load i32*, i32** %6, align 8
  %92 = load i32, i32* %5, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = load i32*, i32** %6, align 8
  %97 = load i32, i32* %5, align 4
  %98 = add nsw i32 %97, 1
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %96, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %88, i32 %89, i32 %90, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.4, i64 0, i64 0), i32 %95, i32 %101)
  br label %103

103:                                              ; preds = %66
  %104 = load i32, i32* %5, align 4
  %105 = add nsw i32 %104, 2
  store i32 %105, i32* %5, align 4
  br label %62

106:                                              ; preds = %62
  br label %257

107:                                              ; preds = %51
  %108 = load i64, i64* %4, align 8
  %109 = load i64, i64* @BASEBAND_CONFIG_AGC_TAB, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %256

111:                                              ; preds = %107
  %112 = load %struct.rtl_hal*, %struct.rtl_hal** %13, align 8
  %113 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %116, label %160

116:                                              ; preds = %111
  store i32 0, i32* %5, align 4
  br label %117

117:                                              ; preds = %152, %116
  %118 = load i32, i32* %5, align 4
  %119 = load i32, i32* %10, align 4
  %120 = icmp slt i32 %118, %119
  br i1 %120, label %121, label %155

121:                                              ; preds = %117
  %122 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %123 = load i32*, i32** %7, align 8
  %124 = load i32, i32* %5, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @MASKDWORD, align 4
  %129 = load i32*, i32** %7, align 8
  %130 = load i32, i32* %5, align 4
  %131 = add nsw i32 %130, 1
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %129, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %122, i32 %127, i32 %128, i32 %134)
  %136 = call i32 @udelay(i32 1)
  %137 = load %struct.rtl_priv*, %struct.rtl_priv** %12, align 8
  %138 = load i32, i32* @COMP_INIT, align 4
  %139 = load i32, i32* @DBG_TRACE, align 4
  %140 = load i32*, i32** %7, align 8
  %141 = load i32, i32* %5, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = load i32*, i32** %7, align 8
  %146 = load i32, i32* %5, align 4
  %147 = add nsw i32 %146, 1
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %145, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %137, i32 %138, i32 %139, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.5, i64 0, i64 0), i32 %144, i32 %150)
  br label %152

152:                                              ; preds = %121
  %153 = load i32, i32* %5, align 4
  %154 = add nsw i32 %153, 2
  store i32 %154, i32* %5, align 4
  br label %117

155:                                              ; preds = %117
  %156 = load %struct.rtl_priv*, %struct.rtl_priv** %12, align 8
  %157 = load i32, i32* @COMP_INIT, align 4
  %158 = load i32, i32* @DBG_LOUD, align 4
  %159 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %156, i32 %157, i32 %158, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0))
  br label %255

160:                                              ; preds = %111
  %161 = load %struct.rtl_hal*, %struct.rtl_hal** %13, align 8
  %162 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %161, i32 0, i32 1
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @BAND_ON_2_4G, align 8
  %165 = icmp eq i64 %163, %164
  br i1 %165, label %166, label %210

166:                                              ; preds = %160
  store i32 0, i32* %5, align 4
  br label %167

167:                                              ; preds = %202, %166
  %168 = load i32, i32* %5, align 4
  %169 = load i32, i32* %10, align 4
  %170 = icmp slt i32 %168, %169
  br i1 %170, label %171, label %205

171:                                              ; preds = %167
  %172 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %173 = load i32*, i32** %7, align 8
  %174 = load i32, i32* %5, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %173, i64 %175
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* @MASKDWORD, align 4
  %179 = load i32*, i32** %7, align 8
  %180 = load i32, i32* %5, align 4
  %181 = add nsw i32 %180, 1
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %179, i64 %182
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %172, i32 %177, i32 %178, i32 %184)
  %186 = call i32 @udelay(i32 1)
  %187 = load %struct.rtl_priv*, %struct.rtl_priv** %12, align 8
  %188 = load i32, i32* @COMP_INIT, align 4
  %189 = load i32, i32* @DBG_TRACE, align 4
  %190 = load i32*, i32** %7, align 8
  %191 = load i32, i32* %5, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %190, i64 %192
  %194 = load i32, i32* %193, align 4
  %195 = load i32*, i32** %7, align 8
  %196 = load i32, i32* %5, align 4
  %197 = add nsw i32 %196, 1
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i32, i32* %195, i64 %198
  %200 = load i32, i32* %199, align 4
  %201 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %187, i32 %188, i32 %189, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.5, i64 0, i64 0), i32 %194, i32 %200)
  br label %202

202:                                              ; preds = %171
  %203 = load i32, i32* %5, align 4
  %204 = add nsw i32 %203, 2
  store i32 %204, i32* %5, align 4
  br label %167

205:                                              ; preds = %167
  %206 = load %struct.rtl_priv*, %struct.rtl_priv** %12, align 8
  %207 = load i32, i32* @COMP_INIT, align 4
  %208 = load i32, i32* @DBG_LOUD, align 4
  %209 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %206, i32 %207, i32 %208, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0))
  br label %254

210:                                              ; preds = %160
  store i32 0, i32* %5, align 4
  br label %211

211:                                              ; preds = %246, %210
  %212 = load i32, i32* %5, align 4
  %213 = load i32, i32* %11, align 4
  %214 = icmp slt i32 %212, %213
  br i1 %214, label %215, label %249

215:                                              ; preds = %211
  %216 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %217 = load i32*, i32** %8, align 8
  %218 = load i32, i32* %5, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i32, i32* %217, i64 %219
  %221 = load i32, i32* %220, align 4
  %222 = load i32, i32* @MASKDWORD, align 4
  %223 = load i32*, i32** %8, align 8
  %224 = load i32, i32* %5, align 4
  %225 = add nsw i32 %224, 1
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i32, i32* %223, i64 %226
  %228 = load i32, i32* %227, align 4
  %229 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %216, i32 %221, i32 %222, i32 %228)
  %230 = call i32 @udelay(i32 1)
  %231 = load %struct.rtl_priv*, %struct.rtl_priv** %12, align 8
  %232 = load i32, i32* @COMP_INIT, align 4
  %233 = load i32, i32* @DBG_TRACE, align 4
  %234 = load i32*, i32** %8, align 8
  %235 = load i32, i32* %5, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i32, i32* %234, i64 %236
  %238 = load i32, i32* %237, align 4
  %239 = load i32*, i32** %8, align 8
  %240 = load i32, i32* %5, align 4
  %241 = add nsw i32 %240, 1
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i32, i32* %239, i64 %242
  %244 = load i32, i32* %243, align 4
  %245 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %231, i32 %232, i32 %233, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.8, i64 0, i64 0), i32 %238, i32 %244)
  br label %246

246:                                              ; preds = %215
  %247 = load i32, i32* %5, align 4
  %248 = add nsw i32 %247, 2
  store i32 %248, i32* %5, align 4
  br label %211

249:                                              ; preds = %211
  %250 = load %struct.rtl_priv*, %struct.rtl_priv** %12, align 8
  %251 = load i32, i32* @COMP_INIT, align 4
  %252 = load i32, i32* @DBG_LOUD, align 4
  %253 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %250, i32 %251, i32 %252, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0))
  br label %254

254:                                              ; preds = %249, %205
  br label %255

255:                                              ; preds = %254, %155
  br label %256

256:                                              ; preds = %255, %107
  br label %257

257:                                              ; preds = %256, %106
  ret i32 1
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_hal* @rtl_hal(%struct.rtl_priv*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, ...) #1

declare dso_local i32 @rtl_addr_delay(i32) #1

declare dso_local i32 @rtl_set_bbreg(%struct.ieee80211_hw*, i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
