; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8188ee/extr_trx.c__rtl88ee_query_rxphystatus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8188ee/extr_trx.c__rtl88ee_query_rxphystatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_stats = type { i32, i32, i32, i32, i32*, i32, i32, i32, i32*, i32, i64, i32, i64 }
%struct.rx_fwinfo_88e = type { i32*, i32*, i32, i32* }
%struct.rtl_priv = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64* }
%struct.TYPE_4__ = type { i32* }
%struct.rtl_ps_ctl = type { i64 }
%struct.phy_sts_cck_8192s_t = type { i32, i32 }
%struct.phy_status_rpt = type { i32, i32, i32 }
%struct.rtl_dm = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32 }

@ERFON = common dso_local global i64 0, align 8
@RFPGA0_XA_HSSIPARAMETER2 = common dso_local global i32 0, align 4
@RF90_PATH_A = common dso_local global i32 0, align 4
@RF6052_MAX_PATH = common dso_local global i32 0, align 4
@DESC92C_RATEMCS8 = common dso_local global i64 0, align 8
@DESC92C_RATEMCS15 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.rtl_stats*, i32*, %struct.rx_fwinfo_88e*, i32, i32, i32)* @_rtl88ee_query_rxphystatus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl88ee_query_rxphystatus(%struct.ieee80211_hw* %0, %struct.rtl_stats* %1, i32* %2, %struct.rx_fwinfo_88e* %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.ieee80211_hw*, align 8
  %9 = alloca %struct.rtl_stats*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.rx_fwinfo_88e*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.rtl_priv*, align 8
  %16 = alloca %struct.rtl_ps_ctl*, align 8
  %17 = alloca %struct.phy_sts_cck_8192s_t*, align 8
  %18 = alloca %struct.phy_status_rpt*, align 8
  %19 = alloca %struct.rtl_dm*, align 8
  %20 = alloca i32, align 4
  %21 = alloca [4 x i32], align 16
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
  %34 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %8, align 8
  store %struct.rtl_stats* %1, %struct.rtl_stats** %9, align 8
  store i32* %2, i32** %10, align 8
  store %struct.rx_fwinfo_88e* %3, %struct.rx_fwinfo_88e** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %35 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %8, align 8
  %36 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %35)
  store %struct.rtl_priv* %36, %struct.rtl_priv** %15, align 8
  %37 = load %struct.rtl_priv*, %struct.rtl_priv** %15, align 8
  %38 = call %struct.rtl_ps_ctl* @rtl_psc(%struct.rtl_priv* %37)
  store %struct.rtl_ps_ctl* %38, %struct.rtl_ps_ctl** %16, align 8
  %39 = load %struct.rx_fwinfo_88e*, %struct.rx_fwinfo_88e** %11, align 8
  %40 = bitcast %struct.rx_fwinfo_88e* %39 to %struct.phy_status_rpt*
  store %struct.phy_status_rpt* %40, %struct.phy_status_rpt** %18, align 8
  %41 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %8, align 8
  %42 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %41)
  %43 = call %struct.rtl_dm* @rtl_dm(%struct.rtl_priv* %42)
  store %struct.rtl_dm* %43, %struct.rtl_dm** %19, align 8
  store i32 0, i32* %20, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %28, align 4
  %44 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %45 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  store i32 %46, i32* %29, align 4
  %47 = load i32, i32* %12, align 4
  %48 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %49 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* %13, align 4
  %51 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %52 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 8
  %53 = load i32, i32* %14, align 4
  %54 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %55 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %54, i32 0, i32 3
  store i32 %53, i32* %55, align 4
  %56 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %57 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %56, i32 0, i32 4
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  store i32 -1, i32* %59, align 4
  %60 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %61 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %60, i32 0, i32 4
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 1
  store i32 -1, i32* %63, align 4
  %64 = load i32, i32* %29, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %270

