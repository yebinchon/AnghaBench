; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss_csi2.c_csi2_init_entities.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss_csi2.c_csi2_init_entities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iss_csi2_device = type { %struct.v4l2_subdev, %struct.TYPE_2__, i32, %struct.media_pad* }
%struct.v4l2_subdev = type { i8*, %struct.media_entity, i32, i32, i32* }
%struct.media_entity = type { i32* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32*, i32 }
%struct.media_pad = type { i32 }

@V4L2_SUBDEV_NAME_SIZE = common dso_local global i32 0, align 4
@csi2_ops = common dso_local global i32 0, align 4
@csi2_internal_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"CSI2%s\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"OMAP4 ISS %s\00", align 1
@V4L2_SUBDEV_FL_HAS_DEVNODE = common dso_local global i32 0, align 4
@MEDIA_PAD_FL_SOURCE = common dso_local global i32 0, align 4
@CSI2_PAD_SOURCE = common dso_local global i64 0, align 8
@MEDIA_PAD_FL_SINK = common dso_local global i32 0, align 4
@CSI2_PAD_SINK = common dso_local global i64 0, align 8
@csi2_media_ops = common dso_local global i32 0, align 4
@CSI2_PADS_NUM = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@csi2_issvideo_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iss_csi2_device*, i8*)* @csi2_init_entities to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @csi2_init_entities(%struct.iss_csi2_device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iss_csi2_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v4l2_subdev*, align 8
  %7 = alloca %struct.media_pad*, align 8
  %8 = alloca %struct.media_entity*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.iss_csi2_device* %0, %struct.iss_csi2_device** %4, align 8
  store i8* %1, i8** %5, align 8
  %13 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %4, align 8
  %14 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %13, i32 0, i32 0
  store %struct.v4l2_subdev* %14, %struct.v4l2_subdev** %6, align 8
  %15 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %4, align 8
  %16 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %15, i32 0, i32 3
  %17 = load %struct.media_pad*, %struct.media_pad** %16, align 8
  store %struct.media_pad* %17, %struct.media_pad** %7, align 8
  %18 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %19 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %18, i32 0, i32 1
  store %struct.media_entity* %19, %struct.media_entity** %8, align 8
  %20 = load i32, i32* @V4L2_SUBDEV_NAME_SIZE, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %10, align 8
  %23 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %11, align 8
  %24 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %25 = call i32 @v4l2_subdev_init(%struct.v4l2_subdev* %24, i32* @csi2_ops)
  %26 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %27 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %26, i32 0, i32 4
  store i32* @csi2_internal_ops, i32** %27, align 8
  %28 = trunc i64 %21 to i32
  %29 = load i8*, i8** %5, align 8
  %30 = call i32 @snprintf(i8* %23, i32 %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %29)
  %31 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %32 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 @snprintf(i8* %33, i32 8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %23)
  %35 = call i32 @BIT(i32 16)
  %36 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %37 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 4
  %38 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %39 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %4, align 8
  %40 = call i32 @v4l2_set_subdevdata(%struct.v4l2_subdev* %38, %struct.iss_csi2_device* %39)
  %41 = load i32, i32* @V4L2_SUBDEV_FL_HAS_DEVNODE, align 4
  %42 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %43 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 8
  %46 = load i32, i32* @MEDIA_PAD_FL_SOURCE, align 4
  %47 = load %struct.media_pad*, %struct.media_pad** %7, align 8
  %48 = load i64, i64* @CSI2_PAD_SOURCE, align 8
  %49 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %47, i64 %48
  %50 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %49, i32 0, i32 0
  store i32 %46, i32* %50, align 4
  %51 = load i32, i32* @MEDIA_PAD_FL_SINK, align 4
  %52 = load %struct.media_pad*, %struct.media_pad** %7, align 8
  %53 = load i64, i64* @CSI2_PAD_SINK, align 8
  %54 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %52, i64 %53
  %55 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %54, i32 0, i32 0
  store i32 %51, i32* %55, align 4
  %56 = load %struct.media_entity*, %struct.media_entity** %8, align 8
  %57 = getelementptr inbounds %struct.media_entity, %struct.media_entity* %56, i32 0, i32 0
  store i32* @csi2_media_ops, i32** %57, align 8
  %58 = load %struct.media_entity*, %struct.media_entity** %8, align 8
  %59 = load i32, i32* @CSI2_PADS_NUM, align 4
  %60 = load %struct.media_pad*, %struct.media_pad** %7, align 8
  %61 = call i32 @media_entity_pads_init(%struct.media_entity* %58, i32 %59, %struct.media_pad* %60)
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %9, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %2
  %65 = load i32, i32* %9, align 4
  store i32 %65, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %109

66:                                               ; preds = %2
  %67 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %68 = call i32 @csi2_init_formats(%struct.v4l2_subdev* %67, i32* null)
  %69 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  %70 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %4, align 8
  %71 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 6
  store i32 %69, i32* %72, align 8
  %73 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %4, align 8
  %74 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 5
  store i32* @csi2_issvideo_ops, i32** %75, align 8
  %76 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %4, align 8
  %77 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  store i32 32, i32* %78, align 8
  %79 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %4, align 8
  %80 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  store i32 1, i32* %81, align 4
  %82 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %4, align 8
  %83 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 2
  store i32 131040, i32* %84, align 8
  %85 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %4, align 8
  %86 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %4, align 8
  %89 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 4
  store i32 %87, i32* %90, align 8
  %91 = call i32 @PAGE_ALIGN(i32 16777216)
  %92 = mul nsw i32 %91, 3
  %93 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %4, align 8
  %94 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 3
  store i32 %92, i32* %95, align 4
  %96 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %4, align 8
  %97 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %96, i32 0, i32 1
  %98 = call i32 @omap4iss_video_init(%struct.TYPE_2__* %97, i8* %23)
  store i32 %98, i32* %9, align 4
  %99 = load i32, i32* %9, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %66
  br label %103

102:                                              ; preds = %66
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %109

103:                                              ; preds = %101
  %104 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %4, align 8
  %105 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %105, i32 0, i32 1
  %107 = call i32 @media_entity_cleanup(%struct.media_entity* %106)
  %108 = load i32, i32* %9, align 4
  store i32 %108, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %109

109:                                              ; preds = %103, %102, %64
  %110 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %110)
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @v4l2_subdev_init(%struct.v4l2_subdev*, i32*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i32 @BIT(i32) #2

declare dso_local i32 @v4l2_set_subdevdata(%struct.v4l2_subdev*, %struct.iss_csi2_device*) #2

declare dso_local i32 @media_entity_pads_init(%struct.media_entity*, i32, %struct.media_pad*) #2

declare dso_local i32 @csi2_init_formats(%struct.v4l2_subdev*, i32*) #2

declare dso_local i32 @PAGE_ALIGN(i32) #2

declare dso_local i32 @omap4iss_video_init(%struct.TYPE_2__*, i8*) #2

declare dso_local i32 @media_entity_cleanup(%struct.media_entity*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
