; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vc04_services/bcm2835-camera/extr_controls.c_ctrl_set_video_encode_profile_level.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vc04_services/bcm2835-camera/extr_controls.c_ctrl_set_video_encode_profile_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bm2835_mmal_dev = type { %struct.TYPE_4__**, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.v4l2_ctrl = type { i64, i32 }
%struct.bm2835_mmal_v4l2_ctrl = type { i32 }
%struct.mmal_parameter_video_profile = type { i32, i32 }

@V4L2_CID_MPEG_VIDEO_H264_PROFILE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_VIDEO_H264_LEVEL = common dso_local global i64 0, align 8
@MMAL_VIDEO_PROFILE_H264_BASELINE = common dso_local global i32 0, align 4
@MMAL_VIDEO_PROFILE_H264_CONSTRAINED_BASELINE = common dso_local global i32 0, align 4
@MMAL_VIDEO_PROFILE_H264_MAIN = common dso_local global i32 0, align 4
@MMAL_VIDEO_PROFILE_H264_HIGH = common dso_local global i32 0, align 4
@MMAL_VIDEO_LEVEL_H264_1 = common dso_local global i32 0, align 4
@MMAL_VIDEO_LEVEL_H264_1b = common dso_local global i32 0, align 4
@MMAL_VIDEO_LEVEL_H264_11 = common dso_local global i32 0, align 4
@MMAL_VIDEO_LEVEL_H264_12 = common dso_local global i32 0, align 4
@MMAL_VIDEO_LEVEL_H264_13 = common dso_local global i32 0, align 4
@MMAL_VIDEO_LEVEL_H264_2 = common dso_local global i32 0, align 4
@MMAL_VIDEO_LEVEL_H264_21 = common dso_local global i32 0, align 4
@MMAL_VIDEO_LEVEL_H264_22 = common dso_local global i32 0, align 4
@MMAL_VIDEO_LEVEL_H264_3 = common dso_local global i32 0, align 4
@MMAL_VIDEO_LEVEL_H264_31 = common dso_local global i32 0, align 4
@MMAL_VIDEO_LEVEL_H264_32 = common dso_local global i32 0, align 4
@MMAL_VIDEO_LEVEL_H264_4 = common dso_local global i32 0, align 4
@COMP_VIDEO_ENCODE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bm2835_mmal_dev*, %struct.v4l2_ctrl*, %struct.bm2835_mmal_v4l2_ctrl*)* @ctrl_set_video_encode_profile_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctrl_set_video_encode_profile_level(%struct.bm2835_mmal_dev* %0, %struct.v4l2_ctrl* %1, %struct.bm2835_mmal_v4l2_ctrl* %2) #0 {
  %4 = alloca %struct.bm2835_mmal_dev*, align 8
  %5 = alloca %struct.v4l2_ctrl*, align 8
  %6 = alloca %struct.bm2835_mmal_v4l2_ctrl*, align 8
  %7 = alloca %struct.mmal_parameter_video_profile, align 4
  %8 = alloca i32, align 4
  store %struct.bm2835_mmal_dev* %0, %struct.bm2835_mmal_dev** %4, align 8
  store %struct.v4l2_ctrl* %1, %struct.v4l2_ctrl** %5, align 8
  store %struct.bm2835_mmal_v4l2_ctrl* %2, %struct.bm2835_mmal_v4l2_ctrl** %6, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %5, align 8
  %10 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @V4L2_CID_MPEG_VIDEO_H264_PROFILE, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %29

14:                                               ; preds = %3
  %15 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %5, align 8
  %16 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  switch i32 %17, label %25 [
    i32 131, label %18
    i32 130, label %18
    i32 128, label %18
    i32 129, label %18
  ]

18:                                               ; preds = %14, %14, %14, %14
  %19 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %5, align 8
  %20 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.bm2835_mmal_dev*, %struct.bm2835_mmal_dev** %4, align 8
  %23 = getelementptr inbounds %struct.bm2835_mmal_dev, %struct.bm2835_mmal_dev* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  store i32 %21, i32* %24, align 4
  br label %28

25:                                               ; preds = %14
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %8, align 4
  br label %28

28:                                               ; preds = %25, %18
  br label %51

29:                                               ; preds = %3
  %30 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %5, align 8
  %31 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @V4L2_CID_MPEG_VIDEO_H264_LEVEL, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %50

