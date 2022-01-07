; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_txrx.c_tx_policy_build.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_txrx.c_tx_policy_build.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cw1200_common = type { i32 }
%struct.tx_policy = type { i32, i32, i32* }
%struct.ieee80211_tx_rate = type { i64, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@IEEE80211_TX_RC_MCS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"[TX policy] Policy (%zu): %d:%d, %d:%d, %d:%d, %d:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cw1200_common*, %struct.tx_policy*, %struct.ieee80211_tx_rate*, i64)* @tx_policy_build to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tx_policy_build(%struct.cw1200_common* %0, %struct.tx_policy* %1, %struct.ieee80211_tx_rate* %2, i64 %3) #0 {
  %5 = alloca %struct.cw1200_common*, align 8
  %6 = alloca %struct.tx_policy*, align 8
  %7 = alloca %struct.ieee80211_tx_rate*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ieee80211_tx_rate, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.cw1200_common* %0, %struct.cw1200_common** %5, align 8
  store %struct.tx_policy* %1, %struct.tx_policy** %6, align 8
  store %struct.ieee80211_tx_rate* %2, %struct.ieee80211_tx_rate** %7, align 8
  store i64 %3, i64* %8, align 8
  %20 = load %struct.cw1200_common*, %struct.cw1200_common** %5, align 8
  %21 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %23 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %7, align 8
  %24 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %23, i64 0
  %25 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp slt i64 %26, 0
  %28 = zext i1 %27 to i32
  %29 = call i32 @BUG_ON(i32 %28)
  %30 = load %struct.tx_policy*, %struct.tx_policy** %6, align 8
  %31 = call i32 @memset(%struct.tx_policy* %30, i32 0, i32 16)
  store i32 1, i32* %9, align 4
  br label %32

32:                                               ; preds = %89, %4
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = load i64, i64* %8, align 8
  %36 = icmp ult i64 %34, %35
  br i1 %36, label %37, label %92

37:                                               ; preds = %32
  %38 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %7, align 8
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %38, i64 %40
  %42 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp slt i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %37
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  store i64 %47, i64* %8, align 8
  br label %92

48:                                               ; preds = %37
  %49 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %7, align 8
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %49, i64 %51
  %53 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %7, align 8
  %56 = load i32, i32* %9, align 4
  %57 = sub nsw i32 %56, 1
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %55, i64 %58
  %60 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp sgt i64 %54, %61
  br i1 %62, label %63, label %88

63:                                               ; preds = %48
  %64 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %7, align 8
  %65 = load i32, i32* %9, align 4
  %66 = sub nsw i32 %65, 1
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %64, i64 %67
  %69 = bitcast %struct.ieee80211_tx_rate* %13 to i8*
  %70 = bitcast %struct.ieee80211_tx_rate* %68 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %69, i8* align 8 %70, i64 16, i1 false)
  %71 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %7, align 8
  %72 = load i32, i32* %9, align 4
  %73 = sub nsw i32 %72, 1
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %71, i64 %74
  %76 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %7, align 8
  %77 = load i32, i32* %9, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %76, i64 %78
  %80 = bitcast %struct.ieee80211_tx_rate* %75 to i8*
  %81 = bitcast %struct.ieee80211_tx_rate* %79 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %80, i8* align 8 %81, i64 16, i1 false)
  %82 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %7, align 8
  %83 = load i32, i32* %9, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %82, i64 %84
  %86 = bitcast %struct.ieee80211_tx_rate* %85 to i8*
  %87 = bitcast %struct.ieee80211_tx_rate* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %86, i8* align 8 %87, i64 16, i1 false)
  br label %88

88:                                               ; preds = %63, %48
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %9, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %9, align 4
  br label %32

92:                                               ; preds = %45, %32
  %93 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %7, align 8
  %94 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %93, i64 0
  %95 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  store i32 %96, i32* %12, align 4
  store i32 0, i32* %9, align 4
  store i32 1, i32* %10, align 4
  br label %97

