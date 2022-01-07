; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dispc.c_dispc_ovl_calc_scaling_34xx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dispc.c_dispc_ovl_calc_scaling_34xx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 (i64, i32, i32, i32, i32, i32)* }
%struct.omap_video_timings = type { i32 }

@FEAT_PARAM_LINEWIDTH = common dso_local global i32 0, align 4
@dispc = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str = private unnamed_addr constant [33 x i8] c"failed to find scaling settings\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"horizontal timing too tight\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Cannot setup scaling\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"width exceeds maximum width possible\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"cannot setup scaling with five taps\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, %struct.omap_video_timings*, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32, i64*, i32)* @dispc_ovl_calc_scaling_34xx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dispc_ovl_calc_scaling_34xx(i64 %0, i64 %1, %struct.omap_video_timings* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32* %8, i32* %9, i32* %10, i32* %11, i32* %12, i32 %13, i64* %14, i32 %15) #0 {
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.omap_video_timings*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i32*, align 8
  %30 = alloca i32*, align 8
  %31 = alloca i32, align 4
  %32 = alloca i64*, align 8
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  store i64 %0, i64* %18, align 8
  store i64 %1, i64* %19, align 8
  store %struct.omap_video_timings* %2, %struct.omap_video_timings** %20, align 8
  store i32 %3, i32* %21, align 4
  store i32 %4, i32* %22, align 4
  store i32 %5, i32* %23, align 4
  store i32 %6, i32* %24, align 4
  store i32 %7, i32* %25, align 4
  store i32* %8, i32** %26, align 8
  store i32* %9, i32** %27, align 8
  store i32* %10, i32** %28, align 8
  store i32* %11, i32** %29, align 8
  store i32* %12, i32** %30, align 8
  store i32 %13, i32* %31, align 4
  store i64* %14, i64** %32, align 8
  store i32 %15, i32* %33, align 4
  %38 = load i32, i32* @FEAT_PARAM_LINEWIDTH, align 4
  %39 = call i32 @dss_feat_get_param_max(i32 %38)
  store i32 %39, i32* %37, align 4
  br label %40

40:                                               ; preds = %194, %16
  %41 = load i32, i32* %22, align 4
  %42 = load i32*, i32** %30, align 8
  %43 = load i32, i32* %42, align 4
  %44 = sdiv i32 %41, %43
  store i32 %44, i32* %36, align 4
  %45 = load i32, i32* %21, align 4
  %46 = load i32*, i32** %29, align 8
  %47 = load i32, i32* %46, align 4
  %48 = sdiv i32 %45, %47
  store i32 %48, i32* %35, align 4
  %49 = load i32, i32* %36, align 4
  %50 = load i32, i32* %24, align 4
  %51 = icmp sgt i32 %49, %50
  %52 = zext i1 %51 to i32
  %53 = load i32*, i32** %26, align 8
  store i32 %52, i32* %53, align 4
  %54 = load i32, i32* %35, align 4
  %55 = load i32, i32* %37, align 4
  %56 = icmp sgt i32 %54, %55
  br i1 %56, label %57, label %69

57:                                               ; preds = %40
  %58 = load i32, i32* %36, align 4
  %59 = load i32, i32* %24, align 4
  %60 = icmp sgt i32 %58, %59
  br i1 %60, label %61, label %68

61:                                               ; preds = %57
  %62 = load i32, i32* %36, align 4
  %63 = load i32, i32* %24, align 4
  %64 = mul nsw i32 %63, 2
  %65 = icmp slt i32 %62, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %61
  %67 = load i32*, i32** %26, align 8
  store i32 0, i32* %67, align 4
  br label %68

68:                                               ; preds = %66, %61, %57
  br label %69

69:                                               ; preds = %68, %40
  br label %70

70:                                               ; preds = %114, %69
  %71 = load i32*, i32** %26, align 8
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %84

74:                                               ; preds = %70
  %75 = load i64, i64* %18, align 8
  %76 = load %struct.omap_video_timings*, %struct.omap_video_timings** %20, align 8
  %77 = load i32, i32* %35, align 4
  %78 = load i32, i32* %36, align 4
  %79 = load i32, i32* %23, align 4
  %80 = load i32, i32* %24, align 4
  %81 = load i32, i32* %25, align 4
  %82 = call i64 @calc_core_clk_five_taps(i64 %75, %struct.omap_video_timings* %76, i32 %77, i32 %78, i32 %79, i32 %80, i32 %81)
  %83 = load i64*, i64** %32, align 8
  store i64 %82, i64* %83, align 8
  br label %96

