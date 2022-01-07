; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_uvc_video.c_uvcg_video_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_uvc_video.c_uvcg_video_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvc_video = type { i32, i64, i64, i32, i64*, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [47 x i8] c"Video enable failed, device is uninitialized.\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@UVC_NUM_REQUESTS = common dso_local global i32 0, align 4
@uvc_video_encode_bulk = common dso_local global i32 0, align 4
@uvc_video_encode_isoc = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uvcg_video_enable(%struct.uvc_video* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.uvc_video*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.uvc_video* %0, %struct.uvc_video** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.uvc_video*, %struct.uvc_video** %4, align 8
  %9 = getelementptr inbounds %struct.uvc_video, %struct.uvc_video* %8, i32 0, i32 5
  %10 = load i32*, i32** %9, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %20

12:                                               ; preds = %2
  %13 = load %struct.uvc_video*, %struct.uvc_video** %4, align 8
  %14 = getelementptr inbounds %struct.uvc_video, %struct.uvc_video* %13, i32 0, i32 6
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = call i32 @uvcg_info(i32* %16, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %90

20:                                               ; preds = %2
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %59, label %23

23:                                               ; preds = %20
  store i32 0, i32* %6, align 4
  br label %24

24:                                               ; preds = %50, %23
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @UVC_NUM_REQUESTS, align 4
  %27 = icmp ult i32 %25, %26
  br i1 %27, label %28, label %53

28:                                               ; preds = %24
  %29 = load %struct.uvc_video*, %struct.uvc_video** %4, align 8
  %30 = getelementptr inbounds %struct.uvc_video, %struct.uvc_video* %29, i32 0, i32 4
  %31 = load i64*, i64** %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds i64, i64* %31, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %49

37:                                               ; preds = %28
  %38 = load %struct.uvc_video*, %struct.uvc_video** %4, align 8
  %39 = getelementptr inbounds %struct.uvc_video, %struct.uvc_video* %38, i32 0, i32 5
  %40 = load i32*, i32** %39, align 8
  %41 = load %struct.uvc_video*, %struct.uvc_video** %4, align 8
  %42 = getelementptr inbounds %struct.uvc_video, %struct.uvc_video* %41, i32 0, i32 4
  %43 = load i64*, i64** %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds i64, i64* %43, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @usb_ep_dequeue(i32* %40, i64 %47)
  br label %49

49:                                               ; preds = %37, %28
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %6, align 4
  %52 = add i32 %51, 1
  store i32 %52, i32* %6, align 4
  br label %24

53:                                               ; preds = %24
  %54 = load %struct.uvc_video*, %struct.uvc_video** %4, align 8
  %55 = call i32 @uvc_video_free_requests(%struct.uvc_video* %54)
  %56 = load %struct.uvc_video*, %struct.uvc_video** %4, align 8
  %57 = getelementptr inbounds %struct.uvc_video, %struct.uvc_video* %56, i32 0, i32 3
  %58 = call i32 @uvcg_queue_enable(i32* %57, i32 0)
  store i32 0, i32* %3, align 4
  br label %90

59:                                               ; preds = %20
  %60 = load %struct.uvc_video*, %struct.uvc_video** %4, align 8
  %61 = getelementptr inbounds %struct.uvc_video, %struct.uvc_video* %60, i32 0, i32 3
  %62 = call i32 @uvcg_queue_enable(i32* %61, i32 1)
  store i32 %62, i32* %7, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %59
  %65 = load i32, i32* %7, align 4
  store i32 %65, i32* %3, align 4
  br label %90

66:                                               ; preds = %59
  %67 = load %struct.uvc_video*, %struct.uvc_video** %4, align 8
  %68 = call i32 @uvc_video_alloc_requests(%struct.uvc_video* %67)
  store i32 %68, i32* %7, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %66
  %71 = load i32, i32* %7, align 4
  store i32 %71, i32* %3, align 4
  br label %90

72:                                               ; preds = %66
  %73 = load %struct.uvc_video*, %struct.uvc_video** %4, align 8
  %74 = getelementptr inbounds %struct.uvc_video, %struct.uvc_video* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %72
  %78 = load i32, i32* @uvc_video_encode_bulk, align 4
  %79 = load %struct.uvc_video*, %struct.uvc_video** %4, align 8
  %80 = getelementptr inbounds %struct.uvc_video, %struct.uvc_video* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  %81 = load %struct.uvc_video*, %struct.uvc_video** %4, align 8
  %82 = getelementptr inbounds %struct.uvc_video, %struct.uvc_video* %81, i32 0, i32 1
  store i64 0, i64* %82, align 8
  br label %87

83:                                               ; preds = %72
  %84 = load i32, i32* @uvc_video_encode_isoc, align 4
  %85 = load %struct.uvc_video*, %struct.uvc_video** %4, align 8
  %86 = getelementptr inbounds %struct.uvc_video, %struct.uvc_video* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 8
  br label %87

87:                                               ; preds = %83, %77
  %88 = load %struct.uvc_video*, %struct.uvc_video** %4, align 8
  %89 = call i32 @uvcg_video_pump(%struct.uvc_video* %88)
  store i32 %89, i32* %3, align 4
  br label %90

90:                                               ; preds = %87, %70, %64, %53, %12
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i32 @uvcg_info(i32*, i8*) #1

declare dso_local i32 @usb_ep_dequeue(i32*, i64) #1

declare dso_local i32 @uvc_video_free_requests(%struct.uvc_video*) #1

declare dso_local i32 @uvcg_queue_enable(i32*, i32) #1

declare dso_local i32 @uvc_video_alloc_requests(%struct.uvc_video*) #1

declare dso_local i32 @uvcg_video_pump(%struct.uvc_video*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
