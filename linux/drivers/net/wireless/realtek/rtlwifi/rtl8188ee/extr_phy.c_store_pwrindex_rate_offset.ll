; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8188ee/extr_phy.c_store_pwrindex_rate_offset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8188ee/extr_phy.c_store_pwrindex_rate_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.rtl_phy }
%struct.rtl_phy = type { i32, i64** }

@RTXAGC_A_RATE18_06 = common dso_local global i64 0, align 8
@COMP_INIT = common dso_local global i32 0, align 4
@DBG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"MCSTxPowerLevelOriginalOffset[%d][0] = 0x%x\0A\00", align 1
@RTXAGC_A_RATE54_24 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [45 x i8] c"MCSTxPowerLevelOriginalOffset[%d][1] = 0x%x\0A\00", align 1
@RTXAGC_A_CCK1_MCS32 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [45 x i8] c"MCSTxPowerLevelOriginalOffset[%d][6] = 0x%x\0A\00", align 1
@RTXAGC_B_CCK11_A_CCK2_11 = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [45 x i8] c"MCSTxPowerLevelOriginalOffset[%d][7] = 0x%x\0A\00", align 1
@RTXAGC_A_MCS03_MCS00 = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [45 x i8] c"MCSTxPowerLevelOriginalOffset[%d][2] = 0x%x\0A\00", align 1
@RTXAGC_A_MCS07_MCS04 = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [45 x i8] c"MCSTxPowerLevelOriginalOffset[%d][3] = 0x%x\0A\00", align 1
@RTXAGC_A_MCS11_MCS08 = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [45 x i8] c"MCSTxPowerLevelOriginalOffset[%d][4] = 0x%x\0A\00", align 1
@RTXAGC_A_MCS15_MCS12 = common dso_local global i64 0, align 8
@RF_1T1R = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [45 x i8] c"MCSTxPowerLevelOriginalOffset[%d][5] = 0x%x\0A\00", align 1
@RTXAGC_B_RATE18_06 = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [45 x i8] c"MCSTxPowerLevelOriginalOffset[%d][8] = 0x%x\0A\00", align 1
@RTXAGC_B_RATE54_24 = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [45 x i8] c"MCSTxPowerLevelOriginalOffset[%d][9] = 0x%x\0A\00", align 1
@RTXAGC_B_CCK1_55_MCS32 = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [46 x i8] c"MCSTxPowerLevelOriginalOffset[%d][14] = 0x%x\0A\00", align 1
@.str.11 = private unnamed_addr constant [46 x i8] c"MCSTxPowerLevelOriginalOffset[%d][15] = 0x%x\0A\00", align 1
@RTXAGC_B_MCS03_MCS00 = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [46 x i8] c"MCSTxPowerLevelOriginalOffset[%d][10] = 0x%x\0A\00", align 1
@RTXAGC_B_MCS07_MCS04 = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [46 x i8] c"MCSTxPowerLevelOriginalOffset[%d][11] = 0x%x\0A\00", align 1
@RTXAGC_B_MCS11_MCS08 = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [46 x i8] c"MCSTxPowerLevelOriginalOffset[%d][12] = 0x%x\0A\00", align 1
@RTXAGC_B_MCS15_MCS12 = common dso_local global i64 0, align 8
@.str.15 = private unnamed_addr constant [46 x i8] c"MCSTxPowerLevelOriginalOffset[%d][13] = 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i64, i64, i64)* @store_pwrindex_rate_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @store_pwrindex_rate_offset(%struct.ieee80211_hw* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.rtl_priv*, align 8
  %10 = alloca %struct.rtl_phy*, align 8
  %11 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %13 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %12)
  store %struct.rtl_priv* %13, %struct.rtl_priv** %9, align 8
  %14 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %15 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %14, i32 0, i32 0
  store %struct.rtl_phy* %15, %struct.rtl_phy** %10, align 8
  %16 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %17 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %11, align 4
  %19 = load i64, i64* %6, align 8
  %20 = load i64, i64* @RTXAGC_A_RATE18_06, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %46

