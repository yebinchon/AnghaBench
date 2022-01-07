; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723be/extr_trx.c__rtl8723be_query_rxphystatus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723be/extr_trx.c__rtl8723be_query_rxphystatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_stats = type { i32, i32, i32, i32, i32*, i32, i32, i32, i32*, i64, i32, i8*, i8*, i8** }
%struct.rx_fwinfo_8723be = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32*, i32, i64* }
%struct.phy_status_rpt = type { i32, i32, i64*, i32*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@RFPGA0_XA_HSSIPARAMETER2 = common dso_local global i32 0, align 4
@RF90_PATH_A = common dso_local global i32 0, align 4
@RF6052_MAX_PATH = common dso_local global i32 0, align 4
@DESC92C_RATEMCS8 = common dso_local global i64 0, align 8
@DESC92C_RATEMCS15 = common dso_local global i64 0, align 8
@RF90_PATH_B = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.rtl_stats*, i32*, %struct.rx_fwinfo_8723be*, i32, i32, i32)* @_rtl8723be_query_rxphystatus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl8723be_query_rxphystatus(%struct.ieee80211_hw* %0, %struct.rtl_stats* %1, i32* %2, %struct.rx_fwinfo_8723be* %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.ieee80211_hw*, align 8
  %9 = alloca %struct.rtl_stats*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.rx_fwinfo_8723be*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.rtl_priv*, align 8
  %16 = alloca %struct.phy_status_rpt*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca [4 x i8*], align 16
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %8, align 8
  store %struct.rtl_stats* %1, %struct.rtl_stats** %9, align 8
  store i32* %2, i32** %10, align 8
  store %struct.rx_fwinfo_8723be* %3, %struct.rx_fwinfo_8723be** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %34 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %8, align 8
  %35 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %34)
  store %struct.rtl_priv* %35, %struct.rtl_priv** %15, align 8
  %36 = load %struct.rx_fwinfo_8723be*, %struct.rx_fwinfo_8723be** %11, align 8
  %37 = bitcast %struct.rx_fwinfo_8723be* %36 to %struct.phy_status_rpt*
  store %struct.phy_status_rpt* %37, %struct.phy_status_rpt** %16, align 8
  store i8* null, i8** %17, align 8
  store i32 0, i32* %19, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %26, align 4
  %38 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %39 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %27, align 4
  %41 = load i32, i32* %12, align 4
  %42 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %43 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* %13, align 4
  %45 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %46 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 8
  %47 = load i32, i32* %14, align 4
  %48 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %49 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %48, i32 0, i32 3
  store i32 %47, i32* %49, align 4
  %50 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %51 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %50, i32 0, i32 4
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  store i32 -1, i32* %53, align 4
  %54 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %55 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %54, i32 0, i32 4
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 1
  store i32 -1, i32* %57, align 4
  %58 = load i32, i32* %27, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %156

60:                                               ; preds = %7
  %61 = load %struct.phy_status_rpt*, %struct.phy_status_rpt** %16, align 8
  %62 = getelementptr inbounds %struct.phy_status_rpt, %struct.phy_status_rpt* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  store i32 %63, i32* %31, align 4
  %64 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %8, align 8
  %65 = load i32, i32* @RFPGA0_XA_HSSIPARAMETER2, align 4
  %66 = call i32 @BIT(i32 9)
  %67 = call i64 @rtl_get_bbreg(%struct.ieee80211_hw* %64, i32 %65, i32 %66)
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %30, align 4
  %69 = load i32, i32* %31, align 4
  %70 = and i32 %69, 224
  %71 = ashr i32 %70, 5
  store i32 %71, i32* %28, align 4
  %72 = load i32, i32* %31, align 4
  %73 = and i32 %72, 31
  store i32 %73, i32* %29, align 4
  %74 = load i32, i32* %28, align 4
  switch i32 %74, label %99 [
    i32 6, label %75
    i32 4, label %81
    i32 1, label %87
    i32 0, label %93
  ]

