; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-vdic.c_vdic_s_frame_interval.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-vdic.c_vdic_s_frame_interval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_frame_interval = type { i32, %struct.v4l2_fract }
%struct.v4l2_fract = type { i32, i32 }
%struct.vdic_priv = type { i64, i32, %struct.v4l2_fract*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_frame_interval*)* @vdic_s_frame_interval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vdic_s_frame_interval(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_frame_interval* %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca %struct.v4l2_subdev_frame_interval*, align 8
  %5 = alloca %struct.vdic_priv*, align 8
  %6 = alloca %struct.v4l2_fract*, align 8
  %7 = alloca %struct.v4l2_fract*, align 8
  %8 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  store %struct.v4l2_subdev_frame_interval* %1, %struct.v4l2_subdev_frame_interval** %4, align 8
  %9 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %10 = call %struct.vdic_priv* @v4l2_get_subdevdata(%struct.v4l2_subdev* %9)
  store %struct.vdic_priv* %10, %struct.vdic_priv** %5, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.vdic_priv*, %struct.vdic_priv** %5, align 8
  %12 = getelementptr inbounds %struct.vdic_priv, %struct.vdic_priv* %11, i32 0, i32 1
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.vdic_priv*, %struct.vdic_priv** %5, align 8
  %15 = getelementptr inbounds %struct.vdic_priv, %struct.vdic_priv* %14, i32 0, i32 2
  %16 = load %struct.v4l2_fract*, %struct.v4l2_fract** %15, align 8
  %17 = load %struct.vdic_priv*, %struct.vdic_priv** %5, align 8
  %18 = getelementptr inbounds %struct.vdic_priv, %struct.vdic_priv* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %16, i64 %19
  store %struct.v4l2_fract* %20, %struct.v4l2_fract** %6, align 8
  %21 = load %struct.vdic_priv*, %struct.vdic_priv** %5, align 8
  %22 = getelementptr inbounds %struct.vdic_priv, %struct.vdic_priv* %21, i32 0, i32 2
  %23 = load %struct.v4l2_fract*, %struct.v4l2_fract** %22, align 8
  %24 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %23, i64 128
  store %struct.v4l2_fract* %24, %struct.v4l2_fract** %7, align 8
  %25 = load %struct.v4l2_subdev_frame_interval*, %struct.v4l2_subdev_frame_interval** %4, align 8
  %26 = getelementptr inbounds %struct.v4l2_subdev_frame_interval, %struct.v4l2_subdev_frame_interval* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %86 [
    i32 130, label %28
    i32 129, label %28
    i32 128, label %69
  ]

28:                                               ; preds = %2, %2
  %29 = load %struct.v4l2_subdev_frame_interval*, %struct.v4l2_subdev_frame_interval** %4, align 8
  %30 = getelementptr inbounds %struct.v4l2_subdev_frame_interval, %struct.v4l2_subdev_frame_interval* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %28
  %35 = load %struct.v4l2_subdev_frame_interval*, %struct.v4l2_subdev_frame_interval** %4, align 8
  %36 = getelementptr inbounds %struct.v4l2_subdev_frame_interval, %struct.v4l2_subdev_frame_interval* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %53

40:                                               ; preds = %34, %28
  %41 = load %struct.v4l2_subdev_frame_interval*, %struct.v4l2_subdev_frame_interval** %4, align 8
  %42 = getelementptr inbounds %struct.v4l2_subdev_frame_interval, %struct.v4l2_subdev_frame_interval* %41, i32 0, i32 1
  %43 = load %struct.vdic_priv*, %struct.vdic_priv** %5, align 8
  %44 = getelementptr inbounds %struct.vdic_priv, %struct.vdic_priv* %43, i32 0, i32 2
  %45 = load %struct.v4l2_fract*, %struct.v4l2_fract** %44, align 8
  %46 = load %struct.v4l2_subdev_frame_interval*, %struct.v4l2_subdev_frame_interval** %4, align 8
  %47 = getelementptr inbounds %struct.v4l2_subdev_frame_interval, %struct.v4l2_subdev_frame_interval* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %45, i64 %49
  %51 = bitcast %struct.v4l2_fract* %42 to i8*
  %52 = bitcast %struct.v4l2_fract* %50 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %51, i8* align 4 %52, i64 8, i1 false)
  br label %53

