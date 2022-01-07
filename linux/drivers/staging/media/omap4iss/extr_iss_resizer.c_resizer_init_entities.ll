; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss_resizer.c_resizer_init_entities.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss_resizer.c_resizer_init_entities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iss_resizer_device = type { %struct.TYPE_2__, i32, %struct.media_pad*, %struct.v4l2_subdev }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32*, i32 }
%struct.media_pad = type { i32 }
%struct.v4l2_subdev = type { i32, i32, i32, i32*, %struct.media_entity }
%struct.media_entity = type { i32* }

@RESIZER_INPUT_NONE = common dso_local global i32 0, align 4
@resizer_v4l2_ops = common dso_local global i32 0, align 4
@resizer_v4l2_internal_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"OMAP4 ISS ISP resizer\00", align 1
@V4L2_SUBDEV_FL_HAS_DEVNODE = common dso_local global i32 0, align 4
@MEDIA_PAD_FL_SINK = common dso_local global i32 0, align 4
@RESIZER_PAD_SINK = common dso_local global i64 0, align 8
@MEDIA_PAD_FL_SOURCE = common dso_local global i32 0, align 4
@RESIZER_PAD_SOURCE_MEM = common dso_local global i64 0, align 8
@resizer_media_ops = common dso_local global i32 0, align 4
@RESIZER_PADS_NUM = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@resizer_video_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"ISP resizer a\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iss_resizer_device*)* @resizer_init_entities to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @resizer_init_entities(%struct.iss_resizer_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iss_resizer_device*, align 8
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.media_pad*, align 8
  %6 = alloca %struct.media_entity*, align 8
  %7 = alloca i32, align 4
  store %struct.iss_resizer_device* %0, %struct.iss_resizer_device** %3, align 8
  %8 = load %struct.iss_resizer_device*, %struct.iss_resizer_device** %3, align 8
  %9 = getelementptr inbounds %struct.iss_resizer_device, %struct.iss_resizer_device* %8, i32 0, i32 3
  store %struct.v4l2_subdev* %9, %struct.v4l2_subdev** %4, align 8
  %10 = load %struct.iss_resizer_device*, %struct.iss_resizer_device** %3, align 8
  %11 = getelementptr inbounds %struct.iss_resizer_device, %struct.iss_resizer_device* %10, i32 0, i32 2
  %12 = load %struct.media_pad*, %struct.media_pad** %11, align 8
  store %struct.media_pad* %12, %struct.media_pad** %5, align 8
  %13 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %14 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %13, i32 0, i32 4
  store %struct.media_entity* %14, %struct.media_entity** %6, align 8
  %15 = load i32, i32* @RESIZER_INPUT_NONE, align 4
  %16 = load %struct.iss_resizer_device*, %struct.iss_resizer_device** %3, align 8
  %17 = getelementptr inbounds %struct.iss_resizer_device, %struct.iss_resizer_device* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 8
  %18 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %19 = call i32 @v4l2_subdev_init(%struct.v4l2_subdev* %18, i32* @resizer_v4l2_ops)
  %20 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %21 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %20, i32 0, i32 3
  store i32* @resizer_v4l2_internal_ops, i32** %21, align 8
  %22 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %23 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @strscpy(i32 %24, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 4)
  %26 = call i32 @BIT(i32 16)
  %27 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %28 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %30 = load %struct.iss_resizer_device*, %struct.iss_resizer_device** %3, align 8
  %31 = call i32 @v4l2_set_subdevdata(%struct.v4l2_subdev* %29, %struct.iss_resizer_device* %30)
  %32 = load i32, i32* @V4L2_SUBDEV_FL_HAS_DEVNODE, align 4
  %33 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %34 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 8
  %37 = load i32, i32* @MEDIA_PAD_FL_SINK, align 4
  %38 = load %struct.media_pad*, %struct.media_pad** %5, align 8
  %39 = load i64, i64* @RESIZER_PAD_SINK, align 8
  %40 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %38, i64 %39
  %41 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %40, i32 0, i32 0
  store i32 %37, i32* %41, align 4
  %42 = load i32, i32* @MEDIA_PAD_FL_SOURCE, align 4
  %43 = load %struct.media_pad*, %struct.media_pad** %5, align 8
  %44 = load i64, i64* @RESIZER_PAD_SOURCE_MEM, align 8
  %45 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %43, i64 %44
  %46 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %45, i32 0, i32 0
  store i32 %42, i32* %46, align 4
  %47 = load %struct.media_entity*, %struct.media_entity** %6, align 8
  %48 = getelementptr inbounds %struct.media_entity, %struct.media_entity* %47, i32 0, i32 0
  store i32* @resizer_media_ops, i32** %48, align 8
  %49 = load %struct.media_entity*, %struct.media_entity** %6, align 8
  %50 = load i32, i32* @RESIZER_PADS_NUM, align 4
  %51 = load %struct.media_pad*, %struct.media_pad** %5, align 8
  %52 = call i32 @media_entity_pads_init(%struct.media_entity* %49, i32 %50, %struct.media_pad* %51)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %1
  %56 = load i32, i32* %7, align 4
  store i32 %56, i32* %2, align 4
  br label %89

