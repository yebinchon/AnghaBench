; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_rf.c_rtl8821ae_phy_rf6052_set_cck_txpower.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_rf.c_rtl8821ae_phy_rf6052_set_cck_txpower.c"
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
@RTXAGC_A_CCK11_CCK1 = common dso_local global i32 0, align 4
@MASKDWORD = common dso_local global i32 0, align 4
@FPHY = common dso_local global i32 0, align 4
@PHY_TXPWR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"CCK PWR 1~11M (rf-A) = 0x%x (reg 0x%x)\0A\00", align 1
@RTXAGC_B_CCK11_CCK1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"CCK PWR 11M (rf-B) = 0x%x (reg 0x%x)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl8821ae_phy_rf6052_set_cck_txpower(%struct.ieee80211_hw* %0, i64* %1) #0 {
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
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store i64* %1, i64** %4, align 8
  %17 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %18 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %17)
  store %struct.rtl_priv* %18, %struct.rtl_priv** %5, align 8
  %19 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %20 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %19, i32 0, i32 0
  store %struct.rtl_phy* %20, %struct.rtl_phy** %6, align 8
  %21 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %22 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %21)
  %23 = call %struct.rtl_mac* @rtl_mac(%struct.rtl_priv* %22)
  store %struct.rtl_mac* %23, %struct.rtl_mac** %7, align 8
  %24 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %25 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %24)
  %26 = call %struct.rtl_efuse* @rtl_efuse(%struct.rtl_priv* %25)
  store %struct.rtl_efuse* %26, %struct.rtl_efuse** %8, align 8
  %27 = bitcast [2 x i32]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %27, i8 0, i64 8, i1 false)
  store i32 0, i32* %11, align 4
  %28 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %29 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %2
  store i32 1, i32* %11, align 4
  br label %33

33:                                               ; preds = %32, %2
  %34 = load %struct.rtl_mac*, %struct.rtl_mac** %7, align 8
  %35 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %82

38:                                               ; preds = %33
  %39 = load i64, i64* @RF90_PATH_A, align 8
  %40 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 %39
  store i32 1061109567, i32* %40, align 4
  %41 = load i64, i64* @RF90_PATH_B, align 8
  %42 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 %41
  store i32 1061109567, i32* %42, align 4
  %43 = load i32, i32* %11, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %81

45:                                               ; preds = %38
  %46 = load i64, i64* @RF90_PATH_A, align 8
  store i64 %46, i64* %12, align 8
  br label %47

47:                                               ; preds = %77, %45
  %48 = load i64, i64* %12, align 8
  %49 = load i64, i64* @RF90_PATH_B, align 8
  %50 = icmp ule i64 %48, %49
  br i1 %50, label %51, label %80

51:                                               ; preds = %47
  %52 = load i64*, i64** %4, align 8
  %53 = load i64, i64* %12, align 8
  %54 = getelementptr inbounds i64, i64* %52, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = load i64*, i64** %4, align 8
  %57 = load i64, i64* %12, align 8
  %58 = getelementptr inbounds i64, i64* %56, i64 %57
  %59 = load i64, i64* %58, align 8
  %60 = shl i64 %59, 8
  %61 = or i64 %55, %60
  %62 = load i64*, i64** %4, align 8
  %63 = load i64, i64* %12, align 8
  %64 = getelementptr inbounds i64, i64* %62, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = shl i64 %65, 16
  %67 = or i64 %61, %66
  %68 = load i64*, i64** %4, align 8
  %69 = load i64, i64* %12, align 8
  %70 = getelementptr inbounds i64, i64* %68, i64 %69
  %71 = load i64, i64* %70, align 8
  %72 = shl i64 %71, 24
  %73 = or i64 %67, %72
  %74 = trunc i64 %73 to i32
  %75 = load i64, i64* %12, align 8
  %76 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 %75
  store i32 %74, i32* %76, align 4
  br label %77

77:                                               ; preds = %51
  %78 = load i64, i64* %12, align 8
  %79 = add i64 %78, 1
  store i64 %79, i64* %12, align 8
  br label %47

80:                                               ; preds = %47
  br label %81

81:                                               ; preds = %80, %38
  br label %166

82:                                               ; preds = %33
  %83 = load i64, i64* @RF90_PATH_A, align 8
  store i64 %83, i64* %12, align 8
  br label %84

84:                                               ; preds = %114, %82
  %85 = load i64, i64* %12, align 8
  %86 = load i64, i64* @RF90_PATH_B, align 8
  %87 = icmp ule i64 %85, %86
  br i1 %87, label %88, label %117

