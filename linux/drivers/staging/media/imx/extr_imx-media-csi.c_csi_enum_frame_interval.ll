; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-csi.c_csi_enum_frame_interval.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-csi.c_csi_enum_frame_interval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_pad_config = type { i32 }
%struct.v4l2_subdev_frame_interval_enum = type { i64, i32, i32, i32, %struct.v4l2_fract, i32 }
%struct.v4l2_fract = type { i32 }
%struct.csi_priv = type { i32, %struct.v4l2_fract* }
%struct.v4l2_rect = type { i32, i32 }

@CSI_NUM_PADS = common dso_local global i64 0, align 8
@CSI_SRC_PAD_IDMAC = common dso_local global i64 0, align 8
@csi_skip = common dso_local global i32* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@CSI_SINK_PAD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_frame_interval_enum*)* @csi_enum_frame_interval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @csi_enum_frame_interval(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_frame_interval_enum* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %7 = alloca %struct.v4l2_subdev_frame_interval_enum*, align 8
  %8 = alloca %struct.csi_priv*, align 8
  %9 = alloca %struct.v4l2_fract*, align 8
  %10 = alloca %struct.v4l2_rect*, align 8
  %11 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %5, align 8
  store %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_pad_config** %6, align 8
  store %struct.v4l2_subdev_frame_interval_enum* %2, %struct.v4l2_subdev_frame_interval_enum** %7, align 8
  %12 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %13 = call %struct.csi_priv* @v4l2_get_subdevdata(%struct.v4l2_subdev* %12)
  store %struct.csi_priv* %13, %struct.csi_priv** %8, align 8
  store i32 0, i32* %11, align 4
  %14 = load %struct.v4l2_subdev_frame_interval_enum*, %struct.v4l2_subdev_frame_interval_enum** %7, align 8
  %15 = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, %struct.v4l2_subdev_frame_interval_enum* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @CSI_NUM_PADS, align 8
  %18 = icmp sge i64 %16, %17
  br i1 %18, label %35, label %19

19:                                               ; preds = %3
  %20 = load %struct.v4l2_subdev_frame_interval_enum*, %struct.v4l2_subdev_frame_interval_enum** %7, align 8
  %21 = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, %struct.v4l2_subdev_frame_interval_enum* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.v4l2_subdev_frame_interval_enum*, %struct.v4l2_subdev_frame_interval_enum** %7, align 8
  %24 = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, %struct.v4l2_subdev_frame_interval_enum* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @CSI_SRC_PAD_IDMAC, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %19
  br label %32

29:                                               ; preds = %19
  %30 = load i32*, i32** @csi_skip, align 8
  %31 = call i32 @ARRAY_SIZE(i32* %30)
  br label %32

32:                                               ; preds = %29, %28
  %33 = phi i32 [ 1, %28 ], [ %31, %29 ]
  %34 = icmp sge i32 %22, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %32, %3
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %116

38:                                               ; preds = %32
  %39 = load %struct.csi_priv*, %struct.csi_priv** %8, align 8
  %40 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %39, i32 0, i32 0
  %41 = call i32 @mutex_lock(i32* %40)
  %42 = load %struct.csi_priv*, %struct.csi_priv** %8, align 8
  %43 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %42, i32 0, i32 1
  %44 = load %struct.v4l2_fract*, %struct.v4l2_fract** %43, align 8
  %45 = load i64, i64* @CSI_SINK_PAD, align 8
  %46 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %44, i64 %45
  store %struct.v4l2_fract* %46, %struct.v4l2_fract** %9, align 8
  %47 = load %struct.csi_priv*, %struct.csi_priv** %8, align 8
  %48 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %6, align 8
  %49 = load %struct.v4l2_subdev_frame_interval_enum*, %struct.v4l2_subdev_frame_interval_enum** %7, align 8
  %50 = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, %struct.v4l2_subdev_frame_interval_enum* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 8
  %52 = call %struct.v4l2_rect* @__csi_get_crop(%struct.csi_priv* %47, %struct.v4l2_subdev_pad_config* %48, i32 %51)
  store %struct.v4l2_rect* %52, %struct.v4l2_rect** %10, align 8
  %53 = load %struct.v4l2_subdev_frame_interval_enum*, %struct.v4l2_subdev_frame_interval_enum** %7, align 8
  %54 = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, %struct.v4l2_subdev_frame_interval_enum* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.v4l2_rect*, %struct.v4l2_rect** %10, align 8
  %57 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %55, %58
  br i1 %59, label %60, label %69

60:                                               ; preds = %38
  %61 = load %struct.v4l2_subdev_frame_interval_enum*, %struct.v4l2_subdev_frame_interval_enum** %7, align 8
  %62 = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, %struct.v4l2_subdev_frame_interval_enum* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.v4l2_rect*, %struct.v4l2_rect** %10, align 8
  %65 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = sdiv i32 %66, 2
  %68 = icmp ne i32 %63, %67
  br i1 %68, label %86, label %69

69:                                               ; preds = %60, %38
  %70 = load %struct.v4l2_subdev_frame_interval_enum*, %struct.v4l2_subdev_frame_interval_enum** %7, align 8
  %71 = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, %struct.v4l2_subdev_frame_interval_enum* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.v4l2_rect*, %struct.v4l2_rect** %10, align 8
  %74 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %72, %75
  br i1 %76, label %77, label %89

77:                                               ; preds = %69
  %78 = load %struct.v4l2_subdev_frame_interval_enum*, %struct.v4l2_subdev_frame_interval_enum** %7, align 8
  %79 = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, %struct.v4l2_subdev_frame_interval_enum* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.v4l2_rect*, %struct.v4l2_rect** %10, align 8
  %82 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = sdiv i32 %83, 2
  %85 = icmp ne i32 %80, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %77, %60
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %11, align 4
  br label %111

89:                                               ; preds = %77, %69
  %90 = load %struct.v4l2_subdev_frame_interval_enum*, %struct.v4l2_subdev_frame_interval_enum** %7, align 8
  %91 = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, %struct.v4l2_subdev_frame_interval_enum* %90, i32 0, i32 4
  %92 = load %struct.v4l2_fract*, %struct.v4l2_fract** %9, align 8
  %93 = bitcast %struct.v4l2_fract* %91 to i8*
  %94 = bitcast %struct.v4l2_fract* %92 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %93, i8* align 4 %94, i64 4, i1 false)
  %95 = load %struct.v4l2_subdev_frame_interval_enum*, %struct.v4l2_subdev_frame_interval_enum** %7, align 8
  %96 = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, %struct.v4l2_subdev_frame_interval_enum* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @CSI_SRC_PAD_IDMAC, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %110