57:                                               ; preds = %1
  %58 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %59 = call i32 @resizer_init_formats(%struct.v4l2_subdev* %58, i32* null)
  %60 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  %61 = load %struct.iss_resizer_device*, %struct.iss_resizer_device** %3, align 8
  %62 = getelementptr inbounds %struct.iss_resizer_device, %struct.iss_resizer_device* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 6
  store i32 %60, i32* %63, align 8
  %64 = load %struct.iss_resizer_device*, %struct.iss_resizer_device** %3, align 8
  %65 = getelementptr inbounds %struct.iss_resizer_device, %struct.iss_resizer_device* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 5
  store i32* @resizer_video_ops, i32** %66, align 8
  %67 = load %struct.iss_resizer_device*, %struct.iss_resizer_device** %3, align 8
  %68 = call i32 @to_iss_device(%struct.iss_resizer_device* %67)
  %69 = load %struct.iss_resizer_device*, %struct.iss_resizer_device** %3, align 8
  %70 = getelementptr inbounds %struct.iss_resizer_device, %struct.iss_resizer_device* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 4
  store i32 %68, i32* %71, align 8
  %72 = call i32 @PAGE_ALIGN(i32 16777216)
  %73 = mul nsw i32 %72, 3
  %74 = load %struct.iss_resizer_device*, %struct.iss_resizer_device** %3, align 8
  %75 = getelementptr inbounds %struct.iss_resizer_device, %struct.iss_resizer_device* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  store i32 %73, i32* %76, align 8
  %77 = load %struct.iss_resizer_device*, %struct.iss_resizer_device** %3, align 8
  %78 = getelementptr inbounds %struct.iss_resizer_device, %struct.iss_resizer_device* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  store i32 32, i32* %79, align 4
  %80 = load %struct.iss_resizer_device*, %struct.iss_resizer_device** %3, align 8
  %81 = getelementptr inbounds %struct.iss_resizer_device, %struct.iss_resizer_device* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 2
  store i32 1, i32* %82, align 8
  %83 = load %struct.iss_resizer_device*, %struct.iss_resizer_device** %3, align 8
  %84 = getelementptr inbounds %struct.iss_resizer_device, %struct.iss_resizer_device* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 3
  store i32 131040, i32* %85, align 4
  %86 = load %struct.iss_resizer_device*, %struct.iss_resizer_device** %3, align 8
  %87 = getelementptr inbounds %struct.iss_resizer_device, %struct.iss_resizer_device* %86, i32 0, i32 0
  %88 = call i32 @omap4iss_video_init(%struct.TYPE_2__* %87, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  store i32 %88, i32* %2, align 4
  br label %89

89:                                               ; preds = %57, %55
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local i32 @v4l2_subdev_init(%struct.v4l2_subdev*, i32*) #1

declare dso_local i32 @strscpy(i32, i8*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @v4l2_set_subdevdata(%struct.v4l2_subdev*, %struct.iss_resizer_device*) #1

declare dso_local i32 @media_entity_pads_init(%struct.media_entity*, i32, %struct.media_pad*) #1

declare dso_local i32 @resizer_init_formats(%struct.v4l2_subdev*, i32*) #1

declare dso_local i32 @to_iss_device(%struct.iss_resizer_device*) #1

declare dso_local i32 @PAGE_ALIGN(i32) #1

declare dso_local i32 @omap4iss_video_init(%struct.TYPE_2__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
