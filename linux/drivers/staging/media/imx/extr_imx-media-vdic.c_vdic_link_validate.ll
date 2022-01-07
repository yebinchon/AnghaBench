; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-vdic.c_vdic_link_validate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-vdic.c_vdic_link_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.media_link = type { i32 }
%struct.v4l2_subdev_format = type { i32 }
%struct.vdic_priv = type { i64, i32, i32, i64 }

@HIGH_MOTION = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"direct CSI pipeline requires high motion\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.media_link*, %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format*)* @vdic_link_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vdic_link_validate(%struct.v4l2_subdev* %0, %struct.media_link* %1, %struct.v4l2_subdev_format* %2, %struct.v4l2_subdev_format* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.v4l2_subdev*, align 8
  %7 = alloca %struct.media_link*, align 8
  %8 = alloca %struct.v4l2_subdev_format*, align 8
  %9 = alloca %struct.v4l2_subdev_format*, align 8
  %10 = alloca %struct.vdic_priv*, align 8
  %11 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %6, align 8
  store %struct.media_link* %1, %struct.media_link** %7, align 8
  store %struct.v4l2_subdev_format* %2, %struct.v4l2_subdev_format** %8, align 8
  store %struct.v4l2_subdev_format* %3, %struct.v4l2_subdev_format** %9, align 8
  %12 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %13 = call %struct.vdic_priv* @v4l2_get_subdevdata(%struct.v4l2_subdev* %12)
  store %struct.vdic_priv* %13, %struct.vdic_priv** %10, align 8
  %14 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %15 = load %struct.media_link*, %struct.media_link** %7, align 8
  %16 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %8, align 8
  %17 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %9, align 8
  %18 = call i32 @v4l2_subdev_link_validate_default(%struct.v4l2_subdev* %14, %struct.media_link* %15, %struct.v4l2_subdev_format* %16, %struct.v4l2_subdev_format* %17)
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %11, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = load i32, i32* %11, align 4
  store i32 %22, i32* %5, align 4
  br label %48

23:                                               ; preds = %4
  %24 = load %struct.vdic_priv*, %struct.vdic_priv** %10, align 8
  %25 = getelementptr inbounds %struct.vdic_priv, %struct.vdic_priv* %24, i32 0, i32 1
  %26 = call i32 @mutex_lock(i32* %25)
  %27 = load %struct.vdic_priv*, %struct.vdic_priv** %10, align 8
  %28 = getelementptr inbounds %struct.vdic_priv, %struct.vdic_priv* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %43

31:                                               ; preds = %23
  %32 = load %struct.vdic_priv*, %struct.vdic_priv** %10, align 8
  %33 = getelementptr inbounds %struct.vdic_priv, %struct.vdic_priv* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @HIGH_MOTION, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %31
  %38 = load %struct.vdic_priv*, %struct.vdic_priv** %10, align 8
  %39 = getelementptr inbounds %struct.vdic_priv, %struct.vdic_priv* %38, i32 0, i32 2
  %40 = call i32 @v4l2_err(i32* %39, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %11, align 4
  br label %43

43:                                               ; preds = %37, %31, %23
  %44 = load %struct.vdic_priv*, %struct.vdic_priv** %10, align 8
  %45 = getelementptr inbounds %struct.vdic_priv, %struct.vdic_priv* %44, i32 0, i32 1
  %46 = call i32 @mutex_unlock(i32* %45)
  %47 = load i32, i32* %11, align 4
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %43, %21
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local %struct.vdic_priv* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local i32 @v4l2_subdev_link_validate_default(%struct.v4l2_subdev*, %struct.media_link*, %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @v4l2_err(i32*, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
