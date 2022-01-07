; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723be/extr_dm.c_rtl8723be_dm_dig.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723be/extr_dm.c_rtl8723be_dm_dig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_4__, %struct.TYPE_3__, %struct.dig_t }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @rtl8723be_dm_dig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8723be_dm_dig(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.dig_t*, align 8
  %5 = alloca %struct.rtl_mac*, align 8
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
  %16 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %17 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %16, i32 0, i32 2
  store %struct.dig_t* %17, %struct.dig_t** %4, align 8
  %18 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %19 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %18)
  %20 = call %struct.rtl_mac* @rtl_mac(%struct.rtl_priv* %19)
  store %struct.rtl_mac* %20, %struct.rtl_mac** %5, align 8
  %21 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %22 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %12, align 4
  %24 = load %struct.rtl_mac*, %struct.rtl_mac** %5, align 8
  %25 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %1
  br label %395

29:                                               ; preds = %1
  %30 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %31 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %6, align 4
  %33 = load %struct.rtl_mac*, %struct.rtl_mac** %5, align 8
  %34 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @MAC80211_LINKED, align 8
  %37 = icmp sge i64 %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %29
  %39 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %40 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  br label %44

44:                                               ; preds = %38, %29
  %45 = phi i1 [ false, %29 ], [ %43, %38 ]
  %46 = zext i1 %45 to i32
  store i32 %46, i32* %8, align 4
  %47 = load %struct.rtl_mac*, %struct.rtl_mac** %5, align 8
  %48 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @MAC80211_LINKED, align 8
  %51 = icmp slt i64 %49, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %44
  %53 = load %struct.dig_t*, %struct.dig_t** %4, align 8
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
  %62 = load %struct.rtl_mac*, %struct.rtl_mac** %5, align 8
  %63 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @MAC80211_LINKED, align 8
  %66 = icmp sge i64 %64, %65
  br i1 %66, label %67, label %134

67:                                               ; preds = %57
  %68 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %69 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %70, 10
  %72 = load i32, i32* %10, align 4
  %73 = icmp sgt i32 %71, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %67
  %75 = load i32, i32* %10, align 4
  %76 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %77 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %76, i32 0, i32 4
  store i32 %75, i32* %77, align 4
  br label %97

78:                                               ; preds = %67
  %79 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %80 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 %81, 10
  %83 = load i32, i32* %11, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %89

85:                                               ; preds = %78
  %86 = load i32, i32* %11, align 4
  %87 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %88 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %87, i32 0, i32 4
  store i32 %86, i32* %88, align 4
  br label %96

89:                                               ; preds = %78
  %90 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %91 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = add nsw i32 %92, 10
  %94 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %95 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %94, i32 0, i32 4
  store i32 %93, i32* %95, align 4
  br label %96

96:                                               ; preds = %89, %85
  br label %97

97:                                               ; preds = %96, %74
  %98 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %99 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %131

103:                                              ; preds = %97
  store i32 12, i32* %13, align 4
  %104 = load %struct.dig_t*, %struct.dig_t** %4, align 8
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
  %114 = load %struct.dig_t*, %struct.dig_t** %4, align 8
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
  %124 = load %struct.dig_t*, %struct.dig_t** %4, align 8
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
  %136 = load %struct.dig_t*, %struct.dig_t** %4, align 8
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
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = icmp sgt i32 %147, 10000
  br i1 %148, label %149, label %202

149:                                              ; preds = %143
  %150 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %151 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %150, i32 0, i32 5
  %152 = load i32, i32* %151, align 4
  %153 = icmp ne i32 %152, 3
  br i1 %153, label %154, label %159

154:                                              ; preds = %149
  %155 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %156 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %155, i32 0, i32 5
  %157 = load i32, i32* %156, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %156, align 4
  br label %159

159:                                              ; preds = %154, %149
  %160 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %161 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %160, i32 0, i32 6
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* %12, align 4
  %164 = icmp slt i32 %162, %163
  br i1 %164, label %165, label %171

165:                                              ; preds = %159
  %166 = load i32, i32* %12, align 4
  %167 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %168 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %167, i32 0, i32 6
  store i32 %166, i32* %168, align 4
  %169 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %170 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %169, i32 0, i32 5
  store i32 1, i32* %170, align 4
  br label %171

171:                                              ; preds = %165, %159
  %172 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %173 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %172, i32 0, i32 5
  %174 = load i32, i32* %173, align 4
  %175 = icmp sge i32 %174, 3
  br i1 %175, label %176, label %201

176:                                              ; preds = %171
  %177 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %178 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %177, i32 0, i32 6
  %179 = load i32, i32* %178, align 4
  %180 = add nsw i32 %179, 1
  %181 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %182 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %181, i32 0, i32 4
  %183 = load i32, i32* %182, align 4
  %184 = icmp sgt i32 %180, %183
  br i1 %184, label %185, label %191

185:                                              ; preds = %176
  %186 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %187 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %186, i32 0, i32 4
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %190 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %189, i32 0, i32 7
  store i32 %188, i32* %190, align 4
  br label %198

