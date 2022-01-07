; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-utils.c_imx_media_init_mbus_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-utils.c_imx_media_init_mbus_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_mbus_framefmt = type { i64, i64, i64, i64 }
%struct.imx_media_pixfmt = type { i32 }

@CS_SEL_YUV = common dso_local global i32 0, align 4
@CS_SEL_ANY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @imx_media_init_mbus_fmt(%struct.v4l2_mbus_framefmt* %0, i64 %1, i64 %2, i64 %3, i64 %4, %struct.imx_media_pixfmt** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.imx_media_pixfmt**, align 8
  %14 = alloca %struct.imx_media_pixfmt*, align 8
  store %struct.v4l2_mbus_framefmt* %0, %struct.v4l2_mbus_framefmt** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store %struct.imx_media_pixfmt** %5, %struct.imx_media_pixfmt*** %13, align 8
  %15 = load i64, i64* %9, align 8
  %16 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %17 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %16, i32 0, i32 3
  store i64 %15, i64* %17, align 8
  %18 = load i64, i64* %10, align 8
  %19 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %20 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %19, i32 0, i32 2
  store i64 %18, i64* %20, align 8
  %21 = load i64, i64* %12, align 8
  %22 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %23 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %22, i32 0, i32 1
  store i64 %21, i64* %23, align 8
  %24 = load i64, i64* %11, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %6
  %27 = load i32, i32* @CS_SEL_YUV, align 4
  %28 = call i32 @imx_media_enum_mbus_format(i64* %11, i32 0, i32 %27, i32 0)
  br label %29

29:                                               ; preds = %26, %6
  %30 = load i64, i64* %11, align 8
  %31 = load i32, i32* @CS_SEL_ANY, align 4
  %32 = call %struct.imx_media_pixfmt* @imx_media_find_mbus_format(i64 %30, i32 %31, i32 0)
  store %struct.imx_media_pixfmt* %32, %struct.imx_media_pixfmt** %14, align 8
  %33 = load %struct.imx_media_pixfmt*, %struct.imx_media_pixfmt** %14, align 8
  %34 = icmp ne %struct.imx_media_pixfmt* %33, null
  br i1 %34, label %45, label %35

35:                                               ; preds = %29
  %36 = load i64, i64* %11, align 8
  %37 = load i32, i32* @CS_SEL_ANY, align 4
  %38 = call %struct.imx_media_pixfmt* @imx_media_find_ipu_format(i64 %36, i32 %37)
  store %struct.imx_media_pixfmt* %38, %struct.imx_media_pixfmt** %14, align 8
  %39 = load %struct.imx_media_pixfmt*, %struct.imx_media_pixfmt** %14, align 8
  %40 = icmp ne %struct.imx_media_pixfmt* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %35
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %7, align 4
  br label %58

44:                                               ; preds = %35
  br label %45

45:                                               ; preds = %44, %29
  %46 = load i64, i64* %11, align 8
  %47 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %48 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %47, i32 0, i32 0
  store i64 %46, i64* %48, align 8
  %49 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %50 = load %struct.imx_media_pixfmt*, %struct.imx_media_pixfmt** %14, align 8
  %51 = call i32 @init_mbus_colorimetry(%struct.v4l2_mbus_framefmt* %49, %struct.imx_media_pixfmt* %50)
  %52 = load %struct.imx_media_pixfmt**, %struct.imx_media_pixfmt*** %13, align 8
  %53 = icmp ne %struct.imx_media_pixfmt** %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %45
  %55 = load %struct.imx_media_pixfmt*, %struct.imx_media_pixfmt** %14, align 8
  %56 = load %struct.imx_media_pixfmt**, %struct.imx_media_pixfmt*** %13, align 8
  store %struct.imx_media_pixfmt* %55, %struct.imx_media_pixfmt** %56, align 8
  br label %57

57:                                               ; preds = %54, %45
  store i32 0, i32* %7, align 4
  br label %58

58:                                               ; preds = %57, %41
  %59 = load i32, i32* %7, align 4
  ret i32 %59
}

declare dso_local i32 @imx_media_enum_mbus_format(i64*, i32, i32, i32) #1

declare dso_local %struct.imx_media_pixfmt* @imx_media_find_mbus_format(i64, i32, i32) #1

declare dso_local %struct.imx_media_pixfmt* @imx_media_find_ipu_format(i64, i32) #1

declare dso_local i32 @init_mbus_colorimetry(%struct.v4l2_mbus_framefmt*, %struct.imx_media_pixfmt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
