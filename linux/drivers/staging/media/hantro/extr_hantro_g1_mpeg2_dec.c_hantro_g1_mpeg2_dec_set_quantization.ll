; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/hantro/extr_hantro_g1_mpeg2_dec.c_hantro_g1_mpeg2_dec_set_quantization.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/hantro/extr_hantro_g1_mpeg2_dec.c_hantro_g1_mpeg2_dec_set_quantization.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hantro_dev = type { i32 }
%struct.hantro_ctx = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.v4l2_ctrl_mpeg2_quantization = type { i32 }

@V4L2_CID_MPEG_VIDEO_MPEG2_QUANTIZATION = common dso_local global i32 0, align 4
@G1_REG_QTABLE_BASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hantro_dev*, %struct.hantro_ctx*)* @hantro_g1_mpeg2_dec_set_quantization to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hantro_g1_mpeg2_dec_set_quantization(%struct.hantro_dev* %0, %struct.hantro_ctx* %1) #0 {
  %3 = alloca %struct.hantro_dev*, align 8
  %4 = alloca %struct.hantro_ctx*, align 8
  %5 = alloca %struct.v4l2_ctrl_mpeg2_quantization*, align 8
  store %struct.hantro_dev* %0, %struct.hantro_dev** %3, align 8
  store %struct.hantro_ctx* %1, %struct.hantro_ctx** %4, align 8
  %6 = load %struct.hantro_ctx*, %struct.hantro_ctx** %4, align 8
  %7 = load i32, i32* @V4L2_CID_MPEG_VIDEO_MPEG2_QUANTIZATION, align 4
  %8 = call %struct.v4l2_ctrl_mpeg2_quantization* @hantro_get_ctrl(%struct.hantro_ctx* %6, i32 %7)
  store %struct.v4l2_ctrl_mpeg2_quantization* %8, %struct.v4l2_ctrl_mpeg2_quantization** %5, align 8
  %9 = load %struct.hantro_ctx*, %struct.hantro_ctx** %4, align 8
  %10 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.v4l2_ctrl_mpeg2_quantization*, %struct.v4l2_ctrl_mpeg2_quantization** %5, align 8
  %15 = call i32 @hantro_mpeg2_dec_copy_qtable(i32 %13, %struct.v4l2_ctrl_mpeg2_quantization* %14)
  %16 = load %struct.hantro_dev*, %struct.hantro_dev** %3, align 8
  %17 = load %struct.hantro_ctx*, %struct.hantro_ctx** %4, align 8
  %18 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @G1_REG_QTABLE_BASE, align 4
  %23 = call i32 @vdpu_write_relaxed(%struct.hantro_dev* %16, i32 %21, i32 %22)
  ret void
}

declare dso_local %struct.v4l2_ctrl_mpeg2_quantization* @hantro_get_ctrl(%struct.hantro_ctx*, i32) #1

declare dso_local i32 @hantro_mpeg2_dec_copy_qtable(i32, %struct.v4l2_ctrl_mpeg2_quantization*) #1

declare dso_local i32 @vdpu_write_relaxed(%struct.hantro_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
