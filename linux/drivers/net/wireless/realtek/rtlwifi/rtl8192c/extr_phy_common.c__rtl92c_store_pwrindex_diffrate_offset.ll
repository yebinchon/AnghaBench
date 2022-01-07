; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192c/extr_phy_common.c__rtl92c_store_pwrindex_diffrate_offset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192c/extr_phy_common.c__rtl92c_store_pwrindex_diffrate_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.rtl_phy }
%struct.rtl_phy = type { i64, i64** }

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

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_rtl92c_store_pwrindex_diffrate_offset(%struct.ieee80211_hw* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.rtl_priv*, align 8
  %10 = alloca %struct.rtl_phy*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %12 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %11)
  store %struct.rtl_priv* %12, %struct.rtl_priv** %9, align 8
  %13 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %14 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %13, i32 0, i32 0
  store %struct.rtl_phy* %14, %struct.rtl_phy** %10, align 8
  %15 = load i64, i64* %6, align 8
  %16 = load i64, i64* @RTXAGC_A_RATE18_06, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %46

18:                                               ; preds = %4
  %19 = load i64, i64* %8, align 8
  %20 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %21 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %20, i32 0, i32 1
  %22 = load i64**, i64*** %21, align 8
  %23 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %24 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds i64*, i64** %22, i64 %25
  %27 = load i64*, i64** %26, align 8
  %28 = getelementptr inbounds i64, i64* %27, i64 0
  store i64 %19, i64* %28, align 8
  %29 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %30 = load i32, i32* @COMP_INIT, align 4
  %31 = load i32, i32* @DBG_TRACE, align 4
  %32 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %33 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %36 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %35, i32 0, i32 1
  %37 = load i64**, i64*** %36, align 8
  %38 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %39 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds i64*, i64** %37, i64 %40
  %42 = load i64*, i64** %41, align 8
  %43 = getelementptr inbounds i64, i64* %42, i64 0
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @RT_TRACE(%struct.rtl_priv* %29, i32 %30, i32 %31, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i64 %34, i64 %44)
  br label %46

46:                                               ; preds = %18, %4
  %47 = load i64, i64* %6, align 8
  %48 = load i64, i64* @RTXAGC_A_RATE54_24, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %78

50:                                               ; preds = %46
  %51 = load i64, i64* %8, align 8
  %52 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %53 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %52, i32 0, i32 1
  %54 = load i64**, i64*** %53, align 8
  %55 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %56 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds i64*, i64** %54, i64 %57
  %59 = load i64*, i64** %58, align 8
  %60 = getelementptr inbounds i64, i64* %59, i64 1
  store i64 %51, i64* %60, align 8
  %61 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %62 = load i32, i32* @COMP_INIT, align 4
  %63 = load i32, i32* @DBG_TRACE, align 4
  %64 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %65 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %68 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %67, i32 0, i32 1
  %69 = load i64**, i64*** %68, align 8
  %70 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %71 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds i64*, i64** %69, i64 %72
  %74 = load i64*, i64** %73, align 8
  %75 = getelementptr inbounds i64, i64* %74, i64 1
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @RT_TRACE(%struct.rtl_priv* %61, i32 %62, i32 %63, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i64 %66, i64 %76)
  br label %78

78:                                               ; preds = %50, %46
  %79 = load i64, i64* %6, align 8
  %80 = load i64, i64* @RTXAGC_A_CCK1_MCS32, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %110

82:                                               ; preds = %78
  %83 = load i64, i64* %8, align 8
  %84 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %85 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %84, i32 0, i32 1
  %86 = load i64**, i64*** %85, align 8
  %87 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %88 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = getelementptr inbounds i64*, i64** %86, i64 %89
  %91 = load i64*, i64** %90, align 8
  %92 = getelementptr inbounds i64, i64* %91, i64 6
  store i64 %83, i64* %92, align 8
  %93 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %94 = load i32, i32* @COMP_INIT, align 4
  %95 = load i32, i32* @DBG_TRACE, align 4
  %96 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %97 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %100 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %99, i32 0, i32 1
  %101 = load i64**, i64*** %100, align 8
  %102 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %103 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = getelementptr inbounds i64*, i64** %101, i64 %104
  %106 = load i64*, i64** %105, align 8
  %107 = getelementptr inbounds i64, i64* %106, i64 6
  %108 = load i64, i64* %107, align 8
  %109 = call i32 @RT_TRACE(%struct.rtl_priv* %93, i32 %94, i32 %95, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i64 %98, i64 %108)
  br label %110

