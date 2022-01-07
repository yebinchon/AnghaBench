; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss_ipipeif.c_ipipeif_init_entities.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss_ipipeif.c_ipipeif_init_entities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iss_ipipeif_device = type { %struct.TYPE_2__, i32, %struct.media_pad*, %struct.v4l2_subdev }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32*, i32 }
%struct.media_pad = type { i8* }
%struct.v4l2_subdev = type { i32, i32, i32, i32*, %struct.media_entity }
%struct.media_entity = type { i32* }

@IPIPEIF_INPUT_NONE = common dso_local global i32 0, align 4
@ipipeif_v4l2_ops = common dso_local global i32 0, align 4
@ipipeif_v4l2_internal_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"OMAP4 ISS ISP IPIPEIF\00", align 1
@V4L2_SUBDEV_FL_HAS_DEVNODE = common dso_local global i32 0, align 4
@MEDIA_PAD_FL_SINK = common dso_local global i8* null, align 8
@IPIPEIF_PAD_SINK = common dso_local global i64 0, align 8
@MEDIA_PAD_FL_SOURCE = common dso_local global i8* null, align 8
@IPIPEIF_PAD_SOURCE_ISIF_SF = common dso_local global i64 0, align 8
@IPIPEIF_PAD_SOURCE_VP = common dso_local global i64 0, align 8
@ipipeif_media_ops = common dso_local global i32 0, align 4
@IPIPEIF_PADS_NUM = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@ipipeif_video_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"ISP IPIPEIF\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iss_ipipeif_device*)* @ipipeif_init_entities to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipipeif_init_entities(%struct.iss_ipipeif_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iss_ipipeif_device*, align 8
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.media_pad*, align 8
  %6 = alloca %struct.media_entity*, align 8
  %7 = alloca i32, align 4
  store %struct.iss_ipipeif_device* %0, %struct.iss_ipipeif_device** %3, align 8
  %8 = load %struct.iss_ipipeif_device*, %struct.iss_ipipeif_device** %3, align 8
  %9 = getelementptr inbounds %struct.iss_ipipeif_device, %struct.iss_ipipeif_device* %8, i32 0, i32 3
  store %struct.v4l2_subdev* %9, %struct.v4l2_subdev** %4, align 8
  %10 = load %struct.iss_ipipeif_device*, %struct.iss_ipipeif_device** %3, align 8
  %11 = getelementptr inbounds %struct.iss_ipipeif_device, %struct.iss_ipipeif_device* %10, i32 0, i32 2
  %12 = load %struct.media_pad*, %struct.media_pad** %11, align 8
  store %struct.media_pad* %12, %struct.media_pad** %5, align 8
  %13 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %14 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %13, i32 0, i32 4
  store %struct.media_entity* %14, %struct.media_entity** %6, align 8
  %15 = load i32, i32* @IPIPEIF_INPUT_NONE, align 4
  %16 = load %struct.iss_ipipeif_device*, %struct.iss_ipipeif_device** %3, align 8
  %17 = getelementptr inbounds %struct.iss_ipipeif_device, %struct.iss_ipipeif_device* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 8
  %18 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %19 = call i32 @v4l2_subdev_init(%struct.v4l2_subdev* %18, i32* @ipipeif_v4l2_ops)
  %20 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %21 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %20, i32 0, i32 3
  store i32* @ipipeif_v4l2_internal_ops, i32** %21, align 8
  %22 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %23 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @strscpy(i32 %24, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 4)
  %26 = call i32 @BIT(i32 16)
  %27 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %28 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %30 = load %struct.iss_ipipeif_device*, %struct.iss_ipipeif_device** %3, align 8
  %31 = call i32 @v4l2_set_subdevdata(%struct.v4l2_subdev* %29, %struct.iss_ipipeif_device* %30)
  %32 = load i32, i32* @V4L2_SUBDEV_FL_HAS_DEVNODE, align 4
  %33 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %34 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 8
  %37 = load i8*, i8** @MEDIA_PAD_FL_SINK, align 8
  %38 = load %struct.media_pad*, %struct.media_pad** %5, align 8
  %39 = load i64, i64* @IPIPEIF_PAD_SINK, align 8
  %40 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %38, i64 %39
  %41 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %40, i32 0, i32 0
  store i8* %37, i8** %41, align 8
  %42 = load i8*, i8** @MEDIA_PAD_FL_SOURCE, align 8
  %43 = load %struct.media_pad*, %struct.media_pad** %5, align 8
  %44 = load i64, i64* @IPIPEIF_PAD_SOURCE_ISIF_SF, align 8
  %45 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %43, i64 %44
  %46 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %45, i32 0, i32 0
  store i8* %42, i8** %46, align 8
  %47 = load i8*, i8** @MEDIA_PAD_FL_SOURCE, align 8
  %48 = load %struct.media_pad*, %struct.media_pad** %5, align 8
  %49 = load i64, i64* @IPIPEIF_PAD_SOURCE_VP, align 8
  %50 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %48, i64 %49
  %51 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %50, i32 0, i32 0
  store i8* %47, i8** %51, align 8
  %52 = load %struct.media_entity*, %struct.media_entity** %6, align 8
  %53 = getelementptr inbounds %struct.media_entity, %struct.media_entity* %52, i32 0, i32 0
  store i32* @ipipeif_media_ops, i32** %53, align 8
  %54 = load %struct.media_entity*, %struct.media_entity** %6, align 8
  %55 = load i32, i32* @IPIPEIF_PADS_NUM, align 4
  %56 = load %struct.media_pad*, %struct.media_pad** %5, align 8
  %57 = call i32 @media_entity_pads_init(%struct.media_entity* %54, i32 %55, %struct.media_pad* %56)
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %1
  %61 = load i32, i32* %7, align 4
  store i32 %61, i32* %2, align 4
  br label %94

