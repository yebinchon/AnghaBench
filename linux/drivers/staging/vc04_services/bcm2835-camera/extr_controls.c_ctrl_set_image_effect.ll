; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vc04_services/bcm2835-camera/extr_controls.c_ctrl_set_image_effect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vc04_services/bcm2835-camera/extr_controls.c_ctrl_set_image_effect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, i32, i32, i32, i64, i32*, i32 }
%struct.bm2835_mmal_dev = type { %struct.mmal_parameter_imagefx_parameters, i32, i32, %struct.TYPE_4__** }
%struct.mmal_parameter_imagefx_parameters = type { i32, i32, i32, i64, i32, i32* }
%struct.TYPE_4__ = type { %struct.vchiq_mmal_port }
%struct.vchiq_mmal_port = type { i32 }
%struct.v4l2_ctrl = type { i64, i32 }
%struct.bm2835_mmal_v4l2_ctrl = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@v4l2_to_mmal_effects_values = common dso_local global %struct.TYPE_5__* null, align 8
@MMAL_MAX_IMAGEFX_PARAMETERS = common dso_local global i32 0, align 4
@COMP_CAMERA = common dso_local global i64 0, align 8
@MMAL_PARAMETER_IMAGE_EFFECT_PARAMETERS = common dso_local global i32 0, align 4
@MMAL_PARAMETER_COLOUR_EFFECT = common dso_local global i32 0, align 4
@bcm2835_v4l2_debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [89 x i8] c"mmal_ctrl:%p ctrl id:0x%x ctrl val:%d imagefx:0x%x color_effect:%s u:%d v:%d ret %d(%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bm2835_mmal_dev*, %struct.v4l2_ctrl*, %struct.bm2835_mmal_v4l2_ctrl*)* @ctrl_set_image_effect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctrl_set_image_effect(%struct.bm2835_mmal_dev* %0, %struct.v4l2_ctrl* %1, %struct.bm2835_mmal_v4l2_ctrl* %2) #0 {
  %4 = alloca %struct.bm2835_mmal_dev*, align 8
  %5 = alloca %struct.v4l2_ctrl*, align 8
  %6 = alloca %struct.bm2835_mmal_v4l2_ctrl*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.vchiq_mmal_port*, align 8
  %11 = alloca %struct.mmal_parameter_imagefx_parameters, align 8
  store %struct.bm2835_mmal_dev* %0, %struct.bm2835_mmal_dev** %4, align 8
  store %struct.v4l2_ctrl* %1, %struct.v4l2_ctrl** %5, align 8
  store %struct.bm2835_mmal_v4l2_ctrl* %2, %struct.bm2835_mmal_v4l2_ctrl** %6, align 8
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %14

14:                                               ; preds = %140, %3
  %15 = load i32, i32* %8, align 4
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** @v4l2_to_mmal_effects_values, align 8
  %17 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %16)
  %18 = icmp slt i32 %15, %17
  br i1 %18, label %19, label %143

19:                                               ; preds = %14
  %20 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %5, align 8
  %21 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** @v4l2_to_mmal_effects_values, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %22, %28
  br i1 %29, label %30, label %139

30:                                               ; preds = %19
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** @v4l2_to_mmal_effects_values, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 7
  %36 = load i32, i32* %35, align 8
  %37 = getelementptr inbounds %struct.mmal_parameter_imagefx_parameters, %struct.mmal_parameter_imagefx_parameters* %11, i32 0, i32 4
  store i32 %36, i32* %37, align 8
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** @v4l2_to_mmal_effects_values, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = getelementptr inbounds %struct.mmal_parameter_imagefx_parameters, %struct.mmal_parameter_imagefx_parameters* %11, i32 0, i32 0
  store i32 %43, i32* %44, align 8
  %45 = getelementptr inbounds %struct.mmal_parameter_imagefx_parameters, %struct.mmal_parameter_imagefx_parameters* %11, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @MMAL_MAX_IMAGEFX_PARAMETERS, align 4
  %48 = icmp sgt i32 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %30
  %50 = load i32, i32* @MMAL_MAX_IMAGEFX_PARAMETERS, align 4
  %51 = getelementptr inbounds %struct.mmal_parameter_imagefx_parameters, %struct.mmal_parameter_imagefx_parameters* %11, i32 0, i32 0
  store i32 %50, i32* %51, align 8
  br label %52

