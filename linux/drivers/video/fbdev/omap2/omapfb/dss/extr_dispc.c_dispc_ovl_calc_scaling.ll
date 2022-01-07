; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dispc.c_dispc_ovl_calc_scaling.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dispc.c_dispc_ovl_calc_scaling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (i64, i64, %struct.omap_video_timings*, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32, i64*, i32)* }
%struct.omap_video_timings = type { i64 }

@FEAT_PARAM_DOWNSCALE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"cannot calculate scaling settings: pclk is zero\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@OMAP_DSS_OVL_CAP_SCALE = common dso_local global i32 0, align 4
@OMAP_DSS_ROT_TILER = common dso_local global i32 0, align 4
@FEAT_BURST_2D = common dso_local global i32 0, align 4
@OMAP_DSS_COLOR_CLUT1 = common dso_local global i32 0, align 4
@OMAP_DSS_COLOR_CLUT2 = common dso_local global i32 0, align 4
@OMAP_DSS_COLOR_CLUT4 = common dso_local global i32 0, align 4
@OMAP_DSS_COLOR_CLUT8 = common dso_local global i32 0, align 4
@dispc = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [110 x i8] c"%dx%d -> %dx%d (%d.%02d x %d.%02d), decim %dx%d %dx%d (%d.%02d x %d.%02d), taps %d, req clk %lu, cur clk %lu\0A\00", align 1
@.str.2 = private unnamed_addr constant [91 x i8] c"failed to set up scaling, required core clk rate = %lu Hz, current core clk rate = %lu Hz\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i32, %struct.omap_video_timings*, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32, i32, i32)* @dispc_ovl_calc_scaling to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dispc_ovl_calc_scaling(i64 %0, i64 %1, i32 %2, %struct.omap_video_timings* %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32* %9, i32* %10, i32* %11, i32 %12, i32 %13, i32 %14) #0 {
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.omap_video_timings*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i64, align 8
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  store i64 %0, i64* %17, align 8
  store i64 %1, i64* %18, align 8
  store i32 %2, i32* %19, align 4
  store %struct.omap_video_timings* %3, %struct.omap_video_timings** %20, align 8
  store i32 %4, i32* %21, align 4
  store i32 %5, i32* %22, align 4
  store i32 %6, i32* %23, align 4
  store i32 %7, i32* %24, align 4
  store i32 %8, i32* %25, align 4
  store i32* %9, i32** %26, align 8
  store i32* %10, i32** %27, align 8
  store i32* %11, i32** %28, align 8
  store i32 %12, i32* %29, align 4
  store i32 %13, i32* %30, align 4
  store i32 %14, i32* %31, align 4
  %38 = load i32, i32* @FEAT_PARAM_DOWNSCALE, align 4
  %39 = call i32 @dss_feat_get_param_max(i32 %38)
  store i32 %39, i32* %32, align 4
  store i32 16, i32* %33, align 4
  store i64 0, i64* %34, align 8
  %40 = load i32, i32* %21, align 4
  %41 = load i32, i32* %23, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %15
  %44 = load i32, i32* %22, align 4
  %45 = load i32, i32* %24, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  store i32 0, i32* %16, align 4
  br label %239

48:                                               ; preds = %43, %15
  %49 = load i32, i32* %31, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %63, label %51

