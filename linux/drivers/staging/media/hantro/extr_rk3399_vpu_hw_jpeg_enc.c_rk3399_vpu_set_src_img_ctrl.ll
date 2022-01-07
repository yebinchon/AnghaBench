; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/hantro/extr_rk3399_vpu_hw_jpeg_enc.c_rk3399_vpu_set_src_img_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/hantro/extr_rk3399_vpu_hw_jpeg_enc.c_rk3399_vpu_set_src_img_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hantro_dev = type { i32 }
%struct.hantro_ctx = type { %struct.TYPE_2__*, %struct.v4l2_pix_format_mplane }
%struct.TYPE_2__ = type { i32 }
%struct.v4l2_pix_format_mplane = type { i32 }

@VEPU_REG_INPUT_LUMA_INFO = common dso_local global i32 0, align 4
@VEPU_REG_ENC_OVER_FILL_STRM_OFFSET = common dso_local global i32 0, align 4
@VEPU_REG_ENC_CTRL1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hantro_dev*, %struct.hantro_ctx*)* @rk3399_vpu_set_src_img_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rk3399_vpu_set_src_img_ctrl(%struct.hantro_dev* %0, %struct.hantro_ctx* %1) #0 {
  %3 = alloca %struct.hantro_dev*, align 8
  %4 = alloca %struct.hantro_ctx*, align 8
  %5 = alloca %struct.v4l2_pix_format_mplane*, align 8
  %6 = alloca i32, align 4
  store %struct.hantro_dev* %0, %struct.hantro_dev** %3, align 8
  store %struct.hantro_ctx* %1, %struct.hantro_ctx** %4, align 8
  %7 = load %struct.hantro_ctx*, %struct.hantro_ctx** %4, align 8
  %8 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %7, i32 0, i32 1
  store %struct.v4l2_pix_format_mplane* %8, %struct.v4l2_pix_format_mplane** %5, align 8
  %9 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %5, align 8
  %10 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @VEPU_REG_IN_IMG_CTRL_ROW_LEN(i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load %struct.hantro_dev*, %struct.hantro_dev** %3, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @VEPU_REG_INPUT_LUMA_INFO, align 4
  %16 = call i32 @vepu_write_relaxed(%struct.hantro_dev* %13, i32 %14, i32 %15)
  %17 = call i32 @VEPU_REG_IN_IMG_CTRL_OVRFLR_D4(i32 0)
  %18 = call i32 @VEPU_REG_IN_IMG_CTRL_OVRFLB(i32 0)
  %19 = or i32 %17, %18
  store i32 %19, i32* %6, align 4
  %20 = load %struct.hantro_dev*, %struct.hantro_dev** %3, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @VEPU_REG_ENC_OVER_FILL_STRM_OFFSET, align 4
  %23 = call i32 @vepu_write_relaxed(%struct.hantro_dev* %20, i32 %21, i32 %22)
  %24 = load %struct.hantro_ctx*, %struct.hantro_ctx** %4, align 8
  %25 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @VEPU_REG_IN_IMG_CTRL_FMT(i32 %28)
  store i32 %29, i32* %6, align 4
  %30 = load %struct.hantro_dev*, %struct.hantro_dev** %3, align 8
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @VEPU_REG_ENC_CTRL1, align 4
  %33 = call i32 @vepu_write_relaxed(%struct.hantro_dev* %30, i32 %31, i32 %32)
  ret void
}

declare dso_local i32 @VEPU_REG_IN_IMG_CTRL_ROW_LEN(i32) #1

declare dso_local i32 @vepu_write_relaxed(%struct.hantro_dev*, i32, i32) #1

declare dso_local i32 @VEPU_REG_IN_IMG_CTRL_OVRFLR_D4(i32) #1

declare dso_local i32 @VEPU_REG_IN_IMG_CTRL_OVRFLB(i32) #1

declare dso_local i32 @VEPU_REG_IN_IMG_CTRL_FMT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