110:                                              ; preds = %82, %78
  %111 = load i64, i64* %6, align 8
  %112 = load i64, i64* @RTXAGC_B_CCK11_A_CCK2_11, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %145

114:                                              ; preds = %110
  %115 = load i64, i64* %7, align 8
  %116 = icmp eq i64 %115, 4294967040
  br i1 %116, label %117, label %145

117:                                              ; preds = %114
  %118 = load i64, i64* %8, align 8
  %119 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %120 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %119, i32 0, i32 1
  %121 = load i64**, i64*** %120, align 8
  %122 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %123 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = getelementptr inbounds i64*, i64** %121, i64 %124
  %126 = load i64*, i64** %125, align 8
  %127 = getelementptr inbounds i64, i64* %126, i64 7
  store i64 %118, i64* %127, align 8
  %128 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %129 = load i32, i32* @COMP_INIT, align 4
  %130 = load i32, i32* @DBG_TRACE, align 4
  %131 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %132 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %135 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %134, i32 0, i32 1
  %136 = load i64**, i64*** %135, align 8
  %137 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %138 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = getelementptr inbounds i64*, i64** %136, i64 %139
  %141 = load i64*, i64** %140, align 8
  %142 = getelementptr inbounds i64, i64* %141, i64 7
  %143 = load i64, i64* %142, align 8
  %144 = call i32 @RT_TRACE(%struct.rtl_priv* %128, i32 %129, i32 %130, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i64 %133, i64 %143)
  br label %145

145:                                              ; preds = %117, %114, %110
  %146 = load i64, i64* %6, align 8
  %147 = load i64, i64* @RTXAGC_A_MCS03_MCS00, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %149, label %177

149:                                              ; preds = %145
  %150 = load i64, i64* %8, align 8
  %151 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %152 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %151, i32 0, i32 1
  %153 = load i64**, i64*** %152, align 8
  %154 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %155 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = getelementptr inbounds i64*, i64** %153, i64 %156
  %158 = load i64*, i64** %157, align 8
  %159 = getelementptr inbounds i64, i64* %158, i64 2
  store i64 %150, i64* %159, align 8
  %160 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %161 = load i32, i32* @COMP_INIT, align 4
  %162 = load i32, i32* @DBG_TRACE, align 4
  %163 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %164 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %167 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %166, i32 0, i32 1
  %168 = load i64**, i64*** %167, align 8
  %169 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %170 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = getelementptr inbounds i64*, i64** %168, i64 %171
  %173 = load i64*, i64** %172, align 8
  %174 = getelementptr inbounds i64, i64* %173, i64 2
  %175 = load i64, i64* %174, align 8
  %176 = call i32 @RT_TRACE(%struct.rtl_priv* %160, i32 %161, i32 %162, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i64 %165, i64 %175)
  br label %177

177:                                              ; preds = %149, %145
  %178 = load i64, i64* %6, align 8
  %179 = load i64, i64* @RTXAGC_A_MCS07_MCS04, align 8
  %180 = icmp eq i64 %178, %179
  br i1 %180, label %181, label %209

181:                                              ; preds = %177
  %182 = load i64, i64* %8, align 8
  %183 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %184 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %183, i32 0, i32 1
  %185 = load i64**, i64*** %184, align 8
  %186 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %187 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = getelementptr inbounds i64*, i64** %185, i64 %188
  %190 = load i64*, i64** %189, align 8
  %191 = getelementptr inbounds i64, i64* %190, i64 3
  store i64 %182, i64* %191, align 8
  %192 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %193 = load i32, i32* @COMP_INIT, align 4
  %194 = load i32, i32* @DBG_TRACE, align 4
  %195 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %196 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %199 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %198, i32 0, i32 1
  %200 = load i64**, i64*** %199, align 8
  %201 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %202 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = getelementptr inbounds i64*, i64** %200, i64 %203
  %205 = load i64*, i64** %204, align 8
  %206 = getelementptr inbounds i64, i64* %205, i64 3
  %207 = load i64, i64* %206, align 8
  %208 = call i32 @RT_TRACE(%struct.rtl_priv* %192, i32 %193, i32 %194, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i64 %197, i64 %207)
  br label %209

