; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-utils.c_imx_media_free_dma_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-utils.c_imx_media_free_dma_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.imx_media_dma_buf = type { i64, i32*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @imx_media_free_dma_buf(%struct.device* %0, %struct.imx_media_dma_buf* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.imx_media_dma_buf*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.imx_media_dma_buf* %1, %struct.imx_media_dma_buf** %4, align 8
  %5 = load %struct.imx_media_dma_buf*, %struct.imx_media_dma_buf** %4, align 8
  %6 = getelementptr inbounds %struct.imx_media_dma_buf, %struct.imx_media_dma_buf* %5, i32 0, i32 1
  %7 = load i32*, i32** %6, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %21

9:                                                ; preds = %2
  %10 = load %struct.device*, %struct.device** %3, align 8
  %11 = load %struct.imx_media_dma_buf*, %struct.imx_media_dma_buf** %4, align 8
  %12 = getelementptr inbounds %struct.imx_media_dma_buf, %struct.imx_media_dma_buf* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.imx_media_dma_buf*, %struct.imx_media_dma_buf** %4, align 8
  %15 = getelementptr inbounds %struct.imx_media_dma_buf, %struct.imx_media_dma_buf* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = load %struct.imx_media_dma_buf*, %struct.imx_media_dma_buf** %4, align 8
  %18 = getelementptr inbounds %struct.imx_media_dma_buf, %struct.imx_media_dma_buf* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @dma_free_coherent(%struct.device* %10, i32 %13, i32* %16, i64 %19)
  br label %21

21:                                               ; preds = %9, %2
  %22 = load %struct.imx_media_dma_buf*, %struct.imx_media_dma_buf** %4, align 8
  %23 = getelementptr inbounds %struct.imx_media_dma_buf, %struct.imx_media_dma_buf* %22, i32 0, i32 1
  store i32* null, i32** %23, align 8
  %24 = load %struct.imx_media_dma_buf*, %struct.imx_media_dma_buf** %4, align 8
  %25 = getelementptr inbounds %struct.imx_media_dma_buf, %struct.imx_media_dma_buf* %24, i32 0, i32 0
  store i64 0, i64* %25, align 8
  ret void
}

declare dso_local i32 @dma_free_coherent(%struct.device*, i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
