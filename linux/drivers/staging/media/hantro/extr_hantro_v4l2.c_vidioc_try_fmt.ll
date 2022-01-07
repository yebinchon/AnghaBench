; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/hantro/extr_hantro_v4l2.c_vidioc_try_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/hantro/extr_hantro_v4l2.c_vidioc_try_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.v4l2_pix_format_mplane }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.hantro_ctx = type { %struct.hantro_fmt*, %struct.TYPE_5__, %struct.hantro_fmt* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.hantro_fmt = type { i64, i32, i64, i32 }

@.str = private unnamed_addr constant [24 x i8] c"trying format %c%c%c%c\0A\00", align 1
@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_H264_SLICE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*, i32)* @vidioc_try_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_try_fmt(%struct.file* %0, i8* %1, %struct.v4l2_format* %2, i32 %3) #0 {
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_format*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.hantro_ctx*, align 8
  %10 = alloca %struct.v4l2_pix_format_mplane*, align 8
  %11 = alloca %struct.hantro_fmt*, align 8
  %12 = alloca %struct.hantro_fmt*, align 8
  %13 = alloca %struct.hantro_fmt*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %7, align 8
  store i32 %3, i32* %8, align 4
  %16 = load i8*, i8** %6, align 8
  %17 = call %struct.hantro_ctx* @fh_to_ctx(i8* %16)
  store %struct.hantro_ctx* %17, %struct.hantro_ctx** %9, align 8
  %18 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %19 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  store %struct.v4l2_pix_format_mplane* %20, %struct.v4l2_pix_format_mplane** %10, align 8
  %21 = load i32, i32* %8, align 4
  %22 = load %struct.hantro_ctx*, %struct.hantro_ctx** %9, align 8
  %23 = call i32 @hantro_is_encoder_ctx(%struct.hantro_ctx* %22)
  %24 = icmp eq i32 %21, %23
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %15, align 4
  %26 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %10, align 8
  %27 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = and i32 %28, 127
  %30 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %10, align 8
  %31 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = ashr i32 %32, 8
  %34 = and i32 %33, 127
  %35 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %10, align 8
  %36 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = ashr i32 %37, 16
  %39 = and i32 %38, 127
  %40 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %10, align 8
  %41 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = ashr i32 %42, 24
  %44 = and i32 %43, 127
  %45 = call i32 @vpu_debug(i32 4, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %34, i32 %39, i32 %44)
  %46 = load %struct.hantro_ctx*, %struct.hantro_ctx** %9, align 8
  %47 = call %struct.hantro_fmt* @hantro_get_formats(%struct.hantro_ctx* %46, i32* %14)
  store %struct.hantro_fmt* %47, %struct.hantro_fmt** %11, align 8
  %48 = load %struct.hantro_fmt*, %struct.hantro_fmt** %11, align 8
  %49 = load i32, i32* %14, align 4
  %50 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %10, align 8
  %51 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call %struct.hantro_fmt* @hantro_find_format(%struct.hantro_fmt* %48, i32 %49, i32 %52)
  store %struct.hantro_fmt* %53, %struct.hantro_fmt** %12, align 8
  %54 = load %struct.hantro_fmt*, %struct.hantro_fmt** %12, align 8
  %55 = icmp ne %struct.hantro_fmt* %54, null
  br i1 %55, label %69, label %56

56:                                               ; preds = %4
  %57 = load %struct.hantro_fmt*, %struct.hantro_fmt** %11, align 8
  %58 = load i32, i32* %14, align 4
  %59 = load i32, i32* %15, align 4
  %60 = call %struct.hantro_fmt* @hantro_get_default_fmt(%struct.hantro_fmt* %57, i32 %58, i32 %59)
  store %struct.hantro_fmt* %60, %struct.hantro_fmt** %12, align 8
  %61 = load %struct.hantro_fmt*, %struct.hantro_fmt** %12, align 8
  %62 = getelementptr inbounds %struct.hantro_fmt, %struct.hantro_fmt* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = trunc i64 %63 to i32
  %65 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %66 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %67, i32 0, i32 0
  store i32 %64, i32* %68, align 8
  br label %69

69:                                               ; preds = %56, %4
  %70 = load i32, i32* %15, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %69
  %73 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %10, align 8
  %74 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %73, i32 0, i32 1
  store i32 1, i32* %74, align 4
  %75 = load %struct.hantro_fmt*, %struct.hantro_fmt** %12, align 8
  store %struct.hantro_fmt* %75, %struct.hantro_fmt** %13, align 8
  br label %101