75:                                               ; preds = %60
  %76 = load i32, i32* %29, align 4
  %77 = mul nsw i32 2, %76
  %78 = sub nsw i32 -34, %77
  %79 = sext i32 %78 to i64
  %80 = inttoptr i64 %79 to i8*
  store i8* %80, i8** %17, align 8
  br label %100

81:                                               ; preds = %60
  %82 = load i32, i32* %29, align 4
  %83 = mul nsw i32 2, %82
  %84 = sub nsw i32 -14, %83
  %85 = sext i32 %84 to i64
  %86 = inttoptr i64 %85 to i8*
  store i8* %86, i8** %17, align 8
  br label %100

87:                                               ; preds = %60
  %88 = load i32, i32* %29, align 4
  %89 = mul nsw i32 2, %88
  %90 = sub nsw i32 6, %89
  %91 = sext i32 %90 to i64
  %92 = inttoptr i64 %91 to i8*
  store i8* %92, i8** %17, align 8
  br label %100

93:                                               ; preds = %60
  %94 = load i32, i32* %29, align 4
  %95 = mul nsw i32 2, %94
  %96 = sub nsw i32 16, %95
  %97 = sext i32 %96 to i64
  %98 = inttoptr i64 %97 to i8*
  store i8* %98, i8** %17, align 8
  br label %100

99:                                               ; preds = %60
  br label %100

100:                                              ; preds = %99, %93, %87, %81, %75
  %101 = load i8*, i8** %17, align 8
  %102 = call i32 @rtl_query_rxpwrpercentage(i8* %101)
  store i32 %102, i32* %21, align 4
  %103 = load i32, i32* %21, align 4
  %104 = icmp sgt i32 %103, 100
  br i1 %104, label %105, label %106

105:                                              ; preds = %100
  store i32 100, i32* %21, align 4
  br label %106

106:                                              ; preds = %105, %100
  %107 = load i32, i32* %21, align 4
  %108 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %109 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %108, i32 0, i32 5
  store i32 %107, i32* %109, align 8
  %110 = load i32, i32* %21, align 4
  %111 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %112 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %111, i32 0, i32 6
  store i32 %110, i32* %112, align 4
  %113 = load i8*, i8** %17, align 8
  %114 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %115 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %114, i32 0, i32 11
  store i8* %113, i8** %115, align 8
  %116 = load i32, i32* %12, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %155

118:                                              ; preds = %106
  %119 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %120 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %119, i32 0, i32 5
  %121 = load i32, i32* %120, align 8
  %122 = icmp sgt i32 %121, 40
  br i1 %122, label %123, label %124

123:                                              ; preds = %118
  store i32 100, i32* %32, align 4
  br label %142

124:                                              ; preds = %118
  %125 = load %struct.phy_status_rpt*, %struct.phy_status_rpt** %16, align 8
  %126 = getelementptr inbounds %struct.phy_status_rpt, %struct.phy_status_rpt* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  store i32 %127, i32* %33, align 4
  %128 = load i32, i32* %33, align 4
  %129 = icmp sgt i32 %128, 64
  br i1 %129, label %130, label %131

130:                                              ; preds = %124
  store i32 0, i32* %32, align 4
  br label %141

131:                                              ; preds = %124
  %132 = load i32, i32* %33, align 4
  %133 = icmp slt i32 %132, 20
  br i1 %133, label %134, label %135

134:                                              ; preds = %131
  store i32 100, i32* %32, align 4
  br label %140

135:                                              ; preds = %131
  %136 = load i32, i32* %33, align 4
  %137 = sub nsw i32 64, %136
  %138 = mul nsw i32 %137, 100
  %139 = sdiv i32 %138, 44
  store i32 %139, i32* %32, align 4
  br label %140

140:                                              ; preds = %135, %134
  br label %141

