; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-utils.c_imx_media_enum_ipu_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-utils.c_imx_media_enum_ipu_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64* }
%struct.TYPE_4__ = type { i64* }

@NUM_IPU_YUV_FORMATS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ipu_yuv_formats = common dso_local global %struct.TYPE_3__* null, align 8
@NUM_IPU_RGB_FORMATS = common dso_local global i64 0, align 8
@ipu_rgb_formats = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @imx_media_enum_ipu_format(i64* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i64* %0, i64** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %76 [
    i32 128, label %9
    i32 129, label %25
    i32 130, label %41
  ]

9:                                                ; preds = %3
  %10 = load i64, i64* %6, align 8
  %11 = load i64, i64* @NUM_IPU_YUV_FORMATS, align 8
  %12 = icmp uge i64 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %80

16:                                               ; preds = %9
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ipu_yuv_formats, align 8
  %18 = load i64, i64* %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i64*, i64** %20, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64*, i64** %5, align 8
  store i64 %23, i64* %24, align 8
  br label %79

25:                                               ; preds = %3
  %26 = load i64, i64* %6, align 8
  %27 = load i64, i64* @NUM_IPU_RGB_FORMATS, align 8
  %28 = icmp uge i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %80

32:                                               ; preds = %25
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ipu_rgb_formats, align 8
  %34 = load i64, i64* %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i64*, i64** %36, align 8
  %38 = getelementptr inbounds i64, i64* %37, i64 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64*, i64** %5, align 8
  store i64 %39, i64* %40, align 8
  br label %79

41:                                               ; preds = %3
  %42 = load i64, i64* %6, align 8
  %43 = load i64, i64* @NUM_IPU_YUV_FORMATS, align 8
  %44 = load i64, i64* @NUM_IPU_RGB_FORMATS, align 8
  %45 = add i64 %43, %44
  %46 = icmp uge i64 %42, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %80

50:                                               ; preds = %41
  %51 = load i64, i64* %6, align 8
  %52 = load i64, i64* @NUM_IPU_YUV_FORMATS, align 8
  %53 = icmp uge i64 %51, %52
  br i1 %53, label %54, label %66

54:                                               ; preds = %50
  %55 = load i64, i64* @NUM_IPU_YUV_FORMATS, align 8
  %56 = load i64, i64* %6, align 8
  %57 = sub i64 %56, %55
  store i64 %57, i64* %6, align 8
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ipu_rgb_formats, align 8
  %59 = load i64, i64* %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i64*, i64** %61, align 8
  %63 = getelementptr inbounds i64, i64* %62, i64 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64*, i64** %5, align 8
  store i64 %64, i64* %65, align 8
  br label %75

66:                                               ; preds = %50
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ipu_yuv_formats, align 8
  %68 = load i64, i64* %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i64*, i64** %70, align 8
  %72 = getelementptr inbounds i64, i64* %71, i64 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64*, i64** %5, align 8
  store i64 %73, i64* %74, align 8
  br label %75

75:                                               ; preds = %66, %54
  br label %79

76:                                               ; preds = %3
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %4, align 4
  br label %80

79:                                               ; preds = %75, %32, %16
  store i32 0, i32* %4, align 4
  br label %80

80:                                               ; preds = %79, %76, %47, %29, %13
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