191:                                              ; preds = %176
  %192 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %193 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %192, i32 0, i32 6
  %194 = load i32, i32* %193, align 4
  %195 = add nsw i32 %194, 1
  %196 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %197 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %196, i32 0, i32 7
  store i32 %195, i32* %197, align 4
  br label %198

198:                                              ; preds = %191, %185
  %199 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %200 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %199, i32 0, i32 8
  store i32 3600, i32* %200, align 4
  br label %201

201:                                              ; preds = %198, %171
  br label %248

202:                                              ; preds = %143
  %203 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %204 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %203, i32 0, i32 8
  %205 = load i32, i32* %204, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %212

207:                                              ; preds = %202
  %208 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %209 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %208, i32 0, i32 8
  %210 = load i32, i32* %209, align 4
  %211 = add nsw i32 %210, -1
  store i32 %211, i32* %209, align 4
  br label %247

212:                                              ; preds = %202
  %213 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %214 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %213, i32 0, i32 5
  %215 = load i32, i32* %214, align 4
  %216 = icmp slt i32 %215, 3
  br i1 %216, label %217, label %243

217:                                              ; preds = %212
  %218 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %219 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %218, i32 0, i32 6
  %220 = load i32, i32* %219, align 4
  %221 = sub nsw i32 %220, 1
  %222 = load i32, i32* %6, align 4
  %223 = icmp slt i32 %221, %222
  br i1 %223, label %224, label %231

224:                                              ; preds = %217
  %225 = load i32, i32* %6, align 4
  %226 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %227 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %226, i32 0, i32 6
  store i32 %225, i32* %227, align 4
  %228 = load i32, i32* %6, align 4
  %229 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %230 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %229, i32 0, i32 7
  store i32 %228, i32* %230, align 4
  br label %242

231:                                              ; preds = %217
  %232 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %233 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %232, i32 0, i32 6
  %234 = load i32, i32* %233, align 4
  %235 = add nsw i32 %234, -1
  store i32 %235, i32* %233, align 4
  %236 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %237 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %236, i32 0, i32 6
  %238 = load i32, i32* %237, align 4
  %239 = add nsw i32 %238, 1
  %240 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %241 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %240, i32 0, i32 7
  store i32 %239, i32* %241, align 4
  br label %242

242:                                              ; preds = %231, %224
  br label %246

243:                                              ; preds = %212
  %244 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %245 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %244, i32 0, i32 5
  store i32 0, i32* %245, align 4
  br label %246

246:                                              ; preds = %243, %242
  br label %247

247:                                              ; preds = %246, %207
  br label %248

248:                                              ; preds = %247, %201
  %249 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %250 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %249, i32 0, i32 7
  %251 = load i32, i32* %250, align 4
  %252 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %253 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %252, i32 0, i32 4
  %254 = load i32, i32* %253, align 4
  %255 = icmp sgt i32 %251, %254
  br i1 %255, label %256, label %262

256:                                              ; preds = %248
  %257 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %258 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %257, i32 0, i32 4
  %259 = load i32, i32* %258, align 4
  %260 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %261 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %260, i32 0, i32 7
  store i32 %259, i32* %261, align 4
  br label %262

262:                                              ; preds = %256, %248
  %263 = load %struct.rtl_mac*, %struct.rtl_mac** %5, align 8
  %264 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %263, i32 0, i32 0
  %265 = load i64, i64* %264, align 8
  %266 = load i64, i64* @MAC80211_LINKED, align 8
  %267 = icmp sge i64 %265, %266
  br i1 %267, label %268, label %320

268:                                              ; preds = %262
  %269 = load i32, i32* %8, align 4
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %286

271:                                              ; preds = %268
  %272 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %273 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %272, i32 0, i32 3
  %274 = load i32, i32* %273, align 4
  %275 = load i32, i32* %7, align 4
  %276 = icmp sle i32 %274, %275
  br i1 %276, label %277, label %281

277:                                              ; preds = %271
  %278 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %279 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %278, i32 0, i32 3
  %280 = load i32, i32* %279, align 4
  store i32 %280, i32* %12, align 4
  br label %283

281:                                              ; preds = %271
  %282 = load i32, i32* %7, align 4
  store i32 %282, i32* %12, align 4
  br label %283

283:                                              ; preds = %281, %277
  %284 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %285 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %284, i32 0, i32 5
  store i32 0, i32* %285, align 4
  br label %319

286:                                              ; preds = %268
  %287 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %288 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %287, i32 0, i32 0
  %289 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 8
  %291 = load i32, i32* @DM_DIG_FA_TH2, align 4
  %292 = icmp sgt i32 %290, %291
  br i1 %292, label %293, label %296

293:                                              ; preds = %286
  %294 = load i32, i32* %12, align 4
  %295 = add nsw i32 %294, 4
  store i32 %295, i32* %12, align 4
  br label %318

296:                                              ; preds = %286
  %297 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %298 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %297, i32 0, i32 0
  %299 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %298, i32 0, i32 0
  %300 = load i32, i32* %299, align 8
  %301 = load i32, i32* @DM_DIG_FA_TH1, align 4
  %302 = icmp sgt i32 %300, %301
  br i1 %302, label %303, label %306