88:                                               ; preds = %84
  %89 = load i64*, i64** %4, align 8
  %90 = load i64, i64* %12, align 8
  %91 = getelementptr inbounds i64, i64* %89, i64 %90
  %92 = load i64, i64* %91, align 8
  %93 = load i64*, i64** %4, align 8
  %94 = load i64, i64* %12, align 8
  %95 = getelementptr inbounds i64, i64* %93, i64 %94
  %96 = load i64, i64* %95, align 8
  %97 = shl i64 %96, 8
  %98 = or i64 %92, %97
  %99 = load i64*, i64** %4, align 8
  %100 = load i64, i64* %12, align 8
  %101 = getelementptr inbounds i64, i64* %99, i64 %100
  %102 = load i64, i64* %101, align 8
  %103 = shl i64 %102, 16
  %104 = or i64 %98, %103
  %105 = load i64*, i64** %4, align 8
  %106 = load i64, i64* %12, align 8
  %107 = getelementptr inbounds i64, i64* %105, i64 %106
  %108 = load i64, i64* %107, align 8
  %109 = shl i64 %108, 24
  %110 = or i64 %104, %109
  %111 = trunc i64 %110 to i32
  %112 = load i64, i64* %12, align 8
  %113 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 %112
  store i32 %111, i32* %113, align 4
  br label %114

114:                                              ; preds = %88
  %115 = load i64, i64* %12, align 8
  %116 = add i64 %115, 1
  store i64 %116, i64* %12, align 8
  br label %84

117:                                              ; preds = %84
  %118 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %119 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %122, label %165

122:                                              ; preds = %117
  %123 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %124 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %123, i32 0, i32 0
  %125 = load i32**, i32*** %124, align 8
  %126 = getelementptr inbounds i32*, i32** %125, i64 0
  %127 = load i32*, i32** %126, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 6
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %131 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %130, i32 0, i32 0
  %132 = load i32**, i32*** %131, align 8
  %133 = getelementptr inbounds i32*, i32** %132, i64 0
  %134 = load i32*, i32** %133, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 7
  %136 = load i32, i32* %135, align 4
  %137 = shl i32 %136, 8
  %138 = add nsw i32 %129, %137
  store i32 %138, i32* %10, align 4
  %139 = load i32, i32* %10, align 4
  %140 = load i64, i64* @RF90_PATH_A, align 8
  %141 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = add nsw i32 %142, %139
  store i32 %143, i32* %141, align 4
  %144 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %145 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %144, i32 0, i32 0
  %146 = load i32**, i32*** %145, align 8
  %147 = getelementptr inbounds i32*, i32** %146, i64 0
  %148 = load i32*, i32** %147, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 14
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %152 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %151, i32 0, i32 0
  %153 = load i32**, i32*** %152, align 8
  %154 = getelementptr inbounds i32*, i32** %153, i64 0
  %155 = load i32*, i32** %154, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 15
  %157 = load i32, i32* %156, align 4
  %158 = shl i32 %157, 24
  %159 = add nsw i32 %150, %158
  store i32 %159, i32* %10, align 4
  %160 = load i32, i32* %10, align 4
  %161 = load i64, i64* @RF90_PATH_B, align 8
  %162 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = add nsw i32 %163, %160
  store i32 %164, i32* %162, align 4
  br label %165

165:                                              ; preds = %122, %117
  br label %166

166:                                              ; preds = %165, %81
  %167 = load i64, i64* @RF90_PATH_A, align 8
  store i64 %167, i64* %12, align 8
  br label %168

168:                                              ; preds = %194, %166
  %169 = load i64, i64* %12, align 8
  %170 = load i64, i64* @RF90_PATH_B, align 8
  %171 = icmp ule i64 %169, %170
  br i1 %171, label %172, label %197

172:                                              ; preds = %168
  %173 = load i64, i64* %12, align 8
  %174 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 %173
  %175 = bitcast i32* %174 to i64*
  store i64* %175, i64** %14, align 8
  store i64 0, i64* %13, align 8
  br label %176

176:                                              ; preds = %190, %172
  %177 = load i64, i64* %13, align 8
  %178 = icmp ult i64 %177, 4
  br i1 %178, label %179, label %193

179:                                              ; preds = %176
  %180 = load i64*, i64** %14, align 8
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* @RF6052_MAX_TX_PWR, align 8
  %183 = icmp ugt i64 %181, %182
  br i1 %183, label %184, label %187