22:                                               ; preds = %4
  %23 = load i64, i64* %8, align 8
  %24 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %25 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %24, i32 0, i32 1
  %26 = load i64**, i64*** %25, align 8
  %27 = load i32, i32* %11, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i64*, i64** %26, i64 %28
  %30 = load i64*, i64** %29, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 0
  store i64 %23, i64* %31, align 8
  %32 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %33 = load i32, i32* @COMP_INIT, align 4
  %34 = load i32, i32* @DBG_TRACE, align 4
  %35 = load i32, i32* %11, align 4
  %36 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %37 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %36, i32 0, i32 1
  %38 = load i64**, i64*** %37, align 8
  %39 = load i32, i32* %11, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i64*, i64** %38, i64 %40
  %42 = load i64*, i64** %41, align 8
  %43 = getelementptr inbounds i64, i64* %42, i64 0
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @RT_TRACE(%struct.rtl_priv* %32, i32 %33, i32 %34, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %35, i64 %44)
  br label %46

46:                                               ; preds = %22, %4
  %47 = load i64, i64* %6, align 8
  %48 = load i64, i64* @RTXAGC_A_RATE54_24, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %74

50:                                               ; preds = %46
  %51 = load i64, i64* %8, align 8
  %52 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %53 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %52, i32 0, i32 1
  %54 = load i64**, i64*** %53, align 8
  %55 = load i32, i32* %11, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i64*, i64** %54, i64 %56
  %58 = load i64*, i64** %57, align 8
  %59 = getelementptr inbounds i64, i64* %58, i64 1
  store i64 %51, i64* %59, align 8
  %60 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %61 = load i32, i32* @COMP_INIT, align 4
  %62 = load i32, i32* @DBG_TRACE, align 4
  %63 = load i32, i32* %11, align 4
  %64 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %65 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %64, i32 0, i32 1
  %66 = load i64**, i64*** %65, align 8
  %67 = load i32, i32* %11, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i64*, i64** %66, i64 %68
  %70 = load i64*, i64** %69, align 8
  %71 = getelementptr inbounds i64, i64* %70, i64 1
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @RT_TRACE(%struct.rtl_priv* %60, i32 %61, i32 %62, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %63, i64 %72)
  br label %74

74:                                               ; preds = %50, %46
  %75 = load i64, i64* %6, align 8
  %76 = load i64, i64* @RTXAGC_A_CCK1_MCS32, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %102

78:                                               ; preds = %74
  %79 = load i64, i64* %8, align 8
  %80 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %81 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %80, i32 0, i32 1
  %82 = load i64**, i64*** %81, align 8
  %83 = load i32, i32* %11, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i64*, i64** %82, i64 %84
  %86 = load i64*, i64** %85, align 8
  %87 = getelementptr inbounds i64, i64* %86, i64 6
  store i64 %79, i64* %87, align 8
  %88 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %89 = load i32, i32* @COMP_INIT, align 4
  %90 = load i32, i32* @DBG_TRACE, align 4
  %91 = load i32, i32* %11, align 4
  %92 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %93 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %92, i32 0, i32 1
  %94 = load i64**, i64*** %93, align 8
  %95 = load i32, i32* %11, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i64*, i64** %94, i64 %96
  %98 = load i64*, i64** %97, align 8
  %99 = getelementptr inbounds i64, i64* %98, i64 6
  %100 = load i64, i64* %99, align 8
  %101 = call i32 @RT_TRACE(%struct.rtl_priv* %88, i32 %89, i32 %90, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %91, i64 %100)
  br label %102

102:                                              ; preds = %78, %74
  %103 = load i64, i64* %6, align 8
  %104 = load i64, i64* @RTXAGC_B_CCK11_A_CCK2_11, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %133

106:                                              ; preds = %102
  %107 = load i64, i64* %7, align 8
  %108 = icmp eq i64 %107, 4294967040
  br i1 %108, label %109, label %133