62:                                               ; preds = %1
  %63 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %64 = call i32 @ipipeif_init_formats(%struct.v4l2_subdev* %63, i32* null)
  %65 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  %66 = load %struct.iss_ipipeif_device*, %struct.iss_ipipeif_device** %3, align 8
  %67 = getelementptr inbounds %struct.iss_ipipeif_device, %struct.iss_ipipeif_device* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 6
  store i32 %65, i32* %68, align 8
  %69 = load %struct.iss_ipipeif_device*, %struct.iss_ipipeif_device** %3, align 8
  %70 = getelementptr inbounds %struct.iss_ipipeif_device, %struct.iss_ipipeif_device* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 5
  store i32* @ipipeif_video_ops, i32** %71, align 8
  %72 = load %struct.iss_ipipeif_device*, %struct.iss_ipipeif_device** %3, align 8
  %73 = call i32 @to_iss_device(%struct.iss_ipipeif_device* %72)
  %74 = load %struct.iss_ipipeif_device*, %struct.iss_ipipeif_device** %3, align 8
  %75 = getelementptr inbounds %struct.iss_ipipeif_device, %struct.iss_ipipeif_device* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 4
  store i32 %73, i32* %76, align 8
  %77 = call i32 @PAGE_ALIGN(i32 16777216)
  %78 = mul nsw i32 %77, 3
  %79 = load %struct.iss_ipipeif_device*, %struct.iss_ipipeif_device** %3, align 8
  %80 = getelementptr inbounds %struct.iss_ipipeif_device, %struct.iss_ipipeif_device* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  store i32 %78, i32* %81, align 8
  %82 = load %struct.iss_ipipeif_device*, %struct.iss_ipipeif_device** %3, align 8
  %83 = getelementptr inbounds %struct.iss_ipipeif_device, %struct.iss_ipipeif_device* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 1
  store i32 32, i32* %84, align 4
  %85 = load %struct.iss_ipipeif_device*, %struct.iss_ipipeif_device** %3, align 8
  %86 = getelementptr inbounds %struct.iss_ipipeif_device, %struct.iss_ipipeif_device* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 2
  store i32 1, i32* %87, align 8
  %88 = load %struct.iss_ipipeif_device*, %struct.iss_ipipeif_device** %3, align 8
  %89 = getelementptr inbounds %struct.iss_ipipeif_device, %struct.iss_ipipeif_device* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 3
  store i32 131040, i32* %90, align 4
  %91 = load %struct.iss_ipipeif_device*, %struct.iss_ipipeif_device** %3, align 8
  %92 = getelementptr inbounds %struct.iss_ipipeif_device, %struct.iss_ipipeif_device* %91, i32 0, i32 0
  %93 = call i32 @omap4iss_video_init(%struct.TYPE_2__* %92, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store i32 %93, i32* %2, align 4
  br label %94

94:                                               ; preds = %62, %60
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local i32 @v4l2_subdev_init(%struct.v4l2_subdev*, i32*) #1

declare dso_local i32 @strscpy(i32, i8*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @v4l2_set_subdevdata(%struct.v4l2_subdev*, %struct.iss_ipipeif_device*) #1

declare dso_local i32 @media_entity_pads_init(%struct.media_entity*, i32, %struct.media_pad*) #1

declare dso_local i32 @ipipeif_init_formats(%struct.v4l2_subdev*, i32*) #1

declare dso_local i32 @to_iss_device(%struct.iss_ipipeif_device*) #1

declare dso_local i32 @PAGE_ALIGN(i32) #1

declare dso_local i32 @omap4iss_video_init(%struct.TYPE_2__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