97:                                               ; preds = %173, %92
  %98 = load i32, i32* %10, align 4
  %99 = sext i32 %98 to i64
  %100 = load i64, i64* %8, align 8
  %101 = icmp ult i64 %99, %100
  br i1 %101, label %102, label %176

102:                                              ; preds = %97
  %103 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %7, align 8
  %104 = load i32, i32* %10, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %103, i64 %105
  %107 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %7, align 8
  %110 = load i32, i32* %9, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %109, i64 %111
  %113 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = icmp eq i64 %108, %114
  br i1 %115, label %116, label %130

116:                                              ; preds = %102
  %117 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %7, align 8
  %118 = load i32, i32* %10, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %117, i64 %119
  %121 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %7, align 8
  %124 = load i32, i32* %9, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %123, i64 %125
  %127 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = add i32 %128, %122
  store i32 %129, i32* %127, align 8
  br label %164

130:                                              ; preds = %102
  %131 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %7, align 8
  %132 = load i32, i32* %10, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %131, i64 %133
  %135 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %7, align 8
  %138 = load i32, i32* %9, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %137, i64 %139
  %141 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = icmp sgt i64 %136, %142
  br i1 %143, label %144, label %145

144:                                              ; preds = %130
  br label %176

145:                                              ; preds = %130
  %146 = load i32, i32* %9, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %9, align 4
  %148 = load i32, i32* %9, align 4
  %149 = load i32, i32* %10, align 4
  %150 = icmp ne i32 %148, %149
  br i1 %150, label %151, label %162

151:                                              ; preds = %145
  %152 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %7, align 8
  %153 = load i32, i32* %9, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %152, i64 %154
  %156 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %7, align 8
  %157 = load i32, i32* %10, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %156, i64 %158
  %160 = bitcast %struct.ieee80211_tx_rate* %155 to i8*
  %161 = bitcast %struct.ieee80211_tx_rate* %159 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %160, i8* align 8 %161, i64 16, i1 false)
  br label %162

162:                                              ; preds = %151, %145
  br label %163

163:                                              ; preds = %162
  br label %164

164:                                              ; preds = %163, %116
  %165 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %7, align 8
  %166 = load i32, i32* %10, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %165, i64 %167
  %169 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 8
  %171 = load i32, i32* %12, align 4
  %172 = add i32 %171, %170
  store i32 %172, i32* %12, align 4
  br label %173

173:                                              ; preds = %164
  %174 = load i32, i32* %10, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %10, align 4
  br label %97

176:                                              ; preds = %144, %97
  %177 = load i32, i32* %9, align 4
  %178 = add nsw i32 %177, 1
  %179 = sext i32 %178 to i64
  store i64 %179, i64* %8, align 8
  %180 = load i32, i32* %11, align 4
  %181 = zext i32 %180 to i64
  %182 = load i64, i64* %8, align 8
  %183 = icmp ult i64 %181, %182
  br i1 %183, label %184, label %187

184:                                              ; preds = %176
  %185 = load i64, i64* %8, align 8
  %186 = trunc i64 %185 to i32
  store i32 %186, i32* %11, align 4
  br label %187

187:                                              ; preds = %184, %176
  %188 = load i32, i32* %12, align 4
  %189 = load i32, i32* %11, align 4
  %190 = icmp ugt i32 %188, %189
  br i1 %190, label %191, label %236

191:                                              ; preds = %187
  store i32 0, i32* %9, align 4
  br label %192

192:                                              ; preds = %232, %191
  %193 = load i32, i32* %9, align 4
  %194 = sext i32 %193 to i64
  %195 = load i64, i64* %8, align 8
  %196 = icmp ult i64 %194, %195
  br i1 %196, label %197, label %235

197:                                              ; preds = %192
  %198 = load i64, i64* %8, align 8
  %199 = load i32, i32* %9, align 4
  %200 = sext i32 %199 to i64
  %201 = sub i64 %198, %200
  %202 = sub i64 %201, 1
  %203 = trunc i64 %202 to i32
  store i32 %203, i32* %14, align 4
  %204 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %7, align 8
  %205 = load i32, i32* %9, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %204, i64 %206
  %208 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 8
  %210 = load i32, i32* %11, align 4
  %211 = load i32, i32* %14, align 4
  %212 = sub i32 %210, %211
  %213 = icmp ugt i32 %209, %212
  br i1 %213, label %214, label %223

