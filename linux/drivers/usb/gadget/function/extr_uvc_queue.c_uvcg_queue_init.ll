; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_uvc_queue.c_uvcg_queue_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_uvc_queue.c_uvcg_queue_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvc_video_queue = type { i64, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32*, %struct.mutex*, i32*, %struct.uvc_video_queue* }
%struct.mutex = type { i32 }

@VB2_MMAP = common dso_local global i32 0, align 4
@VB2_USERPTR = common dso_local global i32 0, align 4
@VB2_DMABUF = common dso_local global i32 0, align 4
@uvc_queue_qops = common dso_local global i32 0, align 4
@vb2_vmalloc_memops = common dso_local global i32 0, align 4
@V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC = common dso_local global i32 0, align 4
@V4L2_BUF_FLAG_TSTAMP_SRC_EOF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uvcg_queue_init(%struct.uvc_video_queue* %0, i32 %1, %struct.mutex* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.uvc_video_queue*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mutex*, align 8
  %8 = alloca i32, align 4
  store %struct.uvc_video_queue* %0, %struct.uvc_video_queue** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.mutex* %2, %struct.mutex** %7, align 8
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.uvc_video_queue*, %struct.uvc_video_queue** %5, align 8
  %11 = getelementptr inbounds %struct.uvc_video_queue, %struct.uvc_video_queue* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store i32 %9, i32* %12, align 8
  %13 = load i32, i32* @VB2_MMAP, align 4
  %14 = load i32, i32* @VB2_USERPTR, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @VB2_DMABUF, align 4
  %17 = or i32 %15, %16
  %18 = load %struct.uvc_video_queue*, %struct.uvc_video_queue** %5, align 8
  %19 = getelementptr inbounds %struct.uvc_video_queue, %struct.uvc_video_queue* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  store i32 %17, i32* %20, align 4
  %21 = load %struct.uvc_video_queue*, %struct.uvc_video_queue** %5, align 8
  %22 = load %struct.uvc_video_queue*, %struct.uvc_video_queue** %5, align 8
  %23 = getelementptr inbounds %struct.uvc_video_queue, %struct.uvc_video_queue* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 7
  store %struct.uvc_video_queue* %21, %struct.uvc_video_queue** %24, align 8
  %25 = load %struct.uvc_video_queue*, %struct.uvc_video_queue** %5, align 8
  %26 = getelementptr inbounds %struct.uvc_video_queue, %struct.uvc_video_queue* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  store i32 4, i32* %27, align 8
  %28 = load %struct.uvc_video_queue*, %struct.uvc_video_queue** %5, align 8
  %29 = getelementptr inbounds %struct.uvc_video_queue, %struct.uvc_video_queue* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 6
  store i32* @uvc_queue_qops, i32** %30, align 8
  %31 = load %struct.mutex*, %struct.mutex** %7, align 8
  %32 = load %struct.uvc_video_queue*, %struct.uvc_video_queue** %5, align 8
  %33 = getelementptr inbounds %struct.uvc_video_queue, %struct.uvc_video_queue* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 5
  store %struct.mutex* %31, %struct.mutex** %34, align 8
  %35 = load %struct.uvc_video_queue*, %struct.uvc_video_queue** %5, align 8
  %36 = getelementptr inbounds %struct.uvc_video_queue, %struct.uvc_video_queue* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 4
  store i32* @vb2_vmalloc_memops, i32** %37, align 8
  %38 = load i32, i32* @V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC, align 4
  %39 = load i32, i32* @V4L2_BUF_FLAG_TSTAMP_SRC_EOF, align 4
  %40 = or i32 %38, %39
  %41 = load %struct.uvc_video_queue*, %struct.uvc_video_queue** %5, align 8
  %42 = getelementptr inbounds %struct.uvc_video_queue, %struct.uvc_video_queue* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 3
  store i32 %40, i32* %43, align 4
  %44 = load %struct.uvc_video_queue*, %struct.uvc_video_queue** %5, align 8
  %45 = getelementptr inbounds %struct.uvc_video_queue, %struct.uvc_video_queue* %44, i32 0, i32 3
  %46 = call i32 @vb2_queue_init(%struct.TYPE_2__* %45)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %3
  %50 = load i32, i32* %8, align 4
  store i32 %50, i32* %4, align 4
  br label %60

51:                                               ; preds = %3
  %52 = load %struct.uvc_video_queue*, %struct.uvc_video_queue** %5, align 8
  %53 = getelementptr inbounds %struct.uvc_video_queue, %struct.uvc_video_queue* %52, i32 0, i32 2
  %54 = call i32 @spin_lock_init(i32* %53)
  %55 = load %struct.uvc_video_queue*, %struct.uvc_video_queue** %5, align 8
  %56 = getelementptr inbounds %struct.uvc_video_queue, %struct.uvc_video_queue* %55, i32 0, i32 1
  %57 = call i32 @INIT_LIST_HEAD(i32* %56)
  %58 = load %struct.uvc_video_queue*, %struct.uvc_video_queue** %5, align 8
  %59 = getelementptr inbounds %struct.uvc_video_queue, %struct.uvc_video_queue* %58, i32 0, i32 0
  store i64 0, i64* %59, align 8
  store i32 0, i32* %4, align 4
  br label %60

60:                                               ; preds = %51, %49
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local i32 @vb2_queue_init(%struct.TYPE_2__*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
