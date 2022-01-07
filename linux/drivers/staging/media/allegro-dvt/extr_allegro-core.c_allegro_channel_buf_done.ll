; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/allegro-dvt/extr_allegro-core.c_allegro_channel_buf_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/allegro-dvt/extr_allegro-core.c_allegro_channel_buf_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.allegro_channel = type { i32 }
%struct.vb2_v4l2_buffer = type { i32 }
%struct.v4l2_event = type { i32 }

@V4L2_EVENT_EOS = common dso_local global i32 0, align 4
@V4L2_BUF_FLAG_LAST = common dso_local global i32 0, align 4
@ALLEGRO_STATE_STOPPED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.allegro_channel*, %struct.vb2_v4l2_buffer*, i32)* @allegro_channel_buf_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @allegro_channel_buf_done(%struct.allegro_channel* %0, %struct.vb2_v4l2_buffer* %1, i32 %2) #0 {
  %4 = alloca %struct.allegro_channel*, align 8
  %5 = alloca %struct.vb2_v4l2_buffer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.v4l2_event, align 4
  store %struct.allegro_channel* %0, %struct.allegro_channel** %4, align 8
  store %struct.vb2_v4l2_buffer* %1, %struct.vb2_v4l2_buffer** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = getelementptr inbounds %struct.v4l2_event, %struct.v4l2_event* %7, i32 0, i32 0
  %9 = load i32, i32* @V4L2_EVENT_EOS, align 4
  store i32 %9, i32* %8, align 4
  %10 = load %struct.allegro_channel*, %struct.allegro_channel** %4, align 8
  %11 = call i64 @allegro_channel_is_at_eos(%struct.allegro_channel* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %25

13:                                               ; preds = %3
  %14 = load i32, i32* @V4L2_BUF_FLAG_LAST, align 4
  %15 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %5, align 8
  %16 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = or i32 %17, %14
  store i32 %18, i32* %16, align 4
  %19 = load %struct.allegro_channel*, %struct.allegro_channel** %4, align 8
  %20 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %19, i32 0, i32 0
  %21 = call i32 @v4l2_event_queue_fh(i32* %20, %struct.v4l2_event* %7)
  %22 = load %struct.allegro_channel*, %struct.allegro_channel** %4, align 8
  %23 = load i32, i32* @ALLEGRO_STATE_STOPPED, align 4
  %24 = call i32 @allegro_set_state(%struct.allegro_channel* %22, i32 %23)
  br label %25

25:                                               ; preds = %13, %3
  %26 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @v4l2_m2m_buf_done(%struct.vb2_v4l2_buffer* %26, i32 %27)
  ret void
}

declare dso_local i64 @allegro_channel_is_at_eos(%struct.allegro_channel*) #1

declare dso_local i32 @v4l2_event_queue_fh(i32*, %struct.v4l2_event*) #1

declare dso_local i32 @allegro_set_state(%struct.allegro_channel*, i32) #1

declare dso_local i32 @v4l2_m2m_buf_done(%struct.vb2_v4l2_buffer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
