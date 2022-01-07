; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vc04_services/bcm2835-camera/extr_controls.c_bm2835_mmal_set_all_camera_controls.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vc04_services/bcm2835-camera/extr_controls.c_bm2835_mmal_set_all_camera_controls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 (%struct.bm2835_mmal_dev*, i64, %struct.TYPE_3__*)*, i32 }
%struct.bm2835_mmal_dev = type { i32, i64* }

@V4L2_CTRL_COUNT = common dso_local global i32 0, align 4
@v4l2_ctrls = common dso_local global %struct.TYPE_3__* null, align 8
@bcm2835_v4l2_debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Failed when setting default values for ctrl %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bm2835_mmal_set_all_camera_controls(%struct.bm2835_mmal_dev* %0) #0 {
  %2 = alloca %struct.bm2835_mmal_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.bm2835_mmal_dev* %0, %struct.bm2835_mmal_dev** %2, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %64, %1
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @V4L2_CTRL_COUNT, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %67

9:                                                ; preds = %5
  %10 = load %struct.bm2835_mmal_dev*, %struct.bm2835_mmal_dev** %2, align 8
  %11 = getelementptr inbounds %struct.bm2835_mmal_dev, %struct.bm2835_mmal_dev* %10, i32 0, i32 1
  %12 = load i64*, i64** %11, align 8
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i64, i64* %12, i64 %14
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %63

18:                                               ; preds = %9
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** @v4l2_ctrls, align 8
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32 (%struct.bm2835_mmal_dev*, i64, %struct.TYPE_3__*)*, i32 (%struct.bm2835_mmal_dev*, i64, %struct.TYPE_3__*)** %23, align 8
  %25 = icmp ne i32 (%struct.bm2835_mmal_dev*, i64, %struct.TYPE_3__*)* %24, null
  br i1 %25, label %26, label %63

26:                                               ; preds = %18
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** @v4l2_ctrls, align 8
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32 (%struct.bm2835_mmal_dev*, i64, %struct.TYPE_3__*)*, i32 (%struct.bm2835_mmal_dev*, i64, %struct.TYPE_3__*)** %31, align 8
  %33 = load %struct.bm2835_mmal_dev*, %struct.bm2835_mmal_dev** %2, align 8
  %34 = load %struct.bm2835_mmal_dev*, %struct.bm2835_mmal_dev** %2, align 8
  %35 = getelementptr inbounds %struct.bm2835_mmal_dev, %struct.bm2835_mmal_dev* %34, i32 0, i32 1
  %36 = load i64*, i64** %35, align 8
  %37 = load i32, i32* %3, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i64, i64* %36, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** @v4l2_ctrls, align 8
  %42 = load i32, i32* %3, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i64 %43
  %45 = call i32 %32(%struct.bm2835_mmal_dev* %33, i64 %40, %struct.TYPE_3__* %44)
  store i32 %45, i32* %4, align 4
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** @v4l2_ctrls, align 8
  %47 = load i32, i32* %3, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %62, label %53

53:                                               ; preds = %26
  %54 = load i32, i32* %4, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %53
  %57 = load i32, i32* @bcm2835_v4l2_debug, align 4
  %58 = load %struct.bm2835_mmal_dev*, %struct.bm2835_mmal_dev** %2, align 8
  %59 = getelementptr inbounds %struct.bm2835_mmal_dev, %struct.bm2835_mmal_dev* %58, i32 0, i32 0
  %60 = load i32, i32* %3, align 4
  %61 = call i32 @v4l2_dbg(i32 1, i32 %57, i32* %59, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %60)
  br label %67

62:                                               ; preds = %53, %26
  br label %63

63:                                               ; preds = %62, %18, %9
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %3, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %3, align 4
  br label %5

67:                                               ; preds = %56, %5
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local i32 @v4l2_dbg(i32, i32, i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