109:                                              ; preds = %106
  %110 = load i64, i64* %8, align 8
  %111 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %112 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %111, i32 0, i32 1
  %113 = load i64**, i64*** %112, align 8
  %114 = load i32, i32* %11, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i64*, i64** %113, i64 %115
  %117 = load i64*, i64** %116, align 8
  %118 = getelementptr inbounds i64, i64* %117, i64 7
  store i64 %110, i64* %118, align 8
  %119 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %120 = load i32, i32* @COMP_INIT, align 4
  %121 = load i32, i32* @DBG_TRACE, align 4
  %122 = load i32, i32* %11, align 4
  %123 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %124 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %123, i32 0, i32 1
  %125 = load i64**, i64*** %124, align 8
  %126 = load i32, i32* %11, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i64*, i64** %125, i64 %127
  %129 = load i64*, i64** %128, align 8
  %130 = getelementptr inbounds i64, i64* %129, i64 7
  %131 = load i64, i64* %130, align 8
  %132 = call i32 @RT_TRACE(%struct.rtl_priv* %119, i32 %120, i32 %121, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 %122, i64 %131)
  br label %133

133:                                              ; preds = %109, %106, %102
  %134 = load i64, i64* %6, align 8
  %135 = load i64, i64* @RTXAGC_A_MCS03_MCS00, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %137, label %161

137:                                              ; preds = %133
  %138 = load i64, i64* %8, align 8
  %139 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %140 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %139, i32 0, i32 1
  %141 = load i64**, i64*** %140, align 8
  %142 = load i32, i32* %11, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i64*, i64** %141, i64 %143
  %145 = load i64*, i64** %144, align 8
  %146 = getelementptr inbounds i64, i64* %145, i64 2
  store i64 %138, i64* %146, align 8
  %147 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %148 = load i32, i32* @COMP_INIT, align 4
  %149 = load i32, i32* @DBG_TRACE, align 4
  %150 = load i32, i32* %11, align 4
  %151 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %152 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %151, i32 0, i32 1
  %153 = load i64**, i64*** %152, align 8
  %154 = load i32, i32* %11, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i64*, i64** %153, i64 %155
  %157 = load i64*, i64** %156, align 8
  %158 = getelementptr inbounds i64, i64* %157, i64 2
  %159 = load i64, i64* %158, align 8
  %160 = call i32 @RT_TRACE(%struct.rtl_priv* %147, i32 %148, i32 %149, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 %150, i64 %159)
  br label %161

161:                                              ; preds = %137, %133
  %162 = load i64, i64* %6, align 8
  %163 = load i64, i64* @RTXAGC_A_MCS07_MCS04, align 8
  %164 = icmp eq i64 %162, %163
  br i1 %164, label %165, label %189

165:                                              ; preds = %161
  %166 = load i64, i64* %8, align 8
  %167 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %168 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %167, i32 0, i32 1
  %169 = load i64**, i64*** %168, align 8
  %170 = load i32, i32* %11, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i64*, i64** %169, i64 %171
  %173 = load i64*, i64** %172, align 8
  %174 = getelementptr inbounds i64, i64* %173, i64 3
  store i64 %166, i64* %174, align 8
  %175 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %176 = load i32, i32* @COMP_INIT, align 4
  %177 = load i32, i32* @DBG_TRACE, align 4
  %178 = load i32, i32* %11, align 4
  %179 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %180 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %179, i32 0, i32 1
  %181 = load i64**, i64*** %180, align 8
  %182 = load i32, i32* %11, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i64*, i64** %181, i64 %183
  %185 = load i64*, i64** %184, align 8
  %186 = getelementptr inbounds i64, i64* %185, i64 3
  %187 = load i64, i64* %186, align 8
  %188 = call i32 @RT_TRACE(%struct.rtl_priv* %175, i32 %176, i32 %177, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i32 %178, i64 %187)
  br label %189

189:                                              ; preds = %165, %161
  %190 = load i64, i64* %6, align 8
  %191 = load i64, i64* @RTXAGC_A_MCS11_MCS08, align 8
  %192 = icmp eq i64 %190, %191
  br i1 %192, label %193, label %217

