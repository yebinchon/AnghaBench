; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/ipu3/extr_ipu3-css-params.c_imgu_css_osys_set_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/ipu3/extr_ipu3-css-params.c_imgu_css_osys_set_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IMGU_ABI_OSYS_FORMAT_YUV420 = common dso_local global i32 0, align 4
@IMGU_ABI_OSYS_TILING_NONE = common dso_local global i32 0, align 4
@IMGU_ABI_OSYS_FORMAT_YV12 = common dso_local global i32 0, align 4
@IMGU_ABI_OSYS_FORMAT_NV12 = common dso_local global i32 0, align 4
@IMGU_ABI_OSYS_FORMAT_NV16 = common dso_local global i32 0, align 4
@IMGU_ABI_OSYS_FORMAT_NV21 = common dso_local global i32 0, align 4
@IMGU_ABI_OSYS_TILING_Y = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i32*)* @imgu_css_osys_set_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @imgu_css_osys_set_format(i32 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load i32, i32* @IMGU_ABI_OSYS_FORMAT_YUV420, align 4
  %8 = load i32*, i32** %5, align 8
  store i32 %7, i32* %8, align 4
  %9 = load i32, i32* @IMGU_ABI_OSYS_TILING_NONE, align 4
  %10 = load i32*, i32** %6, align 8
  store i32 %9, i32* %10, align 4
  %11 = load i32, i32* %4, align 4
  switch i32 %11, label %32 [
    i32 129, label %12
    i32 128, label %15
    i32 133, label %18
    i32 131, label %21
    i32 130, label %24
    i32 132, label %27
  ]

12:                                               ; preds = %3
  %13 = load i32, i32* @IMGU_ABI_OSYS_FORMAT_YUV420, align 4
  %14 = load i32*, i32** %5, align 8
  store i32 %13, i32* %14, align 4
  br label %33

15:                                               ; preds = %3
  %16 = load i32, i32* @IMGU_ABI_OSYS_FORMAT_YV12, align 4
  %17 = load i32*, i32** %5, align 8
  store i32 %16, i32* %17, align 4
  br label %33

18:                                               ; preds = %3
  %19 = load i32, i32* @IMGU_ABI_OSYS_FORMAT_NV12, align 4
  %20 = load i32*, i32** %5, align 8
  store i32 %19, i32* %20, align 4
  br label %33

21:                                               ; preds = %3
  %22 = load i32, i32* @IMGU_ABI_OSYS_FORMAT_NV16, align 4
  %23 = load i32*, i32** %5, align 8
  store i32 %22, i32* %23, align 4
  br label %33

24:                                               ; preds = %3
  %25 = load i32, i32* @IMGU_ABI_OSYS_FORMAT_NV21, align 4
  %26 = load i32*, i32** %5, align 8
  store i32 %25, i32* %26, align 4
  br label %33

27:                                               ; preds = %3
  %28 = load i32, i32* @IMGU_ABI_OSYS_FORMAT_NV12, align 4
  %29 = load i32*, i32** %5, align 8
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* @IMGU_ABI_OSYS_TILING_Y, align 4
  %31 = load i32*, i32** %6, align 8
  store i32 %30, i32* %31, align 4
  br label %33

32:                                               ; preds = %3
  br label %33

33:                                               ; preds = %32, %27, %24, %21, %18, %15, %12
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
