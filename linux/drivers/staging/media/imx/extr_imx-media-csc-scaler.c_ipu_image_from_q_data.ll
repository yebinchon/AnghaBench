; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-csc-scaler.c_ipu_image_from_q_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-csc-scaler.c_ipu_image_from_q_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipu_image = type { i32, %struct.v4l2_pix_format }
%struct.v4l2_pix_format = type { i64, i64, i32 }
%struct.ipu_csc_scaler_q_data = type { i32, %struct.v4l2_pix_format }

@V4L2_YCBCR_ENC_DEFAULT = common dso_local global i64 0, align 8
@V4L2_QUANTIZATION_DEFAULT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipu_image*, %struct.ipu_csc_scaler_q_data*)* @ipu_image_from_q_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipu_image_from_q_data(%struct.ipu_image* %0, %struct.ipu_csc_scaler_q_data* %1) #0 {
  %3 = alloca %struct.ipu_image*, align 8
  %4 = alloca %struct.ipu_csc_scaler_q_data*, align 8
  %5 = alloca %struct.v4l2_pix_format*, align 8
  store %struct.ipu_image* %0, %struct.ipu_image** %3, align 8
  store %struct.ipu_csc_scaler_q_data* %1, %struct.ipu_csc_scaler_q_data** %4, align 8
  %6 = load %struct.ipu_csc_scaler_q_data*, %struct.ipu_csc_scaler_q_data** %4, align 8
  %7 = getelementptr inbounds %struct.ipu_csc_scaler_q_data, %struct.ipu_csc_scaler_q_data* %6, i32 0, i32 1
  store %struct.v4l2_pix_format* %7, %struct.v4l2_pix_format** %5, align 8
  %8 = load %struct.ipu_image*, %struct.ipu_image** %3, align 8
  %9 = getelementptr inbounds %struct.ipu_image, %struct.ipu_image* %8, i32 0, i32 1
  %10 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %5, align 8
  %11 = bitcast %struct.v4l2_pix_format* %9 to i8*
  %12 = bitcast %struct.v4l2_pix_format* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 %12, i64 24, i1 false)
  %13 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %5, align 8
  %14 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @V4L2_YCBCR_ENC_DEFAULT, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %27

18:                                               ; preds = %2
  %19 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %5, align 8
  %20 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i8* @V4L2_MAP_YCBCR_ENC_DEFAULT(i32 %21)
  %23 = ptrtoint i8* %22 to i64
  %24 = load %struct.ipu_image*, %struct.ipu_image** %3, align 8
  %25 = getelementptr inbounds %struct.ipu_image, %struct.ipu_image* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %25, i32 0, i32 0
  store i64 %23, i64* %26, align 8
  br label %27

27:                                               ; preds = %18, %2
  %28 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %5, align 8
  %29 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @V4L2_QUANTIZATION_DEFAULT, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %42

33:                                               ; preds = %27
  %34 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %5, align 8
  %35 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call i8* @V4L2_MAP_YCBCR_ENC_DEFAULT(i32 %36)
  %38 = ptrtoint i8* %37 to i64
  %39 = load %struct.ipu_image*, %struct.ipu_image** %3, align 8
  %40 = getelementptr inbounds %struct.ipu_image, %struct.ipu_image* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %40, i32 0, i32 0
  store i64 %38, i64* %41, align 8
  br label %42

42:                                               ; preds = %33, %27
  %43 = load %struct.ipu_csc_scaler_q_data*, %struct.ipu_csc_scaler_q_data** %4, align 8
  %44 = getelementptr inbounds %struct.ipu_csc_scaler_q_data, %struct.ipu_csc_scaler_q_data* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.ipu_image*, %struct.ipu_image** %3, align 8
  %47 = getelementptr inbounds %struct.ipu_image, %struct.ipu_image* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @V4L2_MAP_YCBCR_ENC_DEFAULT(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
