; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-ic-prpencvf.c_prp_s_frame_interval.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-ic-prpencvf.c_prp_s_frame_interval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_frame_interval = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }
%struct.prp_priv = type { i32, %struct.TYPE_2__ }

@PRPENCVF_NUM_PADS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_frame_interval*)* @prp_s_frame_interval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prp_s_frame_interval(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_frame_interval* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.v4l2_subdev_frame_interval*, align 8
  %6 = alloca %struct.prp_priv*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store %struct.v4l2_subdev_frame_interval* %1, %struct.v4l2_subdev_frame_interval** %5, align 8
  %7 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %8 = call %struct.prp_priv* @sd_to_priv(%struct.v4l2_subdev* %7)
  store %struct.prp_priv* %8, %struct.prp_priv** %6, align 8
  %9 = load %struct.v4l2_subdev_frame_interval*, %struct.v4l2_subdev_frame_interval** %5, align 8
  %10 = getelementptr inbounds %struct.v4l2_subdev_frame_interval, %struct.v4l2_subdev_frame_interval* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @PRPENCVF_NUM_PADS, align 8
  %13 = icmp sge i64 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %50

17:                                               ; preds = %2
  %18 = load %struct.prp_priv*, %struct.prp_priv** %6, align 8
  %19 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %18, i32 0, i32 0
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load %struct.v4l2_subdev_frame_interval*, %struct.v4l2_subdev_frame_interval** %5, align 8
  %22 = getelementptr inbounds %struct.v4l2_subdev_frame_interval, %struct.v4l2_subdev_frame_interval* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %17
  %27 = load %struct.v4l2_subdev_frame_interval*, %struct.v4l2_subdev_frame_interval** %5, align 8
  %28 = getelementptr inbounds %struct.v4l2_subdev_frame_interval, %struct.v4l2_subdev_frame_interval* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %26, %17
  %33 = load %struct.v4l2_subdev_frame_interval*, %struct.v4l2_subdev_frame_interval** %5, align 8
  %34 = getelementptr inbounds %struct.v4l2_subdev_frame_interval, %struct.v4l2_subdev_frame_interval* %33, i32 0, i32 1
  %35 = load %struct.prp_priv*, %struct.prp_priv** %6, align 8
  %36 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %35, i32 0, i32 1
  %37 = bitcast %struct.TYPE_2__* %34 to i8*
  %38 = bitcast %struct.TYPE_2__* %36 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %37, i8* align 8 %38, i64 16, i1 false)
  br label %46

39:                                               ; preds = %26
  %40 = load %struct.prp_priv*, %struct.prp_priv** %6, align 8
  %41 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %40, i32 0, i32 1
  %42 = load %struct.v4l2_subdev_frame_interval*, %struct.v4l2_subdev_frame_interval** %5, align 8
  %43 = getelementptr inbounds %struct.v4l2_subdev_frame_interval, %struct.v4l2_subdev_frame_interval* %42, i32 0, i32 1
  %44 = bitcast %struct.TYPE_2__* %41 to i8*
  %45 = bitcast %struct.TYPE_2__* %43 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %44, i8* align 8 %45, i64 16, i1 false)
  br label %46

46:                                               ; preds = %39, %32
  %47 = load %struct.prp_priv*, %struct.prp_priv** %6, align 8
  %48 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %47, i32 0, i32 0
  %49 = call i32 @mutex_unlock(i32* %48)
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %46, %14
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local %struct.prp_priv* @sd_to_priv(%struct.v4l2_subdev*) #1

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