209:                                              ; preds = %181, %177
  %210 = load i64, i64* %6, align 8
  %211 = load i64, i64* @RTXAGC_A_MCS11_MCS08, align 8
  %212 = icmp eq i64 %210, %211
  br i1 %212, label %213, label %241

213:                                              ; preds = %209
  %214 = load i64, i64* %8, align 8
  %215 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %216 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %215, i32 0, i32 1
  %217 = load i64**, i64*** %216, align 8
  %218 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %219 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %218, i32 0, i32 0
  %220 = load i64, i64* %219, align 8
  %221 = getelementptr inbounds i64*, i64** %217, i64 %220
  %222 = load i64*, i64** %221, align 8
  %223 = getelementptr inbounds i64, i64* %222, i64 4
  store i64 %214, i64* %223, align 8
  %224 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %225 = load i32, i32* @COMP_INIT, align 4
  %226 = load i32, i32* @DBG_TRACE, align 4
  %227 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %228 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %227, i32 0, i32 0
  %229 = load i64, i64* %228, align 8
  %230 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %231 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %230, i32 0, i32 1
  %232 = load i64**, i64*** %231, align 8
  %233 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %234 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %233, i32 0, i32 0
  %235 = load i64, i64* %234, align 8
  %236 = getelementptr inbounds i64*, i64** %232, i64 %235
  %237 = load i64*, i64** %236, align 8
  %238 = getelementptr inbounds i64, i64* %237, i64 4
  %239 = load i64, i64* %238, align 8
  %240 = call i32 @RT_TRACE(%struct.rtl_priv* %224, i32 %225, i32 %226, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0), i64 %229, i64 %239)
  br label %241

241:                                              ; preds = %213, %209
  %242 = load i64, i64* %6, align 8
  %243 = load i64, i64* @RTXAGC_A_MCS15_MCS12, align 8
  %244 = icmp eq i64 %242, %243
  br i1 %244, label %245, label %273

245:                                              ; preds = %241
  %246 = load i64, i64* %8, align 8
  %247 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %248 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %247, i32 0, i32 1
  %249 = load i64**, i64*** %248, align 8
  %250 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %251 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %250, i32 0, i32 0
  %252 = load i64, i64* %251, align 8
  %253 = getelementptr inbounds i64*, i64** %249, i64 %252
  %254 = load i64*, i64** %253, align 8
  %255 = getelementptr inbounds i64, i64* %254, i64 5
  store i64 %246, i64* %255, align 8
  %256 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %257 = load i32, i32* @COMP_INIT, align 4
  %258 = load i32, i32* @DBG_TRACE, align 4
  %259 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %260 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %259, i32 0, i32 0
  %261 = load i64, i64* %260, align 8
  %262 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %263 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %262, i32 0, i32 1
  %264 = load i64**, i64*** %263, align 8
  %265 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %266 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %265, i32 0, i32 0
  %267 = load i64, i64* %266, align 8
  %268 = getelementptr inbounds i64*, i64** %264, i64 %267
  %269 = load i64*, i64** %268, align 8
  %270 = getelementptr inbounds i64, i64* %269, i64 5
  %271 = load i64, i64* %270, align 8
  %272 = call i32 @RT_TRACE(%struct.rtl_priv* %256, i32 %257, i32 %258, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.7, i64 0, i64 0), i64 %261, i64 %271)
  br label %273

273:                                              ; preds = %245, %241
  %274 = load i64, i64* %6, align 8
  %275 = load i64, i64* @RTXAGC_B_RATE18_06, align 8
  %276 = icmp eq i64 %274, %275
  br i1 %276, label %277, label %305

