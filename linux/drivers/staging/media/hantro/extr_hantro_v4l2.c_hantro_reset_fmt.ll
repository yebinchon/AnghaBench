; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/hantro/extr_hantro_v4l2.c_hantro_reset_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/hantro/extr_hantro_v4l2.c_hantro_reset_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, i32 }
%struct.hantro_fmt = type { i32 }

@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@V4L2_COLORSPACE_JPEG = common dso_local global i32 0, align 4
@V4L2_YCBCR_ENC_DEFAULT = common dso_local global i32 0, align 4
@V4L2_QUANTIZATION_DEFAULT = common dso_local global i32 0, align 4
@V4L2_XFER_FUNC_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.v4l2_pix_format_mplane*, %struct.hantro_fmt*)* @hantro_reset_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hantro_reset_fmt(%struct.v4l2_pix_format_mplane* %0, %struct.hantro_fmt* %1) #0 {
  %3 = alloca %struct.v4l2_pix_format_mplane*, align 8
  %4 = alloca %struct.hantro_fmt*, align 8
  store %struct.v4l2_pix_format_mplane* %0, %struct.v4l2_pix_format_mplane** %3, align 8
  store %struct.hantro_fmt* %1, %struct.hantro_fmt** %4, align 8
  %5 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %3, align 8
  %6 = call i32 @memset(%struct.v4l2_pix_format_mplane* %5, i32 0, i32 24)
  %7 = load %struct.hantro_fmt*, %struct.hantro_fmt** %4, align 8
  %8 = getelementptr inbounds %struct.hantro_fmt, %struct.hantro_fmt* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %3, align 8
  %11 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %10, i32 0, i32 5
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %13 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %3, align 8
  %14 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %13, i32 0, i32 4
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* @V4L2_COLORSPACE_JPEG, align 4
  %16 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %3, align 8
  %17 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %16, i32 0, i32 3
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* @V4L2_YCBCR_ENC_DEFAULT, align 4
  %19 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %3, align 8
  %20 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @V4L2_QUANTIZATION_DEFAULT, align 4
  %22 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %3, align 8
  %23 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @V4L2_XFER_FUNC_DEFAULT, align 4
  %25 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %3, align 8
  %26 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  ret void
}

declare dso_local i32 @memset(%struct.v4l2_pix_format_mplane*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
