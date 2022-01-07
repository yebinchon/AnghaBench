; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192c/extr_dm_common.c_rtl92c_dm_ctrl_initgain_by_rssi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192c/extr_dm_common.c_rtl92c_dm_ctrl_initgain_by_rssi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_2__, %struct.dig_t }
%struct.TYPE_2__ = type { i32 }
%struct.dig_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@DM_DIG_MIN = common dso_local global i32 0, align 4
@DM_DIG_BACKOFF_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @rtl92c_dm_ctrl_initgain_by_rssi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl92c_dm_ctrl_initgain_by_rssi(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.dig_t*, align 8
  %5 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %6 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %7 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %6)
  store %struct.rtl_priv* %7, %struct.rtl_priv** %3, align 8
  %8 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %9 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %8, i32 0, i32 1
  store %struct.dig_t* %9, %struct.dig_t** %4, align 8
  %10 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %11 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp sgt i32 %13, 10000
  br i1 %14, label %15, label %66

15:                                               ; preds = %1
  %16 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %17 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %17, align 4
  %20 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %21 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %24 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %35

27:                                               ; preds = %15
  %28 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %29 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %32 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %34 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %33, i32 0, i32 0
  store i32 1, i32* %34, align 4
  br label %35

35:                                               ; preds = %27, %15
  %36 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %37 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp sge i32 %38, 3
  br i1 %39, label %40, label %65

40:                                               ; preds = %35
  %41 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %42 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, 1
  %45 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %46 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = icmp sgt i32 %44, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %40
  %50 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %51 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %54 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %53, i32 0, i32 4
  store i32 %52, i32* %54, align 4
  br label %62

55:                                               ; preds = %40
  %56 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %57 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, 1
  %60 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %61 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %60, i32 0, i32 4
  store i32 %59, i32* %61, align 4
  br label %62

62:                                               ; preds = %55, %49
  %63 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %64 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %63, i32 0, i32 5
  store i32 3600, i32* %64, align 4
  br label %65

65:                                               ; preds = %62, %35
  br label %118

66:                                               ; preds = %1
  %67 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %68 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %67, i32 0, i32 5
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %66
  %72 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %73 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %72, i32 0, i32 5
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %74, -1
  store i32 %75, i32* %73, align 4
  br label %117

76:                                               ; preds = %66
  %77 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %78 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %107

81:                                               ; preds = %76
  %82 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %83 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = sub nsw i32 %84, 1
  %86 = load i32, i32* @DM_DIG_MIN, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %95

88:                                               ; preds = %81
  %89 = load i32, i32* @DM_DIG_MIN, align 4
  %90 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %91 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 4
  %92 = load i32, i32* @DM_DIG_MIN, align 4
  %93 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %94 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %93, i32 0, i32 4
  store i32 %92, i32* %94, align 4
  br label %106

95:                                               ; preds = %81
  %96 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %97 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = add nsw i32 %98, -1
  store i32 %99, i32* %97, align 4
  %100 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %101 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %102, 1
  %104 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %105 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %104, i32 0, i32 4
  store i32 %103, i32* %105, align 4
  br label %106

106:                                              ; preds = %95, %88
  br label %116

107:                                              ; preds = %76
  %108 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %109 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = icmp eq i32 %110, 3
  br i1 %111, label %112, label %115

112:                                              ; preds = %107
  %113 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %114 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %113, i32 0, i32 0
  store i32 0, i32* %114, align 4
  br label %115

115:                                              ; preds = %112, %107
  br label %116

116:                                              ; preds = %115, %106
  br label %117

117:                                              ; preds = %116, %71
  br label %118

118:                                              ; preds = %117, %65
  %119 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %120 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = icmp slt i32 %122, 250
  br i1 %123, label %124, label %197

124:                                              ; preds = %118
  %125 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %126 = call i32 @rtl_read_byte(%struct.rtl_priv* %125, i32 1277)
  %127 = and i32 %126, 1
  store i32 %127, i32* %5, align 4
  %128 = load i32, i32* %5, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %192, label %130

130:                                              ; preds = %124
  %131 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %132 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %136 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %135, i32 0, i32 6
  %137 = load i32, i32* %136, align 4
  %138 = icmp sgt i32 %134, %137
  br i1 %138, label %139, label %160

139:                                              ; preds = %130
  %140 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %141 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %140, i32 0, i32 7
  %142 = load i32, i32* %141, align 4
  %143 = sub nsw i32 %142, 2
  %144 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %145 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %144, i32 0, i32 8
  %146 = load i32, i32* %145, align 4
  %147 = icmp slt i32 %143, %146
  br i1 %147, label %148, label %154

148:                                              ; preds = %139
  %149 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %150 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %149, i32 0, i32 8
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %153 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %152, i32 0, i32 7
  store i32 %151, i32* %153, align 4
  br label %159

