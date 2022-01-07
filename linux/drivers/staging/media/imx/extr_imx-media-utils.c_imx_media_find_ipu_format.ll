; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-utils.c_imx_media_find_ipu_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-utils.c_imx_media_find_ipu_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx_media_pixfmt = type { i32* }

@NUM_IPU_YUV_FORMATS = common dso_local global i32 0, align 4
@ipu_yuv_formats = common dso_local global %struct.imx_media_pixfmt* null, align 8
@NUM_IPU_RGB_FORMATS = common dso_local global i32 0, align 4
@ipu_rgb_formats = common dso_local global %struct.imx_media_pixfmt* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.imx_media_pixfmt* @imx_media_find_ipu_format(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.imx_media_pixfmt*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.imx_media_pixfmt*, align 8
  %7 = alloca %struct.imx_media_pixfmt*, align 8
  %8 = alloca %struct.imx_media_pixfmt*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.imx_media_pixfmt* null, %struct.imx_media_pixfmt** %8, align 8
  %12 = load i32, i32* %5, align 4
  switch i32 %12, label %24 [
    i32 128, label %13
    i32 129, label %16
    i32 130, label %19
  ]

13:                                               ; preds = %2
  %14 = load i32, i32* @NUM_IPU_YUV_FORMATS, align 4
  store i32 %14, i32* %9, align 4
  %15 = load %struct.imx_media_pixfmt*, %struct.imx_media_pixfmt** @ipu_yuv_formats, align 8
  store %struct.imx_media_pixfmt* %15, %struct.imx_media_pixfmt** %6, align 8
  br label %25

16:                                               ; preds = %2
  %17 = load i32, i32* @NUM_IPU_RGB_FORMATS, align 4
  store i32 %17, i32* %9, align 4
  %18 = load %struct.imx_media_pixfmt*, %struct.imx_media_pixfmt** @ipu_rgb_formats, align 8
  store %struct.imx_media_pixfmt* %18, %struct.imx_media_pixfmt** %6, align 8
  br label %25

19:                                               ; preds = %2
  %20 = load i32, i32* @NUM_IPU_YUV_FORMATS, align 4
  %21 = load i32, i32* @NUM_IPU_RGB_FORMATS, align 4
  %22 = add nsw i32 %20, %21
  store i32 %22, i32* %9, align 4
  %23 = load %struct.imx_media_pixfmt*, %struct.imx_media_pixfmt** @ipu_yuv_formats, align 8
  store %struct.imx_media_pixfmt* %23, %struct.imx_media_pixfmt** %6, align 8
  br label %25

24:                                               ; preds = %2
  store %struct.imx_media_pixfmt* null, %struct.imx_media_pixfmt** %3, align 8
  br label %87

25:                                               ; preds = %19, %16, %13
  store i32 0, i32* %10, align 4
  br label %26

26:                                               ; preds = %81, %25
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %84

30:                                               ; preds = %26
  %31 = load i32, i32* %5, align 4
  %32 = icmp eq i32 %31, 130
  br i1 %32, label %33, label %44

33:                                               ; preds = %30
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* @NUM_IPU_YUV_FORMATS, align 4
  %36 = icmp sge i32 %34, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %33
  %38 = load %struct.imx_media_pixfmt*, %struct.imx_media_pixfmt** @ipu_rgb_formats, align 8
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* @NUM_IPU_YUV_FORMATS, align 4
  %41 = sub nsw i32 %39, %40
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.imx_media_pixfmt, %struct.imx_media_pixfmt* %38, i64 %42
  store %struct.imx_media_pixfmt* %43, %struct.imx_media_pixfmt** %7, align 8
  br label %49

44:                                               ; preds = %33, %30
  %45 = load %struct.imx_media_pixfmt*, %struct.imx_media_pixfmt** %6, align 8
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.imx_media_pixfmt, %struct.imx_media_pixfmt* %45, i64 %47
  store %struct.imx_media_pixfmt* %48, %struct.imx_media_pixfmt** %7, align 8
  br label %49

49:                                               ; preds = %44, %37
  store i32 0, i32* %11, align 4
  br label %50

50:                                               ; preds = %77, %49
  %51 = load i32, i32* %4, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %50
  %54 = load %struct.imx_media_pixfmt*, %struct.imx_media_pixfmt** %7, align 8
  %55 = getelementptr inbounds %struct.imx_media_pixfmt, %struct.imx_media_pixfmt* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %11, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br label %62

62:                                               ; preds = %53, %50
  %63 = phi i1 [ false, %50 ], [ %61, %53 ]
  br i1 %63, label %64, label %80

64:                                               ; preds = %62
  %65 = load i32, i32* %4, align 4
  %66 = load %struct.imx_media_pixfmt*, %struct.imx_media_pixfmt** %7, align 8
  %67 = getelementptr inbounds %struct.imx_media_pixfmt, %struct.imx_media_pixfmt* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %11, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = icmp eq i32 %65, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %64
  %75 = load %struct.imx_media_pixfmt*, %struct.imx_media_pixfmt** %7, align 8
  store %struct.imx_media_pixfmt* %75, %struct.imx_media_pixfmt** %8, align 8
  br label %85

76:                                               ; preds = %64
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %11, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %11, align 4
  br label %50

80:                                               ; preds = %62
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %10, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %10, align 4
  br label %26

84:                                               ; preds = %26
  br label %85

85:                                               ; preds = %84, %74
  %86 = load %struct.imx_media_pixfmt*, %struct.imx_media_pixfmt** %8, align 8
  store %struct.imx_media_pixfmt* %86, %struct.imx_media_pixfmt** %3, align 8
  br label %87

87:                                               ; preds = %85, %24
  %88 = load %struct.imx_media_pixfmt*, %struct.imx_media_pixfmt** %3, align 8
  ret %struct.imx_media_pixfmt* %88
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