277:                                              ; preds = %273
  %278 = load i64, i64* %8, align 8
  %279 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %280 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %279, i32 0, i32 1
  %281 = load i64**, i64*** %280, align 8
  %282 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %283 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %282, i32 0, i32 0
  %284 = load i64, i64* %283, align 8
  %285 = getelementptr inbounds i64*, i64** %281, i64 %284
  %286 = load i64*, i64** %285, align 8
  %287 = getelementptr inbounds i64, i64* %286, i64 8
  store i64 %278, i64* %287, align 8
  %288 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %289 = load i32, i32* @COMP_INIT, align 4
  %290 = load i32, i32* @DBG_TRACE, align 4
  %291 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %292 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %291, i32 0, i32 0
  %293 = load i64, i64* %292, align 8
  %294 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %295 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %294, i32 0, i32 1
  %296 = load i64**, i64*** %295, align 8
  %297 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %298 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %297, i32 0, i32 0
  %299 = load i64, i64* %298, align 8
  %300 = getelementptr inbounds i64*, i64** %296, i64 %299
  %301 = load i64*, i64** %300, align 8
  %302 = getelementptr inbounds i64, i64* %301, i64 8
  %303 = load i64, i64* %302, align 8
  %304 = call i32 @RT_TRACE(%struct.rtl_priv* %288, i32 %289, i32 %290, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.8, i64 0, i64 0), i64 %293, i64 %303)
  br label %305

305:                                              ; preds = %277, %273
  %306 = load i64, i64* %6, align 8
  %307 = load i64, i64* @RTXAGC_B_RATE54_24, align 8
  %308 = icmp eq i64 %306, %307
  br i1 %308, label %309, label %337

309:                                              ; preds = %305
  %310 = load i64, i64* %8, align 8
  %311 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %312 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %311, i32 0, i32 1
  %313 = load i64**, i64*** %312, align 8
  %314 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %315 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %314, i32 0, i32 0
  %316 = load i64, i64* %315, align 8
  %317 = getelementptr inbounds i64*, i64** %313, i64 %316
  %318 = load i64*, i64** %317, align 8
  %319 = getelementptr inbounds i64, i64* %318, i64 9
  store i64 %310, i64* %319, align 8
  %320 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %321 = load i32, i32* @COMP_INIT, align 4
  %322 = load i32, i32* @DBG_TRACE, align 4
  %323 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %324 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %323, i32 0, i32 0
  %325 = load i64, i64* %324, align 8
  %326 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %327 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %326, i32 0, i32 1
  %328 = load i64**, i64*** %327, align 8
  %329 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %330 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %329, i32 0, i32 0
  %331 = load i64, i64* %330, align 8
  %332 = getelementptr inbounds i64*, i64** %328, i64 %331
  %333 = load i64*, i64** %332, align 8
  %334 = getelementptr inbounds i64, i64* %333, i64 9
  %335 = load i64, i64* %334, align 8
  %336 = call i32 @RT_TRACE(%struct.rtl_priv* %320, i32 %321, i32 %322, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.9, i64 0, i64 0), i64 %325, i64 %335)
  br label %337

337:                                              ; preds = %309, %305
  %338 = load i64, i64* %6, align 8
  %339 = load i64, i64* @RTXAGC_B_CCK1_55_MCS32, align 8
  %340 = icmp eq i64 %338, %339
  br i1 %340, label %341, label %369

341:                                              ; preds = %337
  %342 = load i64, i64* %8, align 8
  %343 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %344 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %343, i32 0, i32 1
  %345 = load i64**, i64*** %344, align 8
  %346 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %347 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %346, i32 0, i32 0
  %348 = load i64, i64* %347, align 8
  %349 = getelementptr inbounds i64*, i64** %345, i64 %348
  %350 = load i64*, i64** %349, align 8
  %351 = getelementptr inbounds i64, i64* %350, i64 14
  store i64 %342, i64* %351, align 8
  %352 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %353 = load i32, i32* @COMP_INIT, align 4
  %354 = load i32, i32* @DBG_TRACE, align 4
  %355 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %356 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %355, i32 0, i32 0
  %357 = load i64, i64* %356, align 8
  %358 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %359 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %358, i32 0, i32 1
  %360 = load i64**, i64*** %359, align 8
  %361 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %362 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %361, i32 0, i32 0
  %363 = load i64, i64* %362, align 8
  %364 = getelementptr inbounds i64*, i64** %360, i64 %363
  %365 = load i64*, i64** %364, align 8
  %366 = getelementptr inbounds i64, i64* %365, i64 14
  %367 = load i64, i64* %366, align 8
  %368 = call i32 @RT_TRACE(%struct.rtl_priv* %352, i32 %353, i32 %354, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.10, i64 0, i64 0), i64 %357, i64 %367)
  br label %369

369:                                              ; preds = %341, %337
  %370 = load i64, i64* %6, align 8
  %371 = load i64, i64* @RTXAGC_B_CCK11_A_CCK2_11, align 8
  %372 = icmp eq i64 %370, %371
  br i1 %372, label %373, label %404

