; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-internal-sd.c_imx_media_unregister_ipu_internal_subdevs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-internal-sd.c_imx_media_unregister_ipu_internal_subdevs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.internal_subdev = type { i32 (%struct.v4l2_subdev*)* }
%struct.v4l2_subdev = type { i32 }
%struct.imx_media_dev = type { i32, %struct.v4l2_subdev*** }

@NUM_IPU_SUBDEVS = common dso_local global i32 0, align 4
@int_subdev = common dso_local global %struct.internal_subdev* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @imx_media_unregister_ipu_internal_subdevs(%struct.imx_media_dev* %0) #0 {
  %2 = alloca %struct.imx_media_dev*, align 8
  %3 = alloca %struct.internal_subdev*, align 8
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.imx_media_dev* %0, %struct.imx_media_dev** %2, align 8
  %7 = load %struct.imx_media_dev*, %struct.imx_media_dev** %2, align 8
  %8 = getelementptr inbounds %struct.imx_media_dev, %struct.imx_media_dev* %7, i32 0, i32 0
  %9 = call i32 @mutex_lock(i32* %8)
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %58, %1
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %11, 2
  br i1 %12, label %13, label %61

13:                                               ; preds = %10
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %54, %13
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @NUM_IPU_SUBDEVS, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %57

18:                                               ; preds = %14
  %19 = load %struct.internal_subdev*, %struct.internal_subdev** @int_subdev, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.internal_subdev, %struct.internal_subdev* %19, i64 %21
  store %struct.internal_subdev* %22, %struct.internal_subdev** %3, align 8
  %23 = load %struct.imx_media_dev*, %struct.imx_media_dev** %2, align 8
  %24 = getelementptr inbounds %struct.imx_media_dev, %struct.imx_media_dev* %23, i32 0, i32 1
  %25 = load %struct.v4l2_subdev***, %struct.v4l2_subdev**** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.v4l2_subdev**, %struct.v4l2_subdev*** %25, i64 %27
  %29 = load %struct.v4l2_subdev**, %struct.v4l2_subdev*** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.v4l2_subdev*, %struct.v4l2_subdev** %29, i64 %31
  %33 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %32, align 8
  store %struct.v4l2_subdev* %33, %struct.v4l2_subdev** %4, align 8
  %34 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %35 = icmp ne %struct.v4l2_subdev* %34, null
  br i1 %35, label %36, label %41

36:                                               ; preds = %18
  %37 = load %struct.internal_subdev*, %struct.internal_subdev** %3, align 8
  %38 = getelementptr inbounds %struct.internal_subdev, %struct.internal_subdev* %37, i32 0, i32 0
  %39 = load i32 (%struct.v4l2_subdev*)*, i32 (%struct.v4l2_subdev*)** %38, align 8
  %40 = icmp ne i32 (%struct.v4l2_subdev*)* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %36, %18
  br label %54

42:                                               ; preds = %36
  %43 = load %struct.imx_media_dev*, %struct.imx_media_dev** %2, align 8
  %44 = getelementptr inbounds %struct.imx_media_dev, %struct.imx_media_dev* %43, i32 0, i32 0
  %45 = call i32 @mutex_unlock(i32* %44)
  %46 = load %struct.internal_subdev*, %struct.internal_subdev** %3, align 8
  %47 = getelementptr inbounds %struct.internal_subdev, %struct.internal_subdev* %46, i32 0, i32 0
  %48 = load i32 (%struct.v4l2_subdev*)*, i32 (%struct.v4l2_subdev*)** %47, align 8
  %49 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %50 = call i32 %48(%struct.v4l2_subdev* %49)
  %51 = load %struct.imx_media_dev*, %struct.imx_media_dev** %2, align 8
  %52 = getelementptr inbounds %struct.imx_media_dev, %struct.imx_media_dev* %51, i32 0, i32 0
  %53 = call i32 @mutex_lock(i32* %52)
  br label %54

54:                                               ; preds = %42, %41
  %55 = load i32, i32* %6, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %6, align 4
  br label %14

57:                                               ; preds = %14
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %5, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %5, align 4
  br label %10

61:                                               ; preds = %10
  %62 = load %struct.imx_media_dev*, %struct.imx_media_dev** %2, align 8
  %63 = getelementptr inbounds %struct.imx_media_dev, %struct.imx_media_dev* %62, i32 0, i32 0
  %64 = call i32 @mutex_unlock(i32* %63)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
