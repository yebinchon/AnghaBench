; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vc04_services/bcm2835-camera/extr_controls.c_ctrl_set_exposure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vc04_services/bcm2835-camera/extr_controls.c_ctrl_set_exposure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bm2835_mmal_dev = type { i32, i32, i32, i32, i64, i32, i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { %struct.vchiq_mmal_port }
%struct.vchiq_mmal_port = type { i32 }
%struct.v4l2_ctrl = type { i32 }
%struct.bm2835_mmal_v4l2_ctrl = type { i64, i64 }

@COMP_CAMERA = common dso_local global i64 0, align 8
@MMAL_PARAMETER_SHUTTER_SPEED = common dso_local global i64 0, align 8
@MMAL_PARAMETER_EXPOSURE_MODE = common dso_local global i64 0, align 8
@MMAL_PARAM_EXPOSUREMODE_AUTO = common dso_local global i32 0, align 4
@MMAL_PARAM_EXPOSUREMODE_OFF = common dso_local global i32 0, align 4
@V4L2_CID_EXPOSURE_AUTO_PRIORITY = common dso_local global i64 0, align 8
@V4L2_SCENE_MODE_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bm2835_mmal_dev*, %struct.v4l2_ctrl*, %struct.bm2835_mmal_v4l2_ctrl*)* @ctrl_set_exposure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctrl_set_exposure(%struct.bm2835_mmal_dev* %0, %struct.v4l2_ctrl* %1, %struct.bm2835_mmal_v4l2_ctrl* %2) #0 {
  %4 = alloca %struct.bm2835_mmal_dev*, align 8
  %5 = alloca %struct.v4l2_ctrl*, align 8
  %6 = alloca %struct.bm2835_mmal_v4l2_ctrl*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.vchiq_mmal_port*, align 8
  %10 = alloca i32, align 4
  store %struct.bm2835_mmal_dev* %0, %struct.bm2835_mmal_dev** %4, align 8
  store %struct.v4l2_ctrl* %1, %struct.v4l2_ctrl** %5, align 8
  store %struct.bm2835_mmal_v4l2_ctrl* %2, %struct.bm2835_mmal_v4l2_ctrl** %6, align 8
  %11 = load %struct.bm2835_mmal_dev*, %struct.bm2835_mmal_dev** %4, align 8
  %12 = getelementptr inbounds %struct.bm2835_mmal_dev, %struct.bm2835_mmal_dev* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %14 = load %struct.bm2835_mmal_dev*, %struct.bm2835_mmal_dev** %4, align 8
  %15 = getelementptr inbounds %struct.bm2835_mmal_dev, %struct.bm2835_mmal_dev* %14, i32 0, i32 7
  %16 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %15, align 8
  %17 = load i64, i64* @COMP_CAMERA, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %16, i64 %17
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store %struct.vchiq_mmal_port* %20, %struct.vchiq_mmal_port** %9, align 8
  %21 = load %struct.bm2835_mmal_v4l2_ctrl*, %struct.bm2835_mmal_v4l2_ctrl** %6, align 8
  %22 = getelementptr inbounds %struct.bm2835_mmal_v4l2_ctrl, %struct.bm2835_mmal_v4l2_ctrl* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @MMAL_PARAMETER_SHUTTER_SPEED, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %3
  %27 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %5, align 8
  %28 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = mul nsw i32 %29, 100
  %31 = load %struct.bm2835_mmal_dev*, %struct.bm2835_mmal_dev** %4, align 8
  %32 = getelementptr inbounds %struct.bm2835_mmal_dev, %struct.bm2835_mmal_dev* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  br label %70

33:                                               ; preds = %3
  %34 = load %struct.bm2835_mmal_v4l2_ctrl*, %struct.bm2835_mmal_v4l2_ctrl** %6, align 8
  %35 = getelementptr inbounds %struct.bm2835_mmal_v4l2_ctrl, %struct.bm2835_mmal_v4l2_ctrl* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @MMAL_PARAMETER_EXPOSURE_MODE, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %56

39:                                               ; preds = %33
  %40 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %5, align 8
  %41 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  switch i32 %42, label %47 [
    i32 129, label %43
    i32 128, label %45
  ]

43:                                               ; preds = %39
  %44 = load i32, i32* @MMAL_PARAM_EXPOSUREMODE_AUTO, align 4
  store i32 %44, i32* %7, align 4
  br label %47

45:                                               ; preds = %39
  %46 = load i32, i32* @MMAL_PARAM_EXPOSUREMODE_OFF, align 4
  store i32 %46, i32* %7, align 4
  br label %47