214:                                              ; preds = %197
  %215 = load i32, i32* %11, align 4
  %216 = load i32, i32* %14, align 4
  %217 = sub i32 %215, %216
  %218 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %7, align 8
  %219 = load i32, i32* %9, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %218, i64 %220
  %222 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %221, i32 0, i32 1
  store i32 %217, i32* %222, align 8
  br label %223

223:                                              ; preds = %214, %197
  %224 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %7, align 8
  %225 = load i32, i32* %9, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %224, i64 %226
  %228 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 8
  %230 = load i32, i32* %11, align 4
  %231 = sub i32 %230, %229
  store i32 %231, i32* %11, align 4
  br label %232

232:                                              ; preds = %223
  %233 = load i32, i32* %9, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %9, align 4
  br label %192

235:                                              ; preds = %192
  br label %236

236:                                              ; preds = %235, %187
  %237 = load i64, i64* %8, align 8
  %238 = icmp eq i64 %237, 2
  br i1 %238, label %239, label %343

239:                                              ; preds = %236
  %240 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %7, align 8
  %241 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %240, i64 0
  %242 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %241, i32 0, i32 2
  %243 = load i32, i32* %242, align 4
  %244 = load i32, i32* @IEEE80211_TX_RC_MCS, align 4
  %245 = and i32 %243, %244
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %343, label %247

247:                                              ; preds = %239
  %248 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %7, align 8
  %249 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %248, i64 0
  %250 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %249, i32 0, i32 0
  %251 = load i64, i64* %250, align 8
  %252 = icmp sgt i64 %251, 4
  br i1 %252, label %253, label %343

253:                                              ; preds = %247
  %254 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %7, align 8
  %255 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %254, i64 0
  %256 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 8
  %258 = icmp ugt i32 %257, 2
  br i1 %258, label %259, label %343

259:                                              ; preds = %253
  %260 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %7, align 8
  %261 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %260, i64 1
  %262 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %261, i32 0, i32 0
  %263 = load i64, i64* %262, align 8
  %264 = icmp slt i64 %263, 2
  br i1 %264, label %265, label %343

265:                                              ; preds = %259
  %266 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %7, align 8
  %267 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %266, i64 0
  %268 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %267, i32 0, i32 0
  %269 = load i64, i64* %268, align 8
  %270 = add nsw i64 %269, 4
  %271 = ashr i64 %270, 1
  %272 = trunc i64 %271 to i32
  store i32 %272, i32* %15, align 4
  %273 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %7, align 8
  %274 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %273, i64 0
  %275 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %274, i32 0, i32 1
  %276 = load i32, i32* %275, align 8
  %277 = sub i32 %276, 2
  store i32 %277, i32* %275, align 8
  %278 = load i32, i32* %15, align 4
  %279 = icmp ne i32 %278, 4
  br i1 %279, label %280, label %327

280:                                              ; preds = %265
  %281 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %7, align 8
  %282 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %281, i64 3
  %283 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %7, align 8
  %284 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %283, i64 1
  %285 = bitcast %struct.ieee80211_tx_rate* %282 to i8*
  %286 = bitcast %struct.ieee80211_tx_rate* %284 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %285, i8* align 8 %286, i64 16, i1 false)
  %287 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %7, align 8
  %288 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %287, i64 2
  %289 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %288, i32 0, i32 0
  store i64 4, i64* %289, align 8
  %290 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %7, align 8
  %291 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %290, i64 2
  %292 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %291, i32 0, i32 1
  store i32 1, i32* %292, align 8
  %293 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %7, align 8
  %294 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %293, i64 1
  %295 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %294, i32 0, i32 2
  %296 = load i32, i32* %295, align 4
  %297 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %7, align 8
  %298 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %297, i64 2
  %299 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %298, i32 0, i32 2
  store i32 %296, i32* %299, align 4
  %300 = load i32, i32* %15, align 4
  %301 = sext i32 %300 to i64
  %302 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %7, align 8
  %303 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %302, i64 1
  %304 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %303, i32 0, i32 0
  store i64 %301, i64* %304, align 8
  %305 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %7, align 8
  %306 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %305, i64 1
  %307 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %306, i32 0, i32 1
  store i32 1, i32* %307, align 8
  %308 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %7, align 8
  %309 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %308, i64 0
  %310 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %309, i32 0, i32 1
  %311 = load i32, i32* %310, align 8
  %312 = icmp uge i32 %311, 3
  br i1 %312, label %313, label %324

