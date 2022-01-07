; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/hantro/extr_hantro_h264.c_prepare_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/hantro/extr_hantro_h264.c_prepare_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hantro_ctx = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.v4l2_h264_dpb_entry*, %struct.TYPE_3__, %struct.hantro_h264_dec_ctrls }
%struct.v4l2_h264_dpb_entry = type { i32, i32 }
%struct.TYPE_3__ = type { %struct.hantro_h264_dec_priv_tbl* }
%struct.hantro_h264_dec_priv_tbl = type { i32* }
%struct.hantro_h264_dec_ctrls = type { %struct.v4l2_ctrl_h264_decode_params* }
%struct.v4l2_ctrl_h264_decode_params = type { i32, i32 }

@HANTRO_H264_DPB_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hantro_ctx*)* @prepare_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prepare_table(%struct.hantro_ctx* %0) #0 {
  %2 = alloca %struct.hantro_ctx*, align 8
  %3 = alloca %struct.hantro_h264_dec_ctrls*, align 8
  %4 = alloca %struct.v4l2_ctrl_h264_decode_params*, align 8
  %5 = alloca %struct.hantro_h264_dec_priv_tbl*, align 8
  %6 = alloca %struct.v4l2_h264_dpb_entry*, align 8
  %7 = alloca i32, align 4
  store %struct.hantro_ctx* %0, %struct.hantro_ctx** %2, align 8
  %8 = load %struct.hantro_ctx*, %struct.hantro_ctx** %2, align 8
  %9 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 2
  store %struct.hantro_h264_dec_ctrls* %10, %struct.hantro_h264_dec_ctrls** %3, align 8
  %11 = load %struct.hantro_h264_dec_ctrls*, %struct.hantro_h264_dec_ctrls** %3, align 8
  %12 = getelementptr inbounds %struct.hantro_h264_dec_ctrls, %struct.hantro_h264_dec_ctrls* %11, i32 0, i32 0
  %13 = load %struct.v4l2_ctrl_h264_decode_params*, %struct.v4l2_ctrl_h264_decode_params** %12, align 8
  store %struct.v4l2_ctrl_h264_decode_params* %13, %struct.v4l2_ctrl_h264_decode_params** %4, align 8
  %14 = load %struct.hantro_ctx*, %struct.hantro_ctx** %2, align 8
  %15 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load %struct.hantro_h264_dec_priv_tbl*, %struct.hantro_h264_dec_priv_tbl** %17, align 8
  store %struct.hantro_h264_dec_priv_tbl* %18, %struct.hantro_h264_dec_priv_tbl** %5, align 8
  %19 = load %struct.hantro_ctx*, %struct.hantro_ctx** %2, align 8
  %20 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.v4l2_h264_dpb_entry*, %struct.v4l2_h264_dpb_entry** %21, align 8
  store %struct.v4l2_h264_dpb_entry* %22, %struct.v4l2_h264_dpb_entry** %6, align 8
  store i32 0, i32* %7, align 4
  br label %23

23:                                               ; preds = %55, %1
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @HANTRO_H264_DPB_SIZE, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %58

27:                                               ; preds = %23
  %28 = load %struct.v4l2_h264_dpb_entry*, %struct.v4l2_h264_dpb_entry** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.v4l2_h264_dpb_entry, %struct.v4l2_h264_dpb_entry* %28, i64 %30
  %32 = getelementptr inbounds %struct.v4l2_h264_dpb_entry, %struct.v4l2_h264_dpb_entry* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.hantro_h264_dec_priv_tbl*, %struct.hantro_h264_dec_priv_tbl** %5, align 8
  %35 = getelementptr inbounds %struct.hantro_h264_dec_priv_tbl, %struct.hantro_h264_dec_priv_tbl* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %7, align 4
  %38 = mul nsw i32 %37, 2
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %36, i64 %39
  store i32 %33, i32* %40, align 4
  %41 = load %struct.v4l2_h264_dpb_entry*, %struct.v4l2_h264_dpb_entry** %6, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.v4l2_h264_dpb_entry, %struct.v4l2_h264_dpb_entry* %41, i64 %43
  %45 = getelementptr inbounds %struct.v4l2_h264_dpb_entry, %struct.v4l2_h264_dpb_entry* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.hantro_h264_dec_priv_tbl*, %struct.hantro_h264_dec_priv_tbl** %5, align 8
  %48 = getelementptr inbounds %struct.hantro_h264_dec_priv_tbl, %struct.hantro_h264_dec_priv_tbl* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = mul nsw i32 %50, 2
  %52 = add nsw i32 %51, 1
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %49, i64 %53
  store i32 %46, i32* %54, align 4
  br label %55

55:                                               ; preds = %27
  %56 = load i32, i32* %7, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %7, align 4
  br label %23

58:                                               ; preds = %23
  %59 = load %struct.v4l2_ctrl_h264_decode_params*, %struct.v4l2_ctrl_h264_decode_params** %4, align 8
  %60 = getelementptr inbounds %struct.v4l2_ctrl_h264_decode_params, %struct.v4l2_ctrl_h264_decode_params* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.hantro_h264_dec_priv_tbl*, %struct.hantro_h264_dec_priv_tbl** %5, align 8
  %63 = getelementptr inbounds %struct.hantro_h264_dec_priv_tbl, %struct.hantro_h264_dec_priv_tbl* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 32
  store i32 %61, i32* %65, align 4
  %66 = load %struct.v4l2_ctrl_h264_decode_params*, %struct.v4l2_ctrl_h264_decode_params** %4, align 8
  %67 = getelementptr inbounds %struct.v4l2_ctrl_h264_decode_params, %struct.v4l2_ctrl_h264_decode_params* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.hantro_h264_dec_priv_tbl*, %struct.hantro_h264_dec_priv_tbl** %5, align 8
  %70 = getelementptr inbounds %struct.hantro_h264_dec_priv_tbl, %struct.hantro_h264_dec_priv_tbl* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 33
  store i32 %68, i32* %72, align 4
  %73 = load %struct.hantro_ctx*, %struct.hantro_ctx** %2, align 8
  %74 = call i32 @reorder_scaling_list(%struct.hantro_ctx* %73)
  ret void
}

declare dso_local i32 @reorder_scaling_list(%struct.hantro_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
