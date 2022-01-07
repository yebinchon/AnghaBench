; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/sunxi/cedrus/extr_cedrus_h264.c_cedrus_write_scaling_lists.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/sunxi/cedrus/extr_cedrus_h264.c_cedrus_write_scaling_lists.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cedrus_ctx = type { %struct.cedrus_dev* }
%struct.cedrus_dev = type { i32 }
%struct.cedrus_run = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.v4l2_ctrl_h264_scaling_matrix* }
%struct.v4l2_ctrl_h264_scaling_matrix = type { i32, i32* }

@CEDRUS_SRAM_H264_SCALING_LIST_8x8_0 = common dso_local global i32 0, align 4
@CEDRUS_SRAM_H264_SCALING_LIST_8x8_1 = common dso_local global i32 0, align 4
@CEDRUS_SRAM_H264_SCALING_LIST_4x4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cedrus_ctx*, %struct.cedrus_run*)* @cedrus_write_scaling_lists to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cedrus_write_scaling_lists(%struct.cedrus_ctx* %0, %struct.cedrus_run* %1) #0 {
  %3 = alloca %struct.cedrus_ctx*, align 8
  %4 = alloca %struct.cedrus_run*, align 8
  %5 = alloca %struct.v4l2_ctrl_h264_scaling_matrix*, align 8
  %6 = alloca %struct.cedrus_dev*, align 8
  store %struct.cedrus_ctx* %0, %struct.cedrus_ctx** %3, align 8
  store %struct.cedrus_run* %1, %struct.cedrus_run** %4, align 8
  %7 = load %struct.cedrus_run*, %struct.cedrus_run** %4, align 8
  %8 = getelementptr inbounds %struct.cedrus_run, %struct.cedrus_run* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.v4l2_ctrl_h264_scaling_matrix*, %struct.v4l2_ctrl_h264_scaling_matrix** %9, align 8
  store %struct.v4l2_ctrl_h264_scaling_matrix* %10, %struct.v4l2_ctrl_h264_scaling_matrix** %5, align 8
  %11 = load %struct.cedrus_ctx*, %struct.cedrus_ctx** %3, align 8
  %12 = getelementptr inbounds %struct.cedrus_ctx, %struct.cedrus_ctx* %11, i32 0, i32 0
  %13 = load %struct.cedrus_dev*, %struct.cedrus_dev** %12, align 8
  store %struct.cedrus_dev* %13, %struct.cedrus_dev** %6, align 8
  %14 = load %struct.cedrus_dev*, %struct.cedrus_dev** %6, align 8
  %15 = load i32, i32* @CEDRUS_SRAM_H264_SCALING_LIST_8x8_0, align 4
  %16 = load %struct.v4l2_ctrl_h264_scaling_matrix*, %struct.v4l2_ctrl_h264_scaling_matrix** %5, align 8
  %17 = getelementptr inbounds %struct.v4l2_ctrl_h264_scaling_matrix, %struct.v4l2_ctrl_h264_scaling_matrix* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @cedrus_h264_write_sram(%struct.cedrus_dev* %14, i32 %15, i32 %20, i32 4)
  %22 = load %struct.cedrus_dev*, %struct.cedrus_dev** %6, align 8
  %23 = load i32, i32* @CEDRUS_SRAM_H264_SCALING_LIST_8x8_1, align 4
  %24 = load %struct.v4l2_ctrl_h264_scaling_matrix*, %struct.v4l2_ctrl_h264_scaling_matrix** %5, align 8
  %25 = getelementptr inbounds %struct.v4l2_ctrl_h264_scaling_matrix, %struct.v4l2_ctrl_h264_scaling_matrix* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 3
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @cedrus_h264_write_sram(%struct.cedrus_dev* %22, i32 %23, i32 %28, i32 4)
  %30 = load %struct.cedrus_dev*, %struct.cedrus_dev** %6, align 8
  %31 = load i32, i32* @CEDRUS_SRAM_H264_SCALING_LIST_4x4, align 4
  %32 = load %struct.v4l2_ctrl_h264_scaling_matrix*, %struct.v4l2_ctrl_h264_scaling_matrix** %5, align 8
  %33 = getelementptr inbounds %struct.v4l2_ctrl_h264_scaling_matrix, %struct.v4l2_ctrl_h264_scaling_matrix* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @cedrus_h264_write_sram(%struct.cedrus_dev* %30, i32 %31, i32 %34, i32 4)
  ret void
}

declare dso_local i32 @cedrus_h264_write_sram(%struct.cedrus_dev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