47:                                               ; preds = %39, %45, %43
  %48 = load i32, i32* %7, align 4
  %49 = load %struct.bm2835_mmal_dev*, %struct.bm2835_mmal_dev** %4, align 8
  %50 = getelementptr inbounds %struct.bm2835_mmal_dev, %struct.bm2835_mmal_dev* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %5, align 8
  %52 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.bm2835_mmal_dev*, %struct.bm2835_mmal_dev** %4, align 8
  %55 = getelementptr inbounds %struct.bm2835_mmal_dev, %struct.bm2835_mmal_dev* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 8
  br label %69

56:                                               ; preds = %33
  %57 = load %struct.bm2835_mmal_v4l2_ctrl*, %struct.bm2835_mmal_v4l2_ctrl** %6, align 8
  %58 = getelementptr inbounds %struct.bm2835_mmal_v4l2_ctrl, %struct.bm2835_mmal_v4l2_ctrl* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @V4L2_CID_EXPOSURE_AUTO_PRIORITY, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %56
  %63 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %5, align 8
  %64 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.bm2835_mmal_dev*, %struct.bm2835_mmal_dev** %4, align 8
  %67 = getelementptr inbounds %struct.bm2835_mmal_dev, %struct.bm2835_mmal_dev* %66, i32 0, i32 3
  store i32 %65, i32* %67, align 4
  br label %68

68:                                               ; preds = %62, %56
  br label %69

69:                                               ; preds = %68, %47
  br label %70

70:                                               ; preds = %69, %26
  %71 = load %struct.bm2835_mmal_dev*, %struct.bm2835_mmal_dev** %4, align 8
  %72 = getelementptr inbounds %struct.bm2835_mmal_dev, %struct.bm2835_mmal_dev* %71, i32 0, i32 4
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @V4L2_SCENE_MODE_NONE, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %102

76:                                               ; preds = %70
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* @MMAL_PARAM_EXPOSUREMODE_OFF, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %76
  %81 = load %struct.bm2835_mmal_dev*, %struct.bm2835_mmal_dev** %4, align 8
  %82 = getelementptr inbounds %struct.bm2835_mmal_dev, %struct.bm2835_mmal_dev* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %8, align 4
  br label %84

84:                                               ; preds = %80, %76
  %85 = load %struct.bm2835_mmal_dev*, %struct.bm2835_mmal_dev** %4, align 8
  %86 = getelementptr inbounds %struct.bm2835_mmal_dev, %struct.bm2835_mmal_dev* %85, i32 0, i32 6
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.vchiq_mmal_port*, %struct.vchiq_mmal_port** %9, align 8
  %89 = load i64, i64* @MMAL_PARAMETER_SHUTTER_SPEED, align 8
  %90 = call i32 @vchiq_mmal_port_parameter_set(i32 %87, %struct.vchiq_mmal_port* %88, i64 %89, i32* %8, i32 4)
  store i32 %90, i32* %10, align 4
  %91 = load %struct.bm2835_mmal_dev*, %struct.bm2835_mmal_dev** %4, align 8
  %92 = getelementptr inbounds %struct.bm2835_mmal_dev, %struct.bm2835_mmal_dev* %91, i32 0, i32 6
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.vchiq_mmal_port*, %struct.vchiq_mmal_port** %9, align 8
  %95 = load i64, i64* @MMAL_PARAMETER_EXPOSURE_MODE, align 8
  %96 = call i32 @vchiq_mmal_port_parameter_set(i32 %93, %struct.vchiq_mmal_port* %94, i64 %95, i32* %7, i32 4)
  %97 = load i32, i32* %10, align 4
  %98 = add nsw i32 %97, %96
  store i32 %98, i32* %10, align 4
  %99 = load i32, i32* %7, align 4
  %100 = load %struct.bm2835_mmal_dev*, %struct.bm2835_mmal_dev** %4, align 8
  %101 = getelementptr inbounds %struct.bm2835_mmal_dev, %struct.bm2835_mmal_dev* %100, i32 0, i32 5
  store i32 %99, i32* %101, align 8
  br label %102

102:                                              ; preds = %84, %70
  %103 = load %struct.bm2835_mmal_dev*, %struct.bm2835_mmal_dev** %4, align 8
  %104 = call i64 @set_framerate_params(%struct.bm2835_mmal_dev* %103)
  %105 = load i32, i32* %10, align 4
  %106 = sext i32 %105 to i64
  %107 = add nsw i64 %106, %104
  %108 = trunc i64 %107 to i32
  store i32 %108, i32* %10, align 4
  %109 = load i32, i32* %10, align 4
  ret i32 %109
}

declare dso_local i32 @vchiq_mmal_port_parameter_set(i32, %struct.vchiq_mmal_port*, i64, i32*, i32) #1

declare dso_local i64 @set_framerate_params(%struct.bm2835_mmal_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
