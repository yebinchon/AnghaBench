; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ee/extr_dm.c_rtl92ee_dm_dig.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ee/extr_dm.c_rtl92ee_dm_dig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.dig_t }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.dig_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rtl_mac = type { i64, i64 }

@MAC80211_LINKED = common dso_local global i64 0, align 8
@DM_DIG_MIN = common dso_local global i32 0, align 4
@DM_DIG_MAX_AP = common dso_local global i32 0, align 4
@COMP_DIG = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"no link\0A\00", align 1
@DM_DIG_FA_TH2 = common dso_local global i32 0, align 4
@DM_DIG_FA_TH1 = common dso_local global i32 0, align 4
@DM_DIG_FA_TH0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @rtl92ee_dm_dig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl92ee_dm_dig(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.rtl_mac*, align 8
  %5 = alloca %struct.dig_t*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %14 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %15 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %14)
  store %struct.rtl_priv* %15, %struct.rtl_priv** %3, align 8
  %16 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %17 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %16)
  %18 = call %struct.rtl_mac* @rtl_mac(%struct.rtl_priv* %17)
  store %struct.rtl_mac* %18, %struct.rtl_mac** %4, align 8
  %19 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %20 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %19, i32 0, i32 2
  store %struct.dig_t* %20, %struct.dig_t** %5, align 8
  %21 = load %struct.dig_t*, %struct.dig_t** %5, align 8
  %22 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %12, align 4
  %24 = load %struct.rtl_mac*, %struct.rtl_mac** %4, align 8
  %25 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %1
  br label %423

29:                                               ; preds = %1
  %30 = load %struct.dig_t*, %struct.dig_t** %5, align 8
  %31 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %6, align 4
  %33 = load %struct.rtl_mac*, %struct.rtl_mac** %4, align 8
  %34 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @MAC80211_LINKED, align 8
  %37 = icmp sge i64 %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %29
  %39 = load %struct.dig_t*, %struct.dig_t** %5, align 8
  %40 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  br label %44

44:                                               ; preds = %38, %29
  %45 = phi i1 [ false, %29 ], [ %43, %38 ]
  %46 = zext i1 %45 to i32
  store i32 %46, i32* %8, align 4
  %47 = load %struct.rtl_mac*, %struct.rtl_mac** %4, align 8
  %48 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @MAC80211_LINKED, align 8
  %51 = icmp slt i64 %49, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %44
  %53 = load %struct.dig_t*, %struct.dig_t** %5, align 8
  %54 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br label %57

57:                                               ; preds = %52, %44
  %58 = phi i1 [ false, %44 ], [ %56, %52 ]
  %59 = zext i1 %58 to i32
  store i32 %59, i32* %9, align 4
  store i32 90, i32* %10, align 4
  %60 = load i32, i32* @DM_DIG_MIN, align 4
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* @DM_DIG_MAX_AP, align 4
  store i32 %61, i32* %7, align 4
  %62 = load %struct.rtl_mac*, %struct.rtl_mac** %4, align 8
  %63 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @MAC80211_LINKED, align 8
  %66 = icmp sge i64 %64, %65
  br i1 %66, label %67, label %134

67:                                               ; preds = %57
  %68 = load %struct.dig_t*, %struct.dig_t** %5, align 8
  %69 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %70, 10
  %72 = load i32, i32* %10, align 4
  %73 = icmp sgt i32 %71, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %67
  %75 = load i32, i32* %10, align 4
  %76 = load %struct.dig_t*, %struct.dig_t** %5, align 8
  %77 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %76, i32 0, i32 4
  store i32 %75, i32* %77, align 4
  br label %97

78:                                               ; preds = %67
  %79 = load %struct.dig_t*, %struct.dig_t** %5, align 8
  %80 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 %81, 10
  %83 = load i32, i32* %11, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %89

85:                                               ; preds = %78
  %86 = load i32, i32* %11, align 4
  %87 = load %struct.dig_t*, %struct.dig_t** %5, align 8
  %88 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %87, i32 0, i32 4
  store i32 %86, i32* %88, align 4
  br label %96

89:                                               ; preds = %78
  %90 = load %struct.dig_t*, %struct.dig_t** %5, align 8
  %91 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = add nsw i32 %92, 10
  %94 = load %struct.dig_t*, %struct.dig_t** %5, align 8
  %95 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %94, i32 0, i32 4
  store i32 %93, i32* %95, align 4
  br label %96

96:                                               ; preds = %89, %85
  br label %97

97:                                               ; preds = %96, %74
  %98 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %99 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %131

