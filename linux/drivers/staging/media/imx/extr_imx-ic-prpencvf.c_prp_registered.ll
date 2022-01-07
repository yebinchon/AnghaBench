; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-ic-prpencvf.c_prp_registered.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-ic-prpencvf.c_prp_registered.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.prp_priv = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__, i32*, i32* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }

@PRPENCVF_NUM_PADS = common dso_local global i32 0, align 4
@PRPENCVF_SINK_PAD = common dso_local global i32 0, align 4
@MEDIA_PAD_FL_SINK = common dso_local global i32 0, align 4
@MEDIA_PAD_FL_SOURCE = common dso_local global i32 0, align 4
@CS_SEL_YUV = common dso_local global i32 0, align 4
@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*)* @prp_registered to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prp_registered(%struct.v4l2_subdev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca %struct.prp_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  %8 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %9 = call %struct.prp_priv* @sd_to_priv(%struct.v4l2_subdev* %8)
  store %struct.prp_priv* %9, %struct.prp_priv** %4, align 8
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %53, %1
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @PRPENCVF_NUM_PADS, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %56

14:                                               ; preds = %10
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @PRPENCVF_SINK_PAD, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = load i32, i32* @MEDIA_PAD_FL_SINK, align 4
  br label %22

20:                                               ; preds = %14
  %21 = load i32, i32* @MEDIA_PAD_FL_SOURCE, align 4
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi i32 [ %19, %18 ], [ %21, %20 ]
  %24 = load %struct.prp_priv*, %struct.prp_priv** %4, align 8
  %25 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %24, i32 0, i32 1
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  store i32 %23, i32* %30, align 4
  %31 = load i32, i32* @CS_SEL_YUV, align 4
  %32 = call i32 @imx_media_enum_ipu_format(i32* %7, i32 0, i32 %31)
  %33 = load %struct.prp_priv*, %struct.prp_priv** %4, align 8
  %34 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %33, i32 0, i32 4
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %41 = load %struct.prp_priv*, %struct.prp_priv** %4, align 8
  %42 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %41, i32 0, i32 3
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = call i32 @imx_media_init_mbus_fmt(i32* %38, i32 640, i32 480, i32 %39, i32 %40, i32* %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %22
  %51 = load i32, i32* %6, align 4
  store i32 %51, i32* %2, align 4
  br label %96

52:                                               ; preds = %22
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %5, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %5, align 4
  br label %10

56:                                               ; preds = %10
  %57 = load %struct.prp_priv*, %struct.prp_priv** %4, align 8
  %58 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  store i32 1, i32* %59, align 8
  %60 = load %struct.prp_priv*, %struct.prp_priv** %4, align 8
  %61 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  store i32 30, i32* %62, align 4
  %63 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %64 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %63, i32 0, i32 0
  %65 = load i32, i32* @PRPENCVF_NUM_PADS, align 4
  %66 = load %struct.prp_priv*, %struct.prp_priv** %4, align 8
  %67 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %66, i32 0, i32 1
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = call i32 @media_entity_pads_init(i32* %64, i32 %65, %struct.TYPE_4__* %68)
  store i32 %69, i32* %6, align 4
  %70 = load i32, i32* %6, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %56
  %73 = load i32, i32* %6, align 4
  store i32 %73, i32* %2, align 4
  br label %96

74:                                               ; preds = %56
  %75 = load %struct.prp_priv*, %struct.prp_priv** %4, align 8
  %76 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @imx_media_capture_device_register(i32 %77)
  store i32 %78, i32* %6, align 4
  %79 = load i32, i32* %6, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %74
  %82 = load i32, i32* %6, align 4
  store i32 %82, i32* %2, align 4
  br label %96

83:                                               ; preds = %74
  %84 = load %struct.prp_priv*, %struct.prp_priv** %4, align 8
  %85 = call i32 @prp_init_controls(%struct.prp_priv* %84)
  store i32 %85, i32* %6, align 4
  %86 = load i32, i32* %6, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %83
  br label %90

89:                                               ; preds = %83
  store i32 0, i32* %2, align 4
  br label %96

90:                                               ; preds = %88
  %91 = load %struct.prp_priv*, %struct.prp_priv** %4, align 8
  %92 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @imx_media_capture_device_unregister(i32 %93)
  %95 = load i32, i32* %6, align 4
  store i32 %95, i32* %2, align 4
  br label %96

96:                                               ; preds = %90, %89, %81, %72, %50
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local %struct.prp_priv* @sd_to_priv(%struct.v4l2_subdev*) #1

declare dso_local i32 @imx_media_enum_ipu_format(i32*, i32, i32) #1

declare dso_local i32 @imx_media_init_mbus_fmt(i32*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @media_entity_pads_init(i32*, i32, %struct.TYPE_4__*) #1

declare dso_local i32 @imx_media_capture_device_register(i32) #1

declare dso_local i32 @prp_init_controls(%struct.prp_priv*) #1

declare dso_local i32 @imx_media_capture_device_unregister(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
