; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_rf.c_rtl92d_phy_rf6052_set_cck_txpower.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_rf.c_rtl92d_phy_rf6052_set_cck_txpower.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.rtl_phy }
%struct.rtl_phy = type { i32** }
%struct.rtl_mac = type { i64 }
%struct.rtl_efuse = type { i64 }

@RF90_PATH_A = common dso_local global i64 0, align 8
@RF90_PATH_B = common dso_local global i64 0, align 8
@RF6052_MAX_TX_PWR = common dso_local global i64 0, align 8
@RTXAGC_A_CCK1_MCS32 = common dso_local global i32 0, align 4
@MASKBYTE1 = common dso_local global i32 0, align 4
@FPHY = common dso_local global i32 0, align 4
@PHY_TXPWR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"CCK PWR 1M (rf-A) = 0x%x (reg 0x%x)\0A\00", align 1
@RTXAGC_B_CCK11_A_CCK2_11 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"CCK PWR 2~11M (rf-A) = 0x%x (reg 0x%x)\0A\00", align 1
@MASKBYTE0 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"CCK PWR 11M (rf-B) = 0x%x (reg 0x%x)\0A\00", align 1
@RTXAGC_B_CCK1_55_MCS32 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"CCK PWR 1~5.5M (rf-B) = 0x%x (reg 0x%x)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl92d_phy_rf6052_set_cck_txpower(%struct.ieee80211_hw* %0, i64* %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca %struct.rtl_priv*, align 8
  %6 = alloca %struct.rtl_phy*, align 8
  %7 = alloca %struct.rtl_mac*, align 8
  %8 = alloca %struct.rtl_efuse*, align 8
  %9 = alloca [2 x i32], align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store i64* %1, i64** %4, align 8
  %15 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %16 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %15)
  store %struct.rtl_priv* %16, %struct.rtl_priv** %5, align 8
  %17 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %18 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %17, i32 0, i32 0
  store %struct.rtl_phy* %18, %struct.rtl_phy** %6, align 8
  %19 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %20 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %19)
  %21 = call %struct.rtl_mac* @rtl_mac(%struct.rtl_priv* %20)
  store %struct.rtl_mac* %21, %struct.rtl_mac** %7, align 8
  %22 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %23 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %22)
  %24 = call %struct.rtl_efuse* @rtl_efuse(%struct.rtl_priv* %23)
  store %struct.rtl_efuse* %24, %struct.rtl_efuse** %8, align 8
  %25 = bitcast [2 x i32]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %25, i8 0, i64 8, i1 false)
  store i32 0, i32* %11, align 4
  %26 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %27 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %2
  store i32 1, i32* %11, align 4
  br label %31

31:                                               ; preds = %30, %2
  %32 = load %struct.rtl_mac*, %struct.rtl_mac** %7, align 8
  %33 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %80

36:                                               ; preds = %31
  %37 = load i64, i64* @RF90_PATH_A, align 8
  %38 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 %37
  store i32 1061109567, i32* %38, align 4
  %39 = load i64, i64* @RF90_PATH_B, align 8
  %40 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 %39
  store i32 1061109567, i32* %40, align 4
  %41 = load i32, i32* %11, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %79

43:                                               ; preds = %36
  %44 = load i64, i64* @RF90_PATH_A, align 8
  store i64 %44, i64* %12, align 8
  br label %45

45:                                               ; preds = %75, %43
  %46 = load i64, i64* %12, align 8
  %47 = load i64, i64* @RF90_PATH_B, align 8
  %48 = icmp ule i64 %46, %47
  br i1 %48, label %49, label %78

49:                                               ; preds = %45
  %50 = load i64*, i64** %4, align 8
  %51 = load i64, i64* %12, align 8
  %52 = getelementptr inbounds i64, i64* %50, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = load i64*, i64** %4, align 8
  %55 = load i64, i64* %12, align 8
  %56 = getelementptr inbounds i64, i64* %54, i64 %55
  %57 = load i64, i64* %56, align 8
  %58 = shl i64 %57, 8
  %59 = or i64 %53, %58
  %60 = load i64*, i64** %4, align 8
  %61 = load i64, i64* %12, align 8
  %62 = getelementptr inbounds i64, i64* %60, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = shl i64 %63, 16
  %65 = or i64 %59, %64
  %66 = load i64*, i64** %4, align 8
  %67 = load i64, i64* %12, align 8
  %68 = getelementptr inbounds i64, i64* %66, i64 %67
  %69 = load i64, i64* %68, align 8
  %70 = shl i64 %69, 24
  %71 = or i64 %65, %70
  %72 = trunc i64 %71 to i32
  %73 = load i64, i64* %12, align 8
  %74 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 %73
  store i32 %72, i32* %74, align 4
  br label %75

75:                                               ; preds = %49
  %76 = load i64, i64* %12, align 8
  %77 = add i64 %76, 1
  store i64 %77, i64* %12, align 8
  br label %45

