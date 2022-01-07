; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_uvc.c_uvc_register_video.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_uvc.c_uvc_register_video.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvc_device = type { %struct.TYPE_12__, %struct.TYPE_10__, i32, %struct.TYPE_9__ }
%struct.TYPE_12__ = type { i32, i32, i32, i32*, i32, i32, i32*, i32*, i32* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.usb_composite_dev* }
%struct.usb_composite_dev = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }

@uvc_v4l2_fops = common dso_local global i32 0, align 4
@uvc_v4l2_ioctl_ops = common dso_local global i32 0, align 4
@video_device_release_empty = common dso_local global i32 0, align 4
@VFL_DIR_TX = common dso_local global i32 0, align 4
@V4L2_CAP_VIDEO_OUTPUT = common dso_local global i32 0, align 4
@V4L2_CAP_STREAMING = common dso_local global i32 0, align 4
@VFL_TYPE_GRABBER = common dso_local global i32 0, align 4
@dev_attr_function_name = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uvc_device*)* @uvc_register_video to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uvc_register_video(%struct.uvc_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uvc_device*, align 8
  %4 = alloca %struct.usb_composite_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.uvc_device* %0, %struct.uvc_device** %3, align 8
  %6 = load %struct.uvc_device*, %struct.uvc_device** %3, align 8
  %7 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %10, align 8
  store %struct.usb_composite_dev* %11, %struct.usb_composite_dev** %4, align 8
  %12 = load %struct.uvc_device*, %struct.uvc_device** %3, align 8
  %13 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %12, i32 0, i32 2
  %14 = load %struct.uvc_device*, %struct.uvc_device** %3, align 8
  %15 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 8
  store i32* %13, i32** %16, align 8
  %17 = load %struct.uvc_device*, %struct.uvc_device** %3, align 8
  %18 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 7
  store i32* @uvc_v4l2_fops, i32** %19, align 8
  %20 = load %struct.uvc_device*, %struct.uvc_device** %3, align 8
  %21 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 6
  store i32* @uvc_v4l2_ioctl_ops, i32** %22, align 8
  %23 = load i32, i32* @video_device_release_empty, align 4
  %24 = load %struct.uvc_device*, %struct.uvc_device** %3, align 8
  %25 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 5
  store i32 %23, i32* %26, align 4
  %27 = load i32, i32* @VFL_DIR_TX, align 4
  %28 = load %struct.uvc_device*, %struct.uvc_device** %3, align 8
  %29 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 4
  store i32 %27, i32* %30, align 8
  %31 = load %struct.uvc_device*, %struct.uvc_device** %3, align 8
  %32 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load %struct.uvc_device*, %struct.uvc_device** %3, align 8
  %35 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 3
  store i32* %33, i32** %36, align 8
  %37 = load i32, i32* @V4L2_CAP_VIDEO_OUTPUT, align 4
  %38 = load i32, i32* @V4L2_CAP_STREAMING, align 4
  %39 = or i32 %37, %38
  %40 = load %struct.uvc_device*, %struct.uvc_device** %3, align 8
  %41 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 0
  store i32 %39, i32* %42, align 8
  %43 = load %struct.uvc_device*, %struct.uvc_device** %3, align 8
  %44 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %4, align 8
  %48 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %47, i32 0, i32 0
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @strlcpy(i32 %46, i32 %51, i32 4)
  %53 = load %struct.uvc_device*, %struct.uvc_device** %3, align 8
  %54 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %53, i32 0, i32 0
  %55 = load %struct.uvc_device*, %struct.uvc_device** %3, align 8
  %56 = call i32 @video_set_drvdata(%struct.TYPE_12__* %54, %struct.uvc_device* %55)
  %57 = load %struct.uvc_device*, %struct.uvc_device** %3, align 8
  %58 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %57, i32 0, i32 0
  %59 = load i32, i32* @VFL_TYPE_GRABBER, align 4
  %60 = call i32 @video_register_device(%struct.TYPE_12__* %58, i32 %59, i32 -1)
  store i32 %60, i32* %5, align 4
  %61 = load i32, i32* %5, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %1
  %64 = load i32, i32* %5, align 4
  store i32 %64, i32* %2, align 4
  br label %78

65:                                               ; preds = %1
  %66 = load %struct.uvc_device*, %struct.uvc_device** %3, align 8
  %67 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 1
  %69 = call i32 @device_create_file(i32* %68, i32* @dev_attr_function_name)
  store i32 %69, i32* %5, align 4
  %70 = load i32, i32* %5, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %65
  %73 = load %struct.uvc_device*, %struct.uvc_device** %3, align 8
  %74 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %73, i32 0, i32 0
  %75 = call i32 @video_unregister_device(%struct.TYPE_12__* %74)
  %76 = load i32, i32* %5, align 4
  store i32 %76, i32* %2, align 4
  br label %78

77:                                               ; preds = %65
  store i32 0, i32* %2, align 4
  br label %78

78:                                               ; preds = %77, %72, %63
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @video_set_drvdata(%struct.TYPE_12__*, %struct.uvc_device*) #1

declare dso_local i32 @video_register_device(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @device_create_file(i32*, i32*) #1

declare dso_local i32 @video_unregister_device(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
