; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_ieee80211.c_rtw_get_sec_ie.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_ieee80211.c_rtw_get_sec_ie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.rtw_get_sec_ie.wpa_oui = private unnamed_addr constant [4 x i32] [i32 0, i32 80, i32 242, i32 1], align 16
@_TIMESTAMP_ = common dso_local global i64 0, align 8
@_BEACON_ITERVAL_ = common dso_local global i64 0, align 8
@_CAPABILITY_ = common dso_local global i64 0, align 8
@_WPA_IE_ID_ = common dso_local global i32 0, align 4
@_module_rtl871x_mlme_c_ = common dso_local global i32 0, align 4
@_drv_info_ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"\0A rtw_get_wpa_ie: sec_idx =%d in_ie[cnt+1]+2 =%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"\0A %2x,%2x,%2x,%2x,%2x,%2x,%2x,%2x\0A\00", align 1
@_WPA2_IE_ID_ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"\0A get_rsn_ie: sec_idx =%d in_ie[cnt+1]+2 =%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtw_get_sec_ie(i32* %0, i64 %1, i32* %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [4 x i32], align 16
  %17 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %18 = bitcast [4 x i32]* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %18, i8* align 16 bitcast ([4 x i32]* @__const.rtw_get_sec_ie.wpa_oui to i8*), i64 16, i1 false)
  %19 = load i64, i64* @_TIMESTAMP_, align 8
  %20 = load i64, i64* @_BEACON_ITERVAL_, align 8
  %21 = add i64 %19, %20
  %22 = load i64, i64* @_CAPABILITY_, align 8
  %23 = add i64 %21, %22
  store i64 %23, i64* %17, align 8
  store i32 0, i32* %14, align 4
  br label %24

24:                                               ; preds = %279, %6
  %25 = load i64, i64* %17, align 8
  %26 = load i64, i64* %8, align 8
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %28, label %280

28:                                               ; preds = %24
  %29 = load i32*, i32** %7, align 8
  %30 = load i64, i64* %17, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* %13, align 4
  %34 = load i32, i32* @_WPA_IE_ID_, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %154

36:                                               ; preds = %28
  %37 = load i32*, i32** %7, align 8
  %38 = load i64, i64* %17, align 8
  %39 = add i64 %38, 2
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 0
  %42 = call i32 @memcmp(i32* %40, i32* %41, i32 4)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %154, label %44

44:                                               ; preds = %36
  %45 = load i32, i32* @_module_rtl871x_mlme_c_, align 4
  %46 = load i32, i32* @_drv_info_, align 4
  %47 = load i32, i32* %14, align 4
  %48 = load i32*, i32** %7, align 8
  %49 = load i64, i64* %17, align 8
  %50 = add i64 %49, 1
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %52, 2
  %54 = sext i32 %53 to i64
  %55 = inttoptr i64 %54 to i8*
  %56 = call i32 @RT_TRACE(i32 %45, i32 %46, i8* %55)
  %57 = load i32*, i32** %11, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %137

59:                                               ; preds = %44
  %60 = load i32*, i32** %11, align 8
  %61 = load i32*, i32** %7, align 8
  %62 = load i64, i64* %17, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  %64 = load i32*, i32** %7, align 8
  %65 = load i64, i64* %17, align 8
  %66 = add i64 %65, 1
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %68, 2
  %70 = call i32 @memcpy(i32* %60, i32* %63, i32 %69)
  store i32 0, i32* %15, align 4
  br label %71

71:                                               ; preds = %133, %59
  %72 = load i32, i32* %15, align 4
  %73 = load i32*, i32** %7, align 8
  %74 = load i64, i64* %17, align 8
  %75 = add i64 %74, 1
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %77, 2
  %79 = icmp slt i32 %72, %78
  br i1 %79, label %80, label %136