66:                                               ; preds = %7
  %67 = load %struct.rx_fwinfo_88e*, %struct.rx_fwinfo_88e** %11, align 8
  %68 = bitcast %struct.rx_fwinfo_88e* %67 to %struct.phy_sts_cck_8192s_t*
  store %struct.phy_sts_cck_8192s_t* %68, %struct.phy_sts_cck_8192s_t** %17, align 8
  %69 = load %struct.phy_sts_cck_8192s_t*, %struct.phy_sts_cck_8192s_t** %17, align 8
  %70 = getelementptr inbounds %struct.phy_sts_cck_8192s_t, %struct.phy_sts_cck_8192s_t* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %33, align 4
  %72 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %16, align 8
  %73 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @ERFON, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %83

77:                                               ; preds = %66
  %78 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %8, align 8
  %79 = load i32, i32* @RFPGA0_XA_HSSIPARAMETER2, align 4
  %80 = call i32 @BIT(i32 9)
  %81 = call i64 @rtl_get_bbreg(%struct.ieee80211_hw* %78, i32 %79, i32 %80)
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %32, align 4
  br label %84

83:                                               ; preds = %66
  store i32 0, i32* %32, align 4
  br label %84

84:                                               ; preds = %83, %77
  %85 = load i32, i32* %33, align 4
  %86 = and i32 %85, 224
  %87 = ashr i32 %86, 5
  store i32 %87, i32* %30, align 4
  %88 = load i32, i32* %33, align 4
  %89 = and i32 %88, 31
  store i32 %89, i32* %31, align 4
  %90 = load i32, i32* %30, align 4
  switch i32 %90, label %143 [
    i32 7, label %91
    i32 6, label %101
    i32 5, label %106
    i32 4, label %111
    i32 3, label %116
    i32 2, label %121
    i32 1, label %135
    i32 0, label %139
  ]

91:                                               ; preds = %84
  %92 = load i32, i32* %31, align 4
  %93 = icmp sle i32 %92, 27
  br i1 %93, label %94, label %99

94:                                               ; preds = %91
  %95 = load i32, i32* %31, align 4
  %96 = sub nsw i32 27, %95
  %97 = mul nsw i32 2, %96
  %98 = add nsw i32 -100, %97
  store i32 %98, i32* %20, align 4
  br label %100

99:                                               ; preds = %91
  store i32 -100, i32* %20, align 4
  br label %100

100:                                              ; preds = %99, %94
  br label %144

101:                                              ; preds = %84
  %102 = load i32, i32* %31, align 4
  %103 = sub nsw i32 2, %102
  %104 = mul nsw i32 2, %103
  %105 = add nsw i32 -48, %104
  store i32 %105, i32* %20, align 4
  br label %144

106:                                              ; preds = %84
  %107 = load i32, i32* %31, align 4
  %108 = sub nsw i32 7, %107
  %109 = mul nsw i32 2, %108
  %110 = add nsw i32 -42, %109
  store i32 %110, i32* %20, align 4
  br label %144

111:                                              ; preds = %84
  %112 = load i32, i32* %31, align 4
  %113 = sub nsw i32 7, %112
  %114 = mul nsw i32 2, %113
  %115 = add nsw i32 -36, %114
  store i32 %115, i32* %20, align 4
  br label %144

116:                                              ; preds = %84
  %117 = load i32, i32* %31, align 4
  %118 = sub nsw i32 7, %117
  %119 = mul nsw i32 2, %118
  %120 = add nsw i32 -24, %119
  store i32 %120, i32* %20, align 4
  br label %144

121:                                              ; preds = %84
  %122 = load i32, i32* %32, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %121
  %125 = load i32, i32* %31, align 4
  %126 = sub nsw i32 5, %125
  %127 = mul nsw i32 2, %126
  %128 = add nsw i32 -12, %127
  store i32 %128, i32* %20, align 4
  br label %134

129:                                              ; preds = %121
  %130 = load i32, i32* %31, align 4
  %131 = sub nsw i32 5, %130
  %132 = mul nsw i32 2, %131
  %133 = add nsw i32 -6, %132
  store i32 %133, i32* %20, align 4
  br label %134

134:                                              ; preds = %129, %124
  br label %144

