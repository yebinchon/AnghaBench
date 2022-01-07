; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl8xxxu/extr_rtl8xxxu_core.c_rtl8xxxu_simularity_compare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl8xxxu/extr_rtl8xxxu_core.c_rtl8xxxu_simularity_compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8xxxu_priv = type { i32 }

@__const.rtl8xxxu_simularity_compare.candidate = private unnamed_addr constant [2 x i32] [i32 -1, i32 -1], align 4
@MAX_TOLERANCE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtl8xxxu_priv*, [8 x i32]*, i32, i32)* @rtl8xxxu_simularity_compare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8xxxu_simularity_compare(%struct.rtl8xxxu_priv* %0, [8 x i32]* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rtl8xxxu_priv*, align 8
  %7 = alloca [8 x i32]*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca [2 x i32], align 4
  %16 = alloca i32, align 4
  store %struct.rtl8xxxu_priv* %0, %struct.rtl8xxxu_priv** %6, align 8
  store [8 x i32]* %1, [8 x i32]** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i64 0, i64* %14, align 8
  %17 = bitcast [2 x i32]* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %17, i8* align 4 bitcast ([2 x i32]* @__const.rtl8xxxu_simularity_compare.candidate to i8*), i64 8, i1 false)
  store i32 1, i32* %16, align 4
  %18 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %6, align 8
  %19 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp sgt i32 %20, 1
  br i1 %21, label %22, label %23

22:                                               ; preds = %4
  store i64 8, i64* %14, align 8
  br label %24

23:                                               ; preds = %4
  store i64 4, i64* %14, align 8
  br label %24

24:                                               ; preds = %23, %22
  store i64 0, i64* %13, align 8
  store i64 0, i64* %10, align 8
  br label %25

25:                                               ; preds = %156, %24
  %26 = load i64, i64* %10, align 8
  %27 = load i64, i64* %14, align 8
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %29, label %159

29:                                               ; preds = %25
  %30 = load [8 x i32]*, [8 x i32]** %7, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [8 x i32], [8 x i32]* %30, i64 %32
  %34 = load i64, i64* %10, align 8
  %35 = getelementptr inbounds [8 x i32], [8 x i32]* %33, i64 0, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load [8 x i32]*, [8 x i32]** %7, align 8
  %38 = load i32, i32* %9, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [8 x i32], [8 x i32]* %37, i64 %39
  %41 = load i64, i64* %10, align 8
  %42 = getelementptr inbounds [8 x i32], [8 x i32]* %40, i64 0, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = icmp sgt i32 %36, %43
  br i1 %44, label %45, label %61

45:                                               ; preds = %29
  %46 = load [8 x i32]*, [8 x i32]** %7, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [8 x i32], [8 x i32]* %46, i64 %48
  %50 = load i64, i64* %10, align 8
  %51 = getelementptr inbounds [8 x i32], [8 x i32]* %49, i64 0, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load [8 x i32]*, [8 x i32]** %7, align 8
  %54 = load i32, i32* %9, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [8 x i32], [8 x i32]* %53, i64 %55
  %57 = load i64, i64* %10, align 8
  %58 = getelementptr inbounds [8 x i32], [8 x i32]* %56, i64 0, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = sub nsw i32 %52, %59
  br label %77

61:                                               ; preds = %29
  %62 = load [8 x i32]*, [8 x i32]** %7, align 8
  %63 = load i32, i32* %9, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [8 x i32], [8 x i32]* %62, i64 %64
  %66 = load i64, i64* %10, align 8
  %67 = getelementptr inbounds [8 x i32], [8 x i32]* %65, i64 0, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = load [8 x i32]*, [8 x i32]** %7, align 8
  %70 = load i32, i32* %8, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [8 x i32], [8 x i32]* %69, i64 %71
  %73 = load i64, i64* %10, align 8
  %74 = getelementptr inbounds [8 x i32], [8 x i32]* %72, i64 0, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = sub nsw i32 %68, %75
  br label %77

77:                                               ; preds = %61, %45
  %78 = phi i32 [ %60, %45 ], [ %76, %61 ]
  %79 = sext i32 %78 to i64
  store i64 %79, i64* %12, align 8
  %80 = load i64, i64* %12, align 8
  %81 = load i64, i64* @MAX_TOLERANCE, align 8
  %82 = icmp ugt i64 %80, %81
  br i1 %82, label %83, label %155

83:                                               ; preds = %77
  %84 = load i64, i64* %10, align 8
  %85 = icmp eq i64 %84, 2
  br i1 %85, label %89, label %86

86:                                               ; preds = %83
  %87 = load i64, i64* %10, align 8
  %88 = icmp eq i64 %87, 6
  br i1 %88, label %89, label %147

