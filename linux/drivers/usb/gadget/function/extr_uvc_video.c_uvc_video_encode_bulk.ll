; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_uvc_video.c_uvc_video_encode_bulk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_uvc_video.c_uvc_video_encode_bulk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_request = type { i32, i32, i8* }
%struct.uvc_video = type { i32, i64, i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.uvc_buffer = type { i64, i32 }

@UVC_BUF_STATE_DONE = common dso_local global i32 0, align 4
@UVC_STREAM_FID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_request*, %struct.uvc_video*, %struct.uvc_buffer*)* @uvc_video_encode_bulk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uvc_video_encode_bulk(%struct.usb_request* %0, %struct.uvc_video* %1, %struct.uvc_buffer* %2) #0 {
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
  %11 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %10, i32 0, i32 2
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %7, align 8
  %13 = load %struct.uvc_video*, %struct.uvc_video** %5, align 8
  %14 = getelementptr inbounds %struct.uvc_video, %struct.uvc_video* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %8, align 4
  %16 = load %struct.uvc_video*, %struct.uvc_video** %5, align 8
  %17 = getelementptr inbounds %struct.uvc_video, %struct.uvc_video* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %39

20:                                               ; preds = %3
  %21 = load %struct.uvc_video*, %struct.uvc_video** %5, align 8
  %22 = load %struct.uvc_buffer*, %struct.uvc_buffer** %6, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @uvc_video_encode_header(%struct.uvc_video* %21, %struct.uvc_buffer* %22, i8* %23, i32 %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = sext i32 %26 to i64
  %28 = load %struct.uvc_video*, %struct.uvc_video** %5, align 8
  %29 = getelementptr inbounds %struct.uvc_video, %struct.uvc_video* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %30, %27
  store i64 %31, i64* %29, align 8
  %32 = load i32, i32* %9, align 4
  %33 = load i8*, i8** %7, align 8
  %34 = sext i32 %32 to i64
  %35 = getelementptr i8, i8* %33, i64 %34
  store i8* %35, i8** %7, align 8
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %8, align 4
  %38 = sub nsw i32 %37, %36
  store i32 %38, i32* %8, align 4
  br label %39

39:                                               ; preds = %20, %3
  %40 = load %struct.uvc_video*, %struct.uvc_video** %5, align 8
  %41 = getelementptr inbounds %struct.uvc_video, %struct.uvc_video* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.uvc_video*, %struct.uvc_video** %5, align 8
  %44 = getelementptr inbounds %struct.uvc_video, %struct.uvc_video* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = sub nsw i64 %42, %45
  %47 = trunc i64 %46 to i32
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @min(i32 %47, i32 %48)
  store i32 %49, i32* %8, align 4
  %50 = load %struct.uvc_video*, %struct.uvc_video** %5, align 8
  %51 = load %struct.uvc_buffer*, %struct.uvc_buffer** %6, align 8
  %52 = load i8*, i8** %7, align 8
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @uvc_video_encode_data(%struct.uvc_video* %50, %struct.uvc_buffer* %51, i8* %52, i32 %53)
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = sext i32 %55 to i64
  %57 = load %struct.uvc_video*, %struct.uvc_video** %5, align 8
  %58 = getelementptr inbounds %struct.uvc_video, %struct.uvc_video* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %59, %56
  store i64 %60, i64* %58, align 8
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* %8, align 4
  %63 = sub nsw i32 %62, %61
  store i32 %63, i32* %8, align 4
  %64 = load %struct.uvc_video*, %struct.uvc_video** %5, align 8
  %65 = getelementptr inbounds %struct.uvc_video, %struct.uvc_video* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* %8, align 4
  %68 = sub nsw i32 %66, %67
  %69 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %70 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  %71 = load %struct.uvc_video*, %struct.uvc_video** %5, align 8
  %72 = getelementptr inbounds %struct.uvc_video, %struct.uvc_video* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.uvc_video*, %struct.uvc_video** %5, align 8
  %75 = getelementptr inbounds %struct.uvc_video, %struct.uvc_video* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = icmp eq i64 %73, %76
  %78 = zext i1 %77 to i32
  %79 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %80 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  %81 = load %struct.uvc_buffer*, %struct.uvc_buffer** %6, align 8
  %82 = getelementptr inbounds %struct.uvc_buffer, %struct.uvc_buffer* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.uvc_video*, %struct.uvc_video** %5, align 8
  %85 = getelementptr inbounds %struct.uvc_video, %struct.uvc_video* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp eq i64 %83, %87
  br i1 %88, label %89, label %107

89:                                               ; preds = %39
  %90 = load %struct.uvc_video*, %struct.uvc_video** %5, align 8
  %91 = getelementptr inbounds %struct.uvc_video, %struct.uvc_video* %90, i32 0, i32 3
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  store i64 0, i64* %92, align 8
  %93 = load i32, i32* @UVC_BUF_STATE_DONE, align 4
  %94 = load %struct.uvc_buffer*, %struct.uvc_buffer** %6, align 8
  %95 = getelementptr inbounds %struct.uvc_buffer, %struct.uvc_buffer* %94, i32 0, i32 1
  store i32 %93, i32* %95, align 8
  %96 = load %struct.uvc_video*, %struct.uvc_video** %5, align 8
  %97 = getelementptr inbounds %struct.uvc_video, %struct.uvc_video* %96, i32 0, i32 3
  %98 = load %struct.uvc_buffer*, %struct.uvc_buffer** %6, align 8
  %99 = call i32 @uvcg_queue_next_buffer(%struct.TYPE_2__* %97, %struct.uvc_buffer* %98)
  %100 = load i32, i32* @UVC_STREAM_FID, align 4
  %101 = load %struct.uvc_video*, %struct.uvc_video** %5, align 8
  %102 = getelementptr inbounds %struct.uvc_video, %struct.uvc_video* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 8
  %104 = xor i32 %103, %100
  store i32 %104, i32* %102, align 8
  %105 = load %struct.uvc_video*, %struct.uvc_video** %5, align 8
  %106 = getelementptr inbounds %struct.uvc_video, %struct.uvc_video* %105, i32 0, i32 1
  store i64 0, i64* %106, align 8
  br label %107

107:                                              ; preds = %89, %39
  %108 = load %struct.uvc_video*, %struct.uvc_video** %5, align 8
  %109 = getelementptr inbounds %struct.uvc_video, %struct.uvc_video* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.uvc_video*, %struct.uvc_video** %5, align 8
  %112 = getelementptr inbounds %struct.uvc_video, %struct.uvc_video* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = icmp eq i64 %110, %113
  br i1 %114, label %124, label %115

115:                                              ; preds = %107
  %116 = load %struct.uvc_buffer*, %struct.uvc_buffer** %6, align 8
  %117 = getelementptr inbounds %struct.uvc_buffer, %struct.uvc_buffer* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.uvc_video*, %struct.uvc_video** %5, align 8
  %120 = getelementptr inbounds %struct.uvc_video, %struct.uvc_video* %119, i32 0, i32 3
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = icmp eq i64 %118, %122
  br i1 %123, label %124, label %127

124:                                              ; preds = %115, %107
  %125 = load %struct.uvc_video*, %struct.uvc_video** %5, align 8
  %126 = getelementptr inbounds %struct.uvc_video, %struct.uvc_video* %125, i32 0, i32 1
  store i64 0, i64* %126, align 8
  br label %127

127:                                              ; preds = %124, %115
  ret void
}

declare dso_local i32 @uvc_video_encode_header(%struct.uvc_video*, %struct.uvc_buffer*, i8*, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @uvc_video_encode_data(%struct.uvc_video*, %struct.uvc_buffer*, i8*, i32) #1

declare dso_local i32 @uvcg_queue_next_buffer(%struct.TYPE_2__*, %struct.uvc_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