135:                                              ; preds = %84
  %136 = load i32, i32* %31, align 4
  %137 = mul nsw i32 2, %136
  %138 = sub nsw i32 8, %137
  store i32 %138, i32* %20, align 4
  br label %144

139:                                              ; preds = %84
  %140 = load i32, i32* %31, align 4
  %141 = mul nsw i32 2, %140
  %142 = sub nsw i32 14, %141
  store i32 %142, i32* %20, align 4
  br label %144

143:                                              ; preds = %84
  br label %144

144:                                              ; preds = %143, %139, %135, %134, %116, %111, %106, %101, %100
  %145 = load i32, i32* %20, align 4
  %146 = add nsw i32 %145, 6
  store i32 %146, i32* %20, align 4
  %147 = load i32, i32* %20, align 4
  %148 = call i32 @rtl_query_rxpwrpercentage(i32 %147)
  store i32 %148, i32* %24, align 4
  %149 = load i32, i32* %24, align 4
  %150 = add nsw i32 %149, 6
  store i32 %150, i32* %24, align 4
  %151 = load i32, i32* %24, align 4
  %152 = icmp sgt i32 %151, 100
  br i1 %152, label %153, label %154

153:                                              ; preds = %144
  store i32 100, i32* %24, align 4
  br label %154

154:                                              ; preds = %153, %144
  %155 = load i32, i32* %24, align 4
  %156 = icmp sgt i32 %155, 34
  br i1 %156, label %157, label %163

157:                                              ; preds = %154
  %158 = load i32, i32* %24, align 4
  %159 = icmp sle i32 %158, 42
  br i1 %159, label %160, label %163

160:                                              ; preds = %157
  %161 = load i32, i32* %24, align 4
  %162 = sub nsw i32 %161, 2
  store i32 %162, i32* %24, align 4
  br label %193

163:                                              ; preds = %157, %154
  %164 = load i32, i32* %24, align 4
  %165 = icmp sgt i32 %164, 26
  br i1 %165, label %166, label %172

166:                                              ; preds = %163
  %167 = load i32, i32* %24, align 4
  %168 = icmp sle i32 %167, 34
  br i1 %168, label %169, label %172

169:                                              ; preds = %166
  %170 = load i32, i32* %24, align 4
  %171 = sub nsw i32 %170, 6
  store i32 %171, i32* %24, align 4
  br label %192

172:                                              ; preds = %166, %163
  %173 = load i32, i32* %24, align 4
  %174 = icmp sgt i32 %173, 14
  br i1 %174, label %175, label %181

175:                                              ; preds = %172
  %176 = load i32, i32* %24, align 4
  %177 = icmp sle i32 %176, 26
  br i1 %177, label %178, label %181

178:                                              ; preds = %175
  %179 = load i32, i32* %24, align 4
  %180 = sub nsw i32 %179, 8
  store i32 %180, i32* %24, align 4
  br label %191

181:                                              ; preds = %175, %172
  %182 = load i32, i32* %24, align 4
  %183 = icmp sgt i32 %182, 4
  br i1 %183, label %184, label %190

184:                                              ; preds = %181
  %185 = load i32, i32* %24, align 4
  %186 = icmp sle i32 %185, 14
  br i1 %186, label %187, label %190

187:                                              ; preds = %184
  %188 = load i32, i32* %24, align 4
  %189 = sub nsw i32 %188, 4
  store i32 %189, i32* %24, align 4
  br label %190

190:                                              ; preds = %187, %184, %181
  br label %191

191:                                              ; preds = %190, %178
  br label %192

192:                                              ; preds = %191, %169
  br label %193

193:                                              ; preds = %192, %160
  %194 = load i32, i32* %32, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %223, label %196

196:                                              ; preds = %193
  %197 = load i32, i32* %24, align 4
  %198 = icmp sge i32 %197, 80
  br i1 %198, label %199, label %208

