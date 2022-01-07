; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vc04_services/bcm2835-camera/extr_bcm2835-camera.c_bcm2835_cleanup_instance.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vc04_services/bcm2835-camera/extr_bcm2835-camera.c_bcm2835_cleanup_instance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bm2835_mmal_dev = type { i32, i32, i64*, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i32 }

@.str = private unnamed_addr constant [18 x i8] c"unregistering %s\0A\00", align 1
@bcm2835_v4l2_debug = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"mmal_exit - disconnect tunnel\0A\00", align 1
@COMP_CAMERA = common dso_local global i64 0, align 8
@COMP_VIDEO_ENCODE = common dso_local global i64 0, align 8
@COMP_IMAGE_ENCODE = common dso_local global i64 0, align 8
@COMP_PREVIEW = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bm2835_mmal_dev*)* @bcm2835_cleanup_instance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm2835_cleanup_instance(%struct.bm2835_mmal_dev* %0) #0 {
  %2 = alloca %struct.bm2835_mmal_dev*, align 8
  store %struct.bm2835_mmal_dev* %0, %struct.bm2835_mmal_dev** %2, align 8
  %3 = load %struct.bm2835_mmal_dev*, %struct.bm2835_mmal_dev** %2, align 8
  %4 = icmp ne %struct.bm2835_mmal_dev* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %101

