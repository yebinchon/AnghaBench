; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/hantro/extr_hantro_h264.c_hantro_h264_get_ref_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/hantro/extr_hantro_h264.c_hantro_h264_get_ref_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_buffer = type { i32 }
%struct.hantro_ctx = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { %struct.v4l2_h264_dpb_entry* }
%struct.v4l2_h264_dpb_entry = type { i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.vb2_queue }
%struct.vb2_queue = type { i32 }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer }

@V4L2_H264_DPB_ENTRY_FLAG_ACTIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vb2_buffer* @hantro_h264_get_ref_buf(%struct.hantro_ctx* %0, i32 %1) #0 {
  %3 = alloca %struct.hantro_ctx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vb2_queue*, align 8
  %6 = alloca %struct.v4l2_h264_dpb_entry*, align 8
  %7 = alloca %struct.vb2_buffer*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.vb2_v4l2_buffer*, align 8
  store %struct.hantro_ctx* %0, %struct.hantro_ctx** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.hantro_ctx*, %struct.hantro_ctx** %3, align 8
  %11 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  store %struct.vb2_queue* %15, %struct.vb2_queue** %5, align 8
  %16 = load %struct.hantro_ctx*, %struct.hantro_ctx** %3, align 8
  %17 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load %struct.v4l2_h264_dpb_entry*, %struct.v4l2_h264_dpb_entry** %18, align 8
  store %struct.v4l2_h264_dpb_entry* %19, %struct.v4l2_h264_dpb_entry** %6, align 8
  store i32 -1, i32* %8, align 4
  %20 = load %struct.v4l2_h264_dpb_entry*, %struct.v4l2_h264_dpb_entry** %6, align 8
  %21 = load i32, i32* %4, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.v4l2_h264_dpb_entry, %struct.v4l2_h264_dpb_entry* %20, i64 %22
  %24 = getelementptr inbounds %struct.v4l2_h264_dpb_entry, %struct.v4l2_h264_dpb_entry* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @V4L2_H264_DPB_ENTRY_FLAG_ACTIVE, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %2
  %30 = load %struct.vb2_queue*, %struct.vb2_queue** %5, align 8
  %31 = load %struct.v4l2_h264_dpb_entry*, %struct.v4l2_h264_dpb_entry** %6, align 8
  %32 = load i32, i32* %4, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.v4l2_h264_dpb_entry, %struct.v4l2_h264_dpb_entry* %31, i64 %33
  %35 = getelementptr inbounds %struct.v4l2_h264_dpb_entry, %struct.v4l2_h264_dpb_entry* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @vb2_find_timestamp(%struct.vb2_queue* %30, i32 %36, i32 0)
  store i32 %37, i32* %8, align 4
  br label %38

38:                                               ; preds = %29, %2
  %39 = load i32, i32* %8, align 4
  %40 = icmp sge i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = load %struct.vb2_queue*, %struct.vb2_queue** %5, align 8
  %43 = load i32, i32* %8, align 4
  %44 = call %struct.vb2_buffer* @vb2_get_buffer(%struct.vb2_queue* %42, i32 %43)
  store %struct.vb2_buffer* %44, %struct.vb2_buffer** %7, align 8
  br label %50

45:                                               ; preds = %38
  %46 = load %struct.hantro_ctx*, %struct.hantro_ctx** %3, align 8
  %47 = call %struct.vb2_v4l2_buffer* @hantro_get_dst_buf(%struct.hantro_ctx* %46)
  store %struct.vb2_v4l2_buffer* %47, %struct.vb2_v4l2_buffer** %9, align 8
  %48 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %9, align 8
  %49 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %48, i32 0, i32 0
  store %struct.vb2_buffer* %49, %struct.vb2_buffer** %7, align 8
  br label %50

50:                                               ; preds = %45, %41
  %51 = load %struct.vb2_buffer*, %struct.vb2_buffer** %7, align 8
  ret %struct.vb2_buffer* %51
}

declare dso_local i32 @vb2_find_timestamp(%struct.vb2_queue*, i32, i32) #1

declare dso_local %struct.vb2_buffer* @vb2_get_buffer(%struct.vb2_queue*, i32) #1

declare dso_local %struct.vb2_v4l2_buffer* @hantro_get_dst_buf(%struct.hantro_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