199:                                              ; preds = %196
  %200 = load i32, i32* %24, align 4
  %201 = sub nsw i32 %200, 80
  %202 = shl i32 %201, 1
  %203 = load i32, i32* %24, align 4
  %204 = sub nsw i32 %203, 80
  %205 = ashr i32 %204, 1
  %206 = add nsw i32 %202, %205
  %207 = add nsw i32 %206, 80
  store i32 %207, i32* %24, align 4
  br label %218

208:                                              ; preds = %196
  %209 = load i32, i32* %24, align 4
  %210 = icmp sle i32 %209, 78
  br i1 %210, label %211, label %217

211:                                              ; preds = %208
  %212 = load i32, i32* %24, align 4
  %213 = icmp sge i32 %212, 20
  br i1 %213, label %214, label %217

214:                                              ; preds = %211
  %215 = load i32, i32* %24, align 4
  %216 = add nsw i32 %215, 3
  store i32 %216, i32* %24, align 4
  br label %217

217:                                              ; preds = %214, %211, %208
  br label %218

218:                                              ; preds = %217, %199
  %219 = load i32, i32* %24, align 4
  %220 = icmp sgt i32 %219, 100
  br i1 %220, label %221, label %222

221:                                              ; preds = %218
  store i32 100, i32* %24, align 4
  br label %222

222:                                              ; preds = %221, %218
  br label %223

223:                                              ; preds = %222, %193
  %224 = load i32, i32* %24, align 4
  %225 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %226 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %225, i32 0, i32 5
  store i32 %224, i32* %226, align 8
  %227 = load i32, i32* %20, align 4
  %228 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %229 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %228, i32 0, i32 6
  store i32 %227, i32* %229, align 4
  %230 = load i32, i32* %12, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %269

232:                                              ; preds = %223
  %233 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %234 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %233, i32 0, i32 5
  %235 = load i32, i32* %234, align 8
  %236 = icmp sgt i32 %235, 40
  br i1 %236, label %237, label %238

237:                                              ; preds = %232
  store i32 100, i32* %34, align 4
  br label %256

238:                                              ; preds = %232
  %239 = load %struct.phy_sts_cck_8192s_t*, %struct.phy_sts_cck_8192s_t** %17, align 8
  %240 = getelementptr inbounds %struct.phy_sts_cck_8192s_t, %struct.phy_sts_cck_8192s_t* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 4
  store i32 %241, i32* %34, align 4
  %242 = load i32, i32* %34, align 4
  %243 = icmp sgt i32 %242, 64
  br i1 %243, label %244, label %245

244:                                              ; preds = %238
  store i32 0, i32* %34, align 4
  br label %255

245:                                              ; preds = %238
  %246 = load i32, i32* %34, align 4
  %247 = icmp slt i32 %246, 20
  br i1 %247, label %248, label %249

248:                                              ; preds = %245
  store i32 100, i32* %34, align 4
  br label %254

249:                                              ; preds = %245
  %250 = load i32, i32* %34, align 4
  %251 = sub nsw i32 64, %250
  %252 = mul nsw i32 %251, 100
  %253 = sdiv i32 %252, 44
  store i32 %253, i32* %34, align 4
  br label %254

254:                                              ; preds = %249, %248
  br label %255

255:                                              ; preds = %254, %244
  br label %256

256:                                              ; preds = %255, %237
  %257 = load i32, i32* %34, align 4
  %258 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %259 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %258, i32 0, i32 7
  store i32 %257, i32* %259, align 8
  %260 = load i32, i32* %34, align 4
  %261 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %262 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %261, i32 0, i32 4
  %263 = load i32*, i32** %262, align 8
  %264 = getelementptr inbounds i32, i32* %263, i64 0
  store i32 %260, i32* %264, align 4
  %265 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %266 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %265, i32 0, i32 4
  %267 = load i32*, i32** %266, align 8
  %268 = getelementptr inbounds i32, i32* %267, i64 1
  store i32 -1, i32* %268, align 4
  br label %269

269:                                              ; preds = %256, %223
  br label %425