373:                                              ; preds = %369
  %374 = load i64, i64* %7, align 8
  %375 = icmp eq i64 %374, 255
  br i1 %375, label %376, label %404

376:                                              ; preds = %373
  %377 = load i64, i64* %8, align 8
  %378 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %379 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %378, i32 0, i32 1
  %380 = load i64**, i64*** %379, align 8
  %381 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %382 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %381, i32 0, i32 0
  %383 = load i64, i64* %382, align 8
  %384 = getelementptr inbounds i64*, i64** %380, i64 %383
  %385 = load i64*, i64** %384, align 8
  %386 = getelementptr inbounds i64, i64* %385, i64 15
  store i64 %377, i64* %386, align 8
  %387 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %388 = load i32, i32* @COMP_INIT, align 4
  %389 = load i32, i32* @DBG_TRACE, align 4
  %390 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %391 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %390, i32 0, i32 0
  %392 = load i64, i64* %391, align 8
  %393 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %394 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %393, i32 0, i32 1
  %395 = load i64**, i64*** %394, align 8
  %396 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %397 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %396, i32 0, i32 0
  %398 = load i64, i64* %397, align 8
  %399 = getelementptr inbounds i64*, i64** %395, i64 %398
  %400 = load i64*, i64** %399, align 8
  %401 = getelementptr inbounds i64, i64* %400, i64 15
  %402 = load i64, i64* %401, align 8
  %403 = call i32 @RT_TRACE(%struct.rtl_priv* %387, i32 %388, i32 %389, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.11, i64 0, i64 0), i64 %392, i64 %402)
  br label %404

404:                                              ; preds = %376, %373, %369
  %405 = load i64, i64* %6, align 8
  %406 = load i64, i64* @RTXAGC_B_MCS03_MCS00, align 8
  %407 = icmp eq i64 %405, %406
  br i1 %407, label %408, label %436

408:                                              ; preds = %404
  %409 = load i64, i64* %8, align 8
  %410 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %411 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %410, i32 0, i32 1
  %412 = load i64**, i64*** %411, align 8
  %413 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %414 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %413, i32 0, i32 0
  %415 = load i64, i64* %414, align 8
  %416 = getelementptr inbounds i64*, i64** %412, i64 %415
  %417 = load i64*, i64** %416, align 8
  %418 = getelementptr inbounds i64, i64* %417, i64 10
  store i64 %409, i64* %418, align 8
  %419 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %420 = load i32, i32* @COMP_INIT, align 4
  %421 = load i32, i32* @DBG_TRACE, align 4
  %422 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %423 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %422, i32 0, i32 0
  %424 = load i64, i64* %423, align 8
  %425 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %426 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %425, i32 0, i32 1
  %427 = load i64**, i64*** %426, align 8
  %428 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %429 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %428, i32 0, i32 0
  %430 = load i64, i64* %429, align 8
  %431 = getelementptr inbounds i64*, i64** %427, i64 %430
  %432 = load i64*, i64** %431, align 8
  %433 = getelementptr inbounds i64, i64* %432, i64 10
  %434 = load i64, i64* %433, align 8
  %435 = call i32 @RT_TRACE(%struct.rtl_priv* %419, i32 %420, i32 %421, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.12, i64 0, i64 0), i64 %424, i64 %434)
  br label %436

436:                                              ; preds = %408, %404
  %437 = load i64, i64* %6, align 8
  %438 = load i64, i64* @RTXAGC_B_MCS07_MCS04, align 8
  %439 = icmp eq i64 %437, %438
  br i1 %439, label %440, label %468

