; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_uvc_v4l2.c_uvc_v4l2_ioctl_default.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_uvc_v4l2.c_uvc_v4l2_ioctl_default.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.video_device = type { i32 }
%struct.uvc_device = type { i32 }

@ENOIOCTLCMD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, i8*, i32, i32, i8*)* @uvc_v4l2_ioctl_default to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @uvc_v4l2_ioctl_default(%struct.file* %0, i8* %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.video_device*, align 8
  %13 = alloca %struct.uvc_device*, align 8
  store %struct.file* %0, %struct.file** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %14 = load %struct.file*, %struct.file** %7, align 8
  %15 = call %struct.video_device* @video_devdata(%struct.file* %14)
  store %struct.video_device* %15, %struct.video_device** %12, align 8
  %16 = load %struct.video_device*, %struct.video_device** %12, align 8
  %17 = call %struct.uvc_device* @video_get_drvdata(%struct.video_device* %16)
  store %struct.uvc_device* %17, %struct.uvc_device** %13, align 8
  %18 = load i32, i32* %10, align 4
  switch i32 %18, label %23 [
    i32 128, label %19
  ]

19:                                               ; preds = %5
  %20 = load %struct.uvc_device*, %struct.uvc_device** %13, align 8
  %21 = load i8*, i8** %11, align 8
  %22 = call i64 @uvc_send_response(%struct.uvc_device* %20, i8* %21)
  store i64 %22, i64* %6, align 8
  br label %26

23:                                               ; preds = %5
  %24 = load i64, i64* @ENOIOCTLCMD, align 8
  %25 = sub nsw i64 0, %24
  store i64 %25, i64* %6, align 8
  br label %26

26:                                               ; preds = %23, %19
  %27 = load i64, i64* %6, align 8
  ret i64 %27
}

declare dso_local %struct.video_device* @video_devdata(%struct.file*) #1

declare dso_local %struct.uvc_device* @video_get_drvdata(%struct.video_device*) #1

declare dso_local i64 @uvc_send_response(%struct.uvc_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