270:                                              ; preds = %7
  %271 = load %struct.rtl_priv*, %struct.rtl_priv** %15, align 8
  %272 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %271, i32 0, i32 1
  %273 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %272, i32 0, i32 0
  %274 = load i32*, i32** %273, align 8
  %275 = getelementptr inbounds i32, i32* %274, i64 1
  store i32 1, i32* %275, align 4
  %276 = load %struct.rtl_priv*, %struct.rtl_priv** %15, align 8
  %277 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %276, i32 0, i32 1
  %278 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %277, i32 0, i32 0
  %279 = load i32*, i32** %278, align 8
  %280 = getelementptr inbounds i32, i32* %279, i64 0
  store i32 1, i32* %280, align 4
  %281 = load i32, i32* @RF90_PATH_A, align 4
  store i32 %281, i32* %25, align 4
  br label %282

282:                                              ; preds = %348, %270
  %283 = load i32, i32* %25, align 4
  %284 = load i32, i32* @RF6052_MAX_PATH, align 4
  %285 = icmp slt i32 %283, %284
  br i1 %285, label %286, label %351

286:                                              ; preds = %282
  %287 = load %struct.rtl_priv*, %struct.rtl_priv** %15, align 8
  %288 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %287, i32 0, i32 1
  %289 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %288, i32 0, i32 0
  %290 = load i32*, i32** %289, align 8
  %291 = load i32, i32* %25, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds i32, i32* %290, i64 %292
  %294 = load i32, i32* %293, align 4
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %296, label %299

296:                                              ; preds = %286
  %297 = load i32, i32* %22, align 4
  %298 = add nsw i32 %297, 1
  store i32 %298, i32* %22, align 4
  br label %299

299:                                              ; preds = %296, %286
  %300 = load %struct.rx_fwinfo_88e*, %struct.rx_fwinfo_88e** %11, align 8
  %301 = getelementptr inbounds %struct.rx_fwinfo_88e, %struct.rx_fwinfo_88e* %300, i32 0, i32 0
  %302 = load i32*, i32** %301, align 8
  %303 = load i32, i32* %25, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds i32, i32* %302, i64 %304
  %306 = load i32, i32* %305, align 4
  %307 = and i32 %306, 63
  %308 = mul nsw i32 %307, 2
  %309 = sub nsw i32 %308, 110
  %310 = load i32, i32* %25, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 %311
  store i32 %309, i32* %312, align 4
  %313 = load i32, i32* %25, align 4
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 %314
  %316 = load i32, i32* %315, align 4
  %317 = call i32 @rtl_query_rxpwrpercentage(i32 %316)
  store i32 %317, i32* %27, align 4
  %318 = load i32, i32* %27, align 4
  %319 = load i32, i32* %28, align 4
  %320 = add nsw i32 %319, %318
  store i32 %320, i32* %28, align 4
  %321 = load %struct.rx_fwinfo_88e*, %struct.rx_fwinfo_88e** %11, align 8
  %322 = getelementptr inbounds %struct.rx_fwinfo_88e, %struct.rx_fwinfo_88e* %321, i32 0, i32 1
  %323 = load i32*, i32** %322, align 8
  %324 = load i32, i32* %25, align 4
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds i32, i32* %323, i64 %325
  %327 = load i32, i32* %326, align 4
  %328 = sdiv i32 %327, 2
  %329 = sext i32 %328 to i64
  %330 = load %struct.rtl_priv*, %struct.rtl_priv** %15, align 8
  %331 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %330, i32 0, i32 0
  %332 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %331, i32 0, i32 0
  %333 = load i64*, i64** %332, align 8
  %334 = load i32, i32* %25, align 4
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds i64, i64* %333, i64 %335
  store i64 %329, i64* %336, align 8
  %337 = load i32, i32* %12, align 4
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %339, label %347

339:                                              ; preds = %299
  %340 = load i32, i32* %27, align 4
  %341 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %342 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %341, i32 0, i32 8
  %343 = load i32*, i32** %342, align 8
  %344 = load i32, i32* %25, align 4
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds i32, i32* %343, i64 %345
  store i32 %340, i32* %346, align 4
  br label %347

347:                                              ; preds = %339, %299
  br label %348

