; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_uvc_video.c_uvc_video_free_requests.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_uvc_video.c_uvc_video_free_requests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvc_video = type { i64, i32, i32**, i32**, i32 }

@UVC_NUM_REQUESTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uvc_video*)* @uvc_video_free_requests to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uvc_video_free_requests(%struct.uvc_video* %0) #0 {
  %2 = alloca %struct.uvc_video*, align 8
  %3 = alloca i32, align 4
  store %struct.uvc_video* %0, %struct.uvc_video** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %60, %1
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @UVC_NUM_REQUESTS, align 4
  %7 = icmp ult i32 %5, %6
  br i1 %7, label %8, label %63

8:                                                ; preds = %4
  %9 = load %struct.uvc_video*, %struct.uvc_video** %2, align 8
  %10 = getelementptr inbounds %struct.uvc_video, %struct.uvc_video* %9, i32 0, i32 3
  %11 = load i32**, i32*** %10, align 8
  %12 = load i32, i32* %3, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds i32*, i32** %11, i64 %13
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %35

17:                                               ; preds = %8
  %18 = load %struct.uvc_video*, %struct.uvc_video** %2, align 8
  %19 = getelementptr inbounds %struct.uvc_video, %struct.uvc_video* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.uvc_video*, %struct.uvc_video** %2, align 8
  %22 = getelementptr inbounds %struct.uvc_video, %struct.uvc_video* %21, i32 0, i32 3
  %23 = load i32**, i32*** %22, align 8
  %24 = load i32, i32* %3, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i32*, i32** %23, i64 %25
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 @usb_ep_free_request(i32 %20, i32* %27)
  %29 = load %struct.uvc_video*, %struct.uvc_video** %2, align 8
  %30 = getelementptr inbounds %struct.uvc_video, %struct.uvc_video* %29, i32 0, i32 3
  %31 = load i32**, i32*** %30, align 8
  %32 = load i32, i32* %3, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds i32*, i32** %31, i64 %33
  store i32* null, i32** %34, align 8
  br label %35

35:                                               ; preds = %17, %8
  %36 = load %struct.uvc_video*, %struct.uvc_video** %2, align 8
  %37 = getelementptr inbounds %struct.uvc_video, %struct.uvc_video* %36, i32 0, i32 2
  %38 = load i32**, i32*** %37, align 8
  %39 = load i32, i32* %3, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i32*, i32** %38, i64 %40
  %42 = load i32*, i32** %41, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %59

44:                                               ; preds = %35
  %45 = load %struct.uvc_video*, %struct.uvc_video** %2, align 8
  %46 = getelementptr inbounds %struct.uvc_video, %struct.uvc_video* %45, i32 0, i32 2
  %47 = load i32**, i32*** %46, align 8
  %48 = load i32, i32* %3, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i32*, i32** %47, i64 %49
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @kfree(i32* %51)
  %53 = load %struct.uvc_video*, %struct.uvc_video** %2, align 8
  %54 = getelementptr inbounds %struct.uvc_video, %struct.uvc_video* %53, i32 0, i32 2
  %55 = load i32**, i32*** %54, align 8
  %56 = load i32, i32* %3, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds i32*, i32** %55, i64 %57
  store i32* null, i32** %58, align 8
  br label %59

59:                                               ; preds = %44, %35
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %3, align 4
  %62 = add i32 %61, 1
  store i32 %62, i32* %3, align 4
  br label %4

63:                                               ; preds = %4
  %64 = load %struct.uvc_video*, %struct.uvc_video** %2, align 8
  %65 = getelementptr inbounds %struct.uvc_video, %struct.uvc_video* %64, i32 0, i32 1
  %66 = call i32 @INIT_LIST_HEAD(i32* %65)
  %67 = load %struct.uvc_video*, %struct.uvc_video** %2, align 8
  %68 = getelementptr inbounds %struct.uvc_video, %struct.uvc_video* %67, i32 0, i32 0
  store i64 0, i64* %68, align 8
  ret i32 0
}

declare dso_local i32 @usb_ep_free_request(i32, i32*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
