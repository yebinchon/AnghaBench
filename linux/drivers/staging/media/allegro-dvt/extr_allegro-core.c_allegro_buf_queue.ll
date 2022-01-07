; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/allegro-dvt/extr_allegro-core.c_allegro_buf_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/allegro-dvt/extr_allegro-core.c_allegro_buf_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_buffer = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.allegro_channel = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.vb2_v4l2_buffer = type { i32 }

@ALLEGRO_STATE_WAIT_FOR_BUFFER = common dso_local global i64 0, align 8
@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i64 0, align 8
@VB2_BUF_STATE_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vb2_buffer*)* @allegro_buf_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @allegro_buf_queue(%struct.vb2_buffer* %0) #0 {
  %2 = alloca %struct.vb2_buffer*, align 8
  %3 = alloca %struct.allegro_channel*, align 8
  %4 = alloca %struct.vb2_v4l2_buffer*, align 8
  store %struct.vb2_buffer* %0, %struct.vb2_buffer** %2, align 8
  %5 = load %struct.vb2_buffer*, %struct.vb2_buffer** %2, align 8
  %6 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %5, i32 0, i32 0
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = call %struct.allegro_channel* @vb2_get_drv_priv(%struct.TYPE_4__* %7)
  store %struct.allegro_channel* %8, %struct.allegro_channel** %3, align 8
  %9 = load %struct.vb2_buffer*, %struct.vb2_buffer** %2, align 8
  %10 = call %struct.vb2_v4l2_buffer* @to_vb2_v4l2_buffer(%struct.vb2_buffer* %9)
  store %struct.vb2_v4l2_buffer* %10, %struct.vb2_v4l2_buffer** %4, align 8
  %11 = load %struct.allegro_channel*, %struct.allegro_channel** %3, align 8
  %12 = call i64 @allegro_get_state(%struct.allegro_channel* %11)
  %13 = load i64, i64* @ALLEGRO_STATE_WAIT_FOR_BUFFER, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %28

15:                                               ; preds = %1
  %16 = load %struct.vb2_buffer*, %struct.vb2_buffer** %2, align 8
  %17 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %15
  %24 = load %struct.allegro_channel*, %struct.allegro_channel** %3, align 8
  %25 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %4, align 8
  %26 = load i32, i32* @VB2_BUF_STATE_DONE, align 4
  %27 = call i32 @allegro_channel_buf_done(%struct.allegro_channel* %24, %struct.vb2_v4l2_buffer* %25, i32 %26)
  br label %35

28:                                               ; preds = %15, %1
  %29 = load %struct.allegro_channel*, %struct.allegro_channel** %3, align 8
  %30 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %4, align 8
  %34 = call i32 @v4l2_m2m_buf_queue(i32 %32, %struct.vb2_v4l2_buffer* %33)
  br label %35

35:                                               ; preds = %28, %23
  ret void
}

declare dso_local %struct.allegro_channel* @vb2_get_drv_priv(%struct.TYPE_4__*) #1

declare dso_local %struct.vb2_v4l2_buffer* @to_vb2_v4l2_buffer(%struct.vb2_buffer*) #1

declare dso_local i64 @allegro_get_state(%struct.allegro_channel*) #1

declare dso_local i32 @allegro_channel_buf_done(%struct.allegro_channel*, %struct.vb2_v4l2_buffer*, i32) #1

declare dso_local i32 @v4l2_m2m_buf_queue(i32, %struct.vb2_v4l2_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
