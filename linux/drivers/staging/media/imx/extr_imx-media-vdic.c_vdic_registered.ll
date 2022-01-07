; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-vdic.c_vdic_registered.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-vdic.c_vdic_registered.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.vdic_priv = type { i32, %struct.TYPE_4__*, i32, %struct.TYPE_3__*, i32*, i32* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }

@VDIC_NUM_PADS = common dso_local global i32 0, align 4
@VDIC_SRC_PAD_DIRECT = common dso_local global i32 0, align 4
@MEDIA_PAD_FL_SOURCE = common dso_local global i32 0, align 4
@MEDIA_PAD_FL_SINK = common dso_local global i32 0, align 4
@VDIC_SINK_PAD_IDMAC = common dso_local global i32 0, align 4
@CS_SEL_YUV = common dso_local global i32 0, align 4
@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@VDIC_SINK_PAD_DIRECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*)* @vdic_registered to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vdic_registered(%struct.v4l2_subdev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca %struct.vdic_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  %8 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %9 = call %struct.vdic_priv* @v4l2_get_subdevdata(%struct.v4l2_subdev* %8)
  store %struct.vdic_priv* %9, %struct.vdic_priv** %4, align 8
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %86, %1
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @VDIC_NUM_PADS, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %89

14:                                               ; preds = %10
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @VDIC_SRC_PAD_DIRECT, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = load i32, i32* @MEDIA_PAD_FL_SOURCE, align 4
  br label %22

20:                                               ; preds = %14
  %21 = load i32, i32* @MEDIA_PAD_FL_SINK, align 4
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi i32 [ %19, %18 ], [ %21, %20 ]
  %24 = load %struct.vdic_priv*, %struct.vdic_priv** %4, align 8
  %25 = getelementptr inbounds %struct.vdic_priv, %struct.vdic_priv* %24, i32 0, i32 1
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  store i32 %23, i32* %30, align 4
  store i64 0, i64* %7, align 8
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @VDIC_SINK_PAD_IDMAC, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %22
  %35 = load i32, i32* @CS_SEL_YUV, align 4
  %36 = call i32 @imx_media_enum_ipu_format(i64* %7, i32 0, i32 %35)
  br label %37

37:                                               ; preds = %34, %22
  %38 = load %struct.vdic_priv*, %struct.vdic_priv** %4, align 8
  %39 = getelementptr inbounds %struct.vdic_priv, %struct.vdic_priv* %38, i32 0, i32 5
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i64, i64* %7, align 8
  %45 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %46 = load %struct.vdic_priv*, %struct.vdic_priv** %4, align 8
  %47 = getelementptr inbounds %struct.vdic_priv, %struct.vdic_priv* %46, i32 0, i32 4
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = call i32 @imx_media_init_mbus_fmt(i32* %43, i32 640, i32 480, i64 %44, i32 %45, i32* %51)
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %37
  %56 = load i32, i32* %6, align 4
  store i32 %56, i32* %2, align 4
  br label %115

57:                                               ; preds = %37
  %58 = load %struct.vdic_priv*, %struct.vdic_priv** %4, align 8
  %59 = getelementptr inbounds %struct.vdic_priv, %struct.vdic_priv* %58, i32 0, i32 3
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = load i32, i32* %5, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  store i32 1, i32* %64, align 4
  %65 = load %struct.vdic_priv*, %struct.vdic_priv** %4, align 8
  %66 = getelementptr inbounds %struct.vdic_priv, %struct.vdic_priv* %65, i32 0, i32 3
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = load i32, i32* %5, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  store i32 30, i32* %71, align 4
  %72 = load i32, i32* %5, align 4
  %73 = load i32, i32* @VDIC_SRC_PAD_DIRECT, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %85

75:                                               ; preds = %57
  %76 = load %struct.vdic_priv*, %struct.vdic_priv** %4, align 8
  %77 = getelementptr inbounds %struct.vdic_priv, %struct.vdic_priv* %76, i32 0, i32 3
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %77, align 8
  %79 = load i32, i32* %5, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = mul nsw i32 %83, 2
  store i32 %84, i32* %82, align 4
  br label %85

85:                                               ; preds = %75, %57
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %5, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %5, align 4
  br label %10

89:                                               ; preds = %10
  %90 = load i32, i32* @VDIC_SINK_PAD_DIRECT, align 4
  %91 = load %struct.vdic_priv*, %struct.vdic_priv** %4, align 8
  %92 = getelementptr inbounds %struct.vdic_priv, %struct.vdic_priv* %91, i32 0, i32 2
  store i32 %90, i32* %92, align 8
  %93 = load %struct.vdic_priv*, %struct.vdic_priv** %4, align 8
  %94 = call i32 @vdic_init_controls(%struct.vdic_priv* %93)
  store i32 %94, i32* %6, align 4
  %95 = load i32, i32* %6, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %89
  %98 = load i32, i32* %6, align 4
  store i32 %98, i32* %2, align 4
  br label %115

99:                                               ; preds = %89
  %100 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %101 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %100, i32 0, i32 0
  %102 = load i32, i32* @VDIC_NUM_PADS, align 4
  %103 = load %struct.vdic_priv*, %struct.vdic_priv** %4, align 8
  %104 = getelementptr inbounds %struct.vdic_priv, %struct.vdic_priv* %103, i32 0, i32 1
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %104, align 8
  %106 = call i32 @media_entity_pads_init(i32* %101, i32 %102, %struct.TYPE_4__* %105)
  store i32 %106, i32* %6, align 4
  %107 = load i32, i32* %6, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %99
  %110 = load %struct.vdic_priv*, %struct.vdic_priv** %4, align 8
  %111 = getelementptr inbounds %struct.vdic_priv, %struct.vdic_priv* %110, i32 0, i32 0
  %112 = call i32 @v4l2_ctrl_handler_free(i32* %111)
  br label %113

113:                                              ; preds = %109, %99
  %114 = load i32, i32* %6, align 4
  store i32 %114, i32* %2, align 4
  br label %115

115:                                              ; preds = %113, %97, %55
  %116 = load i32, i32* %2, align 4
  ret i32 %116
}

declare dso_local %struct.vdic_priv* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local i32 @imx_media_enum_ipu_format(i64*, i32, i32) #1

declare dso_local i32 @imx_media_init_mbus_fmt(i32*, i32, i32, i64, i32, i32*) #1

declare dso_local i32 @vdic_init_controls(%struct.vdic_priv*) #1

declare dso_local i32 @media_entity_pads_init(i32*, i32, %struct.TYPE_4__*) #1

declare dso_local i32 @v4l2_ctrl_handler_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
