; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/hantro/extr_hantro_jpeg.c_hantro_jpeg_enc_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/hantro/extr_hantro_jpeg.c_hantro_jpeg_enc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hantro_ctx = type { %struct.TYPE_10__, %struct.TYPE_8__*, %struct.TYPE_7__*, %struct.TYPE_11__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i64 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_11__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@DMA_ATTR_ALLOC_SINGLE_PAGES = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hantro_jpeg_enc_init(%struct.hantro_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hantro_ctx*, align 8
  store %struct.hantro_ctx* %0, %struct.hantro_ctx** %3, align 8
  %4 = load %struct.hantro_ctx*, %struct.hantro_ctx** %3, align 8
  %5 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %4, i32 0, i32 3
  %6 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  %7 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i64 0
  %9 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.hantro_ctx*, %struct.hantro_ctx** %3, align 8
  %12 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %11, i32 0, i32 2
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = sub nsw i64 %10, %15
  %17 = load %struct.hantro_ctx*, %struct.hantro_ctx** %3, align 8
  %18 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 2
  store i64 %16, i64* %20, align 8
  %21 = load %struct.hantro_ctx*, %struct.hantro_ctx** %3, align 8
  %22 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %21, i32 0, i32 1
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.hantro_ctx*, %struct.hantro_ctx** %3, align 8
  %27 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.hantro_ctx*, %struct.hantro_ctx** %3, align 8
  %32 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 1
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = load i32, i32* @DMA_ATTR_ALLOC_SINGLE_PAGES, align 4
  %37 = call i32 @dma_alloc_attrs(i32 %25, i64 %30, i32* %34, i32 %35, i32 %36)
  %38 = load %struct.hantro_ctx*, %struct.hantro_ctx** %3, align 8
  %39 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  store i32 %37, i32* %41, align 8
  %42 = load %struct.hantro_ctx*, %struct.hantro_ctx** %3, align 8
  %43 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %1
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %52

51:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %51, %48
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @dma_alloc_attrs(i32, i64, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