52:                                               ; preds = %49, %30
  store i32 0, i32* %9, align 4
  br label %53

53:                                               ; preds = %74, %52
  %54 = load i32, i32* %9, align 4
  %55 = getelementptr inbounds %struct.mmal_parameter_imagefx_parameters, %struct.mmal_parameter_imagefx_parameters* %11, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp slt i32 %54, %56
  br i1 %57, label %58, label %77

58:                                               ; preds = %53
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** @v4l2_to_mmal_effects_values, align 8
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 6
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %9, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = getelementptr inbounds %struct.mmal_parameter_imagefx_parameters, %struct.mmal_parameter_imagefx_parameters* %11, i32 0, i32 5
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %9, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  store i32 %68, i32* %73, align 4
  br label %74

74:                                               ; preds = %58
  %75 = load i32, i32* %9, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %9, align 4
  br label %53

77:                                               ; preds = %53
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** @v4l2_to_mmal_effects_values, align 8
  %79 = load i32, i32* %8, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 5
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.bm2835_mmal_dev*, %struct.bm2835_mmal_dev** %4, align 8
  %85 = getelementptr inbounds %struct.bm2835_mmal_dev, %struct.bm2835_mmal_dev* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.mmal_parameter_imagefx_parameters, %struct.mmal_parameter_imagefx_parameters* %85, i32 0, i32 3
  store i64 %83, i64* %86, align 8
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** @v4l2_to_mmal_effects_values, align 8
  %88 = load i32, i32* %8, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %113, label %94

94:                                               ; preds = %77
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** @v4l2_to_mmal_effects_values, align 8
  %96 = load i32, i32* %8, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.bm2835_mmal_dev*, %struct.bm2835_mmal_dev** %4, align 8
  %102 = getelementptr inbounds %struct.bm2835_mmal_dev, %struct.bm2835_mmal_dev* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.mmal_parameter_imagefx_parameters, %struct.mmal_parameter_imagefx_parameters* %102, i32 0, i32 2
  store i32 %100, i32* %103, align 8
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** @v4l2_to_mmal_effects_values, align 8
  %105 = load i32, i32* %8, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.bm2835_mmal_dev*, %struct.bm2835_mmal_dev** %4, align 8
  %111 = getelementptr inbounds %struct.bm2835_mmal_dev, %struct.bm2835_mmal_dev* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.mmal_parameter_imagefx_parameters, %struct.mmal_parameter_imagefx_parameters* %111, i32 0, i32 1
  store i32 %109, i32* %112, align 4
  br label %113

113:                                              ; preds = %94, %77
  %114 = load %struct.bm2835_mmal_dev*, %struct.bm2835_mmal_dev** %4, align 8
  %115 = getelementptr inbounds %struct.bm2835_mmal_dev, %struct.bm2835_mmal_dev* %114, i32 0, i32 3
  %116 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %115, align 8
  %117 = load i64, i64* @COMP_CAMERA, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %116, i64 %117
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  store %struct.vchiq_mmal_port* %120, %struct.vchiq_mmal_port** %10, align 8
  %121 = load %struct.bm2835_mmal_dev*, %struct.bm2835_mmal_dev** %4, align 8
  %122 = getelementptr inbounds %struct.bm2835_mmal_dev, %struct.bm2835_mmal_dev* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.vchiq_mmal_port*, %struct.vchiq_mmal_port** %10, align 8
  %125 = load i32, i32* @MMAL_PARAMETER_IMAGE_EFFECT_PARAMETERS, align 4
  %126 = call i32 @vchiq_mmal_port_parameter_set(i32 %123, %struct.vchiq_mmal_port* %124, i32 %125, %struct.mmal_parameter_imagefx_parameters* %11, i32 40)
  store i32 %126, i32* %7, align 4
  %127 = load i32, i32* %7, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %113
  br label %144

