; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/meson/vdec/extr_vdec_helpers.c_dst_buf_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/meson/vdec/extr_vdec_helpers.c_dst_buf_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amvdec_session = type { i32, i32, i32, i64, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.vb2_v4l2_buffer = type { i32, %struct.TYPE_6__, i32, i64 }
%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.v4l2_event = type { i32 }

@V4L2_EVENT_EOS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Signaling EOS\0A\00", align 1
@V4L2_BUF_FLAG_LAST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"should_stop, %u bufs remain\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"Buffer %u done\0A\00", align 1
@VB2_BUF_STATE_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amvdec_session*, %struct.vb2_v4l2_buffer*, i32, i32)* @dst_buf_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dst_buf_done(%struct.amvdec_session* %0, %struct.vb2_v4l2_buffer* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.amvdec_session*, align 8
  %6 = alloca %struct.vb2_v4l2_buffer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.v4l2_event, align 4
  store %struct.amvdec_session* %0, %struct.amvdec_session** %5, align 8
  store %struct.vb2_v4l2_buffer* %1, %struct.vb2_v4l2_buffer** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.amvdec_session*, %struct.amvdec_session** %5, align 8
  %13 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %12, i32 0, i32 6
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.device*, %struct.device** %15, align 8
  store %struct.device* %16, %struct.device** %9, align 8
  %17 = load %struct.amvdec_session*, %struct.amvdec_session** %5, align 8
  %18 = call i32 @amvdec_get_output_size(%struct.amvdec_session* %17)
  store i32 %18, i32* %10, align 4
  %19 = load %struct.amvdec_session*, %struct.amvdec_session** %5, align 8
  %20 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  switch i32 %21, label %62 [
    i32 129, label %22
    i32 128, label %38
  ]

22:                                               ; preds = %4
  %23 = load i32, i32* %10, align 4
  %24 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %6, align 8
  %25 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 2
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i64 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  store i32 %23, i32* %29, align 4
  %30 = load i32, i32* %10, align 4
  %31 = sdiv i32 %30, 2
  %32 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %6, align 8
  %33 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 2
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i64 1
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  store i32 %31, i32* %37, align 4
  br label %62

38:                                               ; preds = %4
  %39 = load i32, i32* %10, align 4
  %40 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %6, align 8
  %41 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 2
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i64 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  store i32 %39, i32* %45, align 4
  %46 = load i32, i32* %10, align 4
  %47 = sdiv i32 %46, 4
  %48 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %6, align 8
  %49 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 2
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i64 1
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  store i32 %47, i32* %53, align 4
  %54 = load i32, i32* %10, align 4
  %55 = sdiv i32 %54, 4
  %56 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %6, align 8
  %57 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 2
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i64 2
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  store i32 %55, i32* %61, align 4
  br label %62

62:                                               ; preds = %4, %38, %22
  %63 = load i32, i32* %8, align 4
  %64 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %6, align 8
  %65 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  store i32 %63, i32* %66, align 4
  %67 = load %struct.amvdec_session*, %struct.amvdec_session** %5, align 8
  %68 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %67, i32 0, i32 5
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %68, align 4
  %71 = sext i32 %69 to i64
  %72 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %6, align 8
  %73 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %72, i32 0, i32 3
  store i64 %71, i64* %73, align 8
  %74 = load %struct.amvdec_session*, %struct.amvdec_session** %5, align 8
  %75 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %96

78:                                               ; preds = %62
  %79 = load %struct.amvdec_session*, %struct.amvdec_session** %5, align 8
  %80 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %79, i32 0, i32 2
  %81 = call i32 @atomic_read(i32* %80)
  %82 = icmp sle i32 %81, 2
  br i1 %82, label %83, label %96

83:                                               ; preds = %78
  %84 = getelementptr inbounds %struct.v4l2_event, %struct.v4l2_event* %11, i32 0, i32 0
  %85 = load i32, i32* @V4L2_EVENT_EOS, align 4
  store i32 %85, i32* %84, align 4
  %86 = load %struct.device*, %struct.device** %9, align 8
  %87 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %86, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %88 = load %struct.amvdec_session*, %struct.amvdec_session** %5, align 8
  %89 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %88, i32 0, i32 4
  %90 = call i32 @v4l2_event_queue_fh(i32* %89, %struct.v4l2_event* %11)
  %91 = load i32, i32* @V4L2_BUF_FLAG_LAST, align 4
  %92 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %6, align 8
  %93 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = or i32 %94, %91
  store i32 %95, i32* %93, align 8
  br label %108

96:                                               ; preds = %78, %62
  %97 = load %struct.amvdec_session*, %struct.amvdec_session** %5, align 8
  %98 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %97, i32 0, i32 3
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %96
  %102 = load %struct.device*, %struct.device** %9, align 8
  %103 = load %struct.amvdec_session*, %struct.amvdec_session** %5, align 8
  %104 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %103, i32 0, i32 2
  %105 = call i32 @atomic_read(i32* %104)
  %106 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %102, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %105)
  br label %107

107:                                              ; preds = %101, %96
  br label %108

108:                                              ; preds = %107, %83
  %109 = load %struct.device*, %struct.device** %9, align 8
  %110 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %6, align 8
  %111 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %109, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %113)
  %115 = load i32, i32* %7, align 4
  %116 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %6, align 8
  %117 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 8
  %118 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %6, align 8
  %119 = load i32, i32* @VB2_BUF_STATE_DONE, align 4
  %120 = call i32 @v4l2_m2m_buf_done(%struct.vb2_v4l2_buffer* %118, i32 %119)
  %121 = load %struct.amvdec_session*, %struct.amvdec_session** %5, align 8
  %122 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %121, i32 0, i32 1
  %123 = call i32 @schedule_work(i32* %122)
  ret void
}

declare dso_local i32 @amvdec_get_output_size(%struct.amvdec_session*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, ...) #1

declare dso_local i32 @v4l2_event_queue_fh(i32*, %struct.v4l2_event*) #1

declare dso_local i32 @v4l2_m2m_buf_done(%struct.vb2_v4l2_buffer*, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