80:                                               ; preds = %71
  %81 = load i32, i32* @_module_rtl871x_mlme_c_, align 4
  %82 = load i32, i32* @_drv_info_, align 4
  %83 = load i32*, i32** %11, align 8
  %84 = load i32, i32* %15, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = load i32*, i32** %11, align 8
  %89 = load i32, i32* %15, align 4
  %90 = add nsw i32 %89, 1
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %88, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = load i32*, i32** %11, align 8
  %95 = load i32, i32* %15, align 4
  %96 = add nsw i32 %95, 2
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %94, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = load i32*, i32** %11, align 8
  %101 = load i32, i32* %15, align 4
  %102 = add nsw i32 %101, 3
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %100, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = load i32*, i32** %11, align 8
  %107 = load i32, i32* %15, align 4
  %108 = add nsw i32 %107, 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %106, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = load i32*, i32** %11, align 8
  %113 = load i32, i32* %15, align 4
  %114 = add nsw i32 %113, 5
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %112, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = load i32*, i32** %11, align 8
  %119 = load i32, i32* %15, align 4
  %120 = add nsw i32 %119, 6
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %118, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = load i32*, i32** %11, align 8
  %125 = load i32, i32* %15, align 4
  %126 = add nsw i32 %125, 7
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %124, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = sext i32 %129 to i64
  %131 = inttoptr i64 %130 to i8*
  %132 = call i32 @RT_TRACE(i32 %81, i32 %82, i8* %131)
  br label %133

133:                                              ; preds = %80
  %134 = load i32, i32* %15, align 4
  %135 = add nsw i32 %134, 8
  store i32 %135, i32* %15, align 4
  br label %71

136:                                              ; preds = %71
  br label %137

137:                                              ; preds = %136, %44
  %138 = load i32*, i32** %7, align 8
  %139 = load i64, i64* %17, align 8
  %140 = add i64 %139, 1
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = add nsw i32 %142, 2
  %144 = load i32*, i32** %12, align 8
  store i32 %143, i32* %144, align 4
  %145 = load i32*, i32** %7, align 8
  %146 = load i64, i64* %17, align 8
  %147 = add i64 %146, 1
  %148 = getelementptr inbounds i32, i32* %145, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = add nsw i32 %149, 2
  %151 = sext i32 %150 to i64
  %152 = load i64, i64* %17, align 8
  %153 = add i64 %152, %151
  store i64 %153, i64* %17, align 8
  br label %279

154:                                              ; preds = %36, %28
  %155 = load i32, i32* %13, align 4
  %156 = load i32, i32* @_WPA2_IE_ID_, align 4
  %157 = icmp eq i32 %155, %156
  br i1 %157, label %158, label %268

158:                                              ; preds = %154
  %159 = load i32, i32* @_module_rtl871x_mlme_c_, align 4
  %160 = load i32, i32* @_drv_info_, align 4
  %161 = load i32, i32* %14, align 4
  %162 = load i32*, i32** %7, align 8
  %163 = load i64, i64* %17, align 8
  %164 = add i64 %163, 1
  %165 = getelementptr inbounds i32, i32* %162, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = add nsw i32 %166, 2
  %168 = sext i32 %167 to i64
  %169 = inttoptr i64 %168 to i8*
  %170 = call i32 @RT_TRACE(i32 %159, i32 %160, i8* %169)
  %171 = load i32*, i32** %9, align 8
  %172 = icmp ne i32* %171, null
  br i1 %172, label %173, label %251

173:                                              ; preds = %158
  %174 = load i32*, i32** %9, align 8
  %175 = load i32*, i32** %7, align 8
  %176 = load i64, i64* %17, align 8
  %177 = getelementptr inbounds i32, i32* %175, i64 %176
  %178 = load i32*, i32** %7, align 8
  %179 = load i64, i64* %17, align 8
  %180 = add i64 %179, 1
  %181 = getelementptr inbounds i32, i32* %178, i64 %180
  %182 = load i32, i32* %181, align 4
  %183 = add nsw i32 %182, 2
  %184 = call i32 @memcpy(i32* %174, i32* %177, i32 %183)
  store i32 0, i32* %15, align 4
  br label %185

185:                                              ; preds = %247, %173
  %186 = load i32, i32* %15, align 4
  %187 = load i32*, i32** %7, align 8
  %188 = load i64, i64* %17, align 8
  %189 = add i64 %188, 1
  %190 = getelementptr inbounds i32, i32* %187, i64 %189
  %191 = load i32, i32* %190, align 4
  %192 = add nsw i32 %191, 2
  %193 = icmp slt i32 %186, %192
  br i1 %193, label %194, label %250

