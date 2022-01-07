; ModuleID = '/home/carl/AnghaBench/linux/drivers/vme/bridges/extr_vme_fake.c_fake_master_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vme/bridges/extr_vme_fake.c_fake_master_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vme_master_resource = type { i32, i32, %struct.vme_bridge* }
%struct.vme_bridge = type { %struct.fake_driver* }
%struct.fake_driver = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64, i64, i64 }

@VME_D16 = common dso_local global i64 0, align 8
@VME_D32 = common dso_local global i64 0, align 8
@VME_D8 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vme_master_resource*, i8*, i64, i64)* @fake_master_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fake_master_read(%struct.vme_master_resource* %0, i8* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.vme_master_resource*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.vme_bridge*, align 8
  %14 = alloca %struct.fake_driver*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.vme_master_resource* %0, %struct.vme_master_resource** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  store i32 0, i32* %17, align 4
  %19 = load %struct.vme_master_resource*, %struct.vme_master_resource** %5, align 8
  %20 = getelementptr inbounds %struct.vme_master_resource, %struct.vme_master_resource* %19, i32 0, i32 2
  %21 = load %struct.vme_bridge*, %struct.vme_bridge** %20, align 8
  store %struct.vme_bridge* %21, %struct.vme_bridge** %13, align 8
  %22 = load %struct.vme_bridge*, %struct.vme_bridge** %13, align 8
  %23 = getelementptr inbounds %struct.vme_bridge, %struct.vme_bridge* %22, i32 0, i32 0
  %24 = load %struct.fake_driver*, %struct.fake_driver** %23, align 8
  store %struct.fake_driver* %24, %struct.fake_driver** %14, align 8
  %25 = load %struct.vme_master_resource*, %struct.vme_master_resource** %5, align 8
  %26 = getelementptr inbounds %struct.vme_master_resource, %struct.vme_master_resource* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %15, align 4
  %28 = load %struct.fake_driver*, %struct.fake_driver** %14, align 8
  %29 = getelementptr inbounds %struct.fake_driver, %struct.fake_driver* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = load i32, i32* %15, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %8, align 8
  %37 = add i64 %35, %36
  store i64 %37, i64* %16, align 8
  %38 = load %struct.fake_driver*, %struct.fake_driver** %14, align 8
  %39 = getelementptr inbounds %struct.fake_driver, %struct.fake_driver* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = load i32, i32* %15, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %10, align 8
  %46 = load %struct.fake_driver*, %struct.fake_driver** %14, align 8
  %47 = getelementptr inbounds %struct.fake_driver, %struct.fake_driver* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = load i32, i32* %15, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %11, align 8
  %54 = load %struct.fake_driver*, %struct.fake_driver** %14, align 8
  %55 = getelementptr inbounds %struct.fake_driver, %struct.fake_driver* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = load i32, i32* %15, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  store i64 %61, i64* %12, align 8
  %62 = load %struct.vme_master_resource*, %struct.vme_master_resource** %5, align 8
  %63 = getelementptr inbounds %struct.vme_master_resource, %struct.vme_master_resource* %62, i32 0, i32 1
  %64 = call i32 @spin_lock(i32* %63)
  %65 = load i64, i64* %16, align 8
  %66 = and i64 %65, 1
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %84

68:                                               ; preds = %4
  %69 = load %struct.fake_driver*, %struct.fake_driver** %14, align 8
  %70 = load i64, i64* %16, align 8
  %71 = load i64, i64* %10, align 8
  %72 = load i64, i64* %11, align 8
  %73 = call i32 @fake_vmeread8(%struct.fake_driver* %69, i64 %70, i64 %71, i64 %72)
  %74 = load i8*, i8** %6, align 8
  %75 = bitcast i8* %74 to i32*
  store i32 %73, i32* %75, align 4
  %76 = load i32, i32* %17, align 4
  %77 = add i32 %76, 1
  store i32 %77, i32* %17, align 4
  %78 = load i32, i32* %17, align 4
  %79 = zext i32 %78 to i64
  %80 = load i64, i64* %7, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %68
  br label %292

83:                                               ; preds = %68
  br label %84

84:                                               ; preds = %83, %4
  %85 = load i64, i64* %12, align 8
  %86 = load i64, i64* @VME_D16, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %92, label %88

88:                                               ; preds = %84
  %89 = load i64, i64* %12, align 8
  %90 = load i64, i64* @VME_D32, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %139

92:                                               ; preds = %88, %84
  %93 = load i64, i64* %16, align 8
  %94 = load i32, i32* %17, align 4
  %95 = zext i32 %94 to i64
  %96 = add i64 %93, %95
  %97 = and i64 %96, 2
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %138

99:                                               ; preds = %92
  %100 = load i64, i64* %7, align 8
  %101 = load i32, i32* %17, align 4
  %102 = zext i32 %101 to i64
  %103 = sub i64 %100, %102
  %104 = icmp ult i64 %103, 2
  br i1 %104, label %105, label %121

105:                                              ; preds = %99
  %106 = load %struct.fake_driver*, %struct.fake_driver** %14, align 8
  %107 = load i64, i64* %16, align 8
  %108 = load i32, i32* %17, align 4
  %109 = zext i32 %108 to i64
  %110 = add i64 %107, %109
  %111 = load i64, i64* %10, align 8
  %112 = load i64, i64* %11, align 8
  %113 = call i32 @fake_vmeread8(%struct.fake_driver* %106, i64 %110, i64 %111, i64 %112)
  %114 = load i8*, i8** %6, align 8
  %115 = load i32, i32* %17, align 4
  %116 = zext i32 %115 to i64
  %117 = getelementptr i8, i8* %114, i64 %116
  %118 = bitcast i8* %117 to i32*
  store i32 %113, i32* %118, align 4
  %119 = load i32, i32* %17, align 4
  %120 = add i32 %119, 1
  store i32 %120, i32* %17, align 4
  br label %292

121:                                              ; preds = %99
  %122 = load %struct.fake_driver*, %struct.fake_driver** %14, align 8
  %123 = load i64, i64* %16, align 8
  %124 = load i32, i32* %17, align 4
  %125 = zext i32 %124 to i64
  %126 = add i64 %123, %125
  %127 = load i64, i64* %10, align 8
  %128 = load i64, i64* %11, align 8
  %129 = call i32 @fake_vmeread16(%struct.fake_driver* %122, i64 %126, i64 %127, i64 %128)
  %130 = load i8*, i8** %6, align 8
  %131 = load i32, i32* %17, align 4
  %132 = zext i32 %131 to i64
  %133 = getelementptr i8, i8* %130, i64 %132
  %134 = bitcast i8* %133 to i32*
  store i32 %129, i32* %134, align 4
  %135 = load i32, i32* %17, align 4
  %136 = add i32 %135, 2
  store i32 %136, i32* %17, align 4
  br label %137

137:                                              ; preds = %121
  br label %138

138:                                              ; preds = %137, %92
  br label %139

139:                                              ; preds = %138, %88
  %140 = load i64, i64* %12, align 8
  %141 = load i64, i64* @VME_D32, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %171

143:                                              ; preds = %139
  %144 = load i64, i64* %7, align 8
  %145 = load i32, i32* %17, align 4
  %146 = zext i32 %145 to i64
  %147 = sub i64 %144, %146
  %148 = and i64 %147, -4
  %149 = trunc i64 %148 to i32
  store i32 %149, i32* %18, align 4
  br label %150

150:                                              ; preds = %154, %143
  %151 = load i32, i32* %17, align 4
  %152 = load i32, i32* %18, align 4
  %153 = icmp ult i32 %151, %152
  br i1 %153, label %154, label %170

154:                                              ; preds = %150
  %155 = load %struct.fake_driver*, %struct.fake_driver** %14, align 8
  %156 = load i64, i64* %16, align 8
  %157 = load i32, i32* %17, align 4
  %158 = zext i32 %157 to i64
  %159 = add i64 %156, %158
  %160 = load i64, i64* %10, align 8
  %161 = load i64, i64* %11, align 8
  %162 = call i64 @fake_vmeread32(%struct.fake_driver* %155, i64 %159, i64 %160, i64 %161)
  %163 = load i8*, i8** %6, align 8
  %164 = load i32, i32* %17, align 4
  %165 = zext i32 %164 to i64
  %166 = getelementptr i8, i8* %163, i64 %165
  %167 = bitcast i8* %166 to i64*
  store i64 %162, i64* %167, align 8
  %168 = load i32, i32* %17, align 4
  %169 = add i32 %168, 4
  store i32 %169, i32* %17, align 4
  br label %150

170:                                              ; preds = %150
  br label %236

171:                                              ; preds = %139
  %172 = load i64, i64* %12, align 8
  %173 = load i64, i64* @VME_D16, align 8
  %174 = icmp eq i64 %172, %173
  br i1 %174, label %175, label %203

175:                                              ; preds = %171
  %176 = load i64, i64* %7, align 8
  %177 = load i32, i32* %17, align 4
  %178 = zext i32 %177 to i64
  %179 = sub i64 %176, %178
  %180 = and i64 %179, -4
  %181 = trunc i64 %180 to i32
  store i32 %181, i32* %18, align 4
  br label %182

182:                                              ; preds = %186, %175
  %183 = load i32, i32* %17, align 4
  %184 = load i32, i32* %18, align 4
  %185 = icmp ult i32 %183, %184
  br i1 %185, label %186, label %202

186:                                              ; preds = %182
  %187 = load %struct.fake_driver*, %struct.fake_driver** %14, align 8
  %188 = load i64, i64* %16, align 8
  %189 = load i32, i32* %17, align 4
  %190 = zext i32 %189 to i64
  %191 = add i64 %188, %190
  %192 = load i64, i64* %10, align 8
  %193 = load i64, i64* %11, align 8
  %194 = call i32 @fake_vmeread16(%struct.fake_driver* %187, i64 %191, i64 %192, i64 %193)
  %195 = load i8*, i8** %6, align 8
  %196 = load i32, i32* %17, align 4
  %197 = zext i32 %196 to i64
  %198 = getelementptr i8, i8* %195, i64 %197
  %199 = bitcast i8* %198 to i32*
  store i32 %194, i32* %199, align 4
  %200 = load i32, i32* %17, align 4
  %201 = add i32 %200, 2
  store i32 %201, i32* %17, align 4
  br label %182

202:                                              ; preds = %182
  br label %235

203:                                              ; preds = %171
  %204 = load i64, i64* %12, align 8
  %205 = load i64, i64* @VME_D8, align 8
  %206 = icmp eq i64 %204, %205
  br i1 %206, label %207, label %234

207:                                              ; preds = %203
  %208 = load i64, i64* %7, align 8
  %209 = load i32, i32* %17, align 4
  %210 = zext i32 %209 to i64
  %211 = sub i64 %208, %210
  %212 = trunc i64 %211 to i32
  store i32 %212, i32* %18, align 4
  br label %213

213:                                              ; preds = %217, %207
  %214 = load i32, i32* %17, align 4
  %215 = load i32, i32* %18, align 4
  %216 = icmp ult i32 %214, %215
  br i1 %216, label %217, label %233

217:                                              ; preds = %213
  %218 = load %struct.fake_driver*, %struct.fake_driver** %14, align 8
  %219 = load i64, i64* %16, align 8
  %220 = load i32, i32* %17, align 4
  %221 = zext i32 %220 to i64
  %222 = add i64 %219, %221
  %223 = load i64, i64* %10, align 8
  %224 = load i64, i64* %11, align 8
  %225 = call i32 @fake_vmeread8(%struct.fake_driver* %218, i64 %222, i64 %223, i64 %224)
  %226 = load i8*, i8** %6, align 8
  %227 = load i32, i32* %17, align 4
  %228 = zext i32 %227 to i64
  %229 = getelementptr i8, i8* %226, i64 %228
  %230 = bitcast i8* %229 to i32*
  store i32 %225, i32* %230, align 4
  %231 = load i32, i32* %17, align 4
  %232 = add i32 %231, 1
  store i32 %232, i32* %17, align 4
  br label %213

233:                                              ; preds = %213
  br label %234

234:                                              ; preds = %233, %203
  br label %235

235:                                              ; preds = %234, %202
  br label %236

236:                                              ; preds = %235, %170
  %237 = load i64, i64* %12, align 8
  %238 = load i64, i64* @VME_D16, align 8
  %239 = icmp eq i64 %237, %238
  br i1 %239, label %244, label %240

240:                                              ; preds = %236
  %241 = load i64, i64* %12, align 8
  %242 = load i64, i64* @VME_D32, align 8
  %243 = icmp eq i64 %241, %242
  br i1 %243, label %244, label %268

244:                                              ; preds = %240, %236
  %245 = load i64, i64* %7, align 8
  %246 = load i32, i32* %17, align 4
  %247 = zext i32 %246 to i64
  %248 = sub i64 %245, %247
  %249 = and i64 %248, 2
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %267

251:                                              ; preds = %244
  %252 = load %struct.fake_driver*, %struct.fake_driver** %14, align 8
  %253 = load i64, i64* %16, align 8
  %254 = load i32, i32* %17, align 4
  %255 = zext i32 %254 to i64
  %256 = add i64 %253, %255
  %257 = load i64, i64* %10, align 8
  %258 = load i64, i64* %11, align 8
  %259 = call i32 @fake_vmeread16(%struct.fake_driver* %252, i64 %256, i64 %257, i64 %258)
  %260 = load i8*, i8** %6, align 8
  %261 = load i32, i32* %17, align 4
  %262 = zext i32 %261 to i64
  %263 = getelementptr i8, i8* %260, i64 %262
  %264 = bitcast i8* %263 to i32*
  store i32 %259, i32* %264, align 4
  %265 = load i32, i32* %17, align 4
  %266 = add i32 %265, 2
  store i32 %266, i32* %17, align 4
  br label %267

267:                                              ; preds = %251, %244
  br label %268

268:                                              ; preds = %267, %240
  %269 = load i64, i64* %7, align 8
  %270 = load i32, i32* %17, align 4
  %271 = zext i32 %270 to i64
  %272 = sub i64 %269, %271
  %273 = and i64 %272, 1
  %274 = icmp ne i64 %273, 0
  br i1 %274, label %275, label %291

275:                                              ; preds = %268
  %276 = load %struct.fake_driver*, %struct.fake_driver** %14, align 8
  %277 = load i64, i64* %16, align 8
  %278 = load i32, i32* %17, align 4
  %279 = zext i32 %278 to i64
  %280 = add i64 %277, %279
  %281 = load i64, i64* %10, align 8
  %282 = load i64, i64* %11, align 8
  %283 = call i32 @fake_vmeread8(%struct.fake_driver* %276, i64 %280, i64 %281, i64 %282)
  %284 = load i8*, i8** %6, align 8
  %285 = load i32, i32* %17, align 4
  %286 = zext i32 %285 to i64
  %287 = getelementptr i8, i8* %284, i64 %286
  %288 = bitcast i8* %287 to i32*
  store i32 %283, i32* %288, align 4
  %289 = load i32, i32* %17, align 4
  %290 = add i32 %289, 1
  store i32 %290, i32* %17, align 4
  br label %291

291:                                              ; preds = %275, %268
  br label %292

292:                                              ; preds = %291, %105, %82
  %293 = load i64, i64* %7, align 8
  %294 = trunc i64 %293 to i32
  store i32 %294, i32* %9, align 4
  %295 = load %struct.vme_master_resource*, %struct.vme_master_resource** %5, align 8
  %296 = getelementptr inbounds %struct.vme_master_resource, %struct.vme_master_resource* %295, i32 0, i32 1
  %297 = call i32 @spin_unlock(i32* %296)
  %298 = load i32, i32* %9, align 4
  ret i32 %298
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @fake_vmeread8(%struct.fake_driver*, i64, i64, i64) #1

declare dso_local i32 @fake_vmeread16(%struct.fake_driver*, i64, i64, i64) #1

declare dso_local i64 @fake_vmeread32(%struct.fake_driver*, i64, i64, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