440:                                              ; preds = %436
  %441 = load i64, i64* %8, align 8
  %442 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %443 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %442, i32 0, i32 1
  %444 = load i64**, i64*** %443, align 8
  %445 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %446 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %445, i32 0, i32 0
  %447 = load i64, i64* %446, align 8
  %448 = getelementptr inbounds i64*, i64** %444, i64 %447
  %449 = load i64*, i64** %448, align 8
  %450 = getelementptr inbounds i64, i64* %449, i64 11
  store i64 %441, i64* %450, align 8
  %451 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %452 = load i32, i32* @COMP_INIT, align 4
  %453 = load i32, i32* @DBG_TRACE, align 4
  %454 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %455 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %454, i32 0, i32 0
  %456 = load i64, i64* %455, align 8
  %457 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %458 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %457, i32 0, i32 1
  %459 = load i64**, i64*** %458, align 8
  %460 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %461 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %460, i32 0, i32 0
  %462 = load i64, i64* %461, align 8
  %463 = getelementptr inbounds i64*, i64** %459, i64 %462
  %464 = load i64*, i64** %463, align 8
  %465 = getelementptr inbounds i64, i64* %464, i64 11
  %466 = load i64, i64* %465, align 8
  %467 = call i32 @RT_TRACE(%struct.rtl_priv* %451, i32 %452, i32 %453, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.13, i64 0, i64 0), i64 %456, i64 %466)
  br label %468

468:                                              ; preds = %440, %436
  %469 = load i64, i64* %6, align 8
  %470 = load i64, i64* @RTXAGC_B_MCS11_MCS08, align 8
  %471 = icmp eq i64 %469, %470
  br i1 %471, label %472, label %500

472:                                              ; preds = %468
  %473 = load i64, i64* %8, align 8
  %474 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %475 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %474, i32 0, i32 1
  %476 = load i64**, i64*** %475, align 8
  %477 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %478 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %477, i32 0, i32 0
  %479 = load i64, i64* %478, align 8
  %480 = getelementptr inbounds i64*, i64** %476, i64 %479
  %481 = load i64*, i64** %480, align 8
  %482 = getelementptr inbounds i64, i64* %481, i64 12
  store i64 %473, i64* %482, align 8
  %483 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %484 = load i32, i32* @COMP_INIT, align 4
  %485 = load i32, i32* @DBG_TRACE, align 4
  %486 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %487 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %486, i32 0, i32 0
  %488 = load i64, i64* %487, align 8
  %489 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %490 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %489, i32 0, i32 1
  %491 = load i64**, i64*** %490, align 8
  %492 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %493 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %492, i32 0, i32 0
  %494 = load i64, i64* %493, align 8
  %495 = getelementptr inbounds i64*, i64** %491, i64 %494
  %496 = load i64*, i64** %495, align 8
  %497 = getelementptr inbounds i64, i64* %496, i64 12
  %498 = load i64, i64* %497, align 8
  %499 = call i32 @RT_TRACE(%struct.rtl_priv* %483, i32 %484, i32 %485, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.14, i64 0, i64 0), i64 %488, i64 %498)
  br label %500

500:                                              ; preds = %472, %468
  %501 = load i64, i64* %6, align 8
  %502 = load i64, i64* @RTXAGC_B_MCS15_MCS12, align 8
  %503 = icmp eq i64 %501, %502
  br i1 %503, label %504, label %536

504:                                              ; preds = %500
  %505 = load i64, i64* %8, align 8
  %506 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %507 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %506, i32 0, i32 1
  %508 = load i64**, i64*** %507, align 8
  %509 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %510 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %509, i32 0, i32 0
  %511 = load i64, i64* %510, align 8
  %512 = getelementptr inbounds i64*, i64** %508, i64 %511
  %513 = load i64*, i64** %512, align 8
  %514 = getelementptr inbounds i64, i64* %513, i64 13
  store i64 %505, i64* %514, align 8
  %515 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %516 = load i32, i32* @COMP_INIT, align 4
  %517 = load i32, i32* @DBG_TRACE, align 4
  %518 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %519 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %518, i32 0, i32 0
  %520 = load i64, i64* %519, align 8
  %521 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %522 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %521, i32 0, i32 1
  %523 = load i64**, i64*** %522, align 8
  %524 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %525 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %524, i32 0, i32 0
  %526 = load i64, i64* %525, align 8
  %527 = getelementptr inbounds i64*, i64** %523, i64 %526
  %528 = load i64*, i64** %527, align 8
  %529 = getelementptr inbounds i64, i64* %528, i64 13
  %530 = load i64, i64* %529, align 8
  %531 = call i32 @RT_TRACE(%struct.rtl_priv* %515, i32 %516, i32 %517, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.15, i64 0, i64 0), i64 %520, i64 %530)
  %532 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %533 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %532, i32 0, i32 0
  %534 = load i64, i64* %533, align 8
  %535 = add i64 %534, 1
  store i64 %535, i64* %533, align 8
  br label %536

536:                                              ; preds = %504, %500
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