78:                                               ; preds = %45
  br label %79

79:                                               ; preds = %78, %36
  br label %164

80:                                               ; preds = %31
  %81 = load i64, i64* @RF90_PATH_A, align 8
  store i64 %81, i64* %12, align 8
  br label %82

82:                                               ; preds = %112, %80
  %83 = load i64, i64* %12, align 8
  %84 = load i64, i64* @RF90_PATH_B, align 8
  %85 = icmp ule i64 %83, %84
  br i1 %85, label %86, label %115

86:                                               ; preds = %82
  %87 = load i64*, i64** %4, align 8
  %88 = load i64, i64* %12, align 8
  %89 = getelementptr inbounds i64, i64* %87, i64 %88
  %90 = load i64, i64* %89, align 8
  %91 = load i64*, i64** %4, align 8
  %92 = load i64, i64* %12, align 8
  %93 = getelementptr inbounds i64, i64* %91, i64 %92
  %94 = load i64, i64* %93, align 8
  %95 = shl i64 %94, 8
  %96 = or i64 %90, %95
  %97 = load i64*, i64** %4, align 8
  %98 = load i64, i64* %12, align 8
  %99 = getelementptr inbounds i64, i64* %97, i64 %98
  %100 = load i64, i64* %99, align 8
  %101 = shl i64 %100, 16
  %102 = or i64 %96, %101
  %103 = load i64*, i64** %4, align 8
  %104 = load i64, i64* %12, align 8
  %105 = getelementptr inbounds i64, i64* %103, i64 %104
  %106 = load i64, i64* %105, align 8
  %107 = shl i64 %106, 24
  %108 = or i64 %102, %107
  %109 = trunc i64 %108 to i32
  %110 = load i64, i64* %12, align 8
  %111 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 %110
  store i32 %109, i32* %111, align 4
  br label %112

112:                                              ; preds = %86
  %113 = load i64, i64* %12, align 8
  %114 = add i64 %113, 1
  store i64 %114, i64* %12, align 8
  br label %82

115:                                              ; preds = %82
  %116 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %117 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %120, label %163

120:                                              ; preds = %115
  %121 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %122 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %121, i32 0, i32 0
  %123 = load i32**, i32*** %122, align 8
  %124 = getelementptr inbounds i32*, i32** %123, i64 0
  %125 = load i32*, i32** %124, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 6
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %129 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %128, i32 0, i32 0
  %130 = load i32**, i32*** %129, align 8
  %131 = getelementptr inbounds i32*, i32** %130, i64 0
  %132 = load i32*, i32** %131, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 7
  %134 = load i32, i32* %133, align 4
  %135 = shl i32 %134, 8
  %136 = add nsw i32 %127, %135
  store i32 %136, i32* %10, align 4
  %137 = load i32, i32* %10, align 4
  %138 = load i64, i64* @RF90_PATH_A, align 8
  %139 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = add nsw i32 %140, %137
  store i32 %141, i32* %139, align 4
  %142 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %143 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %142, i32 0, i32 0
  %144 = load i32**, i32*** %143, align 8
  %145 = getelementptr inbounds i32*, i32** %144, i64 0
  %146 = load i32*, i32** %145, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 14
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %150 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %149, i32 0, i32 0
  %151 = load i32**, i32*** %150, align 8
  %152 = getelementptr inbounds i32*, i32** %151, i64 0
  %153 = load i32*, i32** %152, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 15
  %155 = load i32, i32* %154, align 4
  %156 = shl i32 %155, 24
  %157 = add nsw i32 %148, %156
  store i32 %157, i32* %10, align 4
  %158 = load i32, i32* %10, align 4
  %159 = load i64, i64* @RF90_PATH_B, align 8
  %160 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = add nsw i32 %161, %158
  store i32 %162, i32* %160, align 4
  br label %163

163:                                              ; preds = %120, %115
  br label %164

164:                                              ; preds = %163, %79
  %165 = load i64, i64* @RF90_PATH_A, align 8
  store i64 %165, i64* %12, align 8
  br label %166

166:                                              ; preds = %192, %164
  %167 = load i64, i64* %12, align 8
  %168 = load i64, i64* @RF90_PATH_B, align 8
  %169 = icmp ule i64 %167, %168
  br i1 %169, label %170, label %195

170:                                              ; preds = %166
  %171 = load i64, i64* %12, align 8
  %172 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 %171
  %173 = bitcast i32* %172 to i64*
  store i64* %173, i64** %14, align 8
  store i64 0, i64* %13, align 8
  br label %174

174:                                              ; preds = %188, %170
  %175 = load i64, i64* %13, align 8
  %176 = icmp ult i64 %175, 4
  br i1 %176, label %177, label %191

177:                                              ; preds = %174
  %178 = load i64*, i64** %14, align 8
  %179 = load i64, i64* %178, align 8
  %180 = load i64, i64* @RF6052_MAX_TX_PWR, align 8
  %181 = icmp ugt i64 %179, %180
  br i1 %181, label %182, label %185

