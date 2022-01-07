; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vc04_services/bcm2835-camera/extr_controls.c_set_framerate_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vc04_services/bcm2835-camera/extr_controls.c_set_framerate_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bm2835_mmal_dev = type { i64, i32, %struct.TYPE_10__**, i32, %struct.TYPE_7__, i64 }
%struct.TYPE_10__ = type { i32* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.mmal_parameter_fps_range = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }

@MMAL_PARAM_EXPOSUREMODE_OFF = common dso_local global i64 0, align 8
@bcm2835_v4l2_debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Set fps range to %d/%d to %d/%d\0A\00", align 1
@COMP_CAMERA = common dso_local global i64 0, align 8
@CAM_PORT_PREVIEW = common dso_local global i64 0, align 8
@MMAL_PARAMETER_FPS_RANGE = common dso_local global i32 0, align 4
@CAM_PORT_VIDEO = common dso_local global i64 0, align 8
@CAM_PORT_CAPTURE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"Failed to set fps ret %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_framerate_params(%struct.bm2835_mmal_dev* %0) #0 {
  %2 = alloca %struct.bm2835_mmal_dev*, align 8
  %3 = alloca %struct.mmal_parameter_fps_range, align 4
  %4 = alloca i32, align 4
  store %struct.bm2835_mmal_dev* %0, %struct.bm2835_mmal_dev** %2, align 8
  %5 = load %struct.bm2835_mmal_dev*, %struct.bm2835_mmal_dev** %2, align 8
  %6 = getelementptr inbounds %struct.bm2835_mmal_dev, %struct.bm2835_mmal_dev* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @MMAL_PARAM_EXPOSUREMODE_OFF, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %34

10:                                               ; preds = %1
  %11 = load %struct.bm2835_mmal_dev*, %struct.bm2835_mmal_dev** %2, align 8
  %12 = getelementptr inbounds %struct.bm2835_mmal_dev, %struct.bm2835_mmal_dev* %11, i32 0, i32 5
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %34

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.mmal_parameter_fps_range, %struct.mmal_parameter_fps_range* %3, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  store i32 1, i32* %17, align 4
  %18 = getelementptr inbounds %struct.mmal_parameter_fps_range, %struct.mmal_parameter_fps_range* %3, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 1
  store i32 1, i32* %19, align 4
  %20 = load %struct.bm2835_mmal_dev*, %struct.bm2835_mmal_dev** %2, align 8
  %21 = getelementptr inbounds %struct.bm2835_mmal_dev, %struct.bm2835_mmal_dev* %20, i32 0, i32 4
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.mmal_parameter_fps_range, %struct.mmal_parameter_fps_range* %3, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load %struct.bm2835_mmal_dev*, %struct.bm2835_mmal_dev** %2, align 8
  %28 = getelementptr inbounds %struct.bm2835_mmal_dev, %struct.bm2835_mmal_dev* %27, i32 0, i32 4
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.mmal_parameter_fps_range, %struct.mmal_parameter_fps_range* %3, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  br label %53

34:                                               ; preds = %10, %1
  %35 = load %struct.bm2835_mmal_dev*, %struct.bm2835_mmal_dev** %2, align 8
  %36 = getelementptr inbounds %struct.bm2835_mmal_dev, %struct.bm2835_mmal_dev* %35, i32 0, i32 4
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.mmal_parameter_fps_range, %struct.mmal_parameter_fps_range* %3, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = getelementptr inbounds %struct.mmal_parameter_fps_range, %struct.mmal_parameter_fps_range* %3, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  store i32 %39, i32* %43, align 4
  %44 = load %struct.bm2835_mmal_dev*, %struct.bm2835_mmal_dev** %2, align 8
  %45 = getelementptr inbounds %struct.bm2835_mmal_dev, %struct.bm2835_mmal_dev* %44, i32 0, i32 4
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds %struct.mmal_parameter_fps_range, %struct.mmal_parameter_fps_range* %3, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = getelementptr inbounds %struct.mmal_parameter_fps_range, %struct.mmal_parameter_fps_range* %3, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 1
  store i32 %48, i32* %52, align 4
  br label %53

