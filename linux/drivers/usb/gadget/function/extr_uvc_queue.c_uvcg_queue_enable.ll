; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_uvc_queue.c_uvcg_queue_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_uvc_queue.c_uvcg_queue_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvc_video_queue = type { i32, i32, i32, %struct.TYPE_3__, i64, i64 }
%struct.TYPE_3__ = type { i32 }

@UVC_QUEUE_DISCONNECTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uvcg_queue_enable(%struct.uvc_video_queue* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.uvc_video_queue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.uvc_video_queue* %0, %struct.uvc_video_queue** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %27

10:                                               ; preds = %2
  %11 = load %struct.uvc_video_queue*, %struct.uvc_video_queue** %4, align 8
  %12 = getelementptr inbounds %struct.uvc_video_queue, %struct.uvc_video_queue* %11, i32 0, i32 3
  %13 = load %struct.uvc_video_queue*, %struct.uvc_video_queue** %4, align 8
  %14 = getelementptr inbounds %struct.uvc_video_queue, %struct.uvc_video_queue* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @vb2_streamon(%struct.TYPE_3__* %12, i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %10
  %21 = load i32, i32* %7, align 4
  store i32 %21, i32* %3, align 4
  br label %59

22:                                               ; preds = %10
  %23 = load %struct.uvc_video_queue*, %struct.uvc_video_queue** %4, align 8
  %24 = getelementptr inbounds %struct.uvc_video_queue, %struct.uvc_video_queue* %23, i32 0, i32 5
  store i64 0, i64* %24, align 8
  %25 = load %struct.uvc_video_queue*, %struct.uvc_video_queue** %4, align 8
  %26 = getelementptr inbounds %struct.uvc_video_queue, %struct.uvc_video_queue* %25, i32 0, i32 4
  store i64 0, i64* %26, align 8
  br label %57

27:                                               ; preds = %2
  %28 = load %struct.uvc_video_queue*, %struct.uvc_video_queue** %4, align 8
  %29 = getelementptr inbounds %struct.uvc_video_queue, %struct.uvc_video_queue* %28, i32 0, i32 3
  %30 = load %struct.uvc_video_queue*, %struct.uvc_video_queue** %4, align 8
  %31 = getelementptr inbounds %struct.uvc_video_queue, %struct.uvc_video_queue* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @vb2_streamoff(%struct.TYPE_3__* %29, i32 %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %27
  %38 = load i32, i32* %7, align 4
  store i32 %38, i32* %3, align 4
  br label %59

39:                                               ; preds = %27
  %40 = load %struct.uvc_video_queue*, %struct.uvc_video_queue** %4, align 8
  %41 = getelementptr inbounds %struct.uvc_video_queue, %struct.uvc_video_queue* %40, i32 0, i32 0
  %42 = load i64, i64* %6, align 8
  %43 = call i32 @spin_lock_irqsave(i32* %41, i64 %42)
  %44 = load %struct.uvc_video_queue*, %struct.uvc_video_queue** %4, align 8
  %45 = getelementptr inbounds %struct.uvc_video_queue, %struct.uvc_video_queue* %44, i32 0, i32 2
  %46 = call i32 @INIT_LIST_HEAD(i32* %45)
  %47 = load i32, i32* @UVC_QUEUE_DISCONNECTED, align 4
  %48 = xor i32 %47, -1
  %49 = load %struct.uvc_video_queue*, %struct.uvc_video_queue** %4, align 8
  %50 = getelementptr inbounds %struct.uvc_video_queue, %struct.uvc_video_queue* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, %48
  store i32 %52, i32* %50, align 4
  %53 = load %struct.uvc_video_queue*, %struct.uvc_video_queue** %4, align 8
  %54 = getelementptr inbounds %struct.uvc_video_queue, %struct.uvc_video_queue* %53, i32 0, i32 0
  %55 = load i64, i64* %6, align 8
  %56 = call i32 @spin_unlock_irqrestore(i32* %54, i64 %55)
  br label %57

57:                                               ; preds = %39, %22
  %58 = load i32, i32* %7, align 4
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %57, %37, %20
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @vb2_streamon(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @vb2_streamoff(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
