; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx7-media-csi.c_imx7_csi_registered.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx7-media-csi.c_imx7_csi_registered.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.imx7_csi = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__*, i32*, i32* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }

@IMX7_CSI_PADS_NUM = common dso_local global i32 0, align 4
@IMX7_CSI_PAD_SINK = common dso_local global i32 0, align 4
@MEDIA_PAD_FL_SINK = common dso_local global i32 0, align 4
@MEDIA_PAD_FL_SOURCE = common dso_local global i32 0, align 4
@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*)* @imx7_csi_registered to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx7_csi_registered(%struct.v4l2_subdev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca %struct.imx7_csi*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  %7 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %8 = call %struct.imx7_csi* @v4l2_get_subdevdata(%struct.v4l2_subdev* %7)
  store %struct.imx7_csi* %8, %struct.imx7_csi** %4, align 8
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %63, %1
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @IMX7_CSI_PADS_NUM, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %66

13:                                               ; preds = %9
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @IMX7_CSI_PAD_SINK, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = load i32, i32* @MEDIA_PAD_FL_SINK, align 4
  br label %21

19:                                               ; preds = %13
  %20 = load i32, i32* @MEDIA_PAD_FL_SOURCE, align 4
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi i32 [ %18, %17 ], [ %20, %19 ]
  %23 = load %struct.imx7_csi*, %struct.imx7_csi** %4, align 8
  %24 = getelementptr inbounds %struct.imx7_csi, %struct.imx7_csi* %23, i32 0, i32 1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  store i32 %22, i32* %29, align 4
  %30 = load %struct.imx7_csi*, %struct.imx7_csi** %4, align 8
  %31 = getelementptr inbounds %struct.imx7_csi, %struct.imx7_csi* %30, i32 0, i32 4
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %37 = load %struct.imx7_csi*, %struct.imx7_csi** %4, align 8
  %38 = getelementptr inbounds %struct.imx7_csi, %struct.imx7_csi* %37, i32 0, i32 3
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = call i32 @imx_media_init_mbus_fmt(i32* %35, i32 800, i32 600, i32 0, i32 %36, i32* %42)
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %21
  %47 = load i32, i32* %5, align 4
  store i32 %47, i32* %2, align 4
  br label %83

48:                                               ; preds = %21
  %49 = load %struct.imx7_csi*, %struct.imx7_csi** %4, align 8
  %50 = getelementptr inbounds %struct.imx7_csi, %struct.imx7_csi* %49, i32 0, i32 2
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  store i32 1, i32* %55, align 4
  %56 = load %struct.imx7_csi*, %struct.imx7_csi** %4, align 8
  %57 = getelementptr inbounds %struct.imx7_csi, %struct.imx7_csi* %56, i32 0, i32 2
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  store i32 30, i32* %62, align 4
  br label %63

63:                                               ; preds = %48
  %64 = load i32, i32* %6, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %6, align 4
  br label %9

66:                                               ; preds = %9
  %67 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %68 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %67, i32 0, i32 0
  %69 = load i32, i32* @IMX7_CSI_PADS_NUM, align 4
  %70 = load %struct.imx7_csi*, %struct.imx7_csi** %4, align 8
  %71 = getelementptr inbounds %struct.imx7_csi, %struct.imx7_csi* %70, i32 0, i32 1
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = call i32 @media_entity_pads_init(i32* %68, i32 %69, %struct.TYPE_4__* %72)
  store i32 %73, i32* %5, align 4
  %74 = load i32, i32* %5, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %66
  %77 = load i32, i32* %5, align 4
  store i32 %77, i32* %2, align 4
  br label %83

78:                                               ; preds = %66
  %79 = load %struct.imx7_csi*, %struct.imx7_csi** %4, align 8
  %80 = getelementptr inbounds %struct.imx7_csi, %struct.imx7_csi* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @imx_media_capture_device_register(i32 %81)
  store i32 %82, i32* %2, align 4
  br label %83

83:                                               ; preds = %78, %76, %46
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local %struct.imx7_csi* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local i32 @imx_media_init_mbus_fmt(i32*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @media_entity_pads_init(i32*, i32, %struct.TYPE_4__*) #1

declare dso_local i32 @imx_media_capture_device_register(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