193:                                              ; preds = %189
  %194 = load i64, i64* %8, align 8
  %195 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %196 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %195, i32 0, i32 1
  %197 = load i64**, i64*** %196, align 8
  %198 = load i32, i32* %11, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i64*, i64** %197, i64 %199
  %201 = load i64*, i64** %200, align 8
  %202 = getelementptr inbounds i64, i64* %201, i64 4
  store i64 %194, i64* %202, align 8
  %203 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %204 = load i32, i32* @COMP_INIT, align 4
  %205 = load i32, i32* @DBG_TRACE, align 4
  %206 = load i32, i32* %11, align 4
  %207 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %208 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %207, i32 0, i32 1
  %209 = load i64**, i64*** %208, align 8
  %210 = load i32, i32* %11, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i64*, i64** %209, i64 %211
  %213 = load i64*, i64** %212, align 8
  %214 = getelementptr inbounds i64, i64* %213, i64 4
  %215 = load i64, i64* %214, align 8
  %216 = call i32 @RT_TRACE(%struct.rtl_priv* %203, i32 %204, i32 %205, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0), i32 %206, i64 %215)
  br label %217

217:                                              ; preds = %193, %189
  %218 = load i64, i64* %6, align 8
  %219 = load i64, i64* @RTXAGC_A_MCS15_MCS12, align 8
  %220 = icmp eq i64 %218, %219
  br i1 %220, label %221, label %256

221:                                              ; preds = %217
  %222 = load i64, i64* %8, align 8
  %223 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %224 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %223, i32 0, i32 1
  %225 = load i64**, i64*** %224, align 8
  %226 = load i32, i32* %11, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i64*, i64** %225, i64 %227
  %229 = load i64*, i64** %228, align 8
  %230 = getelementptr inbounds i64, i64* %229, i64 5
  store i64 %222, i64* %230, align 8
  %231 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %232 = call i64 @get_rf_type(%struct.rtl_phy* %231)
  %233 = load i64, i64* @RF_1T1R, align 8
  %234 = icmp eq i64 %232, %233
  br i1 %234, label %235, label %241

235:                                              ; preds = %221
  %236 = load i32, i32* %11, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %11, align 4
  %238 = load i32, i32* %11, align 4
  %239 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %240 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %239, i32 0, i32 0
  store i32 %238, i32* %240, align 8
  br label %241

241:                                              ; preds = %235, %221
  %242 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %243 = load i32, i32* @COMP_INIT, align 4
  %244 = load i32, i32* @DBG_TRACE, align 4
  %245 = load i32, i32* %11, align 4
  %246 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %247 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %246, i32 0, i32 1
  %248 = load i64**, i64*** %247, align 8
  %249 = load i32, i32* %11, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i64*, i64** %248, i64 %250
  %252 = load i64*, i64** %251, align 8
  %253 = getelementptr inbounds i64, i64* %252, i64 5
  %254 = load i64, i64* %253, align 8
  %255 = call i32 @RT_TRACE(%struct.rtl_priv* %242, i32 %243, i32 %244, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.7, i64 0, i64 0), i32 %245, i64 %254)
  br label %256

256:                                              ; preds = %241, %217
  %257 = load i64, i64* %6, align 8
  %258 = load i64, i64* @RTXAGC_B_RATE18_06, align 8
  %259 = icmp eq i64 %257, %258
  br i1 %259, label %260, label %284

260:                                              ; preds = %256
  %261 = load i64, i64* %8, align 8
  %262 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %263 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %262, i32 0, i32 1
  %264 = load i64**, i64*** %263, align 8
  %265 = load i32, i32* %11, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i64*, i64** %264, i64 %266
  %268 = load i64*, i64** %267, align 8
  %269 = getelementptr inbounds i64, i64* %268, i64 8
  store i64 %261, i64* %269, align 8
  %270 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %271 = load i32, i32* @COMP_INIT, align 4
  %272 = load i32, i32* @DBG_TRACE, align 4
  %273 = load i32, i32* %11, align 4
  %274 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %275 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %274, i32 0, i32 1
  %276 = load i64**, i64*** %275, align 8
  %277 = load i32, i32* %11, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds i64*, i64** %276, i64 %278
  %280 = load i64*, i64** %279, align 8
  %281 = getelementptr inbounds i64, i64* %280, i64 8
  %282 = load i64, i64* %281, align 8
  %283 = call i32 @RT_TRACE(%struct.rtl_priv* %270, i32 %271, i32 %272, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.8, i64 0, i64 0), i32 %273, i64 %282)
  br label %284

