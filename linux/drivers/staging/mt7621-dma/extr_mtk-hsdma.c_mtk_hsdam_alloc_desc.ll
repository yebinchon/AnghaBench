; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/mt7621-dma/extr_mtk-hsdma.c_mtk_hsdam_alloc_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/mt7621-dma/extr_mtk-hsdma.c_mtk_hsdam_alloc_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_hsdam_engine = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.mtk_hsdma_chan = type { %struct.TYPE_4__*, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }

@HSDMA_DESCS_NUM = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@HSDMA_DESC_LS0 = common dso_local global i32 0, align 4
@HSDMA_DESC_DONE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtk_hsdam_engine*, %struct.mtk_hsdma_chan*)* @mtk_hsdam_alloc_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_hsdam_alloc_desc(%struct.mtk_hsdam_engine* %0, %struct.mtk_hsdma_chan* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mtk_hsdam_engine*, align 8
  %5 = alloca %struct.mtk_hsdma_chan*, align 8
  %6 = alloca i32, align 4
  store %struct.mtk_hsdam_engine* %0, %struct.mtk_hsdam_engine** %4, align 8
  store %struct.mtk_hsdma_chan* %1, %struct.mtk_hsdma_chan** %5, align 8
  %7 = load %struct.mtk_hsdam_engine*, %struct.mtk_hsdam_engine** %4, align 8
  %8 = getelementptr inbounds %struct.mtk_hsdam_engine, %struct.mtk_hsdam_engine* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @HSDMA_DESCS_NUM, align 4
  %12 = mul nsw i32 2, %11
  %13 = sext i32 %12 to i64
  %14 = mul i64 %13, 4
  %15 = trunc i64 %14 to i32
  %16 = load %struct.mtk_hsdma_chan*, %struct.mtk_hsdma_chan** %5, align 8
  %17 = getelementptr inbounds %struct.mtk_hsdma_chan, %struct.mtk_hsdma_chan* %16, i32 0, i32 2
  %18 = load i32, i32* @GFP_ATOMIC, align 4
  %19 = load i32, i32* @__GFP_ZERO, align 4
  %20 = or i32 %18, %19
  %21 = call %struct.TYPE_4__* @dma_alloc_coherent(i32 %10, i32 %15, i32* %17, i32 %20)
  %22 = load %struct.mtk_hsdma_chan*, %struct.mtk_hsdma_chan** %5, align 8
  %23 = getelementptr inbounds %struct.mtk_hsdma_chan, %struct.mtk_hsdma_chan* %22, i32 0, i32 0
  store %struct.TYPE_4__* %21, %struct.TYPE_4__** %23, align 8
  %24 = load %struct.mtk_hsdma_chan*, %struct.mtk_hsdma_chan** %5, align 8
  %25 = getelementptr inbounds %struct.mtk_hsdma_chan, %struct.mtk_hsdma_chan* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = icmp ne %struct.TYPE_4__* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %2
  br label %57

29:                                               ; preds = %2
  %30 = load %struct.mtk_hsdma_chan*, %struct.mtk_hsdma_chan** %5, align 8
  %31 = getelementptr inbounds %struct.mtk_hsdma_chan, %struct.mtk_hsdma_chan* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = load i32, i32* @HSDMA_DESCS_NUM, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i64 %34
  %36 = load %struct.mtk_hsdma_chan*, %struct.mtk_hsdma_chan** %5, align 8
  %37 = getelementptr inbounds %struct.mtk_hsdma_chan, %struct.mtk_hsdma_chan* %36, i32 0, i32 1
  store %struct.TYPE_4__* %35, %struct.TYPE_4__** %37, align 8
  store i32 0, i32* %6, align 4
  br label %38

38:                                               ; preds = %53, %29
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @HSDMA_DESCS_NUM, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %56

42:                                               ; preds = %38
  %43 = load i32, i32* @HSDMA_DESC_LS0, align 4
  %44 = load i32, i32* @HSDMA_DESC_DONE, align 4
  %45 = or i32 %43, %44
  %46 = load %struct.mtk_hsdma_chan*, %struct.mtk_hsdma_chan** %5, align 8
  %47 = getelementptr inbounds %struct.mtk_hsdma_chan, %struct.mtk_hsdma_chan* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  store i32 %45, i32* %52, align 4
  br label %53

53:                                               ; preds = %42
  %54 = load i32, i32* %6, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %6, align 4
  br label %38

56:                                               ; preds = %38
  store i32 0, i32* %3, align 4
  br label %60

57:                                               ; preds = %28
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %57, %56
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local %struct.TYPE_4__* @dma_alloc_coherent(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
