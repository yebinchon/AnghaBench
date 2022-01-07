; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vc04_services/bcm2835-camera/extr_controls.c_ctrl_set_rotate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vc04_services/bcm2835-camera/extr_controls.c_ctrl_set_rotate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bm2835_mmal_dev = type { i32, %struct.vchiq_mmal_component** }
%struct.vchiq_mmal_component = type { i32* }
%struct.v4l2_ctrl = type { i32 }
%struct.bm2835_mmal_v4l2_ctrl = type { i32 }

@COMP_CAMERA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bm2835_mmal_dev*, %struct.v4l2_ctrl*, %struct.bm2835_mmal_v4l2_ctrl*)* @ctrl_set_rotate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctrl_set_rotate(%struct.bm2835_mmal_dev* %0, %struct.v4l2_ctrl* %1, %struct.bm2835_mmal_v4l2_ctrl* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bm2835_mmal_dev*, align 8
  %6 = alloca %struct.v4l2_ctrl*, align 8
  %7 = alloca %struct.bm2835_mmal_v4l2_ctrl*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.vchiq_mmal_component*, align 8
  store %struct.bm2835_mmal_dev* %0, %struct.bm2835_mmal_dev** %5, align 8
  store %struct.v4l2_ctrl* %1, %struct.v4l2_ctrl** %6, align 8
  store %struct.bm2835_mmal_v4l2_ctrl* %2, %struct.bm2835_mmal_v4l2_ctrl** %7, align 8
  %11 = load %struct.bm2835_mmal_dev*, %struct.bm2835_mmal_dev** %5, align 8
  %12 = getelementptr inbounds %struct.bm2835_mmal_dev, %struct.bm2835_mmal_dev* %11, i32 0, i32 1
  %13 = load %struct.vchiq_mmal_component**, %struct.vchiq_mmal_component*** %12, align 8
  %14 = load i64, i64* @COMP_CAMERA, align 8
  %15 = getelementptr inbounds %struct.vchiq_mmal_component*, %struct.vchiq_mmal_component** %13, i64 %14
  %16 = load %struct.vchiq_mmal_component*, %struct.vchiq_mmal_component** %15, align 8
  store %struct.vchiq_mmal_component* %16, %struct.vchiq_mmal_component** %10, align 8
  %17 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %6, align 8
  %18 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = srem i32 %19, 360
  %21 = sdiv i32 %20, 90
  %22 = mul nsw i32 %21, 90
  store i32 %22, i32* %9, align 4
  %23 = load %struct.bm2835_mmal_dev*, %struct.bm2835_mmal_dev** %5, align 8
  %24 = getelementptr inbounds %struct.bm2835_mmal_dev, %struct.bm2835_mmal_dev* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.vchiq_mmal_component*, %struct.vchiq_mmal_component** %10, align 8
  %27 = getelementptr inbounds %struct.vchiq_mmal_component, %struct.vchiq_mmal_component* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load %struct.bm2835_mmal_v4l2_ctrl*, %struct.bm2835_mmal_v4l2_ctrl** %7, align 8
  %31 = getelementptr inbounds %struct.bm2835_mmal_v4l2_ctrl, %struct.bm2835_mmal_v4l2_ctrl* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @vchiq_mmal_port_parameter_set(i32 %25, i32* %29, i32 %32, i32* %9, i32 4)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %3
  %37 = load i32, i32* %8, align 4
  store i32 %37, i32* %4, align 4
  br label %66

38:                                               ; preds = %3
  %39 = load %struct.bm2835_mmal_dev*, %struct.bm2835_mmal_dev** %5, align 8
  %40 = getelementptr inbounds %struct.bm2835_mmal_dev, %struct.bm2835_mmal_dev* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.vchiq_mmal_component*, %struct.vchiq_mmal_component** %10, align 8
  %43 = getelementptr inbounds %struct.vchiq_mmal_component, %struct.vchiq_mmal_component* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 1
  %46 = load %struct.bm2835_mmal_v4l2_ctrl*, %struct.bm2835_mmal_v4l2_ctrl** %7, align 8
  %47 = getelementptr inbounds %struct.bm2835_mmal_v4l2_ctrl, %struct.bm2835_mmal_v4l2_ctrl* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @vchiq_mmal_port_parameter_set(i32 %41, i32* %45, i32 %48, i32* %9, i32 4)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %38
  %53 = load i32, i32* %8, align 4
  store i32 %53, i32* %4, align 4
  br label %66

54:                                               ; preds = %38
  %55 = load %struct.bm2835_mmal_dev*, %struct.bm2835_mmal_dev** %5, align 8
  %56 = getelementptr inbounds %struct.bm2835_mmal_dev, %struct.bm2835_mmal_dev* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.vchiq_mmal_component*, %struct.vchiq_mmal_component** %10, align 8
  %59 = getelementptr inbounds %struct.vchiq_mmal_component, %struct.vchiq_mmal_component* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 2
  %62 = load %struct.bm2835_mmal_v4l2_ctrl*, %struct.bm2835_mmal_v4l2_ctrl** %7, align 8
  %63 = getelementptr inbounds %struct.bm2835_mmal_v4l2_ctrl, %struct.bm2835_mmal_v4l2_ctrl* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @vchiq_mmal_port_parameter_set(i32 %57, i32* %61, i32 %64, i32* %9, i32 4)
  store i32 %65, i32* %4, align 4
  br label %66

66:                                               ; preds = %54, %52, %36
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i32 @vchiq_mmal_port_parameter_set(i32, i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