184:                                              ; preds = %179
  %185 = load i64, i64* @RF6052_MAX_TX_PWR, align 8
  %186 = load i64*, i64** %14, align 8
  store i64 %185, i64* %186, align 8
  br label %187

187:                                              ; preds = %184, %179
  %188 = load i64*, i64** %14, align 8
  %189 = getelementptr inbounds i64, i64* %188, i32 1
  store i64* %189, i64** %14, align 8
  br label %190

190:                                              ; preds = %187
  %191 = load i64, i64* %13, align 8
  %192 = add i64 %191, 1
  store i64 %192, i64* %13, align 8
  br label %176

193:                                              ; preds = %176
  br label %194

194:                                              ; preds = %193
  %195 = load i64, i64* %12, align 8
  %196 = add i64 %195, 1
  store i64 %196, i64* %12, align 8
  br label %168

197:                                              ; preds = %168
  %198 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %199 = call i32 @rtl8821ae_dm_txpower_track_adjust(%struct.ieee80211_hw* %198, i32 1, i64* %15, i32* %16)
  %200 = load i64, i64* %15, align 8
  %201 = icmp eq i64 %200, 1
  br i1 %201, label %202, label %211

202:                                              ; preds = %197
  %203 = load i32, i32* %16, align 4
  %204 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %205 = load i32, i32* %204, align 4
  %206 = add nsw i32 %205, %203
  store i32 %206, i32* %204, align 4
  %207 = load i32, i32* %16, align 4
  %208 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %209 = load i32, i32* %208, align 4
  %210 = add nsw i32 %209, %207
  store i32 %210, i32* %208, align 4
  br label %224

211:                                              ; preds = %197
  %212 = load i64, i64* %15, align 8
  %213 = icmp eq i64 %212, 2
  br i1 %213, label %214, label %223

214:                                              ; preds = %211
  %215 = load i32, i32* %16, align 4
  %216 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %217 = load i32, i32* %216, align 4
  %218 = sub nsw i32 %217, %215
  store i32 %218, i32* %216, align 4
  %219 = load i32, i32* %16, align 4
  %220 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %221 = load i32, i32* %220, align 4
  %222 = sub nsw i32 %221, %219
  store i32 %222, i32* %220, align 4
  br label %223

223:                                              ; preds = %214, %211
  br label %224

224:                                              ; preds = %223, %202
  %225 = load i64, i64* @RF90_PATH_A, align 8
  %226 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 %225
  %227 = load i32, i32* %226, align 4
  store i32 %227, i32* %10, align 4
  %228 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %229 = load i32, i32* @RTXAGC_A_CCK11_CCK1, align 4
  %230 = load i32, i32* @MASKDWORD, align 4
  %231 = load i32, i32* %10, align 4
  %232 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %228, i32 %229, i32 %230, i32 %231)
  %233 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %234 = load i32, i32* @FPHY, align 4
  %235 = load i32, i32* @PHY_TXPWR, align 4
  %236 = load i32, i32* %10, align 4
  %237 = load i32, i32* @RTXAGC_A_CCK11_CCK1, align 4
  %238 = call i32 @RTPRINT(%struct.rtl_priv* %233, i32 %234, i32 %235, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %236, i32 %237)
  %239 = load i64, i64* @RF90_PATH_B, align 8
  %240 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 %239
  %241 = load i32, i32* %240, align 4
  store i32 %241, i32* %10, align 4
  %242 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %243 = load i32, i32* @RTXAGC_B_CCK11_CCK1, align 4
  %244 = load i32, i32* @MASKDWORD, align 4
  %245 = load i32, i32* %10, align 4
  %246 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %242, i32 %243, i32 %244, i32 %245)
  %247 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %248 = load i32, i32* @FPHY, align 4
  %249 = load i32, i32* @PHY_TXPWR, align 4
  %250 = load i32, i32* %10, align 4
  %251 = load i32, i32* @RTXAGC_B_CCK11_CCK1, align 4
  %252 = call i32 @RTPRINT(%struct.rtl_priv* %247, i32 %248, i32 %249, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %250, i32 %251)
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_mac* @rtl_mac(%struct.rtl_priv*) #1

declare dso_local %struct.rtl_efuse* @rtl_efuse(%struct.rtl_priv*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @rtl8821ae_dm_txpower_track_adjust(%struct.ieee80211_hw*, i32, i64*, i32*) #1

declare dso_local i32 @rtl_set_bbreg(%struct.ieee80211_hw*, i32, i32, i32) #1

declare dso_local i32 @RTPRINT(%struct.rtl_priv*, i32, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
