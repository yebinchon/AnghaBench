; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/sunxi/cedrus/extr_cedrus_hw.c_cedrus_dst_format_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/sunxi/cedrus/extr_cedrus_hw.c_cedrus_dst_format_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cedrus_dev = type { i32 }
%struct.v4l2_pix_format = type { i32, i32, i32 }

@VE_PRIMARY_OUT_FMT_NV12 = common dso_local global i32 0, align 4
@VE_PRIMARY_OUT_FMT = common dso_local global i32 0, align 4
@VE_PRIMARY_CHROMA_BUF_LEN = common dso_local global i32 0, align 4
@VE_PRIMARY_FB_LINE_STRIDE = common dso_local global i32 0, align 4
@VE_PRIMARY_OUT_FMT_TILED_32_NV12 = common dso_local global i32 0, align 4
@VE_SECONDARY_OUT_FMT_TILED_32_NV12 = common dso_local global i32 0, align 4
@VE_CHROMA_BUF_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cedrus_dst_format_set(%struct.cedrus_dev* %0, %struct.v4l2_pix_format* %1) #0 {
  %3 = alloca %struct.cedrus_dev*, align 8
  %4 = alloca %struct.v4l2_pix_format*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.cedrus_dev* %0, %struct.cedrus_dev** %3, align 8
  store %struct.v4l2_pix_format* %1, %struct.v4l2_pix_format** %4, align 8
  %9 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %10 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %5, align 4
  %12 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %13 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %6, align 4
  %15 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %16 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %49 [
    i32 129, label %18
    i32 128, label %48
  ]

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @ALIGN(i32 %19, i32 16)
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @ALIGN(i32 %21, i32 16)
  %23 = mul nsw i32 %20, %22
  %24 = sdiv i32 %23, 2
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* @VE_PRIMARY_OUT_FMT_NV12, align 4
  store i32 %25, i32* %8, align 4
  %26 = load %struct.cedrus_dev*, %struct.cedrus_dev** %3, align 8
  %27 = load i32, i32* @VE_PRIMARY_OUT_FMT, align 4
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @cedrus_write(%struct.cedrus_dev* %26, i32 %27, i32 %28)
  %30 = load i32, i32* %7, align 4
  %31 = sdiv i32 %30, 2
  store i32 %31, i32* %8, align 4
  %32 = load %struct.cedrus_dev*, %struct.cedrus_dev** %3, align 8
  %33 = load i32, i32* @VE_PRIMARY_CHROMA_BUF_LEN, align 4
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @cedrus_write(%struct.cedrus_dev* %32, i32 %33, i32 %34)
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @ALIGN(i32 %36, i32 16)
  %38 = call i32 @VE_PRIMARY_FB_LINE_STRIDE_LUMA(i32 %37)
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @ALIGN(i32 %39, i32 16)
  %41 = sdiv i32 %40, 2
  %42 = call i32 @VE_PRIMARY_FB_LINE_STRIDE_CHROMA(i32 %41)
  %43 = or i32 %38, %42
  store i32 %43, i32* %8, align 4
  %44 = load %struct.cedrus_dev*, %struct.cedrus_dev** %3, align 8
  %45 = load i32, i32* @VE_PRIMARY_FB_LINE_STRIDE, align 4
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @cedrus_write(%struct.cedrus_dev* %44, i32 %45, i32 %46)
  br label %60

48:                                               ; preds = %2
  br label %49

49:                                               ; preds = %2, %48
  %50 = load i32, i32* @VE_PRIMARY_OUT_FMT_TILED_32_NV12, align 4
  store i32 %50, i32* %8, align 4
  %51 = load %struct.cedrus_dev*, %struct.cedrus_dev** %3, align 8
  %52 = load i32, i32* @VE_PRIMARY_OUT_FMT, align 4
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @cedrus_write(%struct.cedrus_dev* %51, i32 %52, i32 %53)
  %55 = load i32, i32* @VE_SECONDARY_OUT_FMT_TILED_32_NV12, align 4
  store i32 %55, i32* %8, align 4
  %56 = load %struct.cedrus_dev*, %struct.cedrus_dev** %3, align 8
  %57 = load i32, i32* @VE_CHROMA_BUF_LEN, align 4
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @cedrus_write(%struct.cedrus_dev* %56, i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %49, %18
  ret void
}

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @cedrus_write(%struct.cedrus_dev*, i32, i32) #1

declare dso_local i32 @VE_PRIMARY_FB_LINE_STRIDE_LUMA(i32) #1

declare dso_local i32 @VE_PRIMARY_FB_LINE_STRIDE_CHROMA(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
