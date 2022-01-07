; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_uvc_v4l2.c_uvc_v4l2_querycap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_uvc_v4l2.c_uvc_v4l2_querycap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_capability = type { i32, i32, i32 }
%struct.video_device = type { i32 }
%struct.uvc_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.usb_composite_dev* }
%struct.usb_composite_dev = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8*, i32 }

@.str = private unnamed_addr constant [6 x i8] c"g_uvc\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_capability*)* @uvc_v4l2_querycap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uvc_v4l2_querycap(%struct.file* %0, i8* %1, %struct.v4l2_capability* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v4l2_capability*, align 8
  %7 = alloca %struct.video_device*, align 8
  %8 = alloca %struct.uvc_device*, align 8
  %9 = alloca %struct.usb_composite_dev*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.v4l2_capability* %2, %struct.v4l2_capability** %6, align 8
  %10 = load %struct.file*, %struct.file** %4, align 8
  %11 = call %struct.video_device* @video_devdata(%struct.file* %10)
  store %struct.video_device* %11, %struct.video_device** %7, align 8
  %12 = load %struct.video_device*, %struct.video_device** %7, align 8
  %13 = call %struct.uvc_device* @video_get_drvdata(%struct.video_device* %12)
  store %struct.uvc_device* %13, %struct.uvc_device** %8, align 8
  %14 = load %struct.uvc_device*, %struct.uvc_device** %8, align 8
  %15 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %18, align 8
  store %struct.usb_composite_dev* %19, %struct.usb_composite_dev** %9, align 8
  %20 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %21 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @strlcpy(i32 %22, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 4)
  %24 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %25 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %9, align 8
  %28 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 @strlcpy(i32 %26, i8* %31, i32 4)
  %33 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %34 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %9, align 8
  %37 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = call i8* @dev_name(i32* %39)
  %41 = call i32 @strlcpy(i32 %35, i8* %40, i32 4)
  ret i32 0
}

declare dso_local %struct.video_device* @video_devdata(%struct.file*) #1

declare dso_local %struct.uvc_device* @video_get_drvdata(%struct.video_device*) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i8* @dev_name(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
