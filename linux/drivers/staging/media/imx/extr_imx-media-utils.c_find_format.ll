; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-utils.c_find_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-utils.c_find_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx_media_pixfmt = type { i32 }

@yuv_formats = common dso_local global i32 0, align 4
@NUM_YUV_FORMATS = common dso_local global i32 0, align 4
@rgb_formats = common dso_local global i32 0, align 4
@NUM_RGB_FORMATS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.imx_media_pixfmt* (i32, i32, i32, i32, i32)* @find_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.imx_media_pixfmt* @find_format(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.imx_media_pixfmt*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.imx_media_pixfmt*, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load i32, i32* %9, align 4
  switch i32 %13, label %50 [
    i32 128, label %14
    i32 129, label %22
    i32 130, label %30
  ]

14:                                               ; preds = %5
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* %11, align 4
  %19 = load i32, i32* @yuv_formats, align 4
  %20 = load i32, i32* @NUM_YUV_FORMATS, align 4
  %21 = call %struct.imx_media_pixfmt* @__find_format(i32 %15, i32 %16, i32 %17, i32 %18, i32 %19, i32 %20)
  store %struct.imx_media_pixfmt* %21, %struct.imx_media_pixfmt** %6, align 8
  br label %51

22:                                               ; preds = %5
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* @rgb_formats, align 4
  %28 = load i32, i32* @NUM_RGB_FORMATS, align 4
  %29 = call %struct.imx_media_pixfmt* @__find_format(i32 %23, i32 %24, i32 %25, i32 %26, i32 %27, i32 %28)
  store %struct.imx_media_pixfmt* %29, %struct.imx_media_pixfmt** %6, align 8
  br label %51

30:                                               ; preds = %5
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* @yuv_formats, align 4
  %36 = load i32, i32* @NUM_YUV_FORMATS, align 4
  %37 = call %struct.imx_media_pixfmt* @__find_format(i32 %31, i32 %32, i32 %33, i32 %34, i32 %35, i32 %36)
  store %struct.imx_media_pixfmt* %37, %struct.imx_media_pixfmt** %12, align 8
  %38 = load %struct.imx_media_pixfmt*, %struct.imx_media_pixfmt** %12, align 8
  %39 = icmp ne %struct.imx_media_pixfmt* %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %30
  %41 = load %struct.imx_media_pixfmt*, %struct.imx_media_pixfmt** %12, align 8
  store %struct.imx_media_pixfmt* %41, %struct.imx_media_pixfmt** %6, align 8
  br label %51

42:                                               ; preds = %30
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* @rgb_formats, align 4
  %48 = load i32, i32* @NUM_RGB_FORMATS, align 4
  %49 = call %struct.imx_media_pixfmt* @__find_format(i32 %43, i32 %44, i32 %45, i32 %46, i32 %47, i32 %48)
  store %struct.imx_media_pixfmt* %49, %struct.imx_media_pixfmt** %6, align 8
  br label %51

50:                                               ; preds = %5
  store %struct.imx_media_pixfmt* null, %struct.imx_media_pixfmt** %6, align 8
  br label %51

51:                                               ; preds = %50, %42, %40, %22, %14
  %52 = load %struct.imx_media_pixfmt*, %struct.imx_media_pixfmt** %6, align 8
  ret %struct.imx_media_pixfmt* %52
}

declare dso_local %struct.imx_media_pixfmt* @__find_format(i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