284:                                              ; preds = %260, %256
  %285 = load i64, i64* %6, align 8
  %286 = load i64, i64* @RTXAGC_B_RATE54_24, align 8
  %287 = icmp eq i64 %285, %286
  br i1 %287, label %288, label %312

288:                                              ; preds = %284
  %289 = load i64, i64* %8, align 8
  %290 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %291 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %290, i32 0, i32 1
  %292 = load i64**, i64*** %291, align 8
  %293 = load i32, i32* %11, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds i64*, i64** %292, i64 %294
  %296 = load i64*, i64** %295, align 8
  %297 = getelementptr inbounds i64, i64* %296, i64 9
  store i64 %289, i64* %297, align 8
  %298 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %299 = load i32, i32* @COMP_INIT, align 4
  %300 = load i32, i32* @DBG_TRACE, align 4
  %301 = load i32, i32* %11, align 4
  %302 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %303 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %302, i32 0, i32 1
  %304 = load i64**, i64*** %303, align 8
  %305 = load i32, i32* %11, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds i64*, i64** %304, i64 %306
  %308 = load i64*, i64** %307, align 8
  %309 = getelementptr inbounds i64, i64* %308, i64 9
  %310 = load i64, i64* %309, align 8
  %311 = call i32 @RT_TRACE(%struct.rtl_priv* %298, i32 %299, i32 %300, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.9, i64 0, i64 0), i32 %301, i64 %310)
  br label %312

312:                                              ; preds = %288, %284
  %313 = load i64, i64* %6, align 8
  %314 = load i64, i64* @RTXAGC_B_CCK1_55_MCS32, align 8
  %315 = icmp eq i64 %313, %314
  br i1 %315, label %316, label %340

316:                                              ; preds = %312
  %317 = load i64, i64* %8, align 8
  %318 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %319 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %318, i32 0, i32 1
  %320 = load i64**, i64*** %319, align 8
  %321 = load i32, i32* %11, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds i64*, i64** %320, i64 %322
  %324 = load i64*, i64** %323, align 8
  %325 = getelementptr inbounds i64, i64* %324, i64 14
  store i64 %317, i64* %325, align 8
  %326 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %327 = load i32, i32* @COMP_INIT, align 4
  %328 = load i32, i32* @DBG_TRACE, align 4
  %329 = load i32, i32* %11, align 4
  %330 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %331 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %330, i32 0, i32 1
  %332 = load i64**, i64*** %331, align 8
  %333 = load i32, i32* %11, align 4
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds i64*, i64** %332, i64 %334
  %336 = load i64*, i64** %335, align 8
  %337 = getelementptr inbounds i64, i64* %336, i64 14
  %338 = load i64, i64* %337, align 8
  %339 = call i32 @RT_TRACE(%struct.rtl_priv* %326, i32 %327, i32 %328, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.10, i64 0, i64 0), i32 %329, i64 %338)
  br label %340

340:                                              ; preds = %316, %312
  %341 = load i64, i64* %6, align 8
  %342 = load i64, i64* @RTXAGC_B_CCK11_A_CCK2_11, align 8
  %343 = icmp eq i64 %341, %342
  br i1 %343, label %344, label %371

344:                                              ; preds = %340
  %345 = load i64, i64* %7, align 8
  %346 = icmp eq i64 %345, 255
  br i1 %346, label %347, label %371

