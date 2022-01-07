; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_uvc_queue.c_uvcg_queue_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_uvc_queue.c_uvcg_queue_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvc_video_queue = type { i32, i32, i32 }
%struct.v4l2_buffer = type { i32 }

@UVC_QUEUE_PAUSED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uvcg_queue_buffer(%struct.uvc_video_queue* %0, %struct.v4l2_buffer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.uvc_video_queue*, align 8
  %5 = alloca %struct.v4l2_buffer*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.uvc_video_queue* %0, %struct.uvc_video_queue** %4, align 8
  store %struct.v4l2_buffer* %1, %struct.v4l2_buffer** %5, align 8
  %8 = load %struct.uvc_video_queue*, %struct.uvc_video_queue** %4, align 8
  %9 = getelementptr inbounds %struct.uvc_video_queue, %struct.uvc_video_queue* %8, i32 0, i32 2
  %10 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %5, align 8
  %11 = call i32 @vb2_qbuf(i32* %9, i32* null, %struct.v4l2_buffer* %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %7, align 4
  store i32 %15, i32* %3, align 4
  br label %39

16:                                               ; preds = %2
  %17 = load %struct.uvc_video_queue*, %struct.uvc_video_queue** %4, align 8
  %18 = getelementptr inbounds %struct.uvc_video_queue, %struct.uvc_video_queue* %17, i32 0, i32 1
  %19 = load i64, i64* %6, align 8
  %20 = call i32 @spin_lock_irqsave(i32* %18, i64 %19)
  %21 = load %struct.uvc_video_queue*, %struct.uvc_video_queue** %4, align 8
  %22 = getelementptr inbounds %struct.uvc_video_queue, %struct.uvc_video_queue* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @UVC_QUEUE_PAUSED, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* @UVC_QUEUE_PAUSED, align 4
  %29 = xor i32 %28, -1
  %30 = load %struct.uvc_video_queue*, %struct.uvc_video_queue** %4, align 8
  %31 = getelementptr inbounds %struct.uvc_video_queue, %struct.uvc_video_queue* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, %29
  store i32 %33, i32* %31, align 4
  %34 = load %struct.uvc_video_queue*, %struct.uvc_video_queue** %4, align 8
  %35 = getelementptr inbounds %struct.uvc_video_queue, %struct.uvc_video_queue* %34, i32 0, i32 1
  %36 = load i64, i64* %6, align 8
  %37 = call i32 @spin_unlock_irqrestore(i32* %35, i64 %36)
  %38 = load i32, i32* %7, align 4
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %16, %14
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @vb2_qbuf(i32*, i32*, %struct.v4l2_buffer*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