103:                                              ; preds = %97
  store i32 0, i32* %13, align 4
  %104 = load %struct.dig_t*, %struct.dig_t** %5, align 8
  %105 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %13, align 4
  %108 = sub nsw i32 %106, %107
  %109 = load i32, i32* %11, align 4
  %110 = icmp slt i32 %108, %109
  br i1 %110, label %111, label %113

111:                                              ; preds = %103
  %112 = load i32, i32* %11, align 4
  store i32 %112, i32* %6, align 4
  br label %130

113:                                              ; preds = %103
  %114 = load %struct.dig_t*, %struct.dig_t** %5, align 8
  %115 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* %13, align 4
  %118 = sub nsw i32 %116, %117
  %119 = load i32, i32* %7, align 4
  %120 = icmp sgt i32 %118, %119
  br i1 %120, label %121, label %123

121:                                              ; preds = %113
  %122 = load i32, i32* %7, align 4
  store i32 %122, i32* %6, align 4
  br label %129

123:                                              ; preds = %113
  %124 = load %struct.dig_t*, %struct.dig_t** %5, align 8
  %125 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* %13, align 4
  %128 = sub nsw i32 %126, %127
  store i32 %128, i32* %6, align 4
  br label %129

129:                                              ; preds = %123, %121
  br label %130

130:                                              ; preds = %129, %111
  br label %133

131:                                              ; preds = %97
  %132 = load i32, i32* %11, align 4
  store i32 %132, i32* %6, align 4
  br label %133

133:                                              ; preds = %131, %130
  br label %143