313:                                              ; preds = %280
  %314 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %7, align 8
  %315 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %314, i64 0
  %316 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %315, i32 0, i32 1
  %317 = load i32, i32* %316, align 8
  %318 = add i32 %317, -1
  store i32 %318, i32* %316, align 8
  %319 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %7, align 8
  %320 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %319, i64 2
  %321 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %320, i32 0, i32 1
  %322 = load i32, i32* %321, align 8
  %323 = add i32 %322, 1
  store i32 %323, i32* %321, align 8
  br label %324

324:                                              ; preds = %313, %280
  %325 = load i64, i64* %8, align 8
  %326 = add i64 %325, 2
  store i64 %326, i64* %8, align 8
  br label %342

327:                                              ; preds = %265
  %328 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %7, align 8
  %329 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %328, i64 2
  %330 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %7, align 8
  %331 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %330, i64 1
  %332 = bitcast %struct.ieee80211_tx_rate* %329 to i8*
  %333 = bitcast %struct.ieee80211_tx_rate* %331 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %332, i8* align 8 %333, i64 16, i1 false)
  %334 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %7, align 8
  %335 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %334, i64 1
  %336 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %335, i32 0, i32 0
  store i64 4, i64* %336, align 8
  %337 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %7, align 8
  %338 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %337, i64 1
  %339 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %338, i32 0, i32 1
  store i32 2, i32* %339, align 8
  %340 = load i64, i64* %8, align 8
  %341 = add i64 %340, 1
  store i64 %341, i64* %8, align 8
  br label %342

342:                                              ; preds = %327, %324
  br label %343

343:                                              ; preds = %342, %259, %253, %247, %239, %236
  %344 = load %struct.cw1200_common*, %struct.cw1200_common** %5, align 8
  %345 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %7, align 8
  %346 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %345, i64 0
  %347 = call %struct.TYPE_2__* @cw1200_get_tx_rate(%struct.cw1200_common* %344, %struct.ieee80211_tx_rate* %346)
  %348 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %347, i32 0, i32 0
  %349 = load i32, i32* %348, align 4
  %350 = add nsw i32 %349, 1
  %351 = load %struct.tx_policy*, %struct.tx_policy** %6, align 8
  %352 = getelementptr inbounds %struct.tx_policy, %struct.tx_policy* %351, i32 0, i32 0
  store i32 %350, i32* %352, align 8
  store i32 0, i32* %9, align 4
  br label %353

353:                                              ; preds = %404, %343
  %354 = load i32, i32* %9, align 4
  %355 = sext i32 %354 to i64
  %356 = load i64, i64* %8, align 8
  %357 = icmp ult i64 %355, %356
  br i1 %357, label %358, label %407

358:                                              ; preds = %353
  %359 = load %struct.cw1200_common*, %struct.cw1200_common** %5, align 8
  %360 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %7, align 8
  %361 = load i32, i32* %9, align 4
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %360, i64 %362
  %364 = call %struct.TYPE_2__* @cw1200_get_tx_rate(%struct.cw1200_common* %359, %struct.ieee80211_tx_rate* %363)
  %365 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %364, i32 0, i32 0
  %366 = load i32, i32* %365, align 4
  store i32 %366, i32* %16, align 4
  %367 = load i32, i32* %16, align 4
  %368 = lshr i32 %367, 3
  store i32 %368, i32* %17, align 4
  %369 = load i32, i32* %16, align 4
  %370 = and i32 %369, 7
  %371 = shl i32 %370, 2
  store i32 %371, i32* %18, align 4
  %372 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %7, align 8
  %373 = load i32, i32* %9, align 4
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %372, i64 %374
  %376 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %375, i32 0, i32 1
  %377 = load i32, i32* %376, align 8
  store i32 %377, i32* %19, align 4
  %378 = load i32, i32* %19, align 4
  %379 = icmp ugt i32 %378, 15
  br i1 %379, label %380, label %386