35:                                               ; preds = %29
  %36 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %5, align 8
  %37 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  switch i32 %38, label %46 [
    i32 142, label %39
    i32 143, label %39
    i32 141, label %39
    i32 140, label %39
    i32 139, label %39
    i32 138, label %39
    i32 137, label %39
    i32 136, label %39
    i32 135, label %39
    i32 134, label %39
    i32 133, label %39
    i32 132, label %39
  ]

39:                                               ; preds = %35, %35, %35, %35, %35, %35, %35, %35, %35, %35, %35, %35
  %40 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %5, align 8
  %41 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.bm2835_mmal_dev*, %struct.bm2835_mmal_dev** %4, align 8
  %44 = getelementptr inbounds %struct.bm2835_mmal_dev, %struct.bm2835_mmal_dev* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  store i32 %42, i32* %45, align 4
  br label %49

46:                                               ; preds = %35
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %8, align 4
  br label %49

49:                                               ; preds = %46, %39
  br label %50

50:                                               ; preds = %49, %29
  br label %51

51:                                               ; preds = %50, %28
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %131, label %54

54:                                               ; preds = %51
  %55 = load %struct.bm2835_mmal_dev*, %struct.bm2835_mmal_dev** %4, align 8
  %56 = getelementptr inbounds %struct.bm2835_mmal_dev, %struct.bm2835_mmal_dev* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  switch i32 %58, label %71 [
    i32 131, label %59
    i32 130, label %62
    i32 128, label %65
    i32 129, label %68
  ]

59:                                               ; preds = %54
  %60 = load i32, i32* @MMAL_VIDEO_PROFILE_H264_BASELINE, align 4
  %61 = getelementptr inbounds %struct.mmal_parameter_video_profile, %struct.mmal_parameter_video_profile* %7, i32 0, i32 1
  store i32 %60, i32* %61, align 4
  br label %72

62:                                               ; preds = %54
  %63 = load i32, i32* @MMAL_VIDEO_PROFILE_H264_CONSTRAINED_BASELINE, align 4
  %64 = getelementptr inbounds %struct.mmal_parameter_video_profile, %struct.mmal_parameter_video_profile* %7, i32 0, i32 1
  store i32 %63, i32* %64, align 4
  br label %72

65:                                               ; preds = %54
  %66 = load i32, i32* @MMAL_VIDEO_PROFILE_H264_MAIN, align 4
  %67 = getelementptr inbounds %struct.mmal_parameter_video_profile, %struct.mmal_parameter_video_profile* %7, i32 0, i32 1
  store i32 %66, i32* %67, align 4
  br label %72

68:                                               ; preds = %54
  %69 = load i32, i32* @MMAL_VIDEO_PROFILE_H264_HIGH, align 4
  %70 = getelementptr inbounds %struct.mmal_parameter_video_profile, %struct.mmal_parameter_video_profile* %7, i32 0, i32 1
  store i32 %69, i32* %70, align 4
  br label %72

71:                                               ; preds = %54
  br label %72

72:                                               ; preds = %71, %68, %65, %62, %59
  %73 = load %struct.bm2835_mmal_dev*, %struct.bm2835_mmal_dev** %4, align 8
  %74 = getelementptr inbounds %struct.bm2835_mmal_dev, %struct.bm2835_mmal_dev* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  switch i32 %76, label %113 [
    i32 142, label %77
    i32 143, label %80
    i32 141, label %83
    i32 140, label %86
    i32 139, label %89
    i32 138, label %92
    i32 137, label %95
    i32 136, label %98
    i32 135, label %101
    i32 134, label %104
    i32 133, label %107
    i32 132, label %110
  ]

77:                                               ; preds = %72
  %78 = load i32, i32* @MMAL_VIDEO_LEVEL_H264_1, align 4
  %79 = getelementptr inbounds %struct.mmal_parameter_video_profile, %struct.mmal_parameter_video_profile* %7, i32 0, i32 0
  store i32 %78, i32* %79, align 4
  br label %114

80:                                               ; preds = %72
  %81 = load i32, i32* @MMAL_VIDEO_LEVEL_H264_1b, align 4
  %82 = getelementptr inbounds %struct.mmal_parameter_video_profile, %struct.mmal_parameter_video_profile* %7, i32 0, i32 0
  store i32 %81, i32* %82, align 4
  br label %114

83:                                               ; preds = %72
  %84 = load i32, i32* @MMAL_VIDEO_LEVEL_H264_11, align 4
  %85 = getelementptr inbounds %struct.mmal_parameter_video_profile, %struct.mmal_parameter_video_profile* %7, i32 0, i32 0
  store i32 %84, i32* %85, align 4
  br label %114

