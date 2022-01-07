; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vc04_services/bcm2835-camera/extr_controls.c_ctrl_set_metering_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vc04_services/bcm2835-camera/extr_controls.c_ctrl_set_metering_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bm2835_mmal_dev = type { i64, i32, %struct.TYPE_2__**, i32 }
%struct.TYPE_2__ = type { %struct.vchiq_mmal_port }
%struct.vchiq_mmal_port = type { i32 }
%struct.v4l2_ctrl = type { i32 }
%struct.bm2835_mmal_v4l2_ctrl = type { i32 }

@MMAL_PARAM_EXPOSUREMETERINGMODE_AVERAGE = common dso_local global i32 0, align 4
@MMAL_PARAM_EXPOSUREMETERINGMODE_BACKLIT = common dso_local global i32 0, align 4
@MMAL_PARAM_EXPOSUREMETERINGMODE_SPOT = common dso_local global i32 0, align 4
@V4L2_SCENE_MODE_NONE = common dso_local global i64 0, align 8
@COMP_CAMERA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bm2835_mmal_dev*, %struct.v4l2_ctrl*, %struct.bm2835_mmal_v4l2_ctrl*)* @ctrl_set_metering_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctrl_set_metering_mode(%struct.bm2835_mmal_dev* %0, %struct.v4l2_ctrl* %1, %struct.bm2835_mmal_v4l2_ctrl* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bm2835_mmal_dev*, align 8
  %6 = alloca %struct.v4l2_ctrl*, align 8
  %7 = alloca %struct.bm2835_mmal_v4l2_ctrl*, align 8
  %8 = alloca %struct.vchiq_mmal_port*, align 8
  %9 = alloca i32, align 4
  store %struct.bm2835_mmal_dev* %0, %struct.bm2835_mmal_dev** %5, align 8
  store %struct.v4l2_ctrl* %1, %struct.v4l2_ctrl** %6, align 8
  store %struct.bm2835_mmal_v4l2_ctrl* %2, %struct.bm2835_mmal_v4l2_ctrl** %7, align 8
  %10 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %6, align 8
  %11 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %25 [
    i32 130, label %13
    i32 129, label %17
    i32 128, label %21
  ]

13:                                               ; preds = %3
  %14 = load i32, i32* @MMAL_PARAM_EXPOSUREMETERINGMODE_AVERAGE, align 4
  %15 = load %struct.bm2835_mmal_dev*, %struct.bm2835_mmal_dev** %5, align 8
  %16 = getelementptr inbounds %struct.bm2835_mmal_dev, %struct.bm2835_mmal_dev* %15, i32 0, i32 3
  store i32 %14, i32* %16, align 8
  br label %25

17:                                               ; preds = %3
  %18 = load i32, i32* @MMAL_PARAM_EXPOSUREMETERINGMODE_BACKLIT, align 4
  %19 = load %struct.bm2835_mmal_dev*, %struct.bm2835_mmal_dev** %5, align 8
  %20 = getelementptr inbounds %struct.bm2835_mmal_dev, %struct.bm2835_mmal_dev* %19, i32 0, i32 3
  store i32 %18, i32* %20, align 8
  br label %25

21:                                               ; preds = %3
  %22 = load i32, i32* @MMAL_PARAM_EXPOSUREMETERINGMODE_SPOT, align 4
  %23 = load %struct.bm2835_mmal_dev*, %struct.bm2835_mmal_dev** %5, align 8
  %24 = getelementptr inbounds %struct.bm2835_mmal_dev, %struct.bm2835_mmal_dev* %23, i32 0, i32 3
  store i32 %22, i32* %24, align 8
  br label %25

25:                                               ; preds = %3, %21, %17, %13
  %26 = load %struct.bm2835_mmal_dev*, %struct.bm2835_mmal_dev** %5, align 8
  %27 = getelementptr inbounds %struct.bm2835_mmal_dev, %struct.bm2835_mmal_dev* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @V4L2_SCENE_MODE_NONE, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %50

31:                                               ; preds = %25
  %32 = load %struct.bm2835_mmal_dev*, %struct.bm2835_mmal_dev** %5, align 8
  %33 = getelementptr inbounds %struct.bm2835_mmal_dev, %struct.bm2835_mmal_dev* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %9, align 4
  %35 = load %struct.bm2835_mmal_dev*, %struct.bm2835_mmal_dev** %5, align 8
  %36 = getelementptr inbounds %struct.bm2835_mmal_dev, %struct.bm2835_mmal_dev* %35, i32 0, i32 2
  %37 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %36, align 8
  %38 = load i64, i64* @COMP_CAMERA, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %37, i64 %38
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  store %struct.vchiq_mmal_port* %41, %struct.vchiq_mmal_port** %8, align 8
  %42 = load %struct.bm2835_mmal_dev*, %struct.bm2835_mmal_dev** %5, align 8
  %43 = getelementptr inbounds %struct.bm2835_mmal_dev, %struct.bm2835_mmal_dev* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.vchiq_mmal_port*, %struct.vchiq_mmal_port** %8, align 8
  %46 = load %struct.bm2835_mmal_v4l2_ctrl*, %struct.bm2835_mmal_v4l2_ctrl** %7, align 8
  %47 = getelementptr inbounds %struct.bm2835_mmal_v4l2_ctrl, %struct.bm2835_mmal_v4l2_ctrl* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @vchiq_mmal_port_parameter_set(i32 %44, %struct.vchiq_mmal_port* %45, i32 %48, i32* %9, i32 4)
  store i32 %49, i32* %4, align 4
  br label %51

50:                                               ; preds = %25
  store i32 0, i32* %4, align 4
  br label %51

51:                                               ; preds = %50, %31
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i32 @vchiq_mmal_port_parameter_set(i32, %struct.vchiq_mmal_port*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