84:                                               ; preds = %70
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dispc, i32 0, i32 0), align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = load i64 (i64, i32, i32, i32, i32, i32)*, i64 (i64, i32, i32, i32, i32, i32)** %86, align 8
  %88 = load i64, i64* %18, align 8
  %89 = load i32, i32* %35, align 4
  %90 = load i32, i32* %36, align 4
  %91 = load i32, i32* %23, align 4
  %92 = load i32, i32* %24, align 4
  %93 = load i32, i32* %33, align 4
  %94 = call i64 %87(i64 %88, i32 %89, i32 %90, i32 %91, i32 %92, i32 %93)
  %95 = load i64*, i64** %32, align 8
  store i64 %94, i64* %95, align 8
  br label %96

96:                                               ; preds = %84, %74
  %97 = load i64, i64* %18, align 8
  %98 = load i64, i64* %19, align 8
  %99 = load %struct.omap_video_timings*, %struct.omap_video_timings** %20, align 8
  %100 = load i32, i32* %31, align 4
  %101 = load i32, i32* %35, align 4
  %102 = load i32, i32* %36, align 4
  %103 = load i32, i32* %23, align 4
  %104 = load i32, i32* %24, align 4
  %105 = load i32*, i32** %26, align 8
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @check_horiz_timing_omap3(i64 %97, i64 %98, %struct.omap_video_timings* %99, i32 %100, i32 %101, i32 %102, i32 %103, i32 %104, i32 %106)
  store i32 %107, i32* %34, align 4
  %108 = load i32, i32* %34, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %96
  %111 = load i32*, i32** %26, align 8
  %112 = load i32, i32* %111, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %110
  %115 = load i32*, i32** %26, align 8
  store i32 0, i32* %115, align 4
  br label %70

116:                                              ; preds = %110, %96
  %117 = load i32, i32* %34, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %141, label %119

119:                                              ; preds = %116
  %120 = load i32, i32* %35, align 4
  %121 = load i32, i32* %37, align 4
  %122 = mul nsw i32 %121, 2
  %123 = icmp sgt i32 %120, %122
  br i1 %123, label %141, label %124

124:                                              ; preds = %119
  %125 = load i32, i32* %35, align 4
  %126 = load i32, i32* %37, align 4
  %127 = icmp sgt i32 %125, %126
  br i1 %127, label %128, label %132

128:                                              ; preds = %124
  %129 = load i32*, i32** %26, align 8
  %130 = load i32, i32* %129, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %141, label %132

132:                                              ; preds = %128, %124
  %133 = load i64*, i64** %32, align 8
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %141

136:                                              ; preds = %132
  %137 = load i64*, i64** %32, align 8
  %138 = load i64, i64* %137, align 8
  %139 = call i64 (...) @dispc_core_clk_rate()
  %140 = icmp ugt i64 %138, %139
  br label %141

141:                                              ; preds = %136, %132, %128, %119, %116
  %142 = phi i1 [ true, %132 ], [ true, %128 ], [ true, %119 ], [ true, %116 ], [ %140, %136 ]
  %143 = zext i1 %142 to i32
  store i32 %143, i32* %34, align 4
  %144 = load i32, i32* %34, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %171, label %146

146:                                              ; preds = %141
  %147 = load i32, i32* %35, align 4
  %148 = sdiv i32 %147, 4
  %149 = load i32, i32* %23, align 4
  %150 = icmp sgt i32 %148, %149
  br i1 %150, label %151, label %152

151:                                              ; preds = %146
  store i32 1, i32* %34, align 4
  br label %152

152:                                              ; preds = %151, %146
  %153 = load i32*, i32** %26, align 8
  %154 = load i32, i32* %153, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %163

156:                                              ; preds = %152
  %157 = load i32, i32* %36, align 4
  %158 = sdiv i32 %157, 4
  %159 = load i32, i32* %24, align 4
  %160 = icmp sgt i32 %158, %159
  br i1 %160, label %161, label %162

161:                                              ; preds = %156
  store i32 1, i32* %34, align 4
  br label %162

162:                                              ; preds = %161, %156
  br label %170

163:                                              ; preds = %152
  %164 = load i32, i32* %36, align 4
  %165 = sdiv i32 %164, 2
  %166 = load i32, i32* %24, align 4
  %167 = icmp sgt i32 %165, %166
  br i1 %167, label %168, label %169

