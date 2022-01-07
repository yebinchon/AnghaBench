; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/meson/vdec/extr_vdec_helpers.c_amvdec_dst_buf_done_idx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/meson/vdec/extr_vdec_helpers.c_amvdec_dst_buf_done_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amvdec_session = type { i32*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.vb2_v4l2_buffer = type { i32 }

@.str = private unnamed_addr constant [48 x i8] c"Buffer %u done but it doesn't exist in m2m_ctx\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @amvdec_dst_buf_done_idx(%struct.amvdec_session* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.amvdec_session*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.vb2_v4l2_buffer*, align 8
  %10 = alloca %struct.device*, align 8
  store %struct.amvdec_session* %0, %struct.amvdec_session** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load %struct.amvdec_session*, %struct.amvdec_session** %5, align 8
  %12 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %11, i32 0, i32 2
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.device*, %struct.device** %14, align 8
  store %struct.device* %15, %struct.device** %10, align 8
  %16 = load %struct.amvdec_session*, %struct.amvdec_session** %5, align 8
  %17 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.amvdec_session*, %struct.amvdec_session** %5, align 8
  %20 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i64, i64* %6, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.vb2_v4l2_buffer* @v4l2_m2m_dst_buf_remove_by_idx(i32 %18, i32 %24)
  store %struct.vb2_v4l2_buffer* %25, %struct.vb2_v4l2_buffer** %9, align 8
  %26 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %9, align 8
  %27 = icmp ne %struct.vb2_v4l2_buffer* %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %4
  %29 = load %struct.device*, %struct.device** %10, align 8
  %30 = load i64, i64* %6, align 8
  %31 = call i32 @dev_err(%struct.device* %29, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i64 %30)
  br label %46

32:                                               ; preds = %4
  %33 = load i64, i64* %7, align 8
  %34 = icmp ne i64 %33, -1
  br i1 %34, label %35, label %41

35:                                               ; preds = %32
  %36 = load %struct.amvdec_session*, %struct.amvdec_session** %5, align 8
  %37 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %9, align 8
  %38 = load i64, i64* %7, align 8
  %39 = load i64, i64* %8, align 8
  %40 = call i32 @amvdec_dst_buf_done_offset(%struct.amvdec_session* %36, %struct.vb2_v4l2_buffer* %37, i64 %38, i64 %39, i32 1)
  br label %46

41:                                               ; preds = %32
  %42 = load %struct.amvdec_session*, %struct.amvdec_session** %5, align 8
  %43 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %9, align 8
  %44 = load i64, i64* %8, align 8
  %45 = call i32 @amvdec_dst_buf_done(%struct.amvdec_session* %42, %struct.vb2_v4l2_buffer* %43, i64 %44)
  br label %46

46:                                               ; preds = %28, %41, %35
  ret void
}

declare dso_local %struct.vb2_v4l2_buffer* @v4l2_m2m_dst_buf_remove_by_idx(i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i64) #1

declare dso_local i32 @amvdec_dst_buf_done_offset(%struct.amvdec_session*, %struct.vb2_v4l2_buffer*, i64, i64, i32) #1

declare dso_local i32 @amvdec_dst_buf_done(%struct.amvdec_session*, %struct.vb2_v4l2_buffer*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