100:                                              ; preds = %89
  %101 = load i32*, i32** @csi_skip, align 8
  %102 = load %struct.v4l2_subdev_frame_interval_enum*, %struct.v4l2_subdev_frame_interval_enum** %7, align 8
  %103 = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, %struct.v4l2_subdev_frame_interval_enum* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %101, i64 %105
  %107 = load %struct.v4l2_subdev_frame_interval_enum*, %struct.v4l2_subdev_frame_interval_enum** %7, align 8
  %108 = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, %struct.v4l2_subdev_frame_interval_enum* %107, i32 0, i32 4
  %109 = call i32 @csi_apply_skip_interval(i32* %106, %struct.v4l2_fract* %108)
  br label %110

110:                                              ; preds = %100, %89
  br label %111

111:                                              ; preds = %110, %86
  %112 = load %struct.csi_priv*, %struct.csi_priv** %8, align 8
  %113 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %112, i32 0, i32 0
  %114 = call i32 @mutex_unlock(i32* %113)
  %115 = load i32, i32* %11, align 4
  store i32 %115, i32* %4, align 4
  br label %116

116:                                              ; preds = %111, %35
  %117 = load i32, i32* %4, align 4
  ret i32 %117
}

declare dso_local %struct.csi_priv* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.v4l2_rect* @__csi_get_crop(%struct.csi_priv*, %struct.v4l2_subdev_pad_config*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @csi_apply_skip_interval(i32*, %struct.v4l2_fract*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