6:                                                ; preds = %1
  %7 = load %struct.bm2835_mmal_dev*, %struct.bm2835_mmal_dev** %2, align 8
  %8 = getelementptr inbounds %struct.bm2835_mmal_dev, %struct.bm2835_mmal_dev* %7, i32 0, i32 0
  %9 = load %struct.bm2835_mmal_dev*, %struct.bm2835_mmal_dev** %2, align 8
  %10 = getelementptr inbounds %struct.bm2835_mmal_dev, %struct.bm2835_mmal_dev* %9, i32 0, i32 5
  %11 = call i32 @video_device_node_name(i32* %10)
  %12 = call i32 @v4l2_info(i32* %8, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load %struct.bm2835_mmal_dev*, %struct.bm2835_mmal_dev** %2, align 8
  %14 = getelementptr inbounds %struct.bm2835_mmal_dev, %struct.bm2835_mmal_dev* %13, i32 0, i32 5
  %15 = call i32 @video_unregister_device(i32* %14)
  %16 = load %struct.bm2835_mmal_dev*, %struct.bm2835_mmal_dev** %2, align 8
  %17 = getelementptr inbounds %struct.bm2835_mmal_dev, %struct.bm2835_mmal_dev* %16, i32 0, i32 4
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %42

21:                                               ; preds = %6
  %22 = load i32, i32* @bcm2835_v4l2_debug, align 4
  %23 = load %struct.bm2835_mmal_dev*, %struct.bm2835_mmal_dev** %2, align 8
  %24 = getelementptr inbounds %struct.bm2835_mmal_dev, %struct.bm2835_mmal_dev* %23, i32 0, i32 0
  %25 = call i32 @v4l2_dbg(i32 1, i32 %22, i32* %24, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %26 = load %struct.bm2835_mmal_dev*, %struct.bm2835_mmal_dev** %2, align 8
  %27 = getelementptr inbounds %struct.bm2835_mmal_dev, %struct.bm2835_mmal_dev* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.bm2835_mmal_dev*, %struct.bm2835_mmal_dev** %2, align 8
  %30 = getelementptr inbounds %struct.bm2835_mmal_dev, %struct.bm2835_mmal_dev* %29, i32 0, i32 4
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @vchiq_mmal_port_connect_tunnel(i32 %28, i32 %32, i32* null)
  %34 = load %struct.bm2835_mmal_dev*, %struct.bm2835_mmal_dev** %2, align 8
  %35 = getelementptr inbounds %struct.bm2835_mmal_dev, %struct.bm2835_mmal_dev* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.bm2835_mmal_dev*, %struct.bm2835_mmal_dev** %2, align 8
  %38 = getelementptr inbounds %struct.bm2835_mmal_dev, %struct.bm2835_mmal_dev* %37, i32 0, i32 4
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @vchiq_mmal_component_disable(i32 %36, i64 %40)
  br label %42

42:                                               ; preds = %21, %6
  %43 = load %struct.bm2835_mmal_dev*, %struct.bm2835_mmal_dev** %2, align 8
  %44 = getelementptr inbounds %struct.bm2835_mmal_dev, %struct.bm2835_mmal_dev* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.bm2835_mmal_dev*, %struct.bm2835_mmal_dev** %2, align 8
  %47 = getelementptr inbounds %struct.bm2835_mmal_dev, %struct.bm2835_mmal_dev* %46, i32 0, i32 2
  %48 = load i64*, i64** %47, align 8
  %49 = load i64, i64* @COMP_CAMERA, align 8
  %50 = getelementptr inbounds i64, i64* %48, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @vchiq_mmal_component_disable(i32 %45, i64 %51)
  %53 = load %struct.bm2835_mmal_dev*, %struct.bm2835_mmal_dev** %2, align 8
  %54 = getelementptr inbounds %struct.bm2835_mmal_dev, %struct.bm2835_mmal_dev* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.bm2835_mmal_dev*, %struct.bm2835_mmal_dev** %2, align 8
  %57 = getelementptr inbounds %struct.bm2835_mmal_dev, %struct.bm2835_mmal_dev* %56, i32 0, i32 2
  %58 = load i64*, i64** %57, align 8
  %59 = load i64, i64* @COMP_VIDEO_ENCODE, align 8
  %60 = getelementptr inbounds i64, i64* %58, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @vchiq_mmal_component_finalise(i32 %55, i64 %61)
  %63 = load %struct.bm2835_mmal_dev*, %struct.bm2835_mmal_dev** %2, align 8
  %64 = getelementptr inbounds %struct.bm2835_mmal_dev, %struct.bm2835_mmal_dev* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.bm2835_mmal_dev*, %struct.bm2835_mmal_dev** %2, align 8
  %67 = getelementptr inbounds %struct.bm2835_mmal_dev, %struct.bm2835_mmal_dev* %66, i32 0, i32 2
  %68 = load i64*, i64** %67, align 8
  %69 = load i64, i64* @COMP_IMAGE_ENCODE, align 8
  %70 = getelementptr inbounds i64, i64* %68, i64 %69
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @vchiq_mmal_component_finalise(i32 %65, i64 %71)
  %73 = load %struct.bm2835_mmal_dev*, %struct.bm2835_mmal_dev** %2, align 8
  %74 = getelementptr inbounds %struct.bm2835_mmal_dev, %struct.bm2835_mmal_dev* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.bm2835_mmal_dev*, %struct.bm2835_mmal_dev** %2, align 8
  %77 = getelementptr inbounds %struct.bm2835_mmal_dev, %struct.bm2835_mmal_dev* %76, i32 0, i32 2
  %78 = load i64*, i64** %77, align 8
  %79 = load i64, i64* @COMP_PREVIEW, align 8
  %80 = getelementptr inbounds i64, i64* %78, i64 %79
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @vchiq_mmal_component_finalise(i32 %75, i64 %81)
  %83 = load %struct.bm2835_mmal_dev*, %struct.bm2835_mmal_dev** %2, align 8
  %84 = getelementptr inbounds %struct.bm2835_mmal_dev, %struct.bm2835_mmal_dev* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.bm2835_mmal_dev*, %struct.bm2835_mmal_dev** %2, align 8
  %87 = getelementptr inbounds %struct.bm2835_mmal_dev, %struct.bm2835_mmal_dev* %86, i32 0, i32 2
  %88 = load i64*, i64** %87, align 8
  %89 = load i64, i64* @COMP_CAMERA, align 8
  %90 = getelementptr inbounds i64, i64* %88, i64 %89
  %91 = load i64, i64* %90, align 8
  %92 = call i32 @vchiq_mmal_component_finalise(i32 %85, i64 %91)
  %93 = load %struct.bm2835_mmal_dev*, %struct.bm2835_mmal_dev** %2, align 8
  %94 = getelementptr inbounds %struct.bm2835_mmal_dev, %struct.bm2835_mmal_dev* %93, i32 0, i32 1
  %95 = call i32 @v4l2_ctrl_handler_free(i32* %94)
  %96 = load %struct.bm2835_mmal_dev*, %struct.bm2835_mmal_dev** %2, align 8
  %97 = getelementptr inbounds %struct.bm2835_mmal_dev, %struct.bm2835_mmal_dev* %96, i32 0, i32 0
  %98 = call i32 @v4l2_device_unregister(i32* %97)
  %99 = load %struct.bm2835_mmal_dev*, %struct.bm2835_mmal_dev** %2, align 8
  %100 = call i32 @kfree(%struct.bm2835_mmal_dev* %99)
  br label %101

101:                                              ; preds = %42, %5
  ret void
}

declare dso_local i32 @v4l2_info(i32*, i8*, i32) #1

declare dso_local i32 @video_device_node_name(i32*) #1

declare dso_local i32 @video_unregister_device(i32*) #1

declare dso_local i32 @v4l2_dbg(i32, i32, i32*, i8*) #1

declare dso_local i32 @vchiq_mmal_port_connect_tunnel(i32, i32, i32*) #1

declare dso_local i32 @vchiq_mmal_component_disable(i32, i64) #1

declare dso_local i32 @vchiq_mmal_component_finalise(i32, i64) #1

declare dso_local i32 @v4l2_ctrl_handler_free(i32*) #1

declare dso_local i32 @v4l2_device_unregister(i32*) #1

declare dso_local i32 @kfree(%struct.bm2835_mmal_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