348:                                              ; preds = %347
  %349 = load i32, i32* %25, align 4
  %350 = add nsw i32 %349, 1
  store i32 %350, i32* %25, align 4
  br label %282

351:                                              ; preds = %282
  %352 = load %struct.rx_fwinfo_88e*, %struct.rx_fwinfo_88e** %11, align 8
  %353 = getelementptr inbounds %struct.rx_fwinfo_88e, %struct.rx_fwinfo_88e* %352, i32 0, i32 2
  %354 = load i32, i32* %353, align 8
  %355 = ashr i32 %354, 1
  %356 = and i32 %355, 127
  %357 = sub nsw i32 %356, 110
  store i32 %357, i32* %20, align 4
  %358 = load i32, i32* %20, align 4
  %359 = call i32 @rtl_query_rxpwrpercentage(i32 %358)
  store i32 %359, i32* %24, align 4
  %360 = load i32, i32* %24, align 4
  %361 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %362 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %361, i32 0, i32 5
  store i32 %360, i32* %362, align 8
  %363 = load i32, i32* %20, align 4
  %364 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %365 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %364, i32 0, i32 9
  store i32 %363, i32* %365, align 8
  %366 = load i32, i32* %20, align 4
  %367 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %368 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %367, i32 0, i32 6
  store i32 %366, i32* %368, align 4
  %369 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %370 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %369, i32 0, i32 12
  %371 = load i64, i64* %370, align 8
  %372 = icmp ne i64 %371, 0
  br i1 %372, label %373, label %386

373:                                              ; preds = %351
  %374 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %375 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %374, i32 0, i32 10
  %376 = load i64, i64* %375, align 8
  %377 = load i64, i64* @DESC92C_RATEMCS8, align 8
  %378 = icmp sge i64 %376, %377
  br i1 %378, label %379, label %386

379:                                              ; preds = %373
  %380 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %381 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %380, i32 0, i32 10
  %382 = load i64, i64* %381, align 8
  %383 = load i64, i64* @DESC92C_RATEMCS15, align 8
  %384 = icmp sle i64 %382, %383
  br i1 %384, label %385, label %386

385:                                              ; preds = %379
  store i32 2, i32* %26, align 4
  br label %387

386:                                              ; preds = %379, %373, %351
  store i32 1, i32* %26, align 4
  br label %387

387:                                              ; preds = %386, %385
  store i32 0, i32* %25, align 4
  br label %388

388:                                              ; preds = %421, %387
  %389 = load i32, i32* %25, align 4
  %390 = load i32, i32* %26, align 4
  %391 = icmp slt i32 %389, %390
  br i1 %391, label %392, label %424

392:                                              ; preds = %388
  %393 = load %struct.rx_fwinfo_88e*, %struct.rx_fwinfo_88e** %11, align 8
  %394 = getelementptr inbounds %struct.rx_fwinfo_88e, %struct.rx_fwinfo_88e* %393, i32 0, i32 3
  %395 = load i32*, i32** %394, align 8
  %396 = load i32, i32* %25, align 4
  %397 = sext i32 %396 to i64
  %398 = getelementptr inbounds i32, i32* %395, i64 %397
  %399 = load i32, i32* %398, align 4
  %400 = call i32 @rtl_evm_db_to_percentage(i32 %399)
  store i32 %400, i32* %23, align 4
  %401 = load i32, i32* %12, align 4
  %402 = icmp ne i32 %401, 0
  br i1 %402, label %403, label %420

403:                                              ; preds = %392
  %404 = load i32, i32* %25, align 4
  %405 = icmp eq i32 %404, 0
  br i1 %405, label %406, label %411

406:                                              ; preds = %403
  %407 = load i32, i32* %23, align 4
  %408 = and i32 %407, 255
  %409 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %410 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %409, i32 0, i32 7
  store i32 %408, i32* %410, align 8
  br label %411

