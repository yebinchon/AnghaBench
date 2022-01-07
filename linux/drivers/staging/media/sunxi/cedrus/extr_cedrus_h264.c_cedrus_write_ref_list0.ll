; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/sunxi/cedrus/extr_cedrus_h264.c_cedrus_write_ref_list0.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/sunxi/cedrus/extr_cedrus_h264.c_cedrus_write_ref_list0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cedrus_ctx = type { i32 }
%struct.cedrus_run = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.v4l2_ctrl_h264_slice_params* }
%struct.v4l2_ctrl_h264_slice_params = type { i64, i32 }

@CEDRUS_SRAM_H264_REF_LIST_0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cedrus_ctx*, %struct.cedrus_run*)* @cedrus_write_ref_list0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cedrus_write_ref_list0(%struct.cedrus_ctx* %0, %struct.cedrus_run* %1) #0 {
  %3 = alloca %struct.cedrus_ctx*, align 8
  %4 = alloca %struct.cedrus_run*, align 8
  %5 = alloca %struct.v4l2_ctrl_h264_slice_params*, align 8
  store %struct.cedrus_ctx* %0, %struct.cedrus_ctx** %3, align 8
  store %struct.cedrus_run* %1, %struct.cedrus_run** %4, align 8
  %6 = load %struct.cedrus_run*, %struct.cedrus_run** %4, align 8
  %7 = getelementptr inbounds %struct.cedrus_run, %struct.cedrus_run* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.v4l2_ctrl_h264_slice_params*, %struct.v4l2_ctrl_h264_slice_params** %8, align 8
  store %struct.v4l2_ctrl_h264_slice_params* %9, %struct.v4l2_ctrl_h264_slice_params** %5, align 8
  %10 = load %struct.cedrus_ctx*, %struct.cedrus_ctx** %3, align 8
  %11 = load %struct.cedrus_run*, %struct.cedrus_run** %4, align 8
  %12 = load %struct.v4l2_ctrl_h264_slice_params*, %struct.v4l2_ctrl_h264_slice_params** %5, align 8
  %13 = getelementptr inbounds %struct.v4l2_ctrl_h264_slice_params, %struct.v4l2_ctrl_h264_slice_params* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.v4l2_ctrl_h264_slice_params*, %struct.v4l2_ctrl_h264_slice_params** %5, align 8
  %16 = getelementptr inbounds %struct.v4l2_ctrl_h264_slice_params, %struct.v4l2_ctrl_h264_slice_params* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %17, 1
  %19 = load i32, i32* @CEDRUS_SRAM_H264_REF_LIST_0, align 4
  %20 = call i32 @_cedrus_write_ref_list(%struct.cedrus_ctx* %10, %struct.cedrus_run* %11, i32 %14, i64 %18, i32 %19)
  ret void
}

declare dso_local i32 @_cedrus_write_ref_list(%struct.cedrus_ctx*, %struct.cedrus_run*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
