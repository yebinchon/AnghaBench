; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vc04_services/bcm2835-camera/extr_controls.c_ctrl_set_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vc04_services/bcm2835-camera/extr_controls.c_ctrl_set_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bm2835_mmal_dev = type { i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { %struct.vchiq_mmal_port }
%struct.vchiq_mmal_port = type { i32 }
%struct.v4l2_ctrl = type { i32 }
%struct.bm2835_mmal_v4l2_ctrl = type { i32 }

@COMP_CAMERA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bm2835_mmal_dev*, %struct.v4l2_ctrl*, %struct.bm2835_mmal_v4l2_ctrl*)* @ctrl_set_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctrl_set_value(%struct.bm2835_mmal_dev* %0, %struct.v4l2_ctrl* %1, %struct.bm2835_mmal_v4l2_ctrl* %2) #0 {
  %4 = alloca %struct.bm2835_mmal_dev*, align 8
  %5 = alloca %struct.v4l2_ctrl*, align 8
  %6 = alloca %struct.bm2835_mmal_v4l2_ctrl*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.vchiq_mmal_port*, align 8
  store %struct.bm2835_mmal_dev* %0, %struct.bm2835_mmal_dev** %4, align 8
  store %struct.v4l2_ctrl* %1, %struct.v4l2_ctrl** %5, align 8
  store %struct.bm2835_mmal_v4l2_ctrl* %2, %struct.bm2835_mmal_v4l2_ctrl** %6, align 8
  %9 = load %struct.bm2835_mmal_dev*, %struct.bm2835_mmal_dev** %4, align 8
  %10 = getelementptr inbounds %struct.bm2835_mmal_dev, %struct.bm2835_mmal_dev* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %10, align 8
  %12 = load i64, i64* @COMP_CAMERA, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %11, i64 %12
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store %struct.vchiq_mmal_port* %15, %struct.vchiq_mmal_port** %8, align 8
  %16 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %5, align 8
  %17 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %7, align 4
  %19 = load %struct.bm2835_mmal_dev*, %struct.bm2835_mmal_dev** %4, align 8
  %20 = getelementptr inbounds %struct.bm2835_mmal_dev, %struct.bm2835_mmal_dev* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.vchiq_mmal_port*, %struct.vchiq_mmal_port** %8, align 8
  %23 = load %struct.bm2835_mmal_v4l2_ctrl*, %struct.bm2835_mmal_v4l2_ctrl** %6, align 8
  %24 = getelementptr inbounds %struct.bm2835_mmal_v4l2_ctrl, %struct.bm2835_mmal_v4l2_ctrl* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @vchiq_mmal_port_parameter_set(i32 %21, %struct.vchiq_mmal_port* %22, i32 %25, i32* %7, i32 4)
  ret i32 %26
}

declare dso_local i32 @vchiq_mmal_port_parameter_set(i32, %struct.vchiq_mmal_port*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