347:                                              ; preds = %344
  %348 = load i64, i64* %8, align 8
  %349 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %350 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %349, i32 0, i32 1
  %351 = load i64**, i64*** %350, align 8
  %352 = load i32, i32* %11, align 4
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds i64*, i64** %351, i64 %353
  %355 = load i64*, i64** %354, align 8
  %356 = getelementptr inbounds i64, i64* %355, i64 15
  store i64 %348, i64* %356, align 8
  %357 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %358 = load i32, i32* @COMP_INIT, align 4
  %359 = load i32, i32* @DBG_TRACE, align 4
  %360 = load i32, i32* %11, align 4
  %361 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %362 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %361, i32 0, i32 1
  %363 = load i64**, i64*** %362, align 8
  %364 = load i32, i32* %11, align 4
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds i64*, i64** %363, i64 %365
  %367 = load i64*, i64** %366, align 8
  %368 = getelementptr inbounds i64, i64* %367, i64 15
  %369 = load i64, i64* %368, align 8
  %370 = call i32 @RT_TRACE(%struct.rtl_priv* %357, i32 %358, i32 %359, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.11, i64 0, i64 0), i32 %360, i64 %369)
  br label %371

371:                                              ; preds = %347, %344, %340
  %372 = load i64, i64* %6, align 8
  %373 = load i64, i64* @RTXAGC_B_MCS03_MCS00, align 8
  %374 = icmp eq i64 %372, %373
  br i1 %374, label %375, label %399

375:                                              ; preds = %371
  %376 = load i64, i64* %8, align 8
  %377 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %378 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %377, i32 0, i32 1
  %379 = load i64**, i64*** %378, align 8
  %380 = load i32, i32* %11, align 4
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds i64*, i64** %379, i64 %381
  %383 = load i64*, i64** %382, align 8
  %384 = getelementptr inbounds i64, i64* %383, i64 10
  store i64 %376, i64* %384, align 8
  %385 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %386 = load i32, i32* @COMP_INIT, align 4
  %387 = load i32, i32* @DBG_TRACE, align 4
  %388 = load i32, i32* %11, align 4
  %389 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %390 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %389, i32 0, i32 1
  %391 = load i64**, i64*** %390, align 8
  %392 = load i32, i32* %11, align 4
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds i64*, i64** %391, i64 %393
  %395 = load i64*, i64** %394, align 8
  %396 = getelementptr inbounds i64, i64* %395, i64 10
  %397 = load i64, i64* %396, align 8
  %398 = call i32 @RT_TRACE(%struct.rtl_priv* %385, i32 %386, i32 %387, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.12, i64 0, i64 0), i32 %388, i64 %397)
  br label %399

399:                                              ; preds = %375, %371
  %400 = load i64, i64* %6, align 8
  %401 = load i64, i64* @RTXAGC_B_MCS07_MCS04, align 8
  %402 = icmp eq i64 %400, %401
  br i1 %402, label %403, label %427

403:                                              ; preds = %399
  %404 = load i64, i64* %8, align 8
  %405 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %406 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %405, i32 0, i32 1
  %407 = load i64**, i64*** %406, align 8
  %408 = load i32, i32* %11, align 4
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds i64*, i64** %407, i64 %409
  %411 = load i64*, i64** %410, align 8
  %412 = getelementptr inbounds i64, i64* %411, i64 11
  store i64 %404, i64* %412, align 8
  %413 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %414 = load i32, i32* @COMP_INIT, align 4
  %415 = load i32, i32* @DBG_TRACE, align 4
  %416 = load i32, i32* %11, align 4
  %417 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %418 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %417, i32 0, i32 1
  %419 = load i64**, i64*** %418, align 8
  %420 = load i32, i32* %11, align 4
  %421 = sext i32 %420 to i64
  %422 = getelementptr inbounds i64*, i64** %419, i64 %421
  %423 = load i64*, i64** %422, align 8
  %424 = getelementptr inbounds i64, i64* %423, i64 11
  %425 = load i64, i64* %424, align 8
  %426 = call i32 @RT_TRACE(%struct.rtl_priv* %413, i32 %414, i32 %415, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.13, i64 0, i64 0), i32 %416, i64 %425)
  br label %427