141:                                              ; preds = %140, %130
  br label %142

142:                                              ; preds = %141, %123
  %143 = load i32, i32* %32, align 4
  %144 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %145 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %144, i32 0, i32 7
  store i32 %143, i32* %145, align 8
  %146 = load i32, i32* %32, align 4
  %147 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %148 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %147, i32 0, i32 4
  %149 = load i32*, i32** %148, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 0
  store i32 %146, i32* %150, align 4
  %151 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %152 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %151, i32 0, i32 4
  %153 = load i32*, i32** %152, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 1
  store i32 -1, i32* %154, align 4
  br label %155

155:                                              ; preds = %142, %106
  br label %344

156:                                              ; preds = %7
  %157 = load i32, i32* @RF90_PATH_A, align 4
  store i32 %157, i32* %23, align 4
  br label %158

158:                                              ; preds = %217, %156
  %159 = load i32, i32* %23, align 4
  %160 = load i32, i32* @RF6052_MAX_PATH, align 4
  %161 = icmp slt i32 %159, %160
  br i1 %161, label %162, label %220

162:                                              ; preds = %158
  %163 = load %struct.rtl_priv*, %struct.rtl_priv** %15, align 8
  %164 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 2
  %166 = load i64*, i64** %165, align 8
  %167 = load i32, i32* %23, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i64, i64* %166, i64 %168
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %175

172:                                              ; preds = %162
  %173 = load i32, i32* %19, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %19, align 4
  br label %175

175:                                              ; preds = %172, %162
  %176 = load %struct.phy_status_rpt*, %struct.phy_status_rpt** %16, align 8
  %177 = getelementptr inbounds %struct.phy_status_rpt, %struct.phy_status_rpt* %176, i32 0, i32 4
  %178 = load %struct.TYPE_3__*, %struct.TYPE_3__** %177, align 8
  %179 = load i32, i32* %23, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %178, i64 %180
  %182 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = and i32 %183, 63
  %185 = mul nsw i32 %184, 2
  %186 = sub nsw i32 %185, 110
  %187 = sext i32 %186 to i64
  %188 = inttoptr i64 %187 to i8*
  %189 = load i32, i32* %23, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds [4 x i8*], [4 x i8*]* %18, i64 0, i64 %190
  store i8* %188, i8** %191, align 8
  %192 = load i32, i32* %23, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds [4 x i8*], [4 x i8*]* %18, i64 0, i64 %193
  %195 = load i8*, i8** %194, align 8
  %196 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %197 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %196, i32 0, i32 13
  %198 = load i8**, i8*** %197, align 8
  %199 = load i32, i32* %23, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i8*, i8** %198, i64 %200
  store i8* %195, i8** %201, align 8
  %202 = load i32, i32* %23, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds [4 x i8*], [4 x i8*]* %18, i64 0, i64 %203
  %205 = load i8*, i8** %204, align 8
  %206 = call i32 @rtl_query_rxpwrpercentage(i8* %205)
  store i32 %206, i32* %25, align 4
  %207 = load i32, i32* %25, align 4
  %208 = load i32, i32* %26, align 4
  %209 = add nsw i32 %208, %207
  store i32 %209, i32* %26, align 4
  %210 = load i32, i32* %25, align 4
  %211 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %212 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %211, i32 0, i32 8
  %213 = load i32*, i32** %212, align 8
  %214 = load i32, i32* %23, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i32, i32* %213, i64 %215
  store i32 %210, i32* %216, align 4
  br label %217

217:                                              ; preds = %175
  %218 = load i32, i32* %23, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %23, align 4
  br label %158

