; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vc04_services/bcm2835-camera/extr_controls.c_ctrl_set_flip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vc04_services/bcm2835-camera/extr_controls.c_ctrl_set_flip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bm2835_mmal_dev = type { i32, i64, i64, %struct.vchiq_mmal_component** }
%struct.vchiq_mmal_component = type { i32* }
%struct.v4l2_ctrl = type { i64, i64 }
%struct.bm2835_mmal_v4l2_ctrl = type { i32 }

@V4L2_CID_HFLIP = common dso_local global i64 0, align 8
@COMP_CAMERA = common dso_local global i64 0, align 8
@MMAL_PARAM_MIRROR_BOTH = common dso_local global i32 0, align 4
@MMAL_PARAM_MIRROR_HORIZONTAL = common dso_local global i32 0, align 4
@MMAL_PARAM_MIRROR_VERTICAL = common dso_local global i32 0, align 4
@MMAL_PARAM_MIRROR_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bm2835_mmal_dev*, %struct.v4l2_ctrl*, %struct.bm2835_mmal_v4l2_ctrl*)* @ctrl_set_flip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctrl_set_flip(%struct.bm2835_mmal_dev* %0, %struct.v4l2_ctrl* %1, %struct.bm2835_mmal_v4l2_ctrl* %2) #0 {
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
  %11 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %6, align 8
  %12 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @V4L2_CID_HFLIP, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %3
  %17 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %6, align 8
  %18 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.bm2835_mmal_dev*, %struct.bm2835_mmal_dev** %5, align 8
  %21 = getelementptr inbounds %struct.bm2835_mmal_dev, %struct.bm2835_mmal_dev* %20, i32 0, i32 2
  store i64 %19, i64* %21, align 8
  br label %28

22:                                               ; preds = %3
  %23 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %6, align 8
  %24 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.bm2835_mmal_dev*, %struct.bm2835_mmal_dev** %5, align 8
  %27 = getelementptr inbounds %struct.bm2835_mmal_dev, %struct.bm2835_mmal_dev* %26, i32 0, i32 1
  store i64 %25, i64* %27, align 8
  br label %28

28:                                               ; preds = %22, %16
  %29 = load %struct.bm2835_mmal_dev*, %struct.bm2835_mmal_dev** %5, align 8
  %30 = getelementptr inbounds %struct.bm2835_mmal_dev, %struct.bm2835_mmal_dev* %29, i32 0, i32 3
  %31 = load %struct.vchiq_mmal_component**, %struct.vchiq_mmal_component*** %30, align 8
  %32 = load i64, i64* @COMP_CAMERA, align 8
  %33 = getelementptr inbounds %struct.vchiq_mmal_component*, %struct.vchiq_mmal_component** %31, i64 %32
  %34 = load %struct.vchiq_mmal_component*, %struct.vchiq_mmal_component** %33, align 8
  store %struct.vchiq_mmal_component* %34, %struct.vchiq_mmal_component** %10, align 8
  %35 = load %struct.bm2835_mmal_dev*, %struct.bm2835_mmal_dev** %5, align 8
  %36 = getelementptr inbounds %struct.bm2835_mmal_dev, %struct.bm2835_mmal_dev* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %28
  %40 = load %struct.bm2835_mmal_dev*, %struct.bm2835_mmal_dev** %5, align 8
  %41 = getelementptr inbounds %struct.bm2835_mmal_dev, %struct.bm2835_mmal_dev* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = load i32, i32* @MMAL_PARAM_MIRROR_BOTH, align 4
  store i32 %45, i32* %9, align 4
  br label %64

46:                                               ; preds = %39, %28
  %47 = load %struct.bm2835_mmal_dev*, %struct.bm2835_mmal_dev** %5, align 8
  %48 = getelementptr inbounds %struct.bm2835_mmal_dev, %struct.bm2835_mmal_dev* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = load i32, i32* @MMAL_PARAM_MIRROR_HORIZONTAL, align 4
  store i32 %52, i32* %9, align 4
  br label %63