427:                                              ; preds = %403, %399
  %428 = load i64, i64* %6, align 8
  %429 = load i64, i64* @RTXAGC_B_MCS11_MCS08, align 8
  %430 = icmp eq i64 %428, %429
  br i1 %430, label %431, label %455

431:                                              ; preds = %427
  %432 = load i64, i64* %8, align 8
  %433 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %434 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %433, i32 0, i32 1
  %435 = load i64**, i64*** %434, align 8
  %436 = load i32, i32* %11, align 4
  %437 = sext i32 %436 to i64
  %438 = getelementptr inbounds i64*, i64** %435, i64 %437
  %439 = load i64*, i64** %438, align 8
  %440 = getelementptr inbounds i64, i64* %439, i64 12
  store i64 %432, i64* %440, align 8
  %441 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %442 = load i32, i32* @COMP_INIT, align 4
  %443 = load i32, i32* @DBG_TRACE, align 4
  %444 = load i32, i32* %11, align 4
  %445 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %446 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %445, i32 0, i32 1
  %447 = load i64**, i64*** %446, align 8
  %448 = load i32, i32* %11, align 4
  %449 = sext i32 %448 to i64
  %450 = getelementptr inbounds i64*, i64** %447, i64 %449
  %451 = load i64*, i64** %450, align 8
  %452 = getelementptr inbounds i64, i64* %451, i64 12
  %453 = load i64, i64* %452, align 8
  %454 = call i32 @RT_TRACE(%struct.rtl_priv* %441, i32 %442, i32 %443, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.14, i64 0, i64 0), i32 %444, i64 %453)
  br label %455

455:                                              ; preds = %431, %427
  %456 = load i64, i64* %6, align 8
  %457 = load i64, i64* @RTXAGC_B_MCS15_MCS12, align 8
  %458 = icmp eq i64 %456, %457
  br i1 %458, label %459, label %494

459:                                              ; preds = %455
  %460 = load i64, i64* %8, align 8
  %461 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %462 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %461, i32 0, i32 1
  %463 = load i64**, i64*** %462, align 8
  %464 = load i32, i32* %11, align 4
  %465 = sext i32 %464 to i64
  %466 = getelementptr inbounds i64*, i64** %463, i64 %465
  %467 = load i64*, i64** %466, align 8
  %468 = getelementptr inbounds i64, i64* %467, i64 13
  store i64 %460, i64* %468, align 8
  %469 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %470 = load i32, i32* @COMP_INIT, align 4
  %471 = load i32, i32* @DBG_TRACE, align 4
  %472 = load i32, i32* %11, align 4
  %473 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %474 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %473, i32 0, i32 1
  %475 = load i64**, i64*** %474, align 8
  %476 = load i32, i32* %11, align 4
  %477 = sext i32 %476 to i64
  %478 = getelementptr inbounds i64*, i64** %475, i64 %477
  %479 = load i64*, i64** %478, align 8
  %480 = getelementptr inbounds i64, i64* %479, i64 13
  %481 = load i64, i64* %480, align 8
  %482 = call i32 @RT_TRACE(%struct.rtl_priv* %469, i32 %470, i32 %471, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.15, i64 0, i64 0), i32 %472, i64 %481)
  %483 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %484 = call i64 @get_rf_type(%struct.rtl_phy* %483)
  %485 = load i64, i64* @RF_1T1R, align 8
  %486 = icmp ne i64 %484, %485
  br i1 %486, label %487, label %493

487:                                              ; preds = %459
  %488 = load i32, i32* %11, align 4
  %489 = add nsw i32 %488, 1
  store i32 %489, i32* %11, align 4
  %490 = load i32, i32* %11, align 4
  %491 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %492 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %491, i32 0, i32 0
  store i32 %490, i32* %492, align 8
  br label %493

493:                                              ; preds = %487, %459
  br label %494

494:                                              ; preds = %493, %455
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i32, i64) #1

declare dso_local i64 @get_rf_type(%struct.rtl_phy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
