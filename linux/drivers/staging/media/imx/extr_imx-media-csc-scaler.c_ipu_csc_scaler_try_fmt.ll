; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-csc-scaler.c_ipu_csc_scaler_try_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-csc-scaler.c_ipu_csc_scaler_try_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }
%struct.ipu_csc_scaler_ctx = type { i32 }
%struct.ipu_csc_scaler_q_data = type { %struct.TYPE_3__ }
%struct.ipu_image = type { %struct.TYPE_3__ }

@V4L2_FIELD_ANY = common dso_local global i32 0, align 4
@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_OUTPUT = common dso_local global i32 0, align 4
@V4L2_COLORSPACE_DEFAULT = common dso_local global i32 0, align 4
@V4L2_COLORSPACE_SRGB = common dso_local global i32 0, align 4
@V4L2_YCBCR_ENC_DEFAULT = common dso_local global i32 0, align 4
@V4L2_XFER_FUNC_DEFAULT = common dso_local global i32 0, align 4
@V4L2_QUANTIZATION_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @ipu_csc_scaler_try_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipu_csc_scaler_try_fmt(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_format*, align 8
  %8 = alloca %struct.ipu_csc_scaler_ctx*, align 8
  %9 = alloca %struct.ipu_csc_scaler_q_data*, align 8
  %10 = alloca %struct.ipu_image, align 4
  %11 = alloca %struct.ipu_image, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ipu_csc_scaler_q_data*, align 8
  %14 = alloca %struct.ipu_csc_scaler_q_data*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %7, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = call %struct.ipu_csc_scaler_ctx* @fh_to_ctx(i8* %15)
  store %struct.ipu_csc_scaler_ctx* %16, %struct.ipu_csc_scaler_ctx** %8, align 8
  %17 = load %struct.ipu_csc_scaler_ctx*, %struct.ipu_csc_scaler_ctx** %8, align 8
  %18 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %19 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.ipu_csc_scaler_q_data* @get_q_data(%struct.ipu_csc_scaler_ctx* %17, i32 %20)
  store %struct.ipu_csc_scaler_q_data* %21, %struct.ipu_csc_scaler_q_data** %9, align 8
  %22 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %23 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %12, align 4
  %28 = load i32, i32* @V4L2_FIELD_ANY, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %3
  %31 = load i32, i32* @V4L2_FIELD_NONE, align 4
  store i32 %31, i32* %12, align 4
  br label %40

32:                                               ; preds = %3
  %33 = load i32, i32* %12, align 4
  %34 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %167

39:                                               ; preds = %32
  br label %40

40:                                               ; preds = %39, %30
  %41 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %42 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %61

46:                                               ; preds = %40
  %47 = load %struct.ipu_csc_scaler_ctx*, %struct.ipu_csc_scaler_ctx** %8, align 8
  %48 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_OUTPUT, align 4
  %49 = call %struct.ipu_csc_scaler_q_data* @get_q_data(%struct.ipu_csc_scaler_ctx* %47, i32 %48)
  store %struct.ipu_csc_scaler_q_data* %49, %struct.ipu_csc_scaler_q_data** %13, align 8
  %50 = getelementptr inbounds %struct.ipu_image, %struct.ipu_image* %11, i32 0, i32 0
  %51 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %52 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = bitcast %struct.TYPE_3__* %50 to i8*
  %55 = bitcast %struct.TYPE_3__* %53 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %54, i8* align 4 %55, i64 20, i1 false)
  %56 = getelementptr inbounds %struct.ipu_image, %struct.ipu_image* %10, i32 0, i32 0
  %57 = load %struct.ipu_csc_scaler_q_data*, %struct.ipu_csc_scaler_q_data** %13, align 8
  %58 = getelementptr inbounds %struct.ipu_csc_scaler_q_data, %struct.ipu_csc_scaler_q_data* %57, i32 0, i32 0
  %59 = bitcast %struct.TYPE_3__* %56 to i8*
  %60 = bitcast %struct.TYPE_3__* %58 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %59, i8* align 4 %60, i64 20, i1 false)
  br label %76

61:                                               ; preds = %40
  %62 = load %struct.ipu_csc_scaler_ctx*, %struct.ipu_csc_scaler_ctx** %8, align 8
  %63 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  %64 = call %struct.ipu_csc_scaler_q_data* @get_q_data(%struct.ipu_csc_scaler_ctx* %62, i32 %63)
  store %struct.ipu_csc_scaler_q_data* %64, %struct.ipu_csc_scaler_q_data** %14, align 8
  %65 = getelementptr inbounds %struct.ipu_image, %struct.ipu_image* %10, i32 0, i32 0
  %66 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %67 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = bitcast %struct.TYPE_3__* %65 to i8*
  %70 = bitcast %struct.TYPE_3__* %68 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %69, i8* align 4 %70, i64 20, i1 false)
  %71 = getelementptr inbounds %struct.ipu_image, %struct.ipu_image* %11, i32 0, i32 0
  %72 = load %struct.ipu_csc_scaler_q_data*, %struct.ipu_csc_scaler_q_data** %14, align 8
  %73 = getelementptr inbounds %struct.ipu_csc_scaler_q_data, %struct.ipu_csc_scaler_q_data* %72, i32 0, i32 0
  %74 = bitcast %struct.TYPE_3__* %71 to i8*
  %75 = bitcast %struct.TYPE_3__* %73 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %74, i8* align 4 %75, i64 20, i1 false)
  br label %76

