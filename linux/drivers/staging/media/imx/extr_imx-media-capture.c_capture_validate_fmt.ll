; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-capture.c_capture_validate_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-capture.c_capture_validate_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.capture_priv = type { %struct.TYPE_15__, i32, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__, %struct.TYPE_13__*, %struct.TYPE_11__ }
%struct.TYPE_14__ = type { i64, i64 }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i64 }
%struct.v4l2_subdev_format = type { i32, i32, i32 }
%struct.imx_media_pixfmt = type { i64 }
%struct.v4l2_rect = type { i64, i64 }
%struct.v4l2_format = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64, i64 }

@V4L2_SUBDEV_FORMAT_ACTIVE = common dso_local global i32 0, align 4
@pad = common dso_local global i32 0, align 4
@get_fmt = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.capture_priv*)* @capture_validate_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @capture_validate_fmt(%struct.capture_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.capture_priv*, align 8
  %4 = alloca %struct.v4l2_subdev_format, align 4
  %5 = alloca %struct.imx_media_pixfmt*, align 8
  %6 = alloca %struct.v4l2_rect, align 8
  %7 = alloca %struct.v4l2_format, align 8
  %8 = alloca i32, align 4
  store %struct.capture_priv* %0, %struct.capture_priv** %3, align 8
  %9 = load %struct.capture_priv*, %struct.capture_priv** %3, align 8
  %10 = getelementptr inbounds %struct.capture_priv, %struct.capture_priv* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %4, i32 0, i32 2
  store i32 %11, i32* %12, align 4
  %13 = load i32, i32* @V4L2_SUBDEV_FORMAT_ACTIVE, align 4
  %14 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %4, i32 0, i32 1
  store i32 %13, i32* %14, align 4
  %15 = load %struct.capture_priv*, %struct.capture_priv** %3, align 8
  %16 = getelementptr inbounds %struct.capture_priv, %struct.capture_priv* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @pad, align 4
  %19 = load i32, i32* @get_fmt, align 4
  %20 = call i32 @v4l2_subdev_call(i32 %17, i32 %18, i32 %19, i32* null, %struct.v4l2_subdev_format* %4)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %1
  %24 = load i32, i32* %8, align 4
  store i32 %24, i32* %2, align 4
  br label %97

25:                                               ; preds = %1
  %26 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %7, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %4, i32 0, i32 0
  %29 = call i32 @v4l2_fill_pix_format(%struct.TYPE_16__* %27, i32* %28)
  %30 = load %struct.capture_priv*, %struct.capture_priv** %3, align 8
  %31 = call i32 @__capture_try_fmt_vid_cap(%struct.capture_priv* %30, %struct.v4l2_subdev_format* %4, %struct.v4l2_format* %7, %struct.imx_media_pixfmt** %5, %struct.v4l2_rect* %6)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %25
  %35 = load i32, i32* %8, align 4
  store i32 %35, i32* %2, align 4
  br label %97

36:                                               ; preds = %25
  %37 = load %struct.capture_priv*, %struct.capture_priv** %3, align 8
  %38 = getelementptr inbounds %struct.capture_priv, %struct.capture_priv* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %7, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %43, %47
  br i1 %48, label %91, label %49

49:                                               ; preds = %36
  %50 = load %struct.capture_priv*, %struct.capture_priv** %3, align 8
  %51 = getelementptr inbounds %struct.capture_priv, %struct.capture_priv* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %7, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %56, %60
  br i1 %61, label %91, label %62

62:                                               ; preds = %49
  %63 = load %struct.capture_priv*, %struct.capture_priv** %3, align 8
  %64 = getelementptr inbounds %struct.capture_priv, %struct.capture_priv* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.imx_media_pixfmt*, %struct.imx_media_pixfmt** %5, align 8
  %70 = getelementptr inbounds %struct.imx_media_pixfmt, %struct.imx_media_pixfmt* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %68, %71
  br i1 %72, label %91, label %73

73:                                               ; preds = %62
  %74 = load %struct.capture_priv*, %struct.capture_priv** %3, align 8
  %75 = getelementptr inbounds %struct.capture_priv, %struct.capture_priv* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %6, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %78, %80
  br i1 %81, label %91, label %82

82:                                               ; preds = %73
  %83 = load %struct.capture_priv*, %struct.capture_priv** %3, align 8
  %84 = getelementptr inbounds %struct.capture_priv, %struct.capture_priv* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %6, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %87, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %82, %73, %62, %49, %36
  %92 = load i32, i32* @EINVAL, align 4
  %93 = sub nsw i32 0, %92
  br label %95

94:                                               ; preds = %82
  br label %95

95:                                               ; preds = %94, %91
  %96 = phi i32 [ %93, %91 ], [ 0, %94 ]
  store i32 %96, i32* %2, align 4
  br label %97

97:                                               ; preds = %95, %34, %23
  %98 = load i32, i32* %2, align 4
  ret i32 %98
}

declare dso_local i32 @v4l2_subdev_call(i32, i32, i32, i32*, %struct.v4l2_subdev_format*) #1

declare dso_local i32 @v4l2_fill_pix_format(%struct.TYPE_16__*, i32*) #1

declare dso_local i32 @__capture_try_fmt_vid_cap(%struct.capture_priv*, %struct.v4l2_subdev_format*, %struct.v4l2_format*, %struct.imx_media_pixfmt**, %struct.v4l2_rect*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