51:                                               ; preds = %48
  %52 = load i64, i64* %17, align 8
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %51
  %55 = load %struct.omap_video_timings*, %struct.omap_video_timings** %20, align 8
  %56 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %54, %51
  %60 = call i32 (i8*, ...) @DSSERR(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %16, align 4
  br label %239

63:                                               ; preds = %54, %48
  %64 = load i32, i32* %19, align 4
  %65 = load i32, i32* @OMAP_DSS_OVL_CAP_SCALE, align 4
  %66 = and i32 %64, %65
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %16, align 4
  br label %239

71:                                               ; preds = %63
  %72 = load i32, i32* %31, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = load i32*, i32** %28, align 8
  store i32 1, i32* %75, align 4
  %76 = load i32*, i32** %27, align 8
  store i32 1, i32* %76, align 4
  br label %91

77:                                               ; preds = %71
  %78 = load i32*, i32** %27, align 8
  store i32 16, i32* %78, align 4
  %79 = load i32, i32* %30, align 4
  %80 = load i32, i32* @OMAP_DSS_ROT_TILER, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %86

82:                                               ; preds = %77
  %83 = load i32, i32* @FEAT_BURST_2D, align 4
  %84 = call i64 @dss_has_feature(i32 %83)
  %85 = icmp ne i64 %84, 0
  br label %86

86:                                               ; preds = %82, %77
  %87 = phi i1 [ false, %77 ], [ %85, %82 ]
  %88 = zext i1 %87 to i64
  %89 = select i1 %87, i32 2, i32 16
  %90 = load i32*, i32** %28, align 8
  store i32 %89, i32* %90, align 4
  br label %91

91:                                               ; preds = %86, %74
  %92 = load i32, i32* %25, align 4
  %93 = load i32, i32* @OMAP_DSS_COLOR_CLUT1, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %107, label %95

95:                                               ; preds = %91
  %96 = load i32, i32* %25, align 4
  %97 = load i32, i32* @OMAP_DSS_COLOR_CLUT2, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %107, label %99

99:                                               ; preds = %95
  %100 = load i32, i32* %25, align 4
  %101 = load i32, i32* @OMAP_DSS_COLOR_CLUT4, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %107, label %103

103:                                              ; preds = %99
  %104 = load i32, i32* %25, align 4
  %105 = load i32, i32* @OMAP_DSS_COLOR_CLUT8, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %111

107:                                              ; preds = %103, %99, %95, %91
  %108 = load i32*, i32** %27, align 8
  store i32 1, i32* %108, align 4
  %109 = load i32*, i32** %28, align 8
  store i32 1, i32* %109, align 4
  %110 = load i32*, i32** %26, align 8
  store i32 0, i32* %110, align 4
  store i32 0, i32* %16, align 4
  br label %239

111:                                              ; preds = %103
  %112 = load i32, i32* %21, align 4
  %113 = load i32, i32* %23, align 4
  %114 = call i32 @DIV_ROUND_UP(i32 %112, i32 %113)
  %115 = load i32, i32* %32, align 4
  %116 = call i32 @DIV_ROUND_UP(i32 %114, i32 %115)
  store i32 %116, i32* %35, align 4
  %117 = load i32, i32* %22, align 4
  %118 = load i32, i32* %24, align 4
  %119 = call i32 @DIV_ROUND_UP(i32 %117, i32 %118)
  %120 = load i32, i32* %32, align 4
  %121 = call i32 @DIV_ROUND_UP(i32 %119, i32 %120)
  store i32 %121, i32* %36, align 4
  %122 = load i32, i32* %35, align 4
  %123 = load i32*, i32** %27, align 8
  %124 = load i32, i32* %123, align 4
  %125 = icmp sgt i32 %122, %124
  br i1 %125, label %131, label %126

126:                                              ; preds = %111
  %127 = load i32, i32* %23, align 4
  %128 = load i32, i32* %21, align 4
  %129 = mul nsw i32 %128, 8
  %130 = icmp sgt i32 %127, %129
  br i1 %130, label %131, label %134

131:                                              ; preds = %126, %111
  %132 = load i32, i32* @EINVAL, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %16, align 4
  br label %239

134:                                              ; preds = %126
  %135 = load i32, i32* %36, align 4
  %136 = load i32*, i32** %28, align 8
  %137 = load i32, i32* %136, align 4
  %138 = icmp sgt i32 %135, %137
  br i1 %138, label %144, label %139

139:                                              ; preds = %134
  %140 = load i32, i32* %24, align 4
  %141 = load i32, i32* %22, align 4
  %142 = mul nsw i32 %141, 8
  %143 = icmp sgt i32 %140, %142
  br i1 %143, label %144, label %147

144:                                              ; preds = %139, %134
  %145 = load i32, i32* @EINVAL, align 4
  %146 = sub nsw i32 0, %145
  store i32 %146, i32* %16, align 4
  br label %239

147:                                              ; preds = %139
  %148 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dispc, i32 0, i32 0), align 8
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 0
  %150 = load i32 (i64, i64, %struct.omap_video_timings*, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32, i64*, i32)*, i32 (i64, i64, %struct.omap_video_timings*, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32, i64*, i32)** %149, align 8
  %151 = load i64, i64* %17, align 8
  %152 = load i64, i64* %18, align 8
  %153 = load %struct.omap_video_timings*, %struct.omap_video_timings** %20, align 8
  %154 = load i32, i32* %21, align 4
  %155 = load i32, i32* %22, align 4
  %156 = load i32, i32* %23, align 4
  %157 = load i32, i32* %24, align 4
  %158 = load i32, i32* %25, align 4
  %159 = load i32*, i32** %26, align 8
  %160 = load i32*, i32** %27, align 8
  %161 = load i32*, i32** %28, align 8
  %162 = load i32, i32* %29, align 4
  %163 = load i32, i32* %31, align 4
  %164 = call i32 %150(i64 %151, i64 %152, %struct.omap_video_timings* %153, i32 %154, i32 %155, i32 %156, i32 %157, i32 %158, i32* %159, i32* %160, i32* %161, i32* %35, i32* %36, i32 %162, i64* %34, i32 %163)
  store i32 %164, i32* %37, align 4
  %165 = load i32, i32* %37, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %169

