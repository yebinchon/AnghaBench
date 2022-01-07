; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-utils.c_imx_media_ipu_image_to_mbus_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-utils.c_imx_media_ipu_image_to_mbus_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ipu_image = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.imx_media_pixfmt = type { i32* }

@CS_SEL_ANY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @imx_media_ipu_image_to_mbus_fmt(%struct.v4l2_mbus_framefmt* %0, %struct.ipu_image* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %5 = alloca %struct.ipu_image*, align 8
  %6 = alloca %struct.imx_media_pixfmt*, align 8
  store %struct.v4l2_mbus_framefmt* %0, %struct.v4l2_mbus_framefmt** %4, align 8
  store %struct.ipu_image* %1, %struct.ipu_image** %5, align 8
  %7 = load %struct.ipu_image*, %struct.ipu_image** %5, align 8
  %8 = getelementptr inbounds %struct.ipu_image, %struct.ipu_image* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 7
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @CS_SEL_ANY, align 4
  %12 = call %struct.imx_media_pixfmt* @imx_media_find_format(i32 %10, i32 %11, i32 1)
  store %struct.imx_media_pixfmt* %12, %struct.imx_media_pixfmt** %6, align 8
  %13 = load %struct.imx_media_pixfmt*, %struct.imx_media_pixfmt** %6, align 8
  %14 = icmp ne %struct.imx_media_pixfmt* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %70

18:                                               ; preds = %2
  %19 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %4, align 8
  %20 = call i32 @memset(%struct.v4l2_mbus_framefmt* %19, i32 0, i32 32)
  %21 = load %struct.ipu_image*, %struct.ipu_image** %5, align 8
  %22 = getelementptr inbounds %struct.ipu_image, %struct.ipu_image* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 6
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %4, align 8
  %26 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %25, i32 0, i32 7
  store i32 %24, i32* %26, align 4
  %27 = load %struct.ipu_image*, %struct.ipu_image** %5, align 8
  %28 = getelementptr inbounds %struct.ipu_image, %struct.ipu_image* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %4, align 8
  %32 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %31, i32 0, i32 6
  store i32 %30, i32* %32, align 4
  %33 = load %struct.imx_media_pixfmt*, %struct.imx_media_pixfmt** %6, align 8
  %34 = getelementptr inbounds %struct.imx_media_pixfmt, %struct.imx_media_pixfmt* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %4, align 8
  %39 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %38, i32 0, i32 5
  store i32 %37, i32* %39, align 4
  %40 = load %struct.ipu_image*, %struct.ipu_image** %5, align 8
  %41 = getelementptr inbounds %struct.ipu_image, %struct.ipu_image* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %4, align 8
  %45 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %44, i32 0, i32 4
  store i32 %43, i32* %45, align 4
  %46 = load %struct.ipu_image*, %struct.ipu_image** %5, align 8
  %47 = getelementptr inbounds %struct.ipu_image, %struct.ipu_image* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %4, align 8
  %51 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 4
  %52 = load %struct.ipu_image*, %struct.ipu_image** %5, align 8
  %53 = getelementptr inbounds %struct.ipu_image, %struct.ipu_image* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %4, align 8
  %57 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 4
  %58 = load %struct.ipu_image*, %struct.ipu_image** %5, align 8
  %59 = getelementptr inbounds %struct.ipu_image, %struct.ipu_image* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %4, align 8
  %63 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  %64 = load %struct.ipu_image*, %struct.ipu_image** %5, align 8
  %65 = getelementptr inbounds %struct.ipu_image, %struct.ipu_image* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %4, align 8
  %69 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 4
  store i32 0, i32* %3, align 4
  br label %70

70:                                               ; preds = %18, %15
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local %struct.imx_media_pixfmt* @imx_media_find_format(i32, i32, i32) #1

declare dso_local i32 @memset(%struct.v4l2_mbus_framefmt*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
