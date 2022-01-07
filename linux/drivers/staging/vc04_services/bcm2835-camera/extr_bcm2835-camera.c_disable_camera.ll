; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vc04_services/bcm2835-camera/extr_bcm2835-camera.c_disable_camera.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vc04_services/bcm2835-camera/extr_bcm2835-camera.c_disable_camera.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bm2835_mmal_dev = type { i32, i32, %struct.TYPE_2__**, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [43 x i8] c"Disabled the camera when already disabled\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@bcm2835_v4l2_debug = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Disabling camera\0A\00", align 1
@COMP_CAMERA = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [33 x i8] c"Failed disabling camera, ret %d\0A\00", align 1
@MMAL_PARAMETER_CAMERA_NUM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"Camera refcount now %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bm2835_mmal_dev*)* @disable_camera to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @disable_camera(%struct.bm2835_mmal_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bm2835_mmal_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.bm2835_mmal_dev* %0, %struct.bm2835_mmal_dev** %3, align 8
  %6 = load %struct.bm2835_mmal_dev*, %struct.bm2835_mmal_dev** %3, align 8
  %7 = getelementptr inbounds %struct.bm2835_mmal_dev, %struct.bm2835_mmal_dev* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %1
  %11 = load %struct.bm2835_mmal_dev*, %struct.bm2835_mmal_dev** %3, align 8
  %12 = getelementptr inbounds %struct.bm2835_mmal_dev, %struct.bm2835_mmal_dev* %11, i32 0, i32 1
  %13 = call i32 (i32*, i8*, ...) @v4l2_err(i32* %12, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %70

16:                                               ; preds = %1
  %17 = load %struct.bm2835_mmal_dev*, %struct.bm2835_mmal_dev** %3, align 8
  %18 = getelementptr inbounds %struct.bm2835_mmal_dev, %struct.bm2835_mmal_dev* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = add nsw i32 %19, -1
  store i32 %20, i32* %18, align 8
  %21 = load %struct.bm2835_mmal_dev*, %struct.bm2835_mmal_dev** %3, align 8
  %22 = getelementptr inbounds %struct.bm2835_mmal_dev, %struct.bm2835_mmal_dev* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %62, label %25

25:                                               ; preds = %16
  store i32 -1, i32* %5, align 4
  %26 = load i32, i32* @bcm2835_v4l2_debug, align 4
  %27 = load %struct.bm2835_mmal_dev*, %struct.bm2835_mmal_dev** %3, align 8
  %28 = getelementptr inbounds %struct.bm2835_mmal_dev, %struct.bm2835_mmal_dev* %27, i32 0, i32 1
  %29 = call i32 (i32, i32, i32*, i8*, ...) @v4l2_dbg(i32 1, i32 %26, i32* %28, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %30 = load %struct.bm2835_mmal_dev*, %struct.bm2835_mmal_dev** %3, align 8
  %31 = getelementptr inbounds %struct.bm2835_mmal_dev, %struct.bm2835_mmal_dev* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.bm2835_mmal_dev*, %struct.bm2835_mmal_dev** %3, align 8
  %34 = getelementptr inbounds %struct.bm2835_mmal_dev, %struct.bm2835_mmal_dev* %33, i32 0, i32 2
  %35 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %34, align 8
  %36 = load i64, i64* @COMP_CAMERA, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %35, i64 %36
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = call i32 @vchiq_mmal_component_disable(i32 %32, %struct.TYPE_2__* %38)
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %25
  %43 = load %struct.bm2835_mmal_dev*, %struct.bm2835_mmal_dev** %3, align 8
  %44 = getelementptr inbounds %struct.bm2835_mmal_dev, %struct.bm2835_mmal_dev* %43, i32 0, i32 1
  %45 = load i32, i32* %4, align 4
  %46 = call i32 (i32*, i8*, ...) @v4l2_err(i32* %44, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %70

49:                                               ; preds = %25
  %50 = load %struct.bm2835_mmal_dev*, %struct.bm2835_mmal_dev** %3, align 8
  %51 = getelementptr inbounds %struct.bm2835_mmal_dev, %struct.bm2835_mmal_dev* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.bm2835_mmal_dev*, %struct.bm2835_mmal_dev** %3, align 8
  %54 = getelementptr inbounds %struct.bm2835_mmal_dev, %struct.bm2835_mmal_dev* %53, i32 0, i32 2
  %55 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %54, align 8
  %56 = load i64, i64* @COMP_CAMERA, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %55, i64 %56
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* @MMAL_PARAMETER_CAMERA_NUM, align 4
  %61 = call i32 @vchiq_mmal_port_parameter_set(i32 %52, i32* %59, i32 %60, i32* %5, i32 4)
  br label %62

62:                                               ; preds = %49, %16
  %63 = load i32, i32* @bcm2835_v4l2_debug, align 4
  %64 = load %struct.bm2835_mmal_dev*, %struct.bm2835_mmal_dev** %3, align 8
  %65 = getelementptr inbounds %struct.bm2835_mmal_dev, %struct.bm2835_mmal_dev* %64, i32 0, i32 1
  %66 = load %struct.bm2835_mmal_dev*, %struct.bm2835_mmal_dev** %3, align 8
  %67 = getelementptr inbounds %struct.bm2835_mmal_dev, %struct.bm2835_mmal_dev* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 (i32, i32, i32*, i8*, ...) @v4l2_dbg(i32 1, i32 %63, i32* %65, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %68)
  store i32 0, i32* %2, align 4
  br label %70

70:                                               ; preds = %62, %42, %10
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i32 @v4l2_err(i32*, i8*, ...) #1

declare dso_local i32 @v4l2_dbg(i32, i32, i32*, i8*, ...) #1

declare dso_local i32 @vchiq_mmal_component_disable(i32, %struct.TYPE_2__*) #1

declare dso_local i32 @vchiq_mmal_port_parameter_set(i32, i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
