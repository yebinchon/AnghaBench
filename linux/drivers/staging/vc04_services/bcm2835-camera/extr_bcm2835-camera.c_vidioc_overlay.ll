; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vc04_services/bcm2835-camera/extr_bcm2835-camera.c_vidioc_overlay.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vc04_services/bcm2835-camera/extr_bcm2835-camera.c_vidioc_overlay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.bm2835_mmal_dev = type { i32, i32, %struct.TYPE_3__** }
%struct.TYPE_3__ = type { %struct.vchiq_mmal_port*, %struct.vchiq_mmal_port*, i64 }
%struct.vchiq_mmal_port = type { i32 }

@COMP_PREVIEW = common dso_local global i64 0, align 8
@COMP_CAMERA = common dso_local global i64 0, align 8
@CAM_PORT_PREVIEW = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@bcm2835_v4l2_debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"connecting %p to %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i32)* @vidioc_overlay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_overlay(%struct.file* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.bm2835_mmal_dev*, align 8
  %10 = alloca %struct.vchiq_mmal_port*, align 8
  %11 = alloca %struct.vchiq_mmal_port*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.file*, %struct.file** %5, align 8
  %13 = call %struct.bm2835_mmal_dev* @video_drvdata(%struct.file* %12)
  store %struct.bm2835_mmal_dev* %13, %struct.bm2835_mmal_dev** %9, align 8
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %3
  %17 = load %struct.bm2835_mmal_dev*, %struct.bm2835_mmal_dev** %9, align 8
  %18 = getelementptr inbounds %struct.bm2835_mmal_dev, %struct.bm2835_mmal_dev* %17, i32 0, i32 2
  %19 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %18, align 8
  %20 = load i64, i64* @COMP_PREVIEW, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %19, i64 %20
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %39, label %26

26:                                               ; preds = %16, %3
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %40, label %29

29:                                               ; preds = %26
  %30 = load %struct.bm2835_mmal_dev*, %struct.bm2835_mmal_dev** %9, align 8
  %31 = getelementptr inbounds %struct.bm2835_mmal_dev, %struct.bm2835_mmal_dev* %30, i32 0, i32 2
  %32 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %31, align 8
  %33 = load i64, i64* @COMP_PREVIEW, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %32, i64 %33
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %29, %16
  store i32 0, i32* %4, align 4
  br label %157

40:                                               ; preds = %29, %26
  %41 = load %struct.bm2835_mmal_dev*, %struct.bm2835_mmal_dev** %9, align 8
  %42 = getelementptr inbounds %struct.bm2835_mmal_dev, %struct.bm2835_mmal_dev* %41, i32 0, i32 2
  %43 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %42, align 8
  %44 = load i64, i64* @COMP_CAMERA, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %43, i64 %44
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load %struct.vchiq_mmal_port*, %struct.vchiq_mmal_port** %47, align 8
  %49 = load i64, i64* @CAM_PORT_PREVIEW, align 8
  %50 = getelementptr inbounds %struct.vchiq_mmal_port, %struct.vchiq_mmal_port* %48, i64 %49
  store %struct.vchiq_mmal_port* %50, %struct.vchiq_mmal_port** %10, align 8
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %85, label %53

53:                                               ; preds = %40
  %54 = load %struct.bm2835_mmal_dev*, %struct.bm2835_mmal_dev** %9, align 8
  %55 = getelementptr inbounds %struct.bm2835_mmal_dev, %struct.bm2835_mmal_dev* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.vchiq_mmal_port*, %struct.vchiq_mmal_port** %10, align 8
  %58 = call i32 @vchiq_mmal_port_disable(i32 %56, %struct.vchiq_mmal_port* %57)
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %67, label %61

61:                                               ; preds = %53
  %62 = load %struct.bm2835_mmal_dev*, %struct.bm2835_mmal_dev** %9, align 8
  %63 = getelementptr inbounds %struct.bm2835_mmal_dev, %struct.bm2835_mmal_dev* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.vchiq_mmal_port*, %struct.vchiq_mmal_port** %10, align 8
  %66 = call i32 @vchiq_mmal_port_connect_tunnel(i32 %64, %struct.vchiq_mmal_port* %65, %struct.vchiq_mmal_port* null)
  store i32 %66, i32* %8, align 4
  br label %67