76:                                               ; preds = %69
  %77 = load %struct.hantro_ctx*, %struct.hantro_ctx** %9, align 8
  %78 = call i32 @hantro_is_encoder_ctx(%struct.hantro_ctx* %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %76
  %81 = load %struct.hantro_ctx*, %struct.hantro_ctx** %9, align 8
  %82 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %81, i32 0, i32 2
  %83 = load %struct.hantro_fmt*, %struct.hantro_fmt** %82, align 8
  store %struct.hantro_fmt* %83, %struct.hantro_fmt** %13, align 8
  br label %100

84:                                               ; preds = %76
  %85 = load %struct.hantro_ctx*, %struct.hantro_ctx** %9, align 8
  %86 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %85, i32 0, i32 0
  %87 = load %struct.hantro_fmt*, %struct.hantro_fmt** %86, align 8
  store %struct.hantro_fmt* %87, %struct.hantro_fmt** %13, align 8
  %88 = load %struct.hantro_ctx*, %struct.hantro_ctx** %9, align 8
  %89 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %10, align 8
  %93 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %92, i32 0, i32 2
  store i32 %91, i32* %93, align 8
  %94 = load %struct.hantro_ctx*, %struct.hantro_ctx** %9, align 8
  %95 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %10, align 8
  %99 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %98, i32 0, i32 3
  store i32 %97, i32* %99, align 4
  br label %100

100:                                              ; preds = %84, %80
  br label %101

101:                                              ; preds = %100, %72
  %102 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %103 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %10, align 8
  %104 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %103, i32 0, i32 5
  store i32 %102, i32* %104, align 8
  %105 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %10, align 8
  %106 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %105, i32 0, i32 2
  %107 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %10, align 8
  %108 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %107, i32 0, i32 3
  %109 = load %struct.hantro_fmt*, %struct.hantro_fmt** %13, align 8
  %110 = getelementptr inbounds %struct.hantro_fmt, %struct.hantro_fmt* %109, i32 0, i32 3
  %111 = call i32 @v4l2_apply_frmsize_constraints(i32* %106, i32* %108, i32* %110)
  %112 = load i32, i32* %15, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %153, label %114

114:                                              ; preds = %101
  %115 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %10, align 8
  %116 = load %struct.hantro_fmt*, %struct.hantro_fmt** %12, align 8
  %117 = getelementptr inbounds %struct.hantro_fmt, %struct.hantro_fmt* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %10, align 8
  %120 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %10, align 8
  %123 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @v4l2_fill_pixfmt_mp(%struct.v4l2_pix_format_mplane* %115, i64 %118, i32 %121, i32 %124)
  %126 = load %struct.hantro_ctx*, %struct.hantro_ctx** %9, align 8
  %127 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %126, i32 0, i32 0
  %128 = load %struct.hantro_fmt*, %struct.hantro_fmt** %127, align 8
  %129 = getelementptr inbounds %struct.hantro_fmt, %struct.hantro_fmt* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @V4L2_PIX_FMT_H264_SLICE, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %133, label %152

133:                                              ; preds = %114
  %134 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %10, align 8
  %135 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @DIV_ROUND_UP(i32 %136, i32 16)
  %138 = mul nsw i32 128, %137
  %139 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %10, align 8
  %140 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @DIV_ROUND_UP(i32 %141, i32 16)
  %143 = mul nsw i32 %138, %142
  %144 = sext i32 %143 to i64
  %145 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %10, align 8
  %146 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %145, i32 0, i32 4
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i64 0
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = add nsw i64 %150, %144
  store i64 %151, i64* %149, align 8
  br label %152

152:                                              ; preds = %133, %114
  br label %184

153:                                              ; preds = %101
  %154 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %10, align 8
  %155 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %154, i32 0, i32 4
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i64 0
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %183, label %161

161:                                              ; preds = %153
  %162 = load %struct.hantro_fmt*, %struct.hantro_fmt** %12, align 8
  %163 = getelementptr inbounds %struct.hantro_fmt, %struct.hantro_fmt* %162, i32 0, i32 2
  %164 = load i64, i64* %163, align 8
  %165 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %10, align 8
  %166 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 8
  %168 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %10, align 8
  %169 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %168, i32 0, i32 3
  %170 = load i32, i32* %169, align 4
  %171 = mul nsw i32 %167, %170
  %172 = load %struct.hantro_fmt*, %struct.hantro_fmt** %12, align 8
  %173 = getelementptr inbounds %struct.hantro_fmt, %struct.hantro_fmt* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 8
  %175 = mul nsw i32 %171, %174
  %176 = sext i32 %175 to i64
  %177 = add nsw i64 %164, %176
  %178 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %10, align 8
  %179 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %178, i32 0, i32 4
  %180 = load %struct.TYPE_6__*, %struct.TYPE_6__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i64 0
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 0
  store i64 %177, i64* %182, align 8
  br label %183

183:                                              ; preds = %161, %153
  br label %184

184:                                              ; preds = %183, %152
  ret i32 0
}

declare dso_local %struct.hantro_ctx* @fh_to_ctx(i8*) #1

declare dso_local i32 @hantro_is_encoder_ctx(%struct.hantro_ctx*) #1

declare dso_local i32 @vpu_debug(i32, i8*, i32, i32, i32, i32) #1

declare dso_local %struct.hantro_fmt* @hantro_get_formats(%struct.hantro_ctx*, i32*) #1

declare dso_local %struct.hantro_fmt* @hantro_find_format(%struct.hantro_fmt*, i32, i32) #1

declare dso_local %struct.hantro_fmt* @hantro_get_default_fmt(%struct.hantro_fmt*, i32, i32) #1

declare dso_local i32 @v4l2_apply_frmsize_constraints(i32*, i32*, i32*) #1

declare dso_local i32 @v4l2_fill_pixfmt_mp(%struct.v4l2_pix_format_mplane*, i64, i32, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