194:                                              ; preds = %185
  %195 = load i32, i32* @_module_rtl871x_mlme_c_, align 4
  %196 = load i32, i32* @_drv_info_, align 4
  %197 = load i32*, i32** %9, align 8
  %198 = load i32, i32* %15, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i32, i32* %197, i64 %199
  %201 = load i32, i32* %200, align 4
  %202 = load i32*, i32** %9, align 8
  %203 = load i32, i32* %15, align 4
  %204 = add nsw i32 %203, 1
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i32, i32* %202, i64 %205
  %207 = load i32, i32* %206, align 4
  %208 = load i32*, i32** %9, align 8
  %209 = load i32, i32* %15, align 4
  %210 = add nsw i32 %209, 2
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32, i32* %208, i64 %211
  %213 = load i32, i32* %212, align 4
  %214 = load i32*, i32** %9, align 8
  %215 = load i32, i32* %15, align 4
  %216 = add nsw i32 %215, 3
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i32, i32* %214, i64 %217
  %219 = load i32, i32* %218, align 4
  %220 = load i32*, i32** %9, align 8
  %221 = load i32, i32* %15, align 4
  %222 = add nsw i32 %221, 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i32, i32* %220, i64 %223
  %225 = load i32, i32* %224, align 4
  %226 = load i32*, i32** %9, align 8
  %227 = load i32, i32* %15, align 4
  %228 = add nsw i32 %227, 5
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i32, i32* %226, i64 %229
  %231 = load i32, i32* %230, align 4
  %232 = load i32*, i32** %9, align 8
  %233 = load i32, i32* %15, align 4
  %234 = add nsw i32 %233, 6
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i32, i32* %232, i64 %235
  %237 = load i32, i32* %236, align 4
  %238 = load i32*, i32** %9, align 8
  %239 = load i32, i32* %15, align 4
  %240 = add nsw i32 %239, 7
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i32, i32* %238, i64 %241
  %243 = load i32, i32* %242, align 4
  %244 = sext i32 %243 to i64
  %245 = inttoptr i64 %244 to i8*
  %246 = call i32 @RT_TRACE(i32 %195, i32 %196, i8* %245)
  br label %247

247:                                              ; preds = %194
  %248 = load i32, i32* %15, align 4
  %249 = add nsw i32 %248, 8
  store i32 %249, i32* %15, align 4
  br label %185

250:                                              ; preds = %185
  br label %251

251:                                              ; preds = %250, %158
  %252 = load i32*, i32** %7, align 8
  %253 = load i64, i64* %17, align 8
  %254 = add i64 %253, 1
  %255 = getelementptr inbounds i32, i32* %252, i64 %254
  %256 = load i32, i32* %255, align 4
  %257 = add nsw i32 %256, 2
  %258 = load i32*, i32** %10, align 8
  store i32 %257, i32* %258, align 4
  %259 = load i32*, i32** %7, align 8
  %260 = load i64, i64* %17, align 8
  %261 = add i64 %260, 1
  %262 = getelementptr inbounds i32, i32* %259, i64 %261
  %263 = load i32, i32* %262, align 4
  %264 = add nsw i32 %263, 2
  %265 = sext i32 %264 to i64
  %266 = load i64, i64* %17, align 8
  %267 = add i64 %266, %265
  store i64 %267, i64* %17, align 8
  br label %278

268:                                              ; preds = %154
  %269 = load i32*, i32** %7, align 8
  %270 = load i64, i64* %17, align 8
  %271 = add i64 %270, 1
  %272 = getelementptr inbounds i32, i32* %269, i64 %271
  %273 = load i32, i32* %272, align 4
  %274 = add nsw i32 %273, 2
  %275 = sext i32 %274 to i64
  %276 = load i64, i64* %17, align 8
  %277 = add i64 %276, %275
  store i64 %277, i64* %17, align 8
  br label %278

278:                                              ; preds = %268, %251
  br label %279

279:                                              ; preds = %278, %137
  br label %24

280:                                              ; preds = %24
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @memcmp(i32*, i32*, i32) #2

declare dso_local i32 @RT_TRACE(i32, i32, i8*) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