89:                                               ; preds = %86, %83
  %90 = load i64, i64* %13, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %147, label %92

92:                                               ; preds = %89
  %93 = load [8 x i32]*, [8 x i32]** %7, align 8
  %94 = load i32, i32* %8, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds [8 x i32], [8 x i32]* %93, i64 %95
  %97 = load i64, i64* %10, align 8
  %98 = getelementptr inbounds [8 x i32], [8 x i32]* %96, i64 0, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = load [8 x i32]*, [8 x i32]** %7, align 8
  %101 = load i32, i32* %8, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [8 x i32], [8 x i32]* %100, i64 %102
  %104 = load i64, i64* %10, align 8
  %105 = add i64 %104, 1
  %106 = getelementptr inbounds [8 x i32], [8 x i32]* %103, i64 0, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = add nsw i32 %99, %107
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %92
  %111 = load i32, i32* %9, align 4
  %112 = load i64, i64* %10, align 8
  %113 = udiv i64 %112, 4
  %114 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 %113
  store i32 %111, i32* %114, align 4
  br label %146

115:                                              ; preds = %92
  %116 = load [8 x i32]*, [8 x i32]** %7, align 8
  %117 = load i32, i32* %9, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds [8 x i32], [8 x i32]* %116, i64 %118
  %120 = load i64, i64* %10, align 8
  %121 = getelementptr inbounds [8 x i32], [8 x i32]* %119, i64 0, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = load [8 x i32]*, [8 x i32]** %7, align 8
  %124 = load i32, i32* %9, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds [8 x i32], [8 x i32]* %123, i64 %125
  %127 = load i64, i64* %10, align 8
  %128 = add i64 %127, 1
  %129 = getelementptr inbounds [8 x i32], [8 x i32]* %126, i64 0, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = add nsw i32 %122, %130
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %115
  %134 = load i32, i32* %8, align 4
  %135 = load i64, i64* %10, align 8
  %136 = udiv i64 %135, 4
  %137 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 %136
  store i32 %134, i32* %137, align 4
  br label %145

138:                                              ; preds = %115
  %139 = load i64, i64* %13, align 8
  %140 = load i64, i64* %10, align 8
  %141 = trunc i64 %140 to i32
  %142 = shl i32 1, %141
  %143 = sext i32 %142 to i64
  %144 = or i64 %139, %143
  store i64 %144, i64* %13, align 8
  br label %145

145:                                              ; preds = %138, %133
  br label %146

146:                                              ; preds = %145, %110
  br label %154

147:                                              ; preds = %89, %86
  %148 = load i64, i64* %13, align 8
  %149 = load i64, i64* %10, align 8
  %150 = trunc i64 %149 to i32
  %151 = shl i32 1, %150
  %152 = sext i32 %151 to i64
  %153 = or i64 %148, %152
  store i64 %153, i64* %13, align 8
  br label %154

154:                                              ; preds = %147, %146
  br label %155

155:                                              ; preds = %154, %77
  br label %156

156:                                              ; preds = %155
  %157 = load i64, i64* %10, align 8
  %158 = add i64 %157, 1
  store i64 %158, i64* %10, align 8
  br label %25

159:                                              ; preds = %25
  %160 = load i64, i64* %13, align 8
  %161 = icmp eq i64 %160, 0
  br i1 %161, label %162, label %207

162:                                              ; preds = %159
  store i64 0, i64* %10, align 8
  br label %163

163:                                              ; preds = %202, %162
  %164 = load i64, i64* %10, align 8
  %165 = load i64, i64* %14, align 8
  %166 = udiv i64 %165, 4
  %167 = icmp ult i64 %164, %166
  br i1 %167, label %168, label %205

168:                                              ; preds = %163
  %169 = load i64, i64* %10, align 8
  %170 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 %169
  %171 = load i32, i32* %170, align 4
  %172 = icmp sge i32 %171, 0
  br i1 %172, label %173, label %201

173:                                              ; preds = %168
  %174 = load i64, i64* %10, align 8
  %175 = mul i64 %174, 4
  store i64 %175, i64* %11, align 8
  br label %176

176:                                              ; preds = %197, %173
  %177 = load i64, i64* %11, align 8
  %178 = load i64, i64* %10, align 8
  %179 = add i64 %178, 1
  %180 = mul i64 %179, 4
  %181 = sub i64 %180, 2
  %182 = icmp ult i64 %177, %181
  br i1 %182, label %183, label %200