130:                                              ; preds = %113
  %131 = load %struct.bm2835_mmal_dev*, %struct.bm2835_mmal_dev** %4, align 8
  %132 = getelementptr inbounds %struct.bm2835_mmal_dev, %struct.bm2835_mmal_dev* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.vchiq_mmal_port*, %struct.vchiq_mmal_port** %10, align 8
  %135 = load i32, i32* @MMAL_PARAMETER_COLOUR_EFFECT, align 4
  %136 = load %struct.bm2835_mmal_dev*, %struct.bm2835_mmal_dev** %4, align 8
  %137 = getelementptr inbounds %struct.bm2835_mmal_dev, %struct.bm2835_mmal_dev* %136, i32 0, i32 0
  %138 = call i32 @vchiq_mmal_port_parameter_set(i32 %133, %struct.vchiq_mmal_port* %134, i32 %135, %struct.mmal_parameter_imagefx_parameters* %137, i32 40)
  store i32 %138, i32* %7, align 4
  br label %139

139:                                              ; preds = %130, %19
  br label %140

140:                                              ; preds = %139
  %141 = load i32, i32* %8, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %8, align 4
  br label %14

143:                                              ; preds = %14
  br label %144

144:                                              ; preds = %143, %129
  %145 = load i32, i32* @bcm2835_v4l2_debug, align 4
  %146 = load %struct.bm2835_mmal_dev*, %struct.bm2835_mmal_dev** %4, align 8
  %147 = getelementptr inbounds %struct.bm2835_mmal_dev, %struct.bm2835_mmal_dev* %146, i32 0, i32 1
  %148 = load %struct.bm2835_mmal_v4l2_ctrl*, %struct.bm2835_mmal_v4l2_ctrl** %6, align 8
  %149 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %5, align 8
  %150 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %5, align 8
  %153 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = getelementptr inbounds %struct.mmal_parameter_imagefx_parameters, %struct.mmal_parameter_imagefx_parameters* %11, i32 0, i32 4
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.bm2835_mmal_dev*, %struct.bm2835_mmal_dev** %4, align 8
  %158 = getelementptr inbounds %struct.bm2835_mmal_dev, %struct.bm2835_mmal_dev* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.mmal_parameter_imagefx_parameters, %struct.mmal_parameter_imagefx_parameters* %158, i32 0, i32 3
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  %162 = zext i1 %161 to i64
  %163 = select i1 %161, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %164 = load %struct.bm2835_mmal_dev*, %struct.bm2835_mmal_dev** %4, align 8
  %165 = getelementptr inbounds %struct.bm2835_mmal_dev, %struct.bm2835_mmal_dev* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.mmal_parameter_imagefx_parameters, %struct.mmal_parameter_imagefx_parameters* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 8
  %168 = load %struct.bm2835_mmal_dev*, %struct.bm2835_mmal_dev** %4, align 8
  %169 = getelementptr inbounds %struct.bm2835_mmal_dev, %struct.bm2835_mmal_dev* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.mmal_parameter_imagefx_parameters, %struct.mmal_parameter_imagefx_parameters* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* %7, align 4
  %173 = load i32, i32* %7, align 4
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %144
  br label %179

176:                                              ; preds = %144
  %177 = load i32, i32* @EINVAL, align 4
  %178 = sub nsw i32 0, %177
  br label %179

179:                                              ; preds = %176, %175
  %180 = phi i32 [ 0, %175 ], [ %178, %176 ]
  %181 = call i32 @v4l2_dbg(i32 1, i32 %145, i32* %147, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str, i64 0, i64 0), %struct.bm2835_mmal_v4l2_ctrl* %148, i32 %151, i64 %154, i32 %156, i8* %163, i32 %167, i32 %171, i32 %172, i32 %180)
  %182 = load i32, i32* %7, align 4
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %184, label %185

184:                                              ; preds = %179
  br label %188

185:                                              ; preds = %179
  %186 = load i32, i32* @EINVAL, align 4
  %187 = sub nsw i32 0, %186
  br label %188

188:                                              ; preds = %185, %184
  %189 = phi i32 [ 0, %184 ], [ %187, %185 ]
  ret i32 %189
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_5__*) #1

declare dso_local i32 @vchiq_mmal_port_parameter_set(i32, %struct.vchiq_mmal_port*, i32, %struct.mmal_parameter_imagefx_parameters*, i32) #1

declare dso_local i32 @v4l2_dbg(i32, i32, i32*, i8*, %struct.bm2835_mmal_v4l2_ctrl*, i32, i64, i32, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