53:                                               ; preds = %40, %34
  %54 = load %struct.v4l2_fract*, %struct.v4l2_fract** %7, align 8
  %55 = load %struct.v4l2_subdev_frame_interval*, %struct.v4l2_subdev_frame_interval** %4, align 8
  %56 = getelementptr inbounds %struct.v4l2_subdev_frame_interval, %struct.v4l2_subdev_frame_interval* %55, i32 0, i32 1
  %57 = bitcast %struct.v4l2_fract* %54 to i8*
  %58 = bitcast %struct.v4l2_fract* %56 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %57, i8* align 4 %58, i64 8, i1 false)
  %59 = load %struct.vdic_priv*, %struct.vdic_priv** %5, align 8
  %60 = getelementptr inbounds %struct.vdic_priv, %struct.vdic_priv* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %53
  %64 = load %struct.v4l2_fract*, %struct.v4l2_fract** %7, align 8
  %65 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = mul nsw i32 %66, 2
  store i32 %67, i32* %65, align 4
  br label %68

68:                                               ; preds = %63, %53
  br label %89

69:                                               ; preds = %2
  %70 = load %struct.v4l2_subdev_frame_interval*, %struct.v4l2_subdev_frame_interval** %4, align 8
  %71 = getelementptr inbounds %struct.v4l2_subdev_frame_interval, %struct.v4l2_subdev_frame_interval* %70, i32 0, i32 1
  %72 = load %struct.v4l2_fract*, %struct.v4l2_fract** %6, align 8
  %73 = bitcast %struct.v4l2_fract* %71 to i8*
  %74 = bitcast %struct.v4l2_fract* %72 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %73, i8* align 4 %74, i64 8, i1 false)
  %75 = load %struct.vdic_priv*, %struct.vdic_priv** %5, align 8
  %76 = getelementptr inbounds %struct.vdic_priv, %struct.vdic_priv* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %69
  %80 = load %struct.v4l2_subdev_frame_interval*, %struct.v4l2_subdev_frame_interval** %4, align 8
  %81 = getelementptr inbounds %struct.v4l2_subdev_frame_interval, %struct.v4l2_subdev_frame_interval* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = mul nsw i32 %83, 2
  store i32 %84, i32* %82, align 4
  br label %85

85:                                               ; preds = %79, %69
  br label %89

86:                                               ; preds = %2
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %8, align 4
  br label %102

89:                                               ; preds = %85, %68
  %90 = load %struct.vdic_priv*, %struct.vdic_priv** %5, align 8
  %91 = getelementptr inbounds %struct.vdic_priv, %struct.vdic_priv* %90, i32 0, i32 2
  %92 = load %struct.v4l2_fract*, %struct.v4l2_fract** %91, align 8
  %93 = load %struct.v4l2_subdev_frame_interval*, %struct.v4l2_subdev_frame_interval** %4, align 8
  %94 = getelementptr inbounds %struct.v4l2_subdev_frame_interval, %struct.v4l2_subdev_frame_interval* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %92, i64 %96
  %98 = load %struct.v4l2_subdev_frame_interval*, %struct.v4l2_subdev_frame_interval** %4, align 8
  %99 = getelementptr inbounds %struct.v4l2_subdev_frame_interval, %struct.v4l2_subdev_frame_interval* %98, i32 0, i32 1
  %100 = bitcast %struct.v4l2_fract* %97 to i8*
  %101 = bitcast %struct.v4l2_fract* %99 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %100, i8* align 4 %101, i64 8, i1 false)
  br label %102

102:                                              ; preds = %89, %86
  %103 = load %struct.vdic_priv*, %struct.vdic_priv** %5, align 8
  %104 = getelementptr inbounds %struct.vdic_priv, %struct.vdic_priv* %103, i32 0, i32 1
  %105 = call i32 @mutex_unlock(i32* %104)
  %106 = load i32, i32* %8, align 4
  ret i32 %106
}

declare dso_local %struct.vdic_priv* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
