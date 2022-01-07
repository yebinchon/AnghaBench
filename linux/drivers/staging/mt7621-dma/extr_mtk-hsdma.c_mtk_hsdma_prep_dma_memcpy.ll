; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/mt7621-dma/extr_mtk-hsdma.c_mtk_hsdma_prep_dma_memcpy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/mt7621-dma/extr_mtk-hsdma.c_mtk_hsdma_prep_dma_memcpy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_async_tx_descriptor = type { i32 }
%struct.dma_chan = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.mtk_hsdma_chan = type { i32 }
%struct.mtk_hsdma_desc = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i8*, i8* }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"alloc memcpy decs error\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dma_async_tx_descriptor* (%struct.dma_chan*, i8*, i8*, i64, i64)* @mtk_hsdma_prep_dma_memcpy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dma_async_tx_descriptor* @mtk_hsdma_prep_dma_memcpy(%struct.dma_chan* %0, i8* %1, i8* %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.dma_async_tx_descriptor*, align 8
  %7 = alloca %struct.dma_chan*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.mtk_hsdma_chan*, align 8
  %13 = alloca %struct.mtk_hsdma_desc*, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load %struct.dma_chan*, %struct.dma_chan** %7, align 8
  %15 = call %struct.mtk_hsdma_chan* @to_mtk_hsdma_chan(%struct.dma_chan* %14)
  store %struct.mtk_hsdma_chan* %15, %struct.mtk_hsdma_chan** %12, align 8
  %16 = load i64, i64* %10, align 8
  %17 = icmp ule i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %5
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %6, align 8
  br label %56

19:                                               ; preds = %5
  %20 = load i32, i32* @GFP_ATOMIC, align 4
  %21 = call %struct.mtk_hsdma_desc* @kzalloc(i32 16, i32 %20)
  store %struct.mtk_hsdma_desc* %21, %struct.mtk_hsdma_desc** %13, align 8
  %22 = load %struct.mtk_hsdma_desc*, %struct.mtk_hsdma_desc** %13, align 8
  %23 = icmp ne %struct.mtk_hsdma_desc* %22, null
  br i1 %23, label %31, label %24

24:                                               ; preds = %19
  %25 = load %struct.dma_chan*, %struct.dma_chan** %7, align 8
  %26 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @dev_err(i32 %29, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %6, align 8
  br label %56

31:                                               ; preds = %19
  %32 = load i8*, i8** %9, align 8
  %33 = load %struct.mtk_hsdma_desc*, %struct.mtk_hsdma_desc** %13, align 8
  %34 = getelementptr inbounds %struct.mtk_hsdma_desc, %struct.mtk_hsdma_desc* %33, i32 0, i32 1
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i64 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 2
  store i8* %32, i8** %37, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = load %struct.mtk_hsdma_desc*, %struct.mtk_hsdma_desc** %13, align 8
  %40 = getelementptr inbounds %struct.mtk_hsdma_desc, %struct.mtk_hsdma_desc* %39, i32 0, i32 1
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i64 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  store i8* %38, i8** %43, align 8
  %44 = load i64, i64* %10, align 8
  %45 = load %struct.mtk_hsdma_desc*, %struct.mtk_hsdma_desc** %13, align 8
  %46 = getelementptr inbounds %struct.mtk_hsdma_desc, %struct.mtk_hsdma_desc* %45, i32 0, i32 1
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i64 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  store i64 %44, i64* %49, align 8
  %50 = load %struct.mtk_hsdma_chan*, %struct.mtk_hsdma_chan** %12, align 8
  %51 = getelementptr inbounds %struct.mtk_hsdma_chan, %struct.mtk_hsdma_chan* %50, i32 0, i32 0
  %52 = load %struct.mtk_hsdma_desc*, %struct.mtk_hsdma_desc** %13, align 8
  %53 = getelementptr inbounds %struct.mtk_hsdma_desc, %struct.mtk_hsdma_desc* %52, i32 0, i32 0
  %54 = load i64, i64* %11, align 8
  %55 = call %struct.dma_async_tx_descriptor* @vchan_tx_prep(i32* %51, i32* %53, i64 %54)
  store %struct.dma_async_tx_descriptor* %55, %struct.dma_async_tx_descriptor** %6, align 8
  br label %56

56:                                               ; preds = %31, %24, %18
  %57 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %6, align 8
  ret %struct.dma_async_tx_descriptor* %57
}

declare dso_local %struct.mtk_hsdma_chan* @to_mtk_hsdma_chan(%struct.dma_chan*) #1

declare dso_local %struct.mtk_hsdma_desc* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local %struct.dma_async_tx_descriptor* @vchan_tx_prep(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