380:                                              ; preds = %358
  %381 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %7, align 8
  %382 = load i32, i32* %9, align 4
  %383 = sext i32 %382 to i64
  %384 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %381, i64 %383
  %385 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %384, i32 0, i32 1
  store i32 15, i32* %385, align 8
  store i32 15, i32* %19, align 4
  br label %386

386:                                              ; preds = %380, %358
  %387 = load i32, i32* %19, align 4
  %388 = load i32, i32* %18, align 4
  %389 = shl i32 %387, %388
  %390 = call i32 @__cpu_to_le32(i32 %389)
  %391 = load %struct.tx_policy*, %struct.tx_policy** %6, align 8
  %392 = getelementptr inbounds %struct.tx_policy, %struct.tx_policy* %391, i32 0, i32 2
  %393 = load i32*, i32** %392, align 8
  %394 = load i32, i32* %17, align 4
  %395 = zext i32 %394 to i64
  %396 = getelementptr inbounds i32, i32* %393, i64 %395
  %397 = load i32, i32* %396, align 4
  %398 = or i32 %397, %390
  store i32 %398, i32* %396, align 4
  %399 = load i32, i32* %19, align 4
  %400 = load %struct.tx_policy*, %struct.tx_policy** %6, align 8
  %401 = getelementptr inbounds %struct.tx_policy, %struct.tx_policy* %400, i32 0, i32 1
  %402 = load i32, i32* %401, align 4
  %403 = add i32 %402, %399
  store i32 %403, i32* %401, align 4
  br label %404

404:                                              ; preds = %386
  %405 = load i32, i32* %9, align 4
  %406 = add nsw i32 %405, 1
  store i32 %406, i32* %9, align 4
  br label %353

407:                                              ; preds = %353
  %408 = load i64, i64* %8, align 8
  %409 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %7, align 8
  %410 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %409, i64 0
  %411 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %410, i32 0, i32 0
  %412 = load i64, i64* %411, align 8
  %413 = trunc i64 %412 to i32
  %414 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %7, align 8
  %415 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %414, i64 0
  %416 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %415, i32 0, i32 1
  %417 = load i32, i32* %416, align 8
  %418 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %7, align 8
  %419 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %418, i64 1
  %420 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %419, i32 0, i32 0
  %421 = load i64, i64* %420, align 8
  %422 = trunc i64 %421 to i32
  %423 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %7, align 8
  %424 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %423, i64 1
  %425 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %424, i32 0, i32 1
  %426 = load i32, i32* %425, align 8
  %427 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %7, align 8
  %428 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %427, i64 2
  %429 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %428, i32 0, i32 0
  %430 = load i64, i64* %429, align 8
  %431 = trunc i64 %430 to i32
  %432 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %7, align 8
  %433 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %432, i64 2
  %434 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %433, i32 0, i32 1
  %435 = load i32, i32* %434, align 8
  %436 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %7, align 8
  %437 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %436, i64 3
  %438 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %437, i32 0, i32 0
  %439 = load i64, i64* %438, align 8
  %440 = trunc i64 %439 to i32
  %441 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %7, align 8
  %442 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %441, i64 3
  %443 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %442, i32 0, i32 1
  %444 = load i32, i32* %443, align 8
  %445 = call i32 @pr_debug(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i64 %408, i32 %413, i32 %417, i32 %422, i32 %426, i32 %431, i32 %435, i32 %440, i32 %444)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @memset(%struct.tx_policy*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.TYPE_2__* @cw1200_get_tx_rate(%struct.cw1200_common*, %struct.ieee80211_tx_rate*) #1

declare dso_local i32 @__cpu_to_le32(i32) #1

declare dso_local i32 @pr_debug(i8*, i64, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
