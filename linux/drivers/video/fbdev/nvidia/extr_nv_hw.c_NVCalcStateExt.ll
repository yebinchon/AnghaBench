; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/nvidia/extr_nv_hw.c_NVCalcStateExt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/nvidia/extr_nv_hw.c_NVCalcStateExt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvidia_par = type { i32, i32, i32, i32, i32, i32, i64 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@FB_VMODE_DOUBLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @NVCalcStateExt(%struct.nvidia_par* %0, %struct.TYPE_3__* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.nvidia_par*, align 8
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.nvidia_par* %0, %struct.nvidia_par** %9, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  store i32 0, i32* %18, align 4
  %19 = load i32, i32* %11, align 4
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* %12, align 4
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* %14, align 4
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* %11, align 4
  %29 = add nsw i32 %28, 1
  %30 = sdiv i32 %29, 8
  store i32 %30, i32* %17, align 4
  %31 = load %struct.nvidia_par*, %struct.nvidia_par** %9, align 8
  %32 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %31, i32 0, i32 6
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %8
  %36 = load i32, i32* %15, align 4
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 15
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 16
  %41 = load %struct.nvidia_par*, %struct.nvidia_par** %9, align 8
  %42 = call i32 @CalcVClock2Stage(i32 %36, i32* %18, i32* %38, i32* %40, %struct.nvidia_par* %41)
  br label %49

43:                                               ; preds = %8
  %44 = load i32, i32* %15, align 4
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 15
  %47 = load %struct.nvidia_par*, %struct.nvidia_par** %9, align 8
  %48 = call i32 @CalcVClock(i32 %44, i32* %18, i32* %46, %struct.nvidia_par* %47)
  br label %49

49:                                               ; preds = %43, %35
  %50 = load %struct.nvidia_par*, %struct.nvidia_par** %9, align 8
  %51 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  switch i32 %52, label %110 [
    i32 132, label %53
    i32 128, label %95
    i32 131, label %109
    i32 130, label %109
    i32 129, label %109
  ]

53:                                               ; preds = %49
  %54 = load i32, i32* %18, align 4
  %55 = load i32, i32* %17, align 4
  %56 = mul nsw i32 %55, 8
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 3
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 4
  %61 = load %struct.nvidia_par*, %struct.nvidia_par** %9, align 8
  %62 = call i32 @nv4UpdateArbitrationSettings(i32 %54, i32 %56, i32* %58, i32* %60, %struct.nvidia_par* %61)
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 5
  store i32 0, i32* %64, align 4
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 6
  store i32 188, i32* %66, align 4
  %67 = load i32, i32* %16, align 4
  %68 = load i32, i32* @FB_VMODE_DOUBLE, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %53
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 6
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %74, 2
  store i32 %75, i32* %73, align 4
  br label %76

76:                                               ; preds = %71, %53
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 7
  store i32 0, i32* %78, align 4
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 8
  store i32 268437248, i32* %80, align 4
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 9
  store i32 4372, i32* %82, align 4
  %83 = load i32, i32* %11, align 4
  %84 = icmp eq i32 %83, 16
  %85 = zext i1 %84 to i64
  %86 = select i1 %84, i32 1052928, i32 1048832
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 10
  store i32 %86, i32* %88, align 4
  %89 = load i32, i32* %13, align 4
  %90 = icmp slt i32 %89, 1280
  %91 = zext i1 %90 to i64
  %92 = select i1 %90, i32 4, i32 0
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 11
  store i32 %92, i32* %94, align 4
  br label %224

95:                                               ; preds = %49
  %96 = load %struct.nvidia_par*, %struct.nvidia_par** %9, align 8
  %97 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %96, i32 0, i32 5
  %98 = load i32, i32* %97, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %108, label %100

100:                                              ; preds = %95
  %101 = load %struct.nvidia_par*, %struct.nvidia_par** %9, align 8
  %102 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @NV_RD32(i32 %103, i32 1408)
  %105 = and i32 %104, -268435713
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 12
  store i32 %105, i32* %107, align 4
  br label %108

108:                                              ; preds = %100, %95
  br label %109

109:                                              ; preds = %49, %49, %49, %108
  br label %110

110:                                              ; preds = %49, %109
  %111 = load %struct.nvidia_par*, %struct.nvidia_par** %9, align 8
  %112 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = and i32 %113, 65520
  %115 = icmp eq i32 %114, 576
  br i1 %115, label %122, label %116

116:                                              ; preds = %110
  %117 = load %struct.nvidia_par*, %struct.nvidia_par** %9, align 8
  %118 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = and i32 %119, 65520
  %121 = icmp eq i32 %120, 976
  br i1 %121, label %122, label %127

122:                                              ; preds = %116, %110
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 3
  store i32 256, i32* %124, align 4
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 4
  store i32 1152, i32* %126, align 4
  br label %173

127:                                              ; preds = %116
  %128 = load %struct.nvidia_par*, %struct.nvidia_par** %9, align 8
  %129 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = and i32 %130, 65535
  %132 = icmp eq i32 %131, 416
  br i1 %132, label %139, label %133

133:                                              ; preds = %127
  %134 = load %struct.nvidia_par*, %struct.nvidia_par** %9, align 8
  %135 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = and i32 %136, 65535
  %138 = icmp eq i32 %137, 496
  br i1 %138, label %139, label %149

139:                                              ; preds = %133, %127
  %140 = load i32, i32* %18, align 4
  %141 = load i32, i32* %17, align 4
  %142 = mul nsw i32 %141, 8
  %143 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 3
  %145 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 4
  %147 = load %struct.nvidia_par*, %struct.nvidia_par** %9, align 8
  %148 = call i32 @nForceUpdateArbitrationSettings(i32 %140, i32 %142, i32* %144, i32* %146, %struct.nvidia_par* %147)
  br label %172

149:                                              ; preds = %133
  %150 = load %struct.nvidia_par*, %struct.nvidia_par** %9, align 8
  %151 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = icmp slt i32 %152, 129
  br i1 %153, label %154, label %164

154:                                              ; preds = %149
  %155 = load i32, i32* %18, align 4
  %156 = load i32, i32* %17, align 4
  %157 = mul nsw i32 %156, 8
  %158 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i32 0, i32 3
  %160 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i32 0, i32 4
  %162 = load %struct.nvidia_par*, %struct.nvidia_par** %9, align 8
  %163 = call i32 @nv10UpdateArbitrationSettings(i32 %155, i32 %157, i32* %159, i32* %161, %struct.nvidia_par* %162)
  br label %171

164:                                              ; preds = %149
  %165 = load %struct.nvidia_par*, %struct.nvidia_par** %9, align 8
  %166 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %166, i32 0, i32 3
  %168 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %169 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %168, i32 0, i32 4
  %170 = call i32 @nv30UpdateArbitrationSettings(%struct.nvidia_par* %165, i32* %167, i32* %169)
  br label %171

171:                                              ; preds = %164, %154
  br label %172

172:                                              ; preds = %171, %139
  br label %173

173:                                              ; preds = %172, %122
  %174 = load %struct.nvidia_par*, %struct.nvidia_par** %9, align 8
  %175 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 8
  %177 = ashr i32 %176, 17
  %178 = or i32 128, %177
  %179 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %180 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %179, i32 0, i32 5
  store i32 %178, i32* %180, align 4
  %181 = load %struct.nvidia_par*, %struct.nvidia_par** %9, align 8
  %182 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 8
  %184 = ashr i32 %183, 11
  %185 = shl i32 %184, 2
  %186 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %187 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %186, i32 0, i32 6
  store i32 %185, i32* %187, align 4
  %188 = load %struct.nvidia_par*, %struct.nvidia_par** %9, align 8
  %189 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 8
  %191 = ashr i32 %190, 24
  %192 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %193 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %192, i32 0, i32 7
  store i32 %191, i32* %193, align 4
  %194 = load i32, i32* %16, align 4
  %195 = load i32, i32* @FB_VMODE_DOUBLE, align 4
  %196 = and i32 %194, %195
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %203

198:                                              ; preds = %173
  %199 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %200 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %199, i32 0, i32 6
  %201 = load i32, i32* %200, align 4
  %202 = or i32 %201, 2
  store i32 %202, i32* %200, align 4
  br label %203

203:                                              ; preds = %198, %173
  %204 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %205 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %204, i32 0, i32 8
  store i32 268437248, i32* %205, align 4
  %206 = load %struct.nvidia_par*, %struct.nvidia_par** %9, align 8
  %207 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %206, i32 0, i32 3
  %208 = load i32, i32* %207, align 4
  %209 = call i32 @NV_RD32(i32 %208, i32 512)
  %210 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %211 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %210, i32 0, i32 9
  store i32 %209, i32* %211, align 4
  %212 = load i32, i32* %11, align 4
  %213 = icmp eq i32 %212, 16
  %214 = zext i1 %213 to i64
  %215 = select i1 %213, i32 1052928, i32 1048832
  %216 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %217 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %216, i32 0, i32 10
  store i32 %215, i32* %217, align 4
  %218 = load i32, i32* %13, align 4
  %219 = icmp slt i32 %218, 1280
  %220 = zext i1 %219 to i64
  %221 = select i1 %219, i32 4, i32 0
  %222 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %223 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %222, i32 0, i32 11
  store i32 %221, i32* %223, align 4
  br label %224

224:                                              ; preds = %203, %76
  %225 = load i32, i32* %11, align 4
  %226 = icmp ne i32 %225, 8
  br i1 %226, label %227, label %232

227:                                              ; preds = %224
  %228 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %229 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %228, i32 0, i32 10
  %230 = load i32, i32* %229, align 4
  %231 = or i32 %230, 48
  store i32 %231, i32* %229, align 4
  br label %232

232:                                              ; preds = %227, %224
  %233 = load i32, i32* %12, align 4
  %234 = sdiv i32 %233, 8
  %235 = load i32, i32* %17, align 4
  %236 = mul nsw i32 %234, %235
  %237 = and i32 %236, 1792
  %238 = ashr i32 %237, 3
  %239 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %240 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %239, i32 0, i32 13
  store i32 %238, i32* %240, align 4
  %241 = load i32, i32* %17, align 4
  %242 = icmp sgt i32 %241, 2
  br i1 %242, label %243, label %244

243:                                              ; preds = %232
  br label %246

244:                                              ; preds = %232
  %245 = load i32, i32* %17, align 4
  br label %246

246:                                              ; preds = %244, %243
  %247 = phi i32 [ 3, %243 ], [ %245, %244 ]
  %248 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %249 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %248, i32 0, i32 14
  store i32 %247, i32* %249, align 4
  ret void
}

declare dso_local i32 @CalcVClock2Stage(i32, i32*, i32*, i32*, %struct.nvidia_par*) #1

declare dso_local i32 @CalcVClock(i32, i32*, i32*, %struct.nvidia_par*) #1

declare dso_local i32 @nv4UpdateArbitrationSettings(i32, i32, i32*, i32*, %struct.nvidia_par*) #1

declare dso_local i32 @NV_RD32(i32, i32) #1

declare dso_local i32 @nForceUpdateArbitrationSettings(i32, i32, i32*, i32*, %struct.nvidia_par*) #1

declare dso_local i32 @nv10UpdateArbitrationSettings(i32, i32, i32*, i32*, %struct.nvidia_par*) #1

declare dso_local i32 @nv30UpdateArbitrationSettings(%struct.nvidia_par*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
