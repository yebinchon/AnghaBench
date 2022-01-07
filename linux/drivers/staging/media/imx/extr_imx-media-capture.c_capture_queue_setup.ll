; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-capture.c_capture_queue_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-capture.c_capture_queue_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { i64, i32 }
%struct.device = type { i32 }
%struct.capture_priv = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.v4l2_pix_format }
%struct.v4l2_pix_format = type { i32 }

@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@__u32 = common dso_local global i32 0, align 4
@VID_MEM_LIMIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vb2_queue*, i32*, i32*, i32*, %struct.device**)* @capture_queue_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @capture_queue_setup(%struct.vb2_queue* %0, i32* %1, i32* %2, i32* %3, %struct.device** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.vb2_queue*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.device**, align 8
  %12 = alloca %struct.capture_priv*, align 8
  %13 = alloca %struct.v4l2_pix_format*, align 8
  %14 = alloca i32, align 4
  store %struct.vb2_queue* %0, %struct.vb2_queue** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store %struct.device** %4, %struct.device*** %11, align 8
  %15 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %16 = call %struct.capture_priv* @vb2_get_drv_priv(%struct.vb2_queue* %15)
  store %struct.capture_priv* %16, %struct.capture_priv** %12, align 8
  %17 = load %struct.capture_priv*, %struct.capture_priv** %12, align 8
  %18 = getelementptr inbounds %struct.capture_priv, %struct.capture_priv* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  store %struct.v4l2_pix_format* %21, %struct.v4l2_pix_format** %13, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %14, align 4
  %24 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %25 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %5
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %6, align 4
  br label %95

32:                                               ; preds = %5
  %33 = load i32*, i32** %9, align 8
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %57

36:                                               ; preds = %32
  %37 = load i32*, i32** %9, align 8
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 1
  br i1 %39, label %48, label %40

40:                                               ; preds = %36
  %41 = load i32*, i32** %10, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %13, align 8
  %45 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp ult i32 %43, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %40, %36
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %6, align 4
  br label %95

51:                                               ; preds = %40
  %52 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %53 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %14, align 4
  %56 = add i32 %55, %54
  store i32 %56, i32* %14, align 4
  br label %57

57:                                               ; preds = %51, %32
  %58 = load i32, i32* @__u32, align 4
  %59 = load i32, i32* @VID_MEM_LIMIT, align 4
  %60 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %13, align 8
  %61 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = udiv i32 %59, %62
  %64 = load i32, i32* %14, align 4
  %65 = call i32 @min_t(i32 %58, i32 %63, i32 %64)
  store i32 %65, i32* %14, align 4
  %66 = load i32*, i32** %9, align 8
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %85

69:                                               ; preds = %57
  %70 = load i32, i32* %14, align 4
  %71 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %72 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = icmp ult i32 %70, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %69
  br label %82

76:                                               ; preds = %69
  %77 = load i32, i32* %14, align 4
  %78 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %79 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = sub i32 %77, %80
  br label %82

82:                                               ; preds = %76, %75
  %83 = phi i32 [ 0, %75 ], [ %81, %76 ]
  %84 = load i32*, i32** %8, align 8
  store i32 %83, i32* %84, align 4
  br label %88

85:                                               ; preds = %57
  %86 = load i32, i32* %14, align 4
  %87 = load i32*, i32** %8, align 8
  store i32 %86, i32* %87, align 4
  br label %88

88:                                               ; preds = %85, %82
  %89 = load i32*, i32** %9, align 8
  store i32 1, i32* %89, align 4
  %90 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %13, align 8
  %91 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32*, i32** %10, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 0
  store i32 %92, i32* %94, align 4
  store i32 0, i32* %6, align 4
  br label %95

95:                                               ; preds = %88, %48, %29
  %96 = load i32, i32* %6, align 4
  ret i32 %96
}

declare dso_local %struct.capture_priv* @vb2_get_drv_priv(%struct.vb2_queue*) #1

declare dso_local i32 @min_t(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