168:                                              ; preds = %163
  store i32 1, i32* %34, align 4
  br label %169

169:                                              ; preds = %168, %163
  br label %170

170:                                              ; preds = %169, %162
  br label %171

171:                                              ; preds = %170, %141
  %172 = load i32, i32* %34, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %178

174:                                              ; preds = %171
  %175 = load i32*, i32** %30, align 8
  %176 = load i32, i32* %175, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %175, align 4
  br label %178

178:                                              ; preds = %174, %171
  br label %179

179:                                              ; preds = %178
  %180 = load i32*, i32** %29, align 8
  %181 = load i32, i32* %180, align 4
  %182 = load i32*, i32** %27, align 8
  %183 = load i32, i32* %182, align 4
  %184 = icmp sle i32 %181, %183
  br i1 %184, label %185, label %194

185:                                              ; preds = %179
  %186 = load i32*, i32** %30, align 8
  %187 = load i32, i32* %186, align 4
  %188 = load i32*, i32** %28, align 8
  %189 = load i32, i32* %188, align 4
  %190 = icmp sle i32 %187, %189
  br i1 %190, label %191, label %194

191:                                              ; preds = %185
  %192 = load i32, i32* %34, align 4
  %193 = icmp ne i32 %192, 0
  br label %194

194:                                              ; preds = %191, %185, %179
  %195 = phi i1 [ false, %185 ], [ false, %179 ], [ %193, %191 ]
  br i1 %195, label %40, label %196

196:                                              ; preds = %194
  %197 = load i32, i32* %34, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %203

199:                                              ; preds = %196
  %200 = call i32 @DSSERR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %201 = load i32, i32* @EINVAL, align 4
  %202 = sub nsw i32 0, %201
  store i32 %202, i32* %17, align 4
  br label %243

203:                                              ; preds = %196
  %204 = load i64, i64* %18, align 8
  %205 = load i64, i64* %19, align 8
  %206 = load %struct.omap_video_timings*, %struct.omap_video_timings** %20, align 8
  %207 = load i32, i32* %31, align 4
  %208 = load i32, i32* %35, align 4
  %209 = load i32, i32* %36, align 4
  %210 = load i32, i32* %23, align 4
  %211 = load i32, i32* %24, align 4
  %212 = load i32*, i32** %26, align 8
  %213 = load i32, i32* %212, align 4
  %214 = call i32 @check_horiz_timing_omap3(i64 %204, i64 %205, %struct.omap_video_timings* %206, i32 %207, i32 %208, i32 %209, i32 %210, i32 %211, i32 %213)
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %220

216:                                              ; preds = %203
  %217 = call i32 @DSSERR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %218 = load i32, i32* @EINVAL, align 4
  %219 = sub nsw i32 0, %218
  store i32 %219, i32* %17, align 4
  br label %243

220:                                              ; preds = %203
  %221 = load i32, i32* %35, align 4
  %222 = load i32, i32* %37, align 4
  %223 = mul nsw i32 %222, 2
  %224 = icmp sgt i32 %221, %223
  br i1 %224, label %225, label %230

225:                                              ; preds = %220
  %226 = call i32 @DSSERR(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %227 = call i32 @DSSERR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  %228 = load i32, i32* @EINVAL, align 4
  %229 = sub nsw i32 0, %228
  store i32 %229, i32* %17, align 4
  br label %243

230:                                              ; preds = %220
  %231 = load i32, i32* %35, align 4
  %232 = load i32, i32* %37, align 4
  %233 = icmp sgt i32 %231, %232
  br i1 %233, label %234, label %242

234:                                              ; preds = %230
  %235 = load i32*, i32** %26, align 8
  %236 = load i32, i32* %235, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %242

238:                                              ; preds = %234
  %239 = call i32 @DSSERR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  %240 = load i32, i32* @EINVAL, align 4
  %241 = sub nsw i32 0, %240
  store i32 %241, i32* %17, align 4
  br label %243

242:                                              ; preds = %234, %230
  store i32 0, i32* %17, align 4
  br label %243

243:                                              ; preds = %242, %238, %225, %216, %199
  %244 = load i32, i32* %17, align 4
  ret i32 %244
}

declare dso_local i32 @dss_feat_get_param_max(i32) #1

declare dso_local i64 @calc_core_clk_five_taps(i64, %struct.omap_video_timings*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @check_horiz_timing_omap3(i64, i64, %struct.omap_video_timings*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @dispc_core_clk_rate(...) #1

declare dso_local i32 @DSSERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