53:                                               ; preds = %46
  %54 = load %struct.bm2835_mmal_dev*, %struct.bm2835_mmal_dev** %5, align 8
  %55 = getelementptr inbounds %struct.bm2835_mmal_dev, %struct.bm2835_mmal_dev* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = load i32, i32* @MMAL_PARAM_MIRROR_VERTICAL, align 4
  store i32 %59, i32* %9, align 4
  br label %62

60:                                               ; preds = %53
  %61 = load i32, i32* @MMAL_PARAM_MIRROR_NONE, align 4
  store i32 %61, i32* %9, align 4
  br label %62

62:                                               ; preds = %60, %58
  br label %63

63:                                               ; preds = %62, %51
  br label %64

64:                                               ; preds = %63, %44
  %65 = load %struct.bm2835_mmal_dev*, %struct.bm2835_mmal_dev** %5, align 8
  %66 = getelementptr inbounds %struct.bm2835_mmal_dev, %struct.bm2835_mmal_dev* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.vchiq_mmal_component*, %struct.vchiq_mmal_component** %10, align 8
  %69 = getelementptr inbounds %struct.vchiq_mmal_component, %struct.vchiq_mmal_component* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  %72 = load %struct.bm2835_mmal_v4l2_ctrl*, %struct.bm2835_mmal_v4l2_ctrl** %7, align 8
  %73 = getelementptr inbounds %struct.bm2835_mmal_v4l2_ctrl, %struct.bm2835_mmal_v4l2_ctrl* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @vchiq_mmal_port_parameter_set(i32 %67, i32* %71, i32 %74, i32* %9, i32 4)
  store i32 %75, i32* %8, align 4
  %76 = load i32, i32* %8, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %64
  %79 = load i32, i32* %8, align 4
  store i32 %79, i32* %4, align 4
  br label %108

80:                                               ; preds = %64
  %81 = load %struct.bm2835_mmal_dev*, %struct.bm2835_mmal_dev** %5, align 8
  %82 = getelementptr inbounds %struct.bm2835_mmal_dev, %struct.bm2835_mmal_dev* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.vchiq_mmal_component*, %struct.vchiq_mmal_component** %10, align 8
  %85 = getelementptr inbounds %struct.vchiq_mmal_component, %struct.vchiq_mmal_component* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 1
  %88 = load %struct.bm2835_mmal_v4l2_ctrl*, %struct.bm2835_mmal_v4l2_ctrl** %7, align 8
  %89 = getelementptr inbounds %struct.bm2835_mmal_v4l2_ctrl, %struct.bm2835_mmal_v4l2_ctrl* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @vchiq_mmal_port_parameter_set(i32 %83, i32* %87, i32 %90, i32* %9, i32 4)
  store i32 %91, i32* %8, align 4
  %92 = load i32, i32* %8, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %80
  %95 = load i32, i32* %8, align 4
  store i32 %95, i32* %4, align 4
  br label %108

96:                                               ; preds = %80
  %97 = load %struct.bm2835_mmal_dev*, %struct.bm2835_mmal_dev** %5, align 8
  %98 = getelementptr inbounds %struct.bm2835_mmal_dev, %struct.bm2835_mmal_dev* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.vchiq_mmal_component*, %struct.vchiq_mmal_component** %10, align 8
  %101 = getelementptr inbounds %struct.vchiq_mmal_component, %struct.vchiq_mmal_component* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 2
  %104 = load %struct.bm2835_mmal_v4l2_ctrl*, %struct.bm2835_mmal_v4l2_ctrl** %7, align 8
  %105 = getelementptr inbounds %struct.bm2835_mmal_v4l2_ctrl, %struct.bm2835_mmal_v4l2_ctrl* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @vchiq_mmal_port_parameter_set(i32 %99, i32* %103, i32 %106, i32* %9, i32 4)
  store i32 %107, i32* %4, align 4
  br label %108

108:                                              ; preds = %96, %94, %78
  %109 = load i32, i32* %4, align 4
  ret i32 %109
}

declare dso_local i32 @vchiq_mmal_port_parameter_set(i32, i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