411:                                              ; preds = %406, %403
  %412 = load i32, i32* %23, align 4
  %413 = and i32 %412, 255
  %414 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %415 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %414, i32 0, i32 4
  %416 = load i32*, i32** %415, align 8
  %417 = load i32, i32* %25, align 4
  %418 = sext i32 %417 to i64
  %419 = getelementptr inbounds i32, i32* %416, i64 %418
  store i32 %413, i32* %419, align 4
  br label %420

420:                                              ; preds = %411, %392
  br label %421

421:                                              ; preds = %420
  %422 = load i32, i32* %25, align 4
  %423 = add nsw i32 %422, 1
  store i32 %423, i32* %25, align 4
  br label %388

424:                                              ; preds = %388
  br label %425

425:                                              ; preds = %424, %269
  %426 = load i32, i32* %29, align 4
  %427 = icmp ne i32 %426, 0
  br i1 %427, label %428, label %435

428:                                              ; preds = %425
  %429 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %8, align 8
  %430 = load i32, i32* %24, align 4
  %431 = call i64 @rtl_signal_scale_mapping(%struct.ieee80211_hw* %429, i32 %430)
  %432 = trunc i64 %431 to i32
  %433 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %434 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %433, i32 0, i32 11
  store i32 %432, i32* %434, align 8
  br label %448

435:                                              ; preds = %425
  %436 = load i32, i32* %22, align 4
  %437 = icmp ne i32 %436, 0
  br i1 %437, label %438, label %447

438:                                              ; preds = %435
  %439 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %8, align 8
  %440 = load i32, i32* %22, align 4
  %441 = load i32, i32* %28, align 4
  %442 = sdiv i32 %441, %440
  store i32 %442, i32* %28, align 4
  %443 = call i64 @rtl_signal_scale_mapping(%struct.ieee80211_hw* %439, i32 %442)
  %444 = trunc i64 %443 to i32
  %445 = load %struct.rtl_stats*, %struct.rtl_stats** %9, align 8
  %446 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %445, i32 0, i32 11
  store i32 %444, i32* %446, align 8
  br label %447

447:                                              ; preds = %438, %435
  br label %448

448:                                              ; preds = %447, %428
  %449 = load %struct.phy_status_rpt*, %struct.phy_status_rpt** %18, align 8
  %450 = getelementptr inbounds %struct.phy_status_rpt, %struct.phy_status_rpt* %449, i32 0, i32 2
  %451 = load i32, i32* %450, align 4
  %452 = load %struct.rtl_dm*, %struct.rtl_dm** %19, align 8
  %453 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %452, i32 0, i32 0
  %454 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %453, i32 0, i32 2
  store i32 %451, i32* %454, align 4
  %455 = load %struct.phy_status_rpt*, %struct.phy_status_rpt** %18, align 8
  %456 = getelementptr inbounds %struct.phy_status_rpt, %struct.phy_status_rpt* %455, i32 0, i32 1
  %457 = load i32, i32* %456, align 4
  %458 = load %struct.rtl_dm*, %struct.rtl_dm** %19, align 8
  %459 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %458, i32 0, i32 0
  %460 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %459, i32 0, i32 1
  store i32 %457, i32* %460, align 4
  %461 = load %struct.phy_status_rpt*, %struct.phy_status_rpt** %18, align 8
  %462 = getelementptr inbounds %struct.phy_status_rpt, %struct.phy_status_rpt* %461, i32 0, i32 0
  %463 = load i32, i32* %462, align 4
  %464 = load %struct.rtl_dm*, %struct.rtl_dm** %19, align 8
  %465 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %464, i32 0, i32 0
  %466 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %465, i32 0, i32 0
  store i32 %463, i32* %466, align 4
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_ps_ctl* @rtl_psc(%struct.rtl_priv*) #1

declare dso_local %struct.rtl_dm* @rtl_dm(%struct.rtl_priv*) #1

declare dso_local i64 @rtl_get_bbreg(%struct.ieee80211_hw*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @rtl_query_rxpwrpercentage(i32) #1

declare dso_local i32 @rtl_evm_db_to_percentage(i32) #1

declare dso_local i64 @rtl_signal_scale_mapping(%struct.ieee80211_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