67:                                               ; preds = %61, %53
  %68 = load i32, i32* %8, align 4
  %69 = icmp sge i32 %68, 0
  br i1 %69, label %70, label %81

70:                                               ; preds = %67
  %71 = load %struct.bm2835_mmal_dev*, %struct.bm2835_mmal_dev** %9, align 8
  %72 = getelementptr inbounds %struct.bm2835_mmal_dev, %struct.bm2835_mmal_dev* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.bm2835_mmal_dev*, %struct.bm2835_mmal_dev** %9, align 8
  %75 = getelementptr inbounds %struct.bm2835_mmal_dev, %struct.bm2835_mmal_dev* %74, i32 0, i32 2
  %76 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %75, align 8
  %77 = load i64, i64* @COMP_PREVIEW, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %76, i64 %77
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %78, align 8
  %80 = call i32 @vchiq_mmal_component_disable(i32 %73, %struct.TYPE_3__* %79)
  store i32 %80, i32* %8, align 4
  br label %81

81:                                               ; preds = %70, %67
  %82 = load %struct.bm2835_mmal_dev*, %struct.bm2835_mmal_dev** %9, align 8
  %83 = call i32 @disable_camera(%struct.bm2835_mmal_dev* %82)
  %84 = load i32, i32* %8, align 4
  store i32 %84, i32* %4, align 4
  br label %157

85:                                               ; preds = %40
  %86 = load %struct.bm2835_mmal_dev*, %struct.bm2835_mmal_dev** %9, align 8
  %87 = getelementptr inbounds %struct.bm2835_mmal_dev, %struct.bm2835_mmal_dev* %86, i32 0, i32 2
  %88 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %87, align 8
  %89 = load i64, i64* @COMP_PREVIEW, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %88, i64 %89
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = load %struct.vchiq_mmal_port*, %struct.vchiq_mmal_port** %92, align 8
  %94 = getelementptr inbounds %struct.vchiq_mmal_port, %struct.vchiq_mmal_port* %93, i64 0
  store %struct.vchiq_mmal_port* %94, %struct.vchiq_mmal_port** %11, align 8
  %95 = load %struct.bm2835_mmal_dev*, %struct.bm2835_mmal_dev** %9, align 8
  %96 = getelementptr inbounds %struct.bm2835_mmal_dev, %struct.bm2835_mmal_dev* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.vchiq_mmal_port*, %struct.vchiq_mmal_port** %10, align 8
  %99 = call i32 @vchiq_mmal_port_set_format(i32 %97, %struct.vchiq_mmal_port* %98)
  store i32 %99, i32* %8, align 4
  %100 = load i32, i32* %8, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %85
  %103 = load i32, i32* %8, align 4
  store i32 %103, i32* %4, align 4
  br label %157

104:                                              ; preds = %85
  %105 = load %struct.bm2835_mmal_dev*, %struct.bm2835_mmal_dev** %9, align 8
  %106 = load %struct.vchiq_mmal_port*, %struct.vchiq_mmal_port** %11, align 8
  %107 = call i32 @set_overlay_params(%struct.bm2835_mmal_dev* %105, %struct.vchiq_mmal_port* %106)
  store i32 %107, i32* %8, align 4
  %108 = load i32, i32* %8, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %104
  %111 = load i32, i32* %8, align 4
  store i32 %111, i32* %4, align 4
  br label %157

112:                                              ; preds = %104
  %113 = load %struct.bm2835_mmal_dev*, %struct.bm2835_mmal_dev** %9, align 8
  %114 = call i64 @enable_camera(%struct.bm2835_mmal_dev* %113)
  %115 = icmp slt i64 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %112
  %117 = load i32, i32* @EINVAL, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %4, align 4
  br label %157