220:                                              ; preds = %158
  %221 = load %struct.phy_status_rpt*, %struct.phy_status_rpt** %16, align 8
  %222 = getelementptr inbounds %struct.phy_status_rpt, %struct.phy_status_rpt* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = ashr i32 %223, 1
  %225 = and i32 %224, 127
  %226 = sub nsw i32 %225, 110
  %227 = sext i32 %226 to i64
  %228 = inttoptr i64 %227 to i8*
  store i8* %228, i8** %17, align 8
  %229 = load i8*, i8** %17, align 8
  %230 = call i32 @rtl_query_rxpwrpercentage(i8* %229)
  store i32 %230, i32* %21, align 4
  %231 = load i32, i32* %21, align 4
  store i32 %231, i32* %22, align 4
  %232 = load i32, i32* %21, align 4
  %233 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %234 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %233, i32 0, i32 5
  store i32 %232, i32* %234, align 8
  %235 = load i32, i32* %22, align 4
  %236 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %237 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %236, i32 0, i32 6
  store i32 %235, i32* %237, align 4
  %238 = load i8*, i8** %17, align 8
  %239 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %240 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %239, i32 0, i32 12
  store i8* %238, i8** %240, align 8
  %241 = load i8*, i8** %17, align 8
  %242 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %243 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %242, i32 0, i32 11
  store i8* %241, i8** %243, align 8
  %244 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %245 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %244, i32 0, i32 9
  %246 = load i64, i64* %245, align 8
  %247 = load i64, i64* @DESC92C_RATEMCS8, align 8
  %248 = icmp sge i64 %246, %247
  br i1 %248, label %249, label %256

249:                                              ; preds = %220
  %250 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %251 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %250, i32 0, i32 9
  %252 = load i64, i64* %251, align 8
  %253 = load i64, i64* @DESC92C_RATEMCS15, align 8
  %254 = icmp sle i64 %252, %253
  br i1 %254, label %255, label %256

255:                                              ; preds = %249
  store i32 2, i32* %24, align 4
  br label %257

256:                                              ; preds = %249, %220
  store i32 1, i32* %24, align 4
  br label %257

257:                                              ; preds = %256, %255
  store i32 0, i32* %23, align 4
  br label %258

258:                                              ; preds = %291, %257
  %259 = load i32, i32* %23, align 4
  %260 = load i32, i32* %24, align 4
  %261 = icmp slt i32 %259, %260
  br i1 %261, label %262, label %294

262:                                              ; preds = %258
  %263 = load %struct.phy_status_rpt*, %struct.phy_status_rpt** %16, align 8
  %264 = getelementptr inbounds %struct.phy_status_rpt, %struct.phy_status_rpt* %263, i32 0, i32 3
  %265 = load i32*, i32** %264, align 8
  %266 = load i32, i32* %23, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds i32, i32* %265, i64 %267
  %269 = load i32, i32* %268, align 4
  %270 = call i32 @rtl_evm_db_to_percentage(i32 %269)
  store i32 %270, i32* %20, align 4
  %271 = load i32, i32* %12, align 4
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %290

273:                                              ; preds = %262
  %274 = load i32, i32* %23, align 4
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %276, label %281

276:                                              ; preds = %273
  %277 = load i32, i32* %20, align 4
  %278 = and i32 %277, 255
  %279 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %280 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %279, i32 0, i32 7
  store i32 %278, i32* %280, align 8
  br label %281

281:                                              ; preds = %276, %273
  %282 = load i32, i32* %20, align 4
  %283 = and i32 %282, 255
  %284 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %285 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %284, i32 0, i32 4
  %286 = load i32*, i32** %285, align 8
  %287 = load i32, i32* %23, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds i32, i32* %286, i64 %288
  store i32 %283, i32* %289, align 4
  br label %290

290:                                              ; preds = %281, %262
  br label %291

291:                                              ; preds = %290
  %292 = load i32, i32* %23, align 4
  %293 = add nsw i32 %292, 1
  store i32 %293, i32* %23, align 4
  br label %258

294:                                              ; preds = %258
  %295 = load i32, i32* %12, align 4
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %343