53:                                               ; preds = %34, %15
  %54 = load i32, i32* @bcm2835_v4l2_debug, align 4
  %55 = load %struct.bm2835_mmal_dev*, %struct.bm2835_mmal_dev** %2, align 8
  %56 = getelementptr inbounds %struct.bm2835_mmal_dev, %struct.bm2835_mmal_dev* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.mmal_parameter_fps_range, %struct.mmal_parameter_fps_range* %3, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = getelementptr inbounds %struct.mmal_parameter_fps_range, %struct.mmal_parameter_fps_range* %3, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = getelementptr inbounds %struct.mmal_parameter_fps_range, %struct.mmal_parameter_fps_range* %3, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = getelementptr inbounds %struct.mmal_parameter_fps_range, %struct.mmal_parameter_fps_range* %3, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 (i32, i32, i32*, i8*, i32, ...) @v4l2_dbg(i32 1, i32 %54, i32* %56, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %59, i32 %62, i32 %65, i32 %68)
  %70 = load %struct.bm2835_mmal_dev*, %struct.bm2835_mmal_dev** %2, align 8
  %71 = getelementptr inbounds %struct.bm2835_mmal_dev, %struct.bm2835_mmal_dev* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.bm2835_mmal_dev*, %struct.bm2835_mmal_dev** %2, align 8
  %74 = getelementptr inbounds %struct.bm2835_mmal_dev, %struct.bm2835_mmal_dev* %73, i32 0, i32 2
  %75 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %74, align 8
  %76 = load i64, i64* @COMP_CAMERA, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %75, i64 %76
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = load i64, i64* @CAM_PORT_PREVIEW, align 8
  %82 = getelementptr inbounds i32, i32* %80, i64 %81
  %83 = load i32, i32* @MMAL_PARAMETER_FPS_RANGE, align 4
  %84 = call i32 @vchiq_mmal_port_parameter_set(i32 %72, i32* %82, i32 %83, %struct.mmal_parameter_fps_range* %3, i32 16)
  store i32 %84, i32* %4, align 4
  %85 = load %struct.bm2835_mmal_dev*, %struct.bm2835_mmal_dev** %2, align 8
  %86 = getelementptr inbounds %struct.bm2835_mmal_dev, %struct.bm2835_mmal_dev* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.bm2835_mmal_dev*, %struct.bm2835_mmal_dev** %2, align 8
  %89 = getelementptr inbounds %struct.bm2835_mmal_dev, %struct.bm2835_mmal_dev* %88, i32 0, i32 2
  %90 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %89, align 8
  %91 = load i64, i64* @COMP_CAMERA, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %90, i64 %91
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = load i64, i64* @CAM_PORT_VIDEO, align 8
  %97 = getelementptr inbounds i32, i32* %95, i64 %96
  %98 = load i32, i32* @MMAL_PARAMETER_FPS_RANGE, align 4
  %99 = call i32 @vchiq_mmal_port_parameter_set(i32 %87, i32* %97, i32 %98, %struct.mmal_parameter_fps_range* %3, i32 16)
  %100 = load i32, i32* %4, align 4
  %101 = add nsw i32 %100, %99
  store i32 %101, i32* %4, align 4
  %102 = load %struct.bm2835_mmal_dev*, %struct.bm2835_mmal_dev** %2, align 8
  %103 = getelementptr inbounds %struct.bm2835_mmal_dev, %struct.bm2835_mmal_dev* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.bm2835_mmal_dev*, %struct.bm2835_mmal_dev** %2, align 8
  %106 = getelementptr inbounds %struct.bm2835_mmal_dev, %struct.bm2835_mmal_dev* %105, i32 0, i32 2
  %107 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %106, align 8
  %108 = load i64, i64* @COMP_CAMERA, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %107, i64 %108
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = load i64, i64* @CAM_PORT_CAPTURE, align 8
  %114 = getelementptr inbounds i32, i32* %112, i64 %113
  %115 = load i32, i32* @MMAL_PARAMETER_FPS_RANGE, align 4
  %116 = call i32 @vchiq_mmal_port_parameter_set(i32 %104, i32* %114, i32 %115, %struct.mmal_parameter_fps_range* %3, i32 16)
  %117 = load i32, i32* %4, align 4
  %118 = add nsw i32 %117, %116
  store i32 %118, i32* %4, align 4
  %119 = load i32, i32* %4, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %127

121:                                              ; preds = %53
  %122 = load i32, i32* @bcm2835_v4l2_debug, align 4
  %123 = load %struct.bm2835_mmal_dev*, %struct.bm2835_mmal_dev** %2, align 8
  %124 = getelementptr inbounds %struct.bm2835_mmal_dev, %struct.bm2835_mmal_dev* %123, i32 0, i32 1
  %125 = load i32, i32* %4, align 4
  %126 = call i32 (i32, i32, i32*, i8*, i32, ...) @v4l2_dbg(i32 0, i32 %122, i32* %124, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %125)
  br label %127

127:                                              ; preds = %121, %53
  %128 = load i32, i32* %4, align 4
  ret i32 %128
}

declare dso_local i32 @v4l2_dbg(i32, i32, i32*, i8*, i32, ...) #1

declare dso_local i32 @vchiq_mmal_port_parameter_set(i32, i32*, i32, %struct.mmal_parameter_fps_range*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