167:                                              ; preds = %147
  %168 = load i32, i32* %37, align 4
  store i32 %168, i32* %16, align 4
  br label %239

169:                                              ; preds = %147
  %170 = load i32, i32* %21, align 4
  %171 = load i32, i32* %22, align 4
  %172 = load i32, i32* %23, align 4
  %173 = load i32, i32* %24, align 4
  %174 = load i32, i32* %23, align 4
  %175 = load i32, i32* %21, align 4
  %176 = sdiv i32 %174, %175
  %177 = load i32, i32* %23, align 4
  %178 = load i32, i32* %21, align 4
  %179 = call i32 @DIV_FRAC(i32 %177, i32 %178)
  %180 = load i32, i32* %24, align 4
  %181 = load i32, i32* %22, align 4
  %182 = sdiv i32 %180, %181
  %183 = load i32, i32* %24, align 4
  %184 = load i32, i32* %22, align 4
  %185 = call i32 @DIV_FRAC(i32 %183, i32 %184)
  %186 = load i32, i32* %35, align 4
  %187 = load i32, i32* %36, align 4
  %188 = load i32, i32* %21, align 4
  %189 = load i32, i32* %35, align 4
  %190 = sdiv i32 %188, %189
  %191 = load i32, i32* %22, align 4
  %192 = load i32, i32* %36, align 4
  %193 = sdiv i32 %191, %192
  %194 = load i32, i32* %23, align 4
  %195 = load i32, i32* %21, align 4
  %196 = load i32, i32* %35, align 4
  %197 = sdiv i32 %195, %196
  %198 = sdiv i32 %194, %197
  %199 = load i32, i32* %23, align 4
  %200 = load i32, i32* %21, align 4
  %201 = load i32, i32* %35, align 4
  %202 = sdiv i32 %200, %201
  %203 = call i32 @DIV_FRAC(i32 %199, i32 %202)
  %204 = load i32, i32* %24, align 4
  %205 = load i32, i32* %22, align 4
  %206 = load i32, i32* %36, align 4
  %207 = sdiv i32 %205, %206
  %208 = sdiv i32 %204, %207
  %209 = load i32, i32* %24, align 4
  %210 = load i32, i32* %22, align 4
  %211 = load i32, i32* %36, align 4
  %212 = sdiv i32 %210, %211
  %213 = call i32 @DIV_FRAC(i32 %209, i32 %212)
  %214 = load i32*, i32** %26, align 8
  %215 = load i32, i32* %214, align 4
  %216 = icmp ne i32 %215, 0
  %217 = zext i1 %216 to i64
  %218 = select i1 %216, i32 5, i32 3
  %219 = load i64, i64* %34, align 8
  %220 = call i64 (...) @dispc_core_clk_rate()
  %221 = call i32 @DSSDBG(i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.1, i64 0, i64 0), i32 %170, i32 %171, i32 %172, i32 %173, i32 %176, i32 %179, i32 %182, i32 %185, i32 %186, i32 %187, i32 %190, i32 %193, i32 %198, i32 %203, i32 %208, i32 %213, i32 %218, i64 %219, i64 %220)
  %222 = load i64, i64* %34, align 8
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %228

224:                                              ; preds = %169
  %225 = load i64, i64* %34, align 8
  %226 = call i64 (...) @dispc_core_clk_rate()
  %227 = icmp ugt i64 %225, %226
  br i1 %227, label %228, label %234

228:                                              ; preds = %224, %169
  %229 = load i64, i64* %34, align 8
  %230 = call i64 (...) @dispc_core_clk_rate()
  %231 = call i32 (i8*, ...) @DSSERR(i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.2, i64 0, i64 0), i64 %229, i64 %230)
  %232 = load i32, i32* @EINVAL, align 4
  %233 = sub nsw i32 0, %232
  store i32 %233, i32* %16, align 4
  br label %239

234:                                              ; preds = %224
  %235 = load i32, i32* %35, align 4
  %236 = load i32*, i32** %27, align 8
  store i32 %235, i32* %236, align 4
  %237 = load i32, i32* %36, align 4
  %238 = load i32*, i32** %28, align 8
  store i32 %237, i32* %238, align 4
  store i32 0, i32* %16, align 4
  br label %239

239:                                              ; preds = %234, %228, %167, %144, %131, %107, %68, %59, %47
  %240 = load i32, i32* %16, align 4
  ret i32 %240
}

declare dso_local i32 @dss_feat_get_param_max(i32) #1

declare dso_local i32 @DSSERR(i8*, ...) #1

declare dso_local i64 @dss_has_feature(i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @DSSDBG(i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64) #1

declare dso_local i32 @DIV_FRAC(i32, i32) #1

declare dso_local i64 @dispc_core_clk_rate(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
