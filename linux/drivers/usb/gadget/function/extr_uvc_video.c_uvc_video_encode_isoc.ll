; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_uvc_video.c_uvc_video_encode_isoc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_uvc_video.c_uvc_video_encode_isoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_request = type { i32, i8* }
%struct.uvc_video = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.uvc_buffer = type { i64, i32 }

@UVC_BUF_STATE_DONE = common dso_local global i32 0, align 4
@UVC_STREAM_FID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_request*, %struct.uvc_video*, %struct.uvc_buffer*)* @uvc_video_encode_isoc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uvc_video_encode_isoc(%struct.usb_request* %0, %struct.uvc_video* %1, %struct.uvc_buffer* %2) #0 {
  %4 = alloca %struct.usb_request*, align 8
  %5 = alloca %struct.uvc_video*, align 8
  %6 = alloca %struct.uvc_buffer*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.usb_request* %0, %struct.usb_request** %4, align 8
  store %struct.uvc_video* %1, %struct.uvc_video** %5, align 8
  store %struct.uvc_buffer* %2, %struct.uvc_buffer** %6, align 8
  %10 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %11 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %10, i32 0, i32 1
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %7, align 8
  %13 = load %struct.uvc_video*, %struct.uvc_video** %5, align 8
  %14 = getelementptr inbounds %struct.uvc_video, %struct.uvc_video* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %8, align 4
  %16 = load %struct.uvc_video*, %struct.uvc_video** %5, align 8
  %17 = load %struct.uvc_buffer*, %struct.uvc_buffer** %6, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @uvc_video_encode_header(%struct.uvc_video* %16, %struct.uvc_buffer* %17, i8* %18, i32 %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = load i8*, i8** %7, align 8
  %23 = sext i32 %21 to i64
  %24 = getelementptr i8, i8* %22, i64 %23
  store i8* %24, i8** %7, align 8
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %8, align 4
  %27 = sub nsw i32 %26, %25
  store i32 %27, i32* %8, align 4
  %28 = load %struct.uvc_video*, %struct.uvc_video** %5, align 8
  %29 = load %struct.uvc_buffer*, %struct.uvc_buffer** %6, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @uvc_video_encode_data(%struct.uvc_video* %28, %struct.uvc_buffer* %29, i8* %30, i32 %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %8, align 4
  %35 = sub nsw i32 %34, %33
  store i32 %35, i32* %8, align 4
  %36 = load %struct.uvc_video*, %struct.uvc_video** %5, align 8
  %37 = getelementptr inbounds %struct.uvc_video, %struct.uvc_video* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sub nsw i32 %38, %39
  %41 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %42 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load %struct.uvc_buffer*, %struct.uvc_buffer** %6, align 8
  %44 = getelementptr inbounds %struct.uvc_buffer, %struct.uvc_buffer* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.uvc_video*, %struct.uvc_video** %5, align 8
  %47 = getelementptr inbounds %struct.uvc_video, %struct.uvc_video* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %45, %49
  br i1 %50, label %51, label %67

51:                                               ; preds = %3
  %52 = load %struct.uvc_video*, %struct.uvc_video** %5, align 8
  %53 = getelementptr inbounds %struct.uvc_video, %struct.uvc_video* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  store i64 0, i64* %54, align 8
  %55 = load i32, i32* @UVC_BUF_STATE_DONE, align 4
  %56 = load %struct.uvc_buffer*, %struct.uvc_buffer** %6, align 8
  %57 = getelementptr inbounds %struct.uvc_buffer, %struct.uvc_buffer* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 8
  %58 = load %struct.uvc_video*, %struct.uvc_video** %5, align 8
  %59 = getelementptr inbounds %struct.uvc_video, %struct.uvc_video* %58, i32 0, i32 2
  %60 = load %struct.uvc_buffer*, %struct.uvc_buffer** %6, align 8
  %61 = call i32 @uvcg_queue_next_buffer(%struct.TYPE_2__* %59, %struct.uvc_buffer* %60)
  %62 = load i32, i32* @UVC_STREAM_FID, align 4
  %63 = load %struct.uvc_video*, %struct.uvc_video** %5, align 8
  %64 = getelementptr inbounds %struct.uvc_video, %struct.uvc_video* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = xor i32 %65, %62
  store i32 %66, i32* %64, align 4
  br label %67

67:                                               ; preds = %51, %3
  ret void
}

declare dso_local i32 @uvc_video_encode_header(%struct.uvc_video*, %struct.uvc_buffer*, i8*, i32) #1

declare dso_local i32 @uvc_video_encode_data(%struct.uvc_video*, %struct.uvc_buffer*, i8*, i32) #1

declare dso_local i32 @uvcg_queue_next_buffer(%struct.TYPE_2__*, %struct.uvc_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