303:                                              ; preds = %296
  %304 = load i32, i32* %12, align 4
  %305 = add nsw i32 %304, 2
  store i32 %305, i32* %12, align 4
  br label %317

306:                                              ; preds = %296
  %307 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %308 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %307, i32 0, i32 0
  %309 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %308, i32 0, i32 0
  %310 = load i32, i32* %309, align 8
  %311 = load i32, i32* @DM_DIG_FA_TH0, align 4
  %312 = icmp slt i32 %310, %311
  br i1 %312, label %313, label %316

313:                                              ; preds = %306
  %314 = load i32, i32* %12, align 4
  %315 = sub nsw i32 %314, 2
  store i32 %315, i32* %12, align 4
  br label %316

316:                                              ; preds = %313, %306
  br label %317

317:                                              ; preds = %316, %303
  br label %318

318:                                              ; preds = %317, %293
  br label %319

319:                                              ; preds = %318, %283
  br label %358

320:                                              ; preds = %262
  %321 = load i32, i32* %9, align 4
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %327

323:                                              ; preds = %320
  %324 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %325 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %324, i32 0, i32 7
  %326 = load i32, i32* %325, align 4
  store i32 %326, i32* %12, align 4
  br label %357

327:                                              ; preds = %320
  %328 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %329 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %328, i32 0, i32 0
  %330 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %329, i32 0, i32 0
  %331 = load i32, i32* %330, align 8
  %332 = icmp sgt i32 %331, 10000
  br i1 %332, label %333, label %336

333:                                              ; preds = %327
  %334 = load i32, i32* %12, align 4
  %335 = add nsw i32 %334, 4
  store i32 %335, i32* %12, align 4
  br label %356

336:                                              ; preds = %327
  %337 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %338 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %337, i32 0, i32 0
  %339 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %338, i32 0, i32 0
  %340 = load i32, i32* %339, align 8
  %341 = icmp sgt i32 %340, 8000
  br i1 %341, label %342, label %345

342:                                              ; preds = %336
  %343 = load i32, i32* %12, align 4
  %344 = add nsw i32 %343, 2
  store i32 %344, i32* %12, align 4
  br label %355

345:                                              ; preds = %336
  %346 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %347 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %346, i32 0, i32 0
  %348 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %347, i32 0, i32 0
  %349 = load i32, i32* %348, align 8
  %350 = icmp slt i32 %349, 500
  br i1 %350, label %351, label %354

351:                                              ; preds = %345
  %352 = load i32, i32* %12, align 4
  %353 = sub nsw i32 %352, 2
  store i32 %353, i32* %12, align 4
  br label %354

354:                                              ; preds = %351, %345
  br label %355

355:                                              ; preds = %354, %342
  br label %356

356:                                              ; preds = %355, %333
  br label %357

357:                                              ; preds = %356, %323
  br label %358

358:                                              ; preds = %357, %319
  %359 = load i32, i32* %12, align 4
  %360 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %361 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %360, i32 0, i32 4
  %362 = load i32, i32* %361, align 4
  %363 = icmp sgt i32 %359, %362
  br i1 %363, label %364, label %368

364:                                              ; preds = %358
  %365 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %366 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %365, i32 0, i32 4
  %367 = load i32, i32* %366, align 4
  store i32 %367, i32* %12, align 4
  br label %379

368:                                              ; preds = %358
  %369 = load i32, i32* %12, align 4
  %370 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %371 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %370, i32 0, i32 7
  %372 = load i32, i32* %371, align 4
  %373 = icmp slt i32 %369, %372
  br i1 %373, label %374, label %378

374:                                              ; preds = %368
  %375 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %376 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %375, i32 0, i32 7
  %377 = load i32, i32* %376, align 4
  store i32 %377, i32* %12, align 4
  br label %378

378:                                              ; preds = %374, %368
  br label %379

379:                                              ; preds = %378, %364
  %380 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %381 = load i32, i32* %12, align 4
  %382 = call i32 @rtl8723be_dm_write_dig(%struct.ieee80211_hw* %380, i32 %381)
  %383 = load %struct.rtl_mac*, %struct.rtl_mac** %5, align 8
  %384 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %383, i32 0, i32 0
  %385 = load i64, i64* %384, align 8
  %386 = load i64, i64* @MAC80211_LINKED, align 8
  %387 = icmp sge i64 %385, %386
  %388 = zext i1 %387 to i64
  %389 = select i1 %387, i32 1, i32 0
  %390 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %391 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %390, i32 0, i32 2
  store i32 %389, i32* %391, align 4
  %392 = load i32, i32* %6, align 4
  %393 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %394 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %393, i32 0, i32 1
  store i32 %392, i32* %394, align 4
  br label %395

395:                                              ; preds = %379, %28
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_mac* @rtl_mac(%struct.rtl_priv*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*) #1

declare dso_local i32 @rtl8723be_dm_write_dig(%struct.ieee80211_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
