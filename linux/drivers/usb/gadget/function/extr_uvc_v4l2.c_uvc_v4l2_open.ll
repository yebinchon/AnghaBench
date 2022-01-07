; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_uvc_v4l2.c_uvc_v4l2_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_uvc_v4l2.c_uvc_v4l2_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32* }
%struct.video_device = type { i32 }
%struct.uvc_device = type { i32 }
%struct.uvc_file_handle = type { i32, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @uvc_v4l2_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uvc_v4l2_open(%struct.file* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.video_device*, align 8
  %5 = alloca %struct.uvc_device*, align 8
  %6 = alloca %struct.uvc_file_handle*, align 8
  store %struct.file* %0, %struct.file** %3, align 8
  %7 = load %struct.file*, %struct.file** %3, align 8
  %8 = call %struct.video_device* @video_devdata(%struct.file* %7)
  store %struct.video_device* %8, %struct.video_device** %4, align 8
  %9 = load %struct.video_device*, %struct.video_device** %4, align 8
  %10 = call %struct.uvc_device* @video_get_drvdata(%struct.video_device* %9)
  store %struct.uvc_device* %10, %struct.uvc_device** %5, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.uvc_file_handle* @kzalloc(i32 16, i32 %11)
  store %struct.uvc_file_handle* %12, %struct.uvc_file_handle** %6, align 8
  %13 = load %struct.uvc_file_handle*, %struct.uvc_file_handle** %6, align 8
  %14 = icmp eq %struct.uvc_file_handle* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %36

18:                                               ; preds = %1
  %19 = load %struct.uvc_file_handle*, %struct.uvc_file_handle** %6, align 8
  %20 = getelementptr inbounds %struct.uvc_file_handle, %struct.uvc_file_handle* %19, i32 0, i32 0
  %21 = load %struct.video_device*, %struct.video_device** %4, align 8
  %22 = call i32 @v4l2_fh_init(i32* %20, %struct.video_device* %21)
  %23 = load %struct.uvc_file_handle*, %struct.uvc_file_handle** %6, align 8
  %24 = getelementptr inbounds %struct.uvc_file_handle, %struct.uvc_file_handle* %23, i32 0, i32 0
  %25 = call i32 @v4l2_fh_add(i32* %24)
  %26 = load %struct.uvc_device*, %struct.uvc_device** %5, align 8
  %27 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %26, i32 0, i32 0
  %28 = load %struct.uvc_file_handle*, %struct.uvc_file_handle** %6, align 8
  %29 = getelementptr inbounds %struct.uvc_file_handle, %struct.uvc_file_handle* %28, i32 0, i32 1
  store i32* %27, i32** %29, align 8
  %30 = load %struct.uvc_file_handle*, %struct.uvc_file_handle** %6, align 8
  %31 = getelementptr inbounds %struct.uvc_file_handle, %struct.uvc_file_handle* %30, i32 0, i32 0
  %32 = load %struct.file*, %struct.file** %3, align 8
  %33 = getelementptr inbounds %struct.file, %struct.file* %32, i32 0, i32 0
  store i32* %31, i32** %33, align 8
  %34 = load %struct.uvc_device*, %struct.uvc_device** %5, align 8
  %35 = call i32 @uvc_function_connect(%struct.uvc_device* %34)
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %18, %15
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local %struct.video_device* @video_devdata(%struct.file*) #1

declare dso_local %struct.uvc_device* @video_get_drvdata(%struct.video_device*) #1

declare dso_local %struct.uvc_file_handle* @kzalloc(i32, i32) #1

declare dso_local i32 @v4l2_fh_init(i32*, %struct.video_device*) #1

declare dso_local i32 @v4l2_fh_add(i32*) #1

declare dso_local i32 @uvc_function_connect(%struct.uvc_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