154:                                              ; preds = %139
  %155 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %156 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %155, i32 0, i32 7
  %157 = load i32, i32* %156, align 4
  %158 = sub nsw i32 %157, 2
  store i32 %158, i32* %156, align 4
  br label %159

159:                                              ; preds = %154, %148
  br label %191

160:                                              ; preds = %130
  %161 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %162 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %166 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %165, i32 0, i32 6
  %167 = load i32, i32* %166, align 4
  %168 = icmp slt i32 %164, %167
  br i1 %168, label %169, label %190

169:                                              ; preds = %160
  %170 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %171 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %170, i32 0, i32 7
  %172 = load i32, i32* %171, align 4
  %173 = add nsw i32 %172, 2
  %174 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %175 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %174, i32 0, i32 9
  %176 = load i32, i32* %175, align 4
  %177 = icmp sgt i32 %173, %176
  br i1 %177, label %178, label %184

178:                                              ; preds = %169
  %179 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %180 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %179, i32 0, i32 9
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %183 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %182, i32 0, i32 7
  store i32 %181, i32* %183, align 4
  br label %189

184:                                              ; preds = %169
  %185 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %186 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %185, i32 0, i32 7
  %187 = load i32, i32* %186, align 4
  %188 = add nsw i32 %187, 2
  store i32 %188, i32* %186, align 4
  br label %189

189:                                              ; preds = %184, %178
  br label %190

190:                                              ; preds = %189, %160
  br label %191

191:                                              ; preds = %190, %159
  br label %196

192:                                              ; preds = %124
  %193 = load i32, i32* @DM_DIG_BACKOFF_DEFAULT, align 4
  %194 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %195 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %194, i32 0, i32 7
  store i32 %193, i32* %195, align 4
  br label %196

196:                                              ; preds = %192, %191
  br label %239

197:                                              ; preds = %118
  %198 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %199 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = icmp sgt i32 %201, 1000
  br i1 %202, label %203, label %210

203:                                              ; preds = %197
  %204 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %205 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %204, i32 0, i32 10
  %206 = load i32, i32* %205, align 4
  %207 = add nsw i32 %206, 2
  %208 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %209 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %208, i32 0, i32 2
  store i32 %207, i32* %209, align 4
  br label %238

210:                                              ; preds = %197
  %211 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %212 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = icmp sgt i32 %214, 750
  br i1 %215, label %216, label %223

216:                                              ; preds = %210
  %217 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %218 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %217, i32 0, i32 10
  %219 = load i32, i32* %218, align 4
  %220 = add nsw i32 %219, 1
  %221 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %222 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %221, i32 0, i32 2
  store i32 %220, i32* %222, align 4
  br label %237

223:                                              ; preds = %210
  %224 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %225 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 4
  %228 = icmp slt i32 %227, 500
  br i1 %228, label %229, label %236

229:                                              ; preds = %223
  %230 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %231 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %230, i32 0, i32 10
  %232 = load i32, i32* %231, align 4
  %233 = sub nsw i32 %232, 1
  %234 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %235 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %234, i32 0, i32 2
  store i32 %233, i32* %235, align 4
  br label %236

236:                                              ; preds = %229, %223
  br label %237

237:                                              ; preds = %236, %216
  br label %238

238:                                              ; preds = %237, %203
  br label %239

239:                                              ; preds = %238, %196
  %240 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %241 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %240, i32 0, i32 2
  %242 = load i32, i32* %241, align 4
  %243 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %244 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %243, i32 0, i32 3
  %245 = load i32, i32* %244, align 4
  %246 = icmp sgt i32 %242, %245
  br i1 %246, label %247, label %253

247:                                              ; preds = %239
  %248 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %249 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %248, i32 0, i32 3
  %250 = load i32, i32* %249, align 4
  %251 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %252 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %251, i32 0, i32 2
  store i32 %250, i32* %252, align 4
  br label %253

253:                                              ; preds = %247, %239
  %254 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %255 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %254, i32 0, i32 2
  %256 = load i32, i32* %255, align 4
  %257 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %258 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %257, i32 0, i32 4
  %259 = load i32, i32* %258, align 4
  %260 = icmp slt i32 %256, %259
  br i1 %260, label %261, label %267

261:                                              ; preds = %253
  %262 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %263 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %262, i32 0, i32 4
  %264 = load i32, i32* %263, align 4
  %265 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %266 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %265, i32 0, i32 2
  store i32 %264, i32* %266, align 4
  br label %267

267:                                              ; preds = %261, %253
  %268 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %269 = call i32 @rtl92c_dm_write_dig(%struct.ieee80211_hw* %268)
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl_read_byte(%struct.rtl_priv*, i32) #1

declare dso_local i32 @rtl92c_dm_write_dig(%struct.ieee80211_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