297:                                              ; preds = %294
  %298 = load i32, i32* @RF90_PATH_A, align 4
  store i32 %298, i32* %23, align 4
  br label %299

299:                                              ; preds = %320, %297
  %300 = load i32, i32* %23, align 4
  %301 = load i32, i32* @RF90_PATH_B, align 4
  %302 = icmp sle i32 %300, %301
  br i1 %302, label %303, label %323

303:                                              ; preds = %299
  %304 = load %struct.phy_status_rpt*, %struct.phy_status_rpt** %16, align 8
  %305 = getelementptr inbounds %struct.phy_status_rpt, %struct.phy_status_rpt* %304, i32 0, i32 2
  %306 = load i64*, i64** %305, align 8
  %307 = load i32, i32* %23, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds i64, i64* %306, i64 %308
  %310 = load i64, i64* %309, align 8
  %311 = trunc i64 %310 to i32
  %312 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %8, align 8
  %313 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %312)
  %314 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %313, i32 0, i32 0
  %315 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %314, i32 0, i32 0
  %316 = load i32*, i32** %315, align 8
  %317 = load i32, i32* %23, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds i32, i32* %316, i64 %318
  store i32 %311, i32* %319, align 4
  br label %320

320:                                              ; preds = %303
  %321 = load i32, i32* %23, align 4
  %322 = add nsw i32 %321, 1
  store i32 %322, i32* %23, align 4
  br label %299

323:                                              ; preds = %299
  %324 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %8, align 8
  %325 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %324)
  %326 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %325, i32 0, i32 0
  %327 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %326, i32 0, i32 1
  %328 = load i32, i32* %327, align 8
  %329 = icmp eq i32 %328, -1
  br i1 %329, label %330, label %335

330:                                              ; preds = %323
  %331 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %8, align 8
  %332 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %331)
  %333 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %332, i32 0, i32 0
  %334 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %333, i32 0, i32 1
  store i32 0, i32* %334, align 8
  br label %342

335:                                              ; preds = %323
  %336 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %8, align 8
  %337 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %336)
  %338 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %337, i32 0, i32 0
  %339 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %338, i32 0, i32 1
  %340 = load i32, i32* %339, align 8
  %341 = add nsw i32 %340, 1
  store i32 %341, i32* %339, align 8
  br label %342

342:                                              ; preds = %335, %330
  br label %343

343:                                              ; preds = %342, %294
  br label %344

344:                                              ; preds = %343, %155
  %345 = load i32, i32* %27, align 4
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %347, label %354

347:                                              ; preds = %344
  %348 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %8, align 8
  %349 = load i32, i32* %21, align 4
  %350 = call i64 @rtl_signal_scale_mapping(%struct.ieee80211_hw* %348, i32 %349)
  %351 = trunc i64 %350 to i32
  %352 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %353 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %352, i32 0, i32 10
  store i32 %351, i32* %353, align 8
  br label %367

354:                                              ; preds = %344
  %355 = load i32, i32* %19, align 4
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %357, label %366

357:                                              ; preds = %354
  %358 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %8, align 8
  %359 = load i32, i32* %19, align 4
  %360 = load i32, i32* %26, align 4
  %361 = sdiv i32 %360, %359
  store i32 %361, i32* %26, align 4
  %362 = call i64 @rtl_signal_scale_mapping(%struct.ieee80211_hw* %358, i32 %361)
  %363 = trunc i64 %362 to i32
  %364 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %365 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %364, i32 0, i32 10
  store i32 %363, i32* %365, align 8
  br label %366

366:                                              ; preds = %357, %354
  br label %367

367:                                              ; preds = %366, %347
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i64 @rtl_get_bbreg(%struct.ieee80211_hw*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @rtl_query_rxpwrpercentage(i8*) #1

declare dso_local i32 @rtl_evm_db_to_percentage(i32) #1

declare dso_local i64 @rtl_signal_scale_mapping(%struct.ieee80211_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