182:                                              ; preds = %177
  %183 = load i64, i64* @RF6052_MAX_TX_PWR, align 8
  %184 = load i64*, i64** %14, align 8
  store i64 %183, i64* %184, align 8
  br label %185

185:                                              ; preds = %182, %177
  %186 = load i64*, i64** %14, align 8
  %187 = getelementptr inbounds i64, i64* %186, i32 1
  store i64* %187, i64** %14, align 8
  br label %188

188:                                              ; preds = %185
  %189 = load i64, i64* %13, align 8
  %190 = add i64 %189, 1
  store i64 %190, i64* %13, align 8
  br label %174

191:                                              ; preds = %174
  br label %192

192:                                              ; preds = %191
  %193 = load i64, i64* %12, align 8
  %194 = add i64 %193, 1
  store i64 %194, i64* %12, align 8
  br label %166

195:                                              ; preds = %166
  %196 = load i64, i64* @RF90_PATH_A, align 8
  %197 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 %196
  %198 = load i32, i32* %197, align 4
  %199 = and i32 %198, 255
  store i32 %199, i32* %10, align 4
  %200 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %201 = load i32, i32* @RTXAGC_A_CCK1_MCS32, align 4
  %202 = load i32, i32* @MASKBYTE1, align 4
  %203 = load i32, i32* %10, align 4
  %204 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %200, i32 %201, i32 %202, i32 %203)
  %205 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %206 = load i32, i32* @FPHY, align 4
  %207 = load i32, i32* @PHY_TXPWR, align 4
  %208 = load i32, i32* %10, align 4
  %209 = load i32, i32* @RTXAGC_A_CCK1_MCS32, align 4
  %210 = call i32 @RTPRINT(%struct.rtl_priv* %205, i32 %206, i32 %207, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %208, i32 %209)
  %211 = load i64, i64* @RF90_PATH_A, align 8
  %212 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 %211
  %213 = load i32, i32* %212, align 4
  %214 = ashr i32 %213, 8
  store i32 %214, i32* %10, align 4
  %215 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %216 = load i32, i32* @RTXAGC_B_CCK11_A_CCK2_11, align 4
  %217 = load i32, i32* %10, align 4
  %218 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %215, i32 %216, i32 -256, i32 %217)
  %219 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %220 = load i32, i32* @FPHY, align 4
  %221 = load i32, i32* @PHY_TXPWR, align 4
  %222 = load i32, i32* %10, align 4
  %223 = load i32, i32* @RTXAGC_B_CCK11_A_CCK2_11, align 4
  %224 = call i32 @RTPRINT(%struct.rtl_priv* %219, i32 %220, i32 %221, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %222, i32 %223)
  %225 = load i64, i64* @RF90_PATH_B, align 8
  %226 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 %225
  %227 = load i32, i32* %226, align 4
  %228 = ashr i32 %227, 24
  store i32 %228, i32* %10, align 4
  %229 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %230 = load i32, i32* @RTXAGC_B_CCK11_A_CCK2_11, align 4
  %231 = load i32, i32* @MASKBYTE0, align 4
  %232 = load i32, i32* %10, align 4
  %233 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %229, i32 %230, i32 %231, i32 %232)
  %234 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %235 = load i32, i32* @FPHY, align 4
  %236 = load i32, i32* @PHY_TXPWR, align 4
  %237 = load i32, i32* %10, align 4
  %238 = load i32, i32* @RTXAGC_B_CCK11_A_CCK2_11, align 4
  %239 = call i32 @RTPRINT(%struct.rtl_priv* %234, i32 %235, i32 %236, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %237, i32 %238)
  %240 = load i64, i64* @RF90_PATH_B, align 8
  %241 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 %240
  %242 = load i32, i32* %241, align 4
  %243 = and i32 %242, 16777215
  store i32 %243, i32* %10, align 4
  %244 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %245 = load i32, i32* @RTXAGC_B_CCK1_55_MCS32, align 4
  %246 = load i32, i32* %10, align 4
  %247 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %244, i32 %245, i32 -256, i32 %246)
  %248 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %249 = load i32, i32* @FPHY, align 4
  %250 = load i32, i32* @PHY_TXPWR, align 4
  %251 = load i32, i32* %10, align 4
  %252 = load i32, i32* @RTXAGC_B_CCK1_55_MCS32, align 4
  %253 = call i32 @RTPRINT(%struct.rtl_priv* %248, i32 %249, i32 %250, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %251, i32 %252)
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_mac* @rtl_mac(%struct.rtl_priv*) #1

declare dso_local %struct.rtl_efuse* @rtl_efuse(%struct.rtl_priv*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @rtl_set_bbreg(%struct.ieee80211_hw*, i32, i32, i32) #1

declare dso_local i32 @RTPRINT(%struct.rtl_priv*, i32, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