76:                                               ; preds = %61, %46
  %77 = load %struct.ipu_csc_scaler_ctx*, %struct.ipu_csc_scaler_ctx** %8, align 8
  %78 = getelementptr inbounds %struct.ipu_csc_scaler_ctx, %struct.ipu_csc_scaler_ctx* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @ipu_image_convert_adjust(%struct.ipu_image* %10, %struct.ipu_image* %11, i32 %79)
  %81 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %82 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %85 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %93

89:                                               ; preds = %76
  %90 = getelementptr inbounds %struct.ipu_image, %struct.ipu_image* %11, i32 0, i32 0
  %91 = bitcast %struct.TYPE_3__* %83 to i8*
  %92 = bitcast %struct.TYPE_3__* %90 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %91, i8* align 4 %92, i64 20, i1 false)
  br label %97

93:                                               ; preds = %76
  %94 = getelementptr inbounds %struct.ipu_image, %struct.ipu_image* %10, i32 0, i32 0
  %95 = bitcast %struct.TYPE_3__* %83 to i8*
  %96 = bitcast %struct.TYPE_3__* %94 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %95, i8* align 4 %96, i64 20, i1 false)
  br label %97

97:                                               ; preds = %93, %89
  %98 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %99 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %136

103:                                              ; preds = %97
  %104 = load %struct.ipu_csc_scaler_q_data*, %struct.ipu_csc_scaler_q_data** %9, align 8
  %105 = getelementptr inbounds %struct.ipu_csc_scaler_q_data, %struct.ipu_csc_scaler_q_data* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %109 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 4
  store i32 %107, i32* %111, align 4
  %112 = load %struct.ipu_csc_scaler_q_data*, %struct.ipu_csc_scaler_q_data** %9, align 8
  %113 = getelementptr inbounds %struct.ipu_csc_scaler_q_data, %struct.ipu_csc_scaler_q_data* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %117 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 3
  store i32 %115, i32* %119, align 4
  %120 = load %struct.ipu_csc_scaler_q_data*, %struct.ipu_csc_scaler_q_data** %9, align 8
  %121 = getelementptr inbounds %struct.ipu_csc_scaler_q_data, %struct.ipu_csc_scaler_q_data* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %125 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 2
  store i32 %123, i32* %127, align 4
  %128 = load %struct.ipu_csc_scaler_q_data*, %struct.ipu_csc_scaler_q_data** %9, align 8
  %129 = getelementptr inbounds %struct.ipu_csc_scaler_q_data, %struct.ipu_csc_scaler_q_data* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %133 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 1
  store i32 %131, i32* %135, align 4
  br label %166

136:                                              ; preds = %97
  %137 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %138 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 4
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @V4L2_COLORSPACE_DEFAULT, align 4
  %143 = icmp eq i32 %141, %142
  br i1 %143, label %144, label %165

144:                                              ; preds = %136
  %145 = load i32, i32* @V4L2_COLORSPACE_SRGB, align 4
  %146 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %147 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 4
  store i32 %145, i32* %149, align 4
  %150 = load i32, i32* @V4L2_YCBCR_ENC_DEFAULT, align 4
  %151 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %152 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 3
  store i32 %150, i32* %154, align 4
  %155 = load i32, i32* @V4L2_XFER_FUNC_DEFAULT, align 4
  %156 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %157 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i32 0, i32 2
  store i32 %155, i32* %159, align 4
  %160 = load i32, i32* @V4L2_QUANTIZATION_DEFAULT, align 4
  %161 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %162 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %163, i32 0, i32 1
  store i32 %160, i32* %164, align 4
  br label %165

165:                                              ; preds = %144, %136
  br label %166

166:                                              ; preds = %165, %103
  store i32 0, i32* %4, align 4
  br label %167

167:                                              ; preds = %166, %36
  %168 = load i32, i32* %4, align 4
  ret i32 %168
}

declare dso_local %struct.ipu_csc_scaler_ctx* @fh_to_ctx(i8*) #1

declare dso_local %struct.ipu_csc_scaler_q_data* @get_q_data(%struct.ipu_csc_scaler_ctx*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ipu_image_convert_adjust(%struct.ipu_image*, %struct.ipu_image*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