86:                                               ; preds = %72
  %87 = load i32, i32* @MMAL_VIDEO_LEVEL_H264_12, align 4
  %88 = getelementptr inbounds %struct.mmal_parameter_video_profile, %struct.mmal_parameter_video_profile* %7, i32 0, i32 0
  store i32 %87, i32* %88, align 4
  br label %114

89:                                               ; preds = %72
  %90 = load i32, i32* @MMAL_VIDEO_LEVEL_H264_13, align 4
  %91 = getelementptr inbounds %struct.mmal_parameter_video_profile, %struct.mmal_parameter_video_profile* %7, i32 0, i32 0
  store i32 %90, i32* %91, align 4
  br label %114

92:                                               ; preds = %72
  %93 = load i32, i32* @MMAL_VIDEO_LEVEL_H264_2, align 4
  %94 = getelementptr inbounds %struct.mmal_parameter_video_profile, %struct.mmal_parameter_video_profile* %7, i32 0, i32 0
  store i32 %93, i32* %94, align 4
  br label %114

95:                                               ; preds = %72
  %96 = load i32, i32* @MMAL_VIDEO_LEVEL_H264_21, align 4
  %97 = getelementptr inbounds %struct.mmal_parameter_video_profile, %struct.mmal_parameter_video_profile* %7, i32 0, i32 0
  store i32 %96, i32* %97, align 4
  br label %114

98:                                               ; preds = %72
  %99 = load i32, i32* @MMAL_VIDEO_LEVEL_H264_22, align 4
  %100 = getelementptr inbounds %struct.mmal_parameter_video_profile, %struct.mmal_parameter_video_profile* %7, i32 0, i32 0
  store i32 %99, i32* %100, align 4
  br label %114

101:                                              ; preds = %72
  %102 = load i32, i32* @MMAL_VIDEO_LEVEL_H264_3, align 4
  %103 = getelementptr inbounds %struct.mmal_parameter_video_profile, %struct.mmal_parameter_video_profile* %7, i32 0, i32 0
  store i32 %102, i32* %103, align 4
  br label %114

104:                                              ; preds = %72
  %105 = load i32, i32* @MMAL_VIDEO_LEVEL_H264_31, align 4
  %106 = getelementptr inbounds %struct.mmal_parameter_video_profile, %struct.mmal_parameter_video_profile* %7, i32 0, i32 0
  store i32 %105, i32* %106, align 4
  br label %114

107:                                              ; preds = %72
  %108 = load i32, i32* @MMAL_VIDEO_LEVEL_H264_32, align 4
  %109 = getelementptr inbounds %struct.mmal_parameter_video_profile, %struct.mmal_parameter_video_profile* %7, i32 0, i32 0
  store i32 %108, i32* %109, align 4
  br label %114

110:                                              ; preds = %72
  %111 = load i32, i32* @MMAL_VIDEO_LEVEL_H264_4, align 4
  %112 = getelementptr inbounds %struct.mmal_parameter_video_profile, %struct.mmal_parameter_video_profile* %7, i32 0, i32 0
  store i32 %111, i32* %112, align 4
  br label %114

113:                                              ; preds = %72
  br label %114

114:                                              ; preds = %113, %110, %107, %104, %101, %98, %95, %92, %89, %86, %83, %80, %77
  %115 = load %struct.bm2835_mmal_dev*, %struct.bm2835_mmal_dev** %4, align 8
  %116 = getelementptr inbounds %struct.bm2835_mmal_dev, %struct.bm2835_mmal_dev* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.bm2835_mmal_dev*, %struct.bm2835_mmal_dev** %4, align 8
  %119 = getelementptr inbounds %struct.bm2835_mmal_dev, %struct.bm2835_mmal_dev* %118, i32 0, i32 0
  %120 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %119, align 8
  %121 = load i64, i64* @COMP_VIDEO_ENCODE, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %120, i64 %121
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 0
  %127 = load %struct.bm2835_mmal_v4l2_ctrl*, %struct.bm2835_mmal_v4l2_ctrl** %6, align 8
  %128 = getelementptr inbounds %struct.bm2835_mmal_v4l2_ctrl, %struct.bm2835_mmal_v4l2_ctrl* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @vchiq_mmal_port_parameter_set(i32 %117, i32* %126, i32 %129, %struct.mmal_parameter_video_profile* %7, i32 8)
  store i32 %130, i32* %8, align 4
  br label %131

131:                                              ; preds = %114, %51
  %132 = load i32, i32* %8, align 4
  ret i32 %132
}

declare dso_local i32 @vchiq_mmal_port_parameter_set(i32, i32*, i32, %struct.mmal_parameter_video_profile*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