183:                                              ; preds = %176
  %184 = load [8 x i32]*, [8 x i32]** %7, align 8
  %185 = load i64, i64* %10, align 8
  %186 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 %185
  %187 = load i32, i32* %186, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds [8 x i32], [8 x i32]* %184, i64 %188
  %190 = load i64, i64* %11, align 8
  %191 = getelementptr inbounds [8 x i32], [8 x i32]* %189, i64 0, i64 %190
  %192 = load i32, i32* %191, align 4
  %193 = load [8 x i32]*, [8 x i32]** %7, align 8
  %194 = getelementptr inbounds [8 x i32], [8 x i32]* %193, i64 3
  %195 = load i64, i64* %11, align 8
  %196 = getelementptr inbounds [8 x i32], [8 x i32]* %194, i64 0, i64 %195
  store i32 %192, i32* %196, align 4
  br label %197

197:                                              ; preds = %183
  %198 = load i64, i64* %11, align 8
  %199 = add i64 %198, 1
  store i64 %199, i64* %11, align 8
  br label %176

200:                                              ; preds = %176
  store i32 0, i32* %16, align 4
  br label %201

201:                                              ; preds = %200, %168
  br label %202

202:                                              ; preds = %201
  %203 = load i64, i64* %10, align 8
  %204 = add i64 %203, 1
  store i64 %204, i64* %10, align 8
  br label %163

205:                                              ; preds = %163
  %206 = load i32, i32* %16, align 4
  store i32 %206, i32* %5, align 4
  br label %263

207:                                              ; preds = %159
  %208 = load i64, i64* %13, align 8
  %209 = and i64 %208, 15
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %231, label %211

211:                                              ; preds = %207
  store i64 0, i64* %10, align 8
  br label %212

212:                                              ; preds = %227, %211
  %213 = load i64, i64* %10, align 8
  %214 = icmp ult i64 %213, 4
  br i1 %214, label %215, label %230

215:                                              ; preds = %212
  %216 = load [8 x i32]*, [8 x i32]** %7, align 8
  %217 = load i32, i32* %8, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds [8 x i32], [8 x i32]* %216, i64 %218
  %220 = load i64, i64* %10, align 8
  %221 = getelementptr inbounds [8 x i32], [8 x i32]* %219, i64 0, i64 %220
  %222 = load i32, i32* %221, align 4
  %223 = load [8 x i32]*, [8 x i32]** %7, align 8
  %224 = getelementptr inbounds [8 x i32], [8 x i32]* %223, i64 3
  %225 = load i64, i64* %10, align 8
  %226 = getelementptr inbounds [8 x i32], [8 x i32]* %224, i64 0, i64 %225
  store i32 %222, i32* %226, align 4
  br label %227

227:                                              ; preds = %215
  %228 = load i64, i64* %10, align 8
  %229 = add i64 %228, 1
  store i64 %229, i64* %10, align 8
  br label %212

230:                                              ; preds = %212
  br label %261

231:                                              ; preds = %207
  %232 = load i64, i64* %13, align 8
  %233 = and i64 %232, 240
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %260, label %235

235:                                              ; preds = %231
  %236 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %6, align 8
  %237 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 4
  %239 = icmp sgt i32 %238, 1
  br i1 %239, label %240, label %260

240:                                              ; preds = %235
  store i64 4, i64* %10, align 8
  br label %241

241:                                              ; preds = %256, %240
  %242 = load i64, i64* %10, align 8
  %243 = icmp ult i64 %242, 8
  br i1 %243, label %244, label %259

244:                                              ; preds = %241
  %245 = load [8 x i32]*, [8 x i32]** %7, align 8
  %246 = load i32, i32* %8, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds [8 x i32], [8 x i32]* %245, i64 %247
  %249 = load i64, i64* %10, align 8
  %250 = getelementptr inbounds [8 x i32], [8 x i32]* %248, i64 0, i64 %249
  %251 = load i32, i32* %250, align 4
  %252 = load [8 x i32]*, [8 x i32]** %7, align 8
  %253 = getelementptr inbounds [8 x i32], [8 x i32]* %252, i64 3
  %254 = load i64, i64* %10, align 8
  %255 = getelementptr inbounds [8 x i32], [8 x i32]* %253, i64 0, i64 %254
  store i32 %251, i32* %255, align 4
  br label %256

256:                                              ; preds = %244
  %257 = load i64, i64* %10, align 8
  %258 = add i64 %257, 1
  store i64 %258, i64* %10, align 8
  br label %241

259:                                              ; preds = %241
  br label %260

260:                                              ; preds = %259, %235, %231
  br label %261

261:                                              ; preds = %260, %230
  br label %262

262:                                              ; preds = %261
  store i32 0, i32* %5, align 4
  br label %263

263:                                              ; preds = %262, %205
  %264 = load i32, i32* %5, align 4
  ret i32 %264
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