134:                                              ; preds = %57
  %135 = load i32, i32* %10, align 4
  %136 = load %struct.dig_t*, %struct.dig_t** %5, align 8
  %137 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %136, i32 0, i32 4
  store i32 %135, i32* %137, align 4
  %138 = load i32, i32* %11, align 4
  store i32 %138, i32* %6, align 4
  %139 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %140 = load i32, i32* @COMP_DIG, align 4
  %141 = load i32, i32* @DBG_LOUD, align 4
  %142 = call i32 @RT_TRACE(%struct.rtl_priv* %139, i32 %140, i32 %141, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %143

143:                                              ; preds = %134, %133
  %144 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %145 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = icmp sgt i32 %147, 10000
  br i1 %148, label %149, label %202

149:                                              ; preds = %143
  %150 = load %struct.dig_t*, %struct.dig_t** %5, align 8
  %151 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %150, i32 0, i32 5
  %152 = load i32, i32* %151, align 4
  %153 = icmp ne i32 %152, 3
  br i1 %153, label %154, label %159

154:                                              ; preds = %149
  %155 = load %struct.dig_t*, %struct.dig_t** %5, align 8
  %156 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %155, i32 0, i32 5
  %157 = load i32, i32* %156, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %156, align 4
  br label %159

159:                                              ; preds = %154, %149
  %160 = load %struct.dig_t*, %struct.dig_t** %5, align 8
  %161 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %160, i32 0, i32 6
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* %12, align 4
  %164 = icmp slt i32 %162, %163
  br i1 %164, label %165, label %171

165:                                              ; preds = %159
  %166 = load i32, i32* %12, align 4
  %167 = load %struct.dig_t*, %struct.dig_t** %5, align 8
  %168 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %167, i32 0, i32 6
  store i32 %166, i32* %168, align 4
  %169 = load %struct.dig_t*, %struct.dig_t** %5, align 8
  %170 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %169, i32 0, i32 5
  store i32 1, i32* %170, align 4
  br label %171

171:                                              ; preds = %165, %159
  %172 = load %struct.dig_t*, %struct.dig_t** %5, align 8
  %173 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %172, i32 0, i32 5
  %174 = load i32, i32* %173, align 4
  %175 = icmp sge i32 %174, 3
  br i1 %175, label %176, label %201

176:                                              ; preds = %171
  %177 = load %struct.dig_t*, %struct.dig_t** %5, align 8
  %178 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %177, i32 0, i32 6
  %179 = load i32, i32* %178, align 4
  %180 = add nsw i32 %179, 1
  %181 = load %struct.dig_t*, %struct.dig_t** %5, align 8
  %182 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %181, i32 0, i32 4
  %183 = load i32, i32* %182, align 4
  %184 = icmp sgt i32 %180, %183
  br i1 %184, label %185, label %191

185:                                              ; preds = %176
  %186 = load %struct.dig_t*, %struct.dig_t** %5, align 8
  %187 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %186, i32 0, i32 4
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.dig_t*, %struct.dig_t** %5, align 8
  %190 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %189, i32 0, i32 7
  store i32 %188, i32* %190, align 4
  br label %198

191:                                              ; preds = %176
  %192 = load %struct.dig_t*, %struct.dig_t** %5, align 8
  %193 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %192, i32 0, i32 6
  %194 = load i32, i32* %193, align 4
  %195 = add nsw i32 %194, 1
  %196 = load %struct.dig_t*, %struct.dig_t** %5, align 8
  %197 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %196, i32 0, i32 7
  store i32 %195, i32* %197, align 4
  br label %198

198:                                              ; preds = %191, %185
  %199 = load %struct.dig_t*, %struct.dig_t** %5, align 8
  %200 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %199, i32 0, i32 8
  store i32 3600, i32* %200, align 4
  br label %201

201:                                              ; preds = %198, %171
  br label %248

202:                                              ; preds = %143
  %203 = load %struct.dig_t*, %struct.dig_t** %5, align 8
  %204 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %203, i32 0, i32 8
  %205 = load i32, i32* %204, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %212

207:                                              ; preds = %202
  %208 = load %struct.dig_t*, %struct.dig_t** %5, align 8
  %209 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %208, i32 0, i32 8
  %210 = load i32, i32* %209, align 4
  %211 = add nsw i32 %210, -1
  store i32 %211, i32* %209, align 4
  br label %247

212:                                              ; preds = %202
  %213 = load %struct.dig_t*, %struct.dig_t** %5, align 8
  %214 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %213, i32 0, i32 5
  %215 = load i32, i32* %214, align 4
  %216 = icmp slt i32 %215, 3
  br i1 %216, label %217, label %243

217:                                              ; preds = %212
  %218 = load %struct.dig_t*, %struct.dig_t** %5, align 8
  %219 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %218, i32 0, i32 6
  %220 = load i32, i32* %219, align 4
  %221 = sub nsw i32 %220, 1
  %222 = load i32, i32* %6, align 4
  %223 = icmp slt i32 %221, %222
  br i1 %223, label %224, label %231

224:                                              ; preds = %217
  %225 = load i32, i32* %6, align 4
  %226 = load %struct.dig_t*, %struct.dig_t** %5, align 8
  %227 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %226, i32 0, i32 6
  store i32 %225, i32* %227, align 4
  %228 = load i32, i32* %6, align 4
  %229 = load %struct.dig_t*, %struct.dig_t** %5, align 8
  %230 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %229, i32 0, i32 7
  store i32 %228, i32* %230, align 4
  br label %242

231:                                              ; preds = %217
  %232 = load %struct.dig_t*, %struct.dig_t** %5, align 8
  %233 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %232, i32 0, i32 6
  %234 = load i32, i32* %233, align 4
  %235 = add nsw i32 %234, -1
  store i32 %235, i32* %233, align 4
  %236 = load %struct.dig_t*, %struct.dig_t** %5, align 8
  %237 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %236, i32 0, i32 6
  %238 = load i32, i32* %237, align 4
  %239 = add nsw i32 %238, 1
  %240 = load %struct.dig_t*, %struct.dig_t** %5, align 8
  %241 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %240, i32 0, i32 7
  store i32 %239, i32* %241, align 4
  br label %242

242:                                              ; preds = %231, %224
  br label %246

243:                                              ; preds = %212
  %244 = load %struct.dig_t*, %struct.dig_t** %5, align 8
  %245 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %244, i32 0, i32 5
  store i32 0, i32* %245, align 4
  br label %246

246:                                              ; preds = %243, %242
  br label %247

247:                                              ; preds = %246, %207
  br label %248

248:                                              ; preds = %247, %201
  %249 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %250 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %249, i32 0, i32 1
  %251 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = icmp slt i32 %253, 5
  br i1 %254, label %255, label %259

255:                                              ; preds = %248
  %256 = load i32, i32* %11, align 4
  %257 = load %struct.dig_t*, %struct.dig_t** %5, align 8
  %258 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %257, i32 0, i32 7
  store i32 %256, i32* %258, align 4
  br label %259

259:                                              ; preds = %255, %248
  %260 = load %struct.dig_t*, %struct.dig_t** %5, align 8
  %261 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %260, i32 0, i32 7
  %262 = load i32, i32* %261, align 4
  %263 = load %struct.dig_t*, %struct.dig_t** %5, align 8
  %264 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %263, i32 0, i32 4
  %265 = load i32, i32* %264, align 4
  %266 = icmp sgt i32 %262, %265
  br i1 %266, label %267, label %273

267:                                              ; preds = %259
  %268 = load %struct.dig_t*, %struct.dig_t** %5, align 8
  %269 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %268, i32 0, i32 4
  %270 = load i32, i32* %269, align 4
  %271 = load %struct.dig_t*, %struct.dig_t** %5, align 8
  %272 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %271, i32 0, i32 7
  store i32 %270, i32* %272, align 4
  br label %273

273:                                              ; preds = %267, %259
  %274 = load %struct.rtl_mac*, %struct.rtl_mac** %4, align 8
  %275 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %274, i32 0, i32 0
  %276 = load i64, i64* %275, align 8
  %277 = load i64, i64* @MAC80211_LINKED, align 8
  %278 = icmp sge i64 %276, %277
  br i1 %278, label %279, label %349

279:                                              ; preds = %273
  %280 = load i32, i32* %8, align 4
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %297

282:                                              ; preds = %279
  %283 = load %struct.dig_t*, %struct.dig_t** %5, align 8
  %284 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %283, i32 0, i32 3
  %285 = load i32, i32* %284, align 4
  %286 = load i32, i32* %7, align 4
  %287 = icmp sle i32 %285, %286
  br i1 %287, label %288, label %292

288:                                              ; preds = %282
  %289 = load %struct.dig_t*, %struct.dig_t** %5, align 8
  %290 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %289, i32 0, i32 3
  %291 = load i32, i32* %290, align 4
  store i32 %291, i32* %12, align 4
  br label %294

292:                                              ; preds = %282
  %293 = load i32, i32* %7, align 4
  store i32 %293, i32* %12, align 4
  br label %294

294:                                              ; preds = %292, %288
  %295 = load %struct.dig_t*, %struct.dig_t** %5, align 8
  %296 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %295, i32 0, i32 5
  store i32 0, i32* %296, align 4
  br label %348

297:                                              ; preds = %279
  %298 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %299 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %298, i32 0, i32 0
  %300 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 8
  %302 = load i32, i32* @DM_DIG_FA_TH2, align 4
  %303 = icmp sgt i32 %301, %302
  br i1 %303, label %304, label %307

304:                                              ; preds = %297
  %305 = load i32, i32* %12, align 4
  %306 = add nsw i32 %305, 4
  store i32 %306, i32* %12, align 4
  br label %329

307:                                              ; preds = %297
  %308 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %309 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %308, i32 0, i32 0
  %310 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 8
  %312 = load i32, i32* @DM_DIG_FA_TH1, align 4
  %313 = icmp sgt i32 %311, %312
  br i1 %313, label %314, label %317

314:                                              ; preds = %307
  %315 = load i32, i32* %12, align 4
  %316 = add nsw i32 %315, 2
  store i32 %316, i32* %12, align 4
  br label %328

317:                                              ; preds = %307
  %318 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %319 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %318, i32 0, i32 0
  %320 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %319, i32 0, i32 0
  %321 = load i32, i32* %320, align 8
  %322 = load i32, i32* @DM_DIG_FA_TH0, align 4
  %323 = icmp slt i32 %321, %322
  br i1 %323, label %324, label %327

324:                                              ; preds = %317
  %325 = load i32, i32* %12, align 4
  %326 = sub nsw i32 %325, 2
  store i32 %326, i32* %12, align 4
  br label %327

327:                                              ; preds = %324, %317
  br label %328

328:                                              ; preds = %327, %314
  br label %329

329:                                              ; preds = %328, %304
  %330 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %331 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %330, i32 0, i32 1
  %332 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %331, i32 0, i32 0
  %333 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %332, i32 0, i32 0
  %334 = load i32, i32* %333, align 8
  %335 = icmp slt i32 %334, 5
  br i1 %335, label %336, label %347

336:                                              ; preds = %329
  %337 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %338 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %337, i32 0, i32 0
  %339 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %338, i32 0, i32 0
  %340 = load i32, i32* %339, align 8
  %341 = load i32, i32* @DM_DIG_FA_TH1, align 4
  %342 = icmp slt i32 %340, %341
  br i1 %342, label %343, label %347

343:                                              ; preds = %336
  %344 = load %struct.dig_t*, %struct.dig_t** %5, align 8
  %345 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %344, i32 0, i32 7
  %346 = load i32, i32* %345, align 4
  store i32 %346, i32* %12, align 4
  br label %347

347:                                              ; preds = %343, %336, %329
  br label %348

348:                                              ; preds = %347, %294
  br label %387

349:                                              ; preds = %273
  %350 = load i32, i32* %9, align 4
  %351 = icmp ne i32 %350, 0
  br i1 %351, label %352, label %356

352:                                              ; preds = %349
  %353 = load %struct.dig_t*, %struct.dig_t** %5, align 8
  %354 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %353, i32 0, i32 7
  %355 = load i32, i32* %354, align 4
  store i32 %355, i32* %12, align 4
  br label %386

356:                                              ; preds = %349
  %357 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %358 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %357, i32 0, i32 0
  %359 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %358, i32 0, i32 0
  %360 = load i32, i32* %359, align 8
  %361 = icmp sgt i32 %360, 10000
  br i1 %361, label %362, label %365

362:                                              ; preds = %356
  %363 = load i32, i32* %12, align 4
  %364 = add nsw i32 %363, 4
  store i32 %364, i32* %12, align 4
  br label %385

365:                                              ; preds = %356
  %366 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %367 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %366, i32 0, i32 0
  %368 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %367, i32 0, i32 0
  %369 = load i32, i32* %368, align 8
  %370 = icmp sgt i32 %369, 8000
  br i1 %370, label %371, label %374

371:                                              ; preds = %365
  %372 = load i32, i32* %12, align 4
  %373 = add nsw i32 %372, 2
  store i32 %373, i32* %12, align 4
  br label %384

374:                                              ; preds = %365
  %375 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %376 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %375, i32 0, i32 0
  %377 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %376, i32 0, i32 0
  %378 = load i32, i32* %377, align 8
  %379 = icmp slt i32 %378, 500
  br i1 %379, label %380, label %383

380:                                              ; preds = %374
  %381 = load i32, i32* %12, align 4
  %382 = sub nsw i32 %381, 2
  store i32 %382, i32* %12, align 4
  br label %383

383:                                              ; preds = %380, %374
  br label %384

384:                                              ; preds = %383, %371
  br label %385

385:                                              ; preds = %384, %362
  br label %386

386:                                              ; preds = %385, %352
  br label %387

387:                                              ; preds = %386, %348
  %388 = load i32, i32* %12, align 4
  %389 = load %struct.dig_t*, %struct.dig_t** %5, align 8
  %390 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %389, i32 0, i32 4
  %391 = load i32, i32* %390, align 4
  %392 = icmp sgt i32 %388, %391
  br i1 %392, label %393, label %397

393:                                              ; preds = %387
  %394 = load %struct.dig_t*, %struct.dig_t** %5, align 8
  %395 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %394, i32 0, i32 4
  %396 = load i32, i32* %395, align 4
  store i32 %396, i32* %12, align 4
  br label %397

397:                                              ; preds = %393, %387
  %398 = load i32, i32* %12, align 4
  %399 = load %struct.dig_t*, %struct.dig_t** %5, align 8
  %400 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %399, i32 0, i32 7
  %401 = load i32, i32* %400, align 4
  %402 = icmp slt i32 %398, %401
  br i1 %402, label %403, label %407

403:                                              ; preds = %397
  %404 = load %struct.dig_t*, %struct.dig_t** %5, align 8
  %405 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %404, i32 0, i32 7
  %406 = load i32, i32* %405, align 4
  store i32 %406, i32* %12, align 4
  br label %407

407:                                              ; preds = %403, %397
  %408 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %409 = load i32, i32* %12, align 4
  %410 = call i32 @rtl92ee_dm_write_dig(%struct.ieee80211_hw* %408, i32 %409)
  %411 = load %struct.rtl_mac*, %struct.rtl_mac** %4, align 8
  %412 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %411, i32 0, i32 0
  %413 = load i64, i64* %412, align 8
  %414 = load i64, i64* @MAC80211_LINKED, align 8
  %415 = icmp sge i64 %413, %414
  %416 = zext i1 %415 to i64
  %417 = select i1 %415, i32 1, i32 0
  %418 = load %struct.dig_t*, %struct.dig_t** %5, align 8
  %419 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %418, i32 0, i32 2
  store i32 %417, i32* %419, align 4
  %420 = load i32, i32* %6, align 4
  %421 = load %struct.dig_t*, %struct.dig_t** %5, align 8
  %422 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %421, i32 0, i32 1
  store i32 %420, i32* %422, align 4
  br label %423

423:                                              ; preds = %407, %28
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_mac* @rtl_mac(%struct.rtl_priv*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*) #1

declare dso_local i32 @rtl92ee_dm_write_dig(%struct.ieee80211_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
