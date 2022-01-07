; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss_ipipe.c_ipipe_init_entities.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss_ipipe.c_ipipe_init_entities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iss_ipipe_device = type { i32, %struct.media_pad*, %struct.v4l2_subdev }
%struct.media_pad = type { i32 }
%struct.v4l2_subdev = type { i32, i32, i32, i32*, %struct.media_entity }
%struct.media_entity = type { i32* }

@IPIPE_INPUT_NONE = common dso_local global i32 0, align 4
@ipipe_v4l2_ops = common dso_local global i32 0, align 4
@ipipe_v4l2_internal_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"OMAP4 ISS ISP IPIPE\00", align 1
@V4L2_SUBDEV_FL_HAS_DEVNODE = common dso_local global i32 0, align 4
@MEDIA_PAD_FL_SINK = common dso_local global i32 0, align 4
@IPIPE_PAD_SINK = common dso_local global i64 0, align 8
@MEDIA_PAD_FL_SOURCE = common dso_local global i32 0, align 4
@IPIPE_PAD_SOURCE_VP = common dso_local global i64 0, align 8
@ipipe_media_ops = common dso_local global i32 0, align 4
@IPIPE_PADS_NUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iss_ipipe_device*)* @ipipe_init_entities to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipipe_init_entities(%struct.iss_ipipe_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iss_ipipe_device*, align 8
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.media_pad*, align 8
  %6 = alloca %struct.media_entity*, align 8
  %7 = alloca i32, align 4
  store %struct.iss_ipipe_device* %0, %struct.iss_ipipe_device** %3, align 8
  %8 = load %struct.iss_ipipe_device*, %struct.iss_ipipe_device** %3, align 8
  %9 = getelementptr inbounds %struct.iss_ipipe_device, %struct.iss_ipipe_device* %8, i32 0, i32 2
  store %struct.v4l2_subdev* %9, %struct.v4l2_subdev** %4, align 8
  %10 = load %struct.iss_ipipe_device*, %struct.iss_ipipe_device** %3, align 8
  %11 = getelementptr inbounds %struct.iss_ipipe_device, %struct.iss_ipipe_device* %10, i32 0, i32 1
  %12 = load %struct.media_pad*, %struct.media_pad** %11, align 8
  store %struct.media_pad* %12, %struct.media_pad** %5, align 8
  %13 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %14 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %13, i32 0, i32 4
  store %struct.media_entity* %14, %struct.media_entity** %6, align 8
  %15 = load i32, i32* @IPIPE_INPUT_NONE, align 4
  %16 = load %struct.iss_ipipe_device*, %struct.iss_ipipe_device** %3, align 8
  %17 = getelementptr inbounds %struct.iss_ipipe_device, %struct.iss_ipipe_device* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %19 = call i32 @v4l2_subdev_init(%struct.v4l2_subdev* %18, i32* @ipipe_v4l2_ops)
  %20 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %21 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %20, i32 0, i32 3
  store i32* @ipipe_v4l2_internal_ops, i32** %21, align 8
  %22 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %23 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @strscpy(i32 %24, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 4)
  %26 = call i32 @BIT(i32 16)
  %27 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %28 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %30 = load %struct.iss_ipipe_device*, %struct.iss_ipipe_device** %3, align 8
  %31 = call i32 @v4l2_set_subdevdata(%struct.v4l2_subdev* %29, %struct.iss_ipipe_device* %30)
  %32 = load i32, i32* @V4L2_SUBDEV_FL_HAS_DEVNODE, align 4
  %33 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %34 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 8
  %37 = load i32, i32* @MEDIA_PAD_FL_SINK, align 4
  %38 = load %struct.media_pad*, %struct.media_pad** %5, align 8
  %39 = load i64, i64* @IPIPE_PAD_SINK, align 8
  %40 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %38, i64 %39
  %41 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %40, i32 0, i32 0
  store i32 %37, i32* %41, align 4
  %42 = load i32, i32* @MEDIA_PAD_FL_SOURCE, align 4
  %43 = load %struct.media_pad*, %struct.media_pad** %5, align 8
  %44 = load i64, i64* @IPIPE_PAD_SOURCE_VP, align 8
  %45 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %43, i64 %44
  %46 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %45, i32 0, i32 0
  store i32 %42, i32* %46, align 4
  %47 = load %struct.media_entity*, %struct.media_entity** %6, align 8
  %48 = getelementptr inbounds %struct.media_entity, %struct.media_entity* %47, i32 0, i32 0
  store i32* @ipipe_media_ops, i32** %48, align 8
  %49 = load %struct.media_entity*, %struct.media_entity** %6, align 8
  %50 = load i32, i32* @IPIPE_PADS_NUM, align 4
  %51 = load %struct.media_pad*, %struct.media_pad** %5, align 8
  %52 = call i32 @media_entity_pads_init(%struct.media_entity* %49, i32 %50, %struct.media_pad* %51)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %1
  %56 = load i32, i32* %7, align 4
  store i32 %56, i32* %2, align 4
  br label %60

57:                                               ; preds = %1
  %58 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %59 = call i32 @ipipe_init_formats(%struct.v4l2_subdev* %58, i32* null)
  store i32 0, i32* %2, align 4
  br label %60

60:                                               ; preds = %57, %55
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i32 @v4l2_subdev_init(%struct.v4l2_subdev*, i32*) #1

declare dso_local i32 @strscpy(i32, i8*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @v4l2_set_subdevdata(%struct.v4l2_subdev*, %struct.iss_ipipe_device*) #1

declare dso_local i32 @media_entity_pads_init(%struct.media_entity*, i32, %struct.media_pad*) #1

declare dso_local i32 @ipipe_init_formats(%struct.v4l2_subdev*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