119:                                              ; preds = %112
  %120 = load %struct.bm2835_mmal_dev*, %struct.bm2835_mmal_dev** %9, align 8
  %121 = getelementptr inbounds %struct.bm2835_mmal_dev, %struct.bm2835_mmal_dev* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.bm2835_mmal_dev*, %struct.bm2835_mmal_dev** %9, align 8
  %124 = getelementptr inbounds %struct.bm2835_mmal_dev, %struct.bm2835_mmal_dev* %123, i32 0, i32 2
  %125 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %124, align 8
  %126 = load i64, i64* @COMP_PREVIEW, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %125, i64 %126
  %128 = load %struct.TYPE_3__*, %struct.TYPE_3__** %127, align 8
  %129 = call i32 @vchiq_mmal_component_enable(i32 %122, %struct.TYPE_3__* %128)
  store i32 %129, i32* %8, align 4
  %130 = load i32, i32* %8, align 4
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %119
  %133 = load i32, i32* %8, align 4
  store i32 %133, i32* %4, align 4
  br label %157

134:                                              ; preds = %119
  %135 = load i32, i32* @bcm2835_v4l2_debug, align 4
  %136 = load %struct.bm2835_mmal_dev*, %struct.bm2835_mmal_dev** %9, align 8
  %137 = getelementptr inbounds %struct.bm2835_mmal_dev, %struct.bm2835_mmal_dev* %136, i32 0, i32 1
  %138 = load %struct.vchiq_mmal_port*, %struct.vchiq_mmal_port** %10, align 8
  %139 = load %struct.vchiq_mmal_port*, %struct.vchiq_mmal_port** %11, align 8
  %140 = call i32 @v4l2_dbg(i32 1, i32 %135, i32* %137, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), %struct.vchiq_mmal_port* %138, %struct.vchiq_mmal_port* %139)
  %141 = load %struct.bm2835_mmal_dev*, %struct.bm2835_mmal_dev** %9, align 8
  %142 = getelementptr inbounds %struct.bm2835_mmal_dev, %struct.bm2835_mmal_dev* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.vchiq_mmal_port*, %struct.vchiq_mmal_port** %10, align 8
  %145 = load %struct.vchiq_mmal_port*, %struct.vchiq_mmal_port** %11, align 8
  %146 = call i32 @vchiq_mmal_port_connect_tunnel(i32 %143, %struct.vchiq_mmal_port* %144, %struct.vchiq_mmal_port* %145)
  store i32 %146, i32* %8, align 4
  %147 = load i32, i32* %8, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %134
  %150 = load i32, i32* %8, align 4
  store i32 %150, i32* %4, align 4
  br label %157

151:                                              ; preds = %134
  %152 = load %struct.bm2835_mmal_dev*, %struct.bm2835_mmal_dev** %9, align 8
  %153 = getelementptr inbounds %struct.bm2835_mmal_dev, %struct.bm2835_mmal_dev* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = load %struct.vchiq_mmal_port*, %struct.vchiq_mmal_port** %10, align 8
  %156 = call i32 @vchiq_mmal_port_enable(i32 %154, %struct.vchiq_mmal_port* %155, i32* null)
  store i32 %156, i32* %4, align 4
  br label %157

157:                                              ; preds = %151, %149, %132, %116, %110, %102, %81, %39
  %158 = load i32, i32* %4, align 4
  ret i32 %158
}

declare dso_local %struct.bm2835_mmal_dev* @video_drvdata(%struct.file*) #1

declare dso_local i32 @vchiq_mmal_port_disable(i32, %struct.vchiq_mmal_port*) #1

declare dso_local i32 @vchiq_mmal_port_connect_tunnel(i32, %struct.vchiq_mmal_port*, %struct.vchiq_mmal_port*) #1

declare dso_local i32 @vchiq_mmal_component_disable(i32, %struct.TYPE_3__*) #1

declare dso_local i32 @disable_camera(%struct.bm2835_mmal_dev*) #1

declare dso_local i32 @vchiq_mmal_port_set_format(i32, %struct.vchiq_mmal_port*) #1

declare dso_local i32 @set_overlay_params(%struct.bm2835_mmal_dev*, %struct.vchiq_mmal_port*) #1

declare dso_local i64 @enable_camera(%struct.bm2835_mmal_dev*) #1

declare dso_local i32 @vchiq_mmal_component_enable(i32, %struct.TYPE_3__*) #1

declare dso_local i32 @v4l2_dbg(i32, i32, i32*, i8*, %struct.vchiq_mmal_port*, %struct.vchiq_mmal_port*) #1

declare dso_local i32 @vchiq_mmal_port_enable(i32, %struct.vchiq_mmal_port*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
