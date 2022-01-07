; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-csi.c_csi_registered.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-csi.c_csi_registered.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.csi_priv = type { %struct.ipu_csi*, %struct.ipu_csi*, i32, %struct.TYPE_8__*, i32, %struct.TYPE_7__, %struct.TYPE_6__, i32*, %struct.TYPE_5__*, i32*, i32*, i32, i32 }
%struct.ipu_csi = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"failed to get CSI%d\0A\00", align 1
@CSI_NUM_PADS = common dso_local global i32 0, align 4
@CSI_SINK_PAD = common dso_local global i32 0, align 4
@MEDIA_PAD_FL_SINK = common dso_local global i32 0, align 4
@MEDIA_PAD_FL_SOURCE = common dso_local global i32 0, align 4
@CS_SEL_YUV = common dso_local global i32 0, align 4
@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@csi_skip = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*)* @csi_registered to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @csi_registered(%struct.v4l2_subdev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca %struct.csi_priv*, align 8
  %5 = alloca %struct.ipu_csi*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  %9 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %10 = call %struct.csi_priv* @v4l2_get_subdevdata(%struct.v4l2_subdev* %9)
  store %struct.csi_priv* %10, %struct.csi_priv** %4, align 8
  %11 = load %struct.csi_priv*, %struct.csi_priv** %4, align 8
  %12 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %11, i32 0, i32 12
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.csi_priv*, %struct.csi_priv** %4, align 8
  %15 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %14, i32 0, i32 11
  %16 = load i32, i32* %15, align 8
  %17 = call %struct.ipu_csi* @ipu_csi_get(i32 %13, i32 %16)
  store %struct.ipu_csi* %17, %struct.ipu_csi** %5, align 8
  %18 = load %struct.ipu_csi*, %struct.ipu_csi** %5, align 8
  %19 = call i64 @IS_ERR(%struct.ipu_csi* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %1
  %22 = load %struct.csi_priv*, %struct.csi_priv** %4, align 8
  %23 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %22, i32 0, i32 4
  %24 = load %struct.csi_priv*, %struct.csi_priv** %4, align 8
  %25 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %24, i32 0, i32 11
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @v4l2_err(i32* %23, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load %struct.ipu_csi*, %struct.ipu_csi** %5, align 8
  %29 = call i32 @PTR_ERR(%struct.ipu_csi* %28)
  store i32 %29, i32* %2, align 4
  br label %167

30:                                               ; preds = %1
  %31 = load %struct.ipu_csi*, %struct.ipu_csi** %5, align 8
  %32 = load %struct.csi_priv*, %struct.csi_priv** %4, align 8
  %33 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %32, i32 0, i32 0
  store %struct.ipu_csi* %31, %struct.ipu_csi** %33, align 8
  store i32 0, i32* %6, align 4
  br label %34

34:                                               ; preds = %95, %30
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @CSI_NUM_PADS, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %98

38:                                               ; preds = %34
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @CSI_SINK_PAD, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = load i32, i32* @MEDIA_PAD_FL_SINK, align 4
  br label %46

44:                                               ; preds = %38
  %45 = load i32, i32* @MEDIA_PAD_FL_SOURCE, align 4
  br label %46

46:                                               ; preds = %44, %42
  %47 = phi i32 [ %43, %42 ], [ %45, %44 ]
  %48 = load %struct.csi_priv*, %struct.csi_priv** %4, align 8
  %49 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %48, i32 0, i32 3
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %49, align 8
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  store i32 %47, i32* %54, align 4
  store i64 0, i64* %8, align 8
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @CSI_SINK_PAD, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %46
  %59 = load i32, i32* @CS_SEL_YUV, align 4
  %60 = call i32 @imx_media_enum_ipu_format(i64* %8, i32 0, i32 %59)
  br label %61

61:                                               ; preds = %58, %46
  %62 = load %struct.csi_priv*, %struct.csi_priv** %4, align 8
  %63 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %62, i32 0, i32 10
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %6, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i64, i64* %8, align 8
  %69 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %70 = load %struct.csi_priv*, %struct.csi_priv** %4, align 8
  %71 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %70, i32 0, i32 9
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %6, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = call i32 @imx_media_init_mbus_fmt(i32* %67, i32 640, i32 480, i64 %68, i32 %69, i32* %75)
  store i32 %76, i32* %7, align 4
  %77 = load i32, i32* %7, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %61
  br label %161

80:                                               ; preds = %61
  %81 = load %struct.csi_priv*, %struct.csi_priv** %4, align 8
  %82 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %81, i32 0, i32 8
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %82, align 8
  %84 = load i32, i32* %6, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  store i32 1, i32* %87, align 4
  %88 = load %struct.csi_priv*, %struct.csi_priv** %4, align 8
  %89 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %88, i32 0, i32 8
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %89, align 8
  %91 = load i32, i32* %6, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 1
  store i32 30, i32* %94, align 4
  br label %95

95:                                               ; preds = %80
  %96 = load i32, i32* %6, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %6, align 4
  br label %34

98:                                               ; preds = %34
  %99 = load i32*, i32** @csi_skip, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 0
  %101 = load %struct.csi_priv*, %struct.csi_priv** %4, align 8
  %102 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %101, i32 0, i32 7
  store i32* %100, i32** %102, align 8
  %103 = load %struct.csi_priv*, %struct.csi_priv** %4, align 8
  %104 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %103, i32 0, i32 6
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  store i32 640, i32* %105, align 4
  %106 = load %struct.csi_priv*, %struct.csi_priv** %4, align 8
  %107 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %106, i32 0, i32 6
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 1
  store i32 480, i32* %108, align 4
  %109 = load %struct.csi_priv*, %struct.csi_priv** %4, align 8
  %110 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %109, i32 0, i32 5
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 0
  store i32 640, i32* %111, align 4
  %112 = load %struct.csi_priv*, %struct.csi_priv** %4, align 8
  %113 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %112, i32 0, i32 5
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 1
  store i32 480, i32* %114, align 4
  %115 = load %struct.csi_priv*, %struct.csi_priv** %4, align 8
  %116 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %115, i32 0, i32 4
  %117 = call %struct.ipu_csi* @imx_media_fim_init(i32* %116)
  %118 = load %struct.csi_priv*, %struct.csi_priv** %4, align 8
  %119 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %118, i32 0, i32 1
  store %struct.ipu_csi* %117, %struct.ipu_csi** %119, align 8
  %120 = load %struct.csi_priv*, %struct.csi_priv** %4, align 8
  %121 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %120, i32 0, i32 1
  %122 = load %struct.ipu_csi*, %struct.ipu_csi** %121, align 8
  %123 = call i64 @IS_ERR(%struct.ipu_csi* %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %98
  %126 = load %struct.csi_priv*, %struct.csi_priv** %4, align 8
  %127 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %126, i32 0, i32 1
  %128 = load %struct.ipu_csi*, %struct.ipu_csi** %127, align 8
  %129 = call i32 @PTR_ERR(%struct.ipu_csi* %128)
  store i32 %129, i32* %7, align 4
  br label %161

130:                                              ; preds = %98
  %131 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %132 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %131, i32 0, i32 0
  %133 = load i32, i32* @CSI_NUM_PADS, align 4
  %134 = load %struct.csi_priv*, %struct.csi_priv** %4, align 8
  %135 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %134, i32 0, i32 3
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %135, align 8
  %137 = call i32 @media_entity_pads_init(i32* %132, i32 %133, %struct.TYPE_8__* %136)
  store i32 %137, i32* %7, align 4
  %138 = load i32, i32* %7, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %130
  br label %150

141:                                              ; preds = %130
  %142 = load %struct.csi_priv*, %struct.csi_priv** %4, align 8
  %143 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @imx_media_capture_device_register(i32 %144)
  store i32 %145, i32* %7, align 4
  %146 = load i32, i32* %7, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %141
  br label %150

149:                                              ; preds = %141
  store i32 0, i32* %2, align 4
  br label %167

150:                                              ; preds = %148, %140
  %151 = load %struct.csi_priv*, %struct.csi_priv** %4, align 8
  %152 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %151, i32 0, i32 1
  %153 = load %struct.ipu_csi*, %struct.ipu_csi** %152, align 8
  %154 = icmp ne %struct.ipu_csi* %153, null
  br i1 %154, label %155, label %160

155:                                              ; preds = %150
  %156 = load %struct.csi_priv*, %struct.csi_priv** %4, align 8
  %157 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %156, i32 0, i32 1
  %158 = load %struct.ipu_csi*, %struct.ipu_csi** %157, align 8
  %159 = call i32 @imx_media_fim_free(%struct.ipu_csi* %158)
  br label %160

160:                                              ; preds = %155, %150
  br label %161

161:                                              ; preds = %160, %125, %79
  %162 = load %struct.csi_priv*, %struct.csi_priv** %4, align 8
  %163 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %162, i32 0, i32 0
  %164 = load %struct.ipu_csi*, %struct.ipu_csi** %163, align 8
  %165 = call i32 @ipu_csi_put(%struct.ipu_csi* %164)
  %166 = load i32, i32* %7, align 4
  store i32 %166, i32* %2, align 4
  br label %167

167:                                              ; preds = %161, %149, %21
  %168 = load i32, i32* %2, align 4
  ret i32 %168
}

declare dso_local %struct.csi_priv* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local %struct.ipu_csi* @ipu_csi_get(i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.ipu_csi*) #1

declare dso_local i32 @v4l2_err(i32*, i8*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.ipu_csi*) #1

declare dso_local i32 @imx_media_enum_ipu_format(i64*, i32, i32) #1

declare dso_local i32 @imx_media_init_mbus_fmt(i32*, i32, i32, i64, i32, i32*) #1

declare dso_local %struct.ipu_csi* @imx_media_fim_init(i32*) #1

declare dso_local i32 @media_entity_pads_init(i32*, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @imx_media_capture_device_register(i32) #1

declare dso_local i32 @imx_media_fim_free(%struct.ipu_csi*) #1

declare dso_local i32 @ipu_csi_put(%struct.ipu_csi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
