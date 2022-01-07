; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vc04_services/bcm2835-camera/extr_controls.c_ctrl_set_iso.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vc04_services/bcm2835-camera/extr_controls.c_ctrl_set_iso.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bm2835_mmal_dev = type { i32, i32, i64, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { %struct.vchiq_mmal_port }
%struct.vchiq_mmal_port = type { i32 }
%struct.v4l2_ctrl = type { i64, i64 }
%struct.bm2835_mmal_v4l2_ctrl = type { i64, i64 }

@V4L2_CID_ISO_SENSITIVITY = common dso_local global i64 0, align 8
@iso_values = common dso_local global i64* null, align 8
@V4L2_CID_ISO_SENSITIVITY_AUTO = common dso_local global i64 0, align 8
@V4L2_ISO_SENSITIVITY_MANUAL = common dso_local global i64 0, align 8
@COMP_CAMERA = common dso_local global i64 0, align 8
@MMAL_PARAMETER_ISO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bm2835_mmal_dev*, %struct.v4l2_ctrl*, %struct.bm2835_mmal_v4l2_ctrl*)* @ctrl_set_iso to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctrl_set_iso(%struct.bm2835_mmal_dev* %0, %struct.v4l2_ctrl* %1, %struct.bm2835_mmal_v4l2_ctrl* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bm2835_mmal_dev*, align 8
  %6 = alloca %struct.v4l2_ctrl*, align 8
  %7 = alloca %struct.bm2835_mmal_v4l2_ctrl*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.vchiq_mmal_port*, align 8
  store %struct.bm2835_mmal_dev* %0, %struct.bm2835_mmal_dev** %5, align 8
  store %struct.v4l2_ctrl* %1, %struct.v4l2_ctrl** %6, align 8
  store %struct.bm2835_mmal_v4l2_ctrl* %2, %struct.bm2835_mmal_v4l2_ctrl** %7, align 8
  %10 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %6, align 8
  %11 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.bm2835_mmal_v4l2_ctrl*, %struct.bm2835_mmal_v4l2_ctrl** %7, align 8
  %14 = getelementptr inbounds %struct.bm2835_mmal_v4l2_ctrl, %struct.bm2835_mmal_v4l2_ctrl* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ugt i64 %12, %15
  br i1 %16, label %25, label %17

17:                                               ; preds = %3
  %18 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %6, align 8
  %19 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.bm2835_mmal_v4l2_ctrl*, %struct.bm2835_mmal_v4l2_ctrl** %7, align 8
  %22 = getelementptr inbounds %struct.bm2835_mmal_v4l2_ctrl, %struct.bm2835_mmal_v4l2_ctrl* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ult i64 %20, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %17, %3
  store i32 1, i32* %4, align 4
  br label %81

26:                                               ; preds = %17
  %27 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %6, align 8
  %28 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @V4L2_CID_ISO_SENSITIVITY, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %26
  %33 = load i64*, i64** @iso_values, align 8
  %34 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %6, align 8
  %35 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds i64, i64* %33, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.bm2835_mmal_dev*, %struct.bm2835_mmal_dev** %5, align 8
  %40 = getelementptr inbounds %struct.bm2835_mmal_dev, %struct.bm2835_mmal_dev* %39, i32 0, i32 2
  store i64 %38, i64* %40, align 8
  br label %57

41:                                               ; preds = %26
  %42 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %6, align 8
  %43 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @V4L2_CID_ISO_SENSITIVITY_AUTO, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %56

47:                                               ; preds = %41
  %48 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %6, align 8
  %49 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @V4L2_ISO_SENSITIVITY_MANUAL, align 8
  %52 = icmp eq i64 %50, %51
  %53 = zext i1 %52 to i32
  %54 = load %struct.bm2835_mmal_dev*, %struct.bm2835_mmal_dev** %5, align 8
  %55 = getelementptr inbounds %struct.bm2835_mmal_dev, %struct.bm2835_mmal_dev* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  br label %56

56:                                               ; preds = %47, %41
  br label %57

57:                                               ; preds = %56, %32
  %58 = load %struct.bm2835_mmal_dev*, %struct.bm2835_mmal_dev** %5, align 8
  %59 = getelementptr inbounds %struct.bm2835_mmal_dev, %struct.bm2835_mmal_dev* %58, i32 0, i32 3
  %60 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %59, align 8
  %61 = load i64, i64* @COMP_CAMERA, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %60, i64 %61
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  store %struct.vchiq_mmal_port* %64, %struct.vchiq_mmal_port** %9, align 8
  %65 = load %struct.bm2835_mmal_dev*, %struct.bm2835_mmal_dev** %5, align 8
  %66 = getelementptr inbounds %struct.bm2835_mmal_dev, %struct.bm2835_mmal_dev* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %57
  %70 = load %struct.bm2835_mmal_dev*, %struct.bm2835_mmal_dev** %5, align 8
  %71 = getelementptr inbounds %struct.bm2835_mmal_dev, %struct.bm2835_mmal_dev* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  store i64 %72, i64* %8, align 8
  br label %74

73:                                               ; preds = %57
  store i64 0, i64* %8, align 8
  br label %74

74:                                               ; preds = %73, %69
  %75 = load %struct.bm2835_mmal_dev*, %struct.bm2835_mmal_dev** %5, align 8
  %76 = getelementptr inbounds %struct.bm2835_mmal_dev, %struct.bm2835_mmal_dev* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.vchiq_mmal_port*, %struct.vchiq_mmal_port** %9, align 8
  %79 = load i32, i32* @MMAL_PARAMETER_ISO, align 4
  %80 = call i32 @vchiq_mmal_port_parameter_set(i32 %77, %struct.vchiq_mmal_port* %78, i32 %79, i64* %8, i32 8)
  store i32 %80, i32* %4, align 4
  br label %81

81:                                               ; preds = %74, %25
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local i32 @vchiq_mmal_port_parameter_set(i32, %struct.vchiq_mmal_port*, i32, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
