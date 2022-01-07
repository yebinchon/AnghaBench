; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_uvc_v4l2.c_uvc_v4l2_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_uvc_v4l2.c_uvc_v4l2_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32* }
%struct.video_device = type { i32 }
%struct.uvc_device = type { i32 }
%struct.uvc_file_handle = type { i32, %struct.uvc_video* }
%struct.uvc_video = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @uvc_v4l2_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uvc_v4l2_release(%struct.file* %0) #0 {
  %2 = alloca %struct.file*, align 8
  %3 = alloca %struct.video_device*, align 8
  %4 = alloca %struct.uvc_device*, align 8
  %5 = alloca %struct.uvc_file_handle*, align 8
  %6 = alloca %struct.uvc_video*, align 8
  store %struct.file* %0, %struct.file** %2, align 8
  %7 = load %struct.file*, %struct.file** %2, align 8
  %8 = call %struct.video_device* @video_devdata(%struct.file* %7)
  store %struct.video_device* %8, %struct.video_device** %3, align 8
  %9 = load %struct.video_device*, %struct.video_device** %3, align 8
  %10 = call %struct.uvc_device* @video_get_drvdata(%struct.video_device* %9)
  store %struct.uvc_device* %10, %struct.uvc_device** %4, align 8
  %11 = load %struct.file*, %struct.file** %2, align 8
  %12 = getelementptr inbounds %struct.file, %struct.file* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = call %struct.uvc_file_handle* @to_uvc_file_handle(i32* %13)
  store %struct.uvc_file_handle* %14, %struct.uvc_file_handle** %5, align 8
  %15 = load %struct.uvc_file_handle*, %struct.uvc_file_handle** %5, align 8
  %16 = getelementptr inbounds %struct.uvc_file_handle, %struct.uvc_file_handle* %15, i32 0, i32 1
  %17 = load %struct.uvc_video*, %struct.uvc_video** %16, align 8
  store %struct.uvc_video* %17, %struct.uvc_video** %6, align 8
  %18 = load %struct.uvc_device*, %struct.uvc_device** %4, align 8
  %19 = call i32 @uvc_function_disconnect(%struct.uvc_device* %18)
  %20 = load %struct.uvc_video*, %struct.uvc_video** %6, align 8
  %21 = getelementptr inbounds %struct.uvc_video, %struct.uvc_video* %20, i32 0, i32 0
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load %struct.uvc_video*, %struct.uvc_video** %6, align 8
  %24 = call i32 @uvcg_video_enable(%struct.uvc_video* %23, i32 0)
  %25 = load %struct.uvc_video*, %struct.uvc_video** %6, align 8
  %26 = getelementptr inbounds %struct.uvc_video, %struct.uvc_video* %25, i32 0, i32 1
  %27 = call i32 @uvcg_free_buffers(i32* %26)
  %28 = load %struct.uvc_video*, %struct.uvc_video** %6, align 8
  %29 = getelementptr inbounds %struct.uvc_video, %struct.uvc_video* %28, i32 0, i32 0
  %30 = call i32 @mutex_unlock(i32* %29)
  %31 = load %struct.file*, %struct.file** %2, align 8
  %32 = getelementptr inbounds %struct.file, %struct.file* %31, i32 0, i32 0
  store i32* null, i32** %32, align 8
  %33 = load %struct.uvc_file_handle*, %struct.uvc_file_handle** %5, align 8
  %34 = getelementptr inbounds %struct.uvc_file_handle, %struct.uvc_file_handle* %33, i32 0, i32 0
  %35 = call i32 @v4l2_fh_del(i32* %34)
  %36 = load %struct.uvc_file_handle*, %struct.uvc_file_handle** %5, align 8
  %37 = getelementptr inbounds %struct.uvc_file_handle, %struct.uvc_file_handle* %36, i32 0, i32 0
  %38 = call i32 @v4l2_fh_exit(i32* %37)
  %39 = load %struct.uvc_file_handle*, %struct.uvc_file_handle** %5, align 8
  %40 = call i32 @kfree(%struct.uvc_file_handle* %39)
  ret i32 0
}

declare dso_local %struct.video_device* @video_devdata(%struct.file*) #1

declare dso_local %struct.uvc_device* @video_get_drvdata(%struct.video_device*) #1

declare dso_local %struct.uvc_file_handle* @to_uvc_file_handle(i32*) #1

declare dso_local i32 @uvc_function_disconnect(%struct.uvc_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @uvcg_video_enable(%struct.uvc_video*, i32) #1

declare dso_local i32 @uvcg_free_buffers(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @v4l2_fh_del(i32*) #1

declare dso_local i32 @v4l2_fh_exit(i32*) #1

declare dso_local i32 @kfree(%struct.uvc_file_handle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
