; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/ralink-gdma/extr_ralink-gdma.c_gdma_dma_prep_dma_memcpy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/ralink-gdma/extr_ralink-gdma.c_gdma_dma_prep_dma_memcpy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_async_tx_descriptor = type { i32 }
%struct.dma_chan = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.gdma_dmaengine_chan = type { i32, i32 }
%struct.gdma_dma_desc = type { i64, i32, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i8*, i8* }

@GDMA_REG_CTRL0_TX_MASK = common dso_local global i64 0, align 8
@sg = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"alloc memcpy decs error\0A\00", align 1
@DMA_MEM_TO_MEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dma_async_tx_descriptor* (%struct.dma_chan*, i8*, i8*, i64, i64)* @gdma_dma_prep_dma_memcpy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dma_async_tx_descriptor* @gdma_dma_prep_dma_memcpy(%struct.dma_chan* %0, i8* %1, i8* %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.dma_async_tx_descriptor*, align 8
  %7 = alloca %struct.dma_chan*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.gdma_dmaengine_chan*, align 8
  %13 = alloca %struct.gdma_dma_desc*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %17 = load %struct.dma_chan*, %struct.dma_chan** %7, align 8
  %18 = call %struct.gdma_dmaengine_chan* @to_gdma_dma_chan(%struct.dma_chan* %17)
  store %struct.gdma_dmaengine_chan* %18, %struct.gdma_dmaengine_chan** %12, align 8
  %19 = load i64, i64* %10, align 8
  %20 = icmp ule i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %5
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %6, align 8
  br label %142

22:                                               ; preds = %5
  %23 = load i64, i64* %10, align 8
  %24 = lshr i64 %23, 2
  %25 = call i32 @gdma_dma_maxburst(i64 %24)
  %26 = load %struct.gdma_dmaengine_chan*, %struct.gdma_dmaengine_chan** %12, align 8
  %27 = getelementptr inbounds %struct.gdma_dmaengine_chan, %struct.gdma_dmaengine_chan* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load i64, i64* @GDMA_REG_CTRL0_TX_MASK, align 8
  store i64 %28, i64* %16, align 8
  %29 = load i64, i64* %10, align 8
  %30 = load i64, i64* %16, align 8
  %31 = call i32 @DIV_ROUND_UP(i64 %29, i64 %30)
  store i32 %31, i32* %14, align 4
  %32 = load %struct.gdma_dma_desc*, %struct.gdma_dma_desc** %13, align 8
  %33 = load i32, i32* @sg, align 4
  %34 = load i32, i32* %14, align 4
  %35 = call i32 @struct_size(%struct.gdma_dma_desc* %32, i32 %33, i32 %34)
  %36 = load i32, i32* @GFP_ATOMIC, align 4
  %37 = call %struct.gdma_dma_desc* @kzalloc(i32 %35, i32 %36)
  store %struct.gdma_dma_desc* %37, %struct.gdma_dma_desc** %13, align 8
  %38 = load %struct.gdma_dma_desc*, %struct.gdma_dma_desc** %13, align 8
  %39 = icmp ne %struct.gdma_dma_desc* %38, null
  br i1 %39, label %47, label %40

40:                                               ; preds = %22
  %41 = load %struct.dma_chan*, %struct.dma_chan** %7, align 8
  %42 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %41, i32 0, i32 0
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @dev_err(i32 %45, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %6, align 8
  br label %142

47:                                               ; preds = %22
  %48 = load i64, i64* %10, align 8
  %49 = load %struct.gdma_dma_desc*, %struct.gdma_dma_desc** %13, align 8
  %50 = getelementptr inbounds %struct.gdma_dma_desc, %struct.gdma_dma_desc* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  store i32 0, i32* %15, align 4
  br label %51

51:                                               ; preds = %124, %47
  %52 = load i32, i32* %15, align 4
  %53 = load i32, i32* %14, align 4
  %54 = icmp ult i32 %52, %53
  br i1 %54, label %55, label %127

55:                                               ; preds = %51
  %56 = load i8*, i8** %9, align 8
  %57 = load %struct.gdma_dma_desc*, %struct.gdma_dma_desc** %13, align 8
  %58 = getelementptr inbounds %struct.gdma_dma_desc, %struct.gdma_dma_desc* %57, i32 0, i32 5
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = load i32, i32* %15, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 2
  store i8* %56, i8** %63, align 8
  %64 = load i8*, i8** %8, align 8
  %65 = load %struct.gdma_dma_desc*, %struct.gdma_dma_desc** %13, align 8
  %66 = getelementptr inbounds %struct.gdma_dma_desc, %struct.gdma_dma_desc* %65, i32 0, i32 5
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = load i32, i32* %15, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  store i8* %64, i8** %71, align 8
  %72 = load i64, i64* %10, align 8
  %73 = load i64, i64* %16, align 8
  %74 = icmp ugt i64 %72, %73
  br i1 %74, label %75, label %84

75:                                               ; preds = %55
  %76 = load i64, i64* %16, align 8
  %77 = load %struct.gdma_dma_desc*, %struct.gdma_dma_desc** %13, align 8
  %78 = getelementptr inbounds %struct.gdma_dma_desc, %struct.gdma_dma_desc* %77, i32 0, i32 5
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = load i32, i32* %15, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  store i64 %76, i64* %83, align 8
  br label %93

84:                                               ; preds = %55
  %85 = load i64, i64* %10, align 8
  %86 = load %struct.gdma_dma_desc*, %struct.gdma_dma_desc** %13, align 8
  %87 = getelementptr inbounds %struct.gdma_dma_desc, %struct.gdma_dma_desc* %86, i32 0, i32 5
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = load i32, i32* %15, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  store i64 %85, i64* %92, align 8
  br label %93

93:                                               ; preds = %84, %75
  %94 = load %struct.gdma_dma_desc*, %struct.gdma_dma_desc** %13, align 8
  %95 = getelementptr inbounds %struct.gdma_dma_desc, %struct.gdma_dma_desc* %94, i32 0, i32 5
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = load i32, i32* %15, align 4
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i8*, i8** %9, align 8
  %103 = getelementptr i8, i8* %102, i64 %101
  store i8* %103, i8** %9, align 8
  %104 = load %struct.gdma_dma_desc*, %struct.gdma_dma_desc** %13, align 8
  %105 = getelementptr inbounds %struct.gdma_dma_desc, %struct.gdma_dma_desc* %104, i32 0, i32 5
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %105, align 8
  %107 = load i32, i32* %15, align 4
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i8*, i8** %8, align 8
  %113 = getelementptr i8, i8* %112, i64 %111
  store i8* %113, i8** %8, align 8
  %114 = load %struct.gdma_dma_desc*, %struct.gdma_dma_desc** %13, align 8
  %115 = getelementptr inbounds %struct.gdma_dma_desc, %struct.gdma_dma_desc* %114, i32 0, i32 5
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %115, align 8
  %117 = load i32, i32* %15, align 4
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* %10, align 8
  %123 = sub i64 %122, %121
  store i64 %123, i64* %10, align 8
  br label %124

124:                                              ; preds = %93
  %125 = load i32, i32* %15, align 4
  %126 = add i32 %125, 1
  store i32 %126, i32* %15, align 4
  br label %51

127:                                              ; preds = %51
  %128 = load i32, i32* %14, align 4
  %129 = load %struct.gdma_dma_desc*, %struct.gdma_dma_desc** %13, align 8
  %130 = getelementptr inbounds %struct.gdma_dma_desc, %struct.gdma_dma_desc* %129, i32 0, i32 1
  store i32 %128, i32* %130, align 8
  %131 = load i32, i32* @DMA_MEM_TO_MEM, align 4
  %132 = load %struct.gdma_dma_desc*, %struct.gdma_dma_desc** %13, align 8
  %133 = getelementptr inbounds %struct.gdma_dma_desc, %struct.gdma_dma_desc* %132, i32 0, i32 4
  store i32 %131, i32* %133, align 4
  %134 = load %struct.gdma_dma_desc*, %struct.gdma_dma_desc** %13, align 8
  %135 = getelementptr inbounds %struct.gdma_dma_desc, %struct.gdma_dma_desc* %134, i32 0, i32 2
  store i32 0, i32* %135, align 4
  %136 = load %struct.gdma_dmaengine_chan*, %struct.gdma_dmaengine_chan** %12, align 8
  %137 = getelementptr inbounds %struct.gdma_dmaengine_chan, %struct.gdma_dmaengine_chan* %136, i32 0, i32 0
  %138 = load %struct.gdma_dma_desc*, %struct.gdma_dma_desc** %13, align 8
  %139 = getelementptr inbounds %struct.gdma_dma_desc, %struct.gdma_dma_desc* %138, i32 0, i32 3
  %140 = load i64, i64* %11, align 8
  %141 = call %struct.dma_async_tx_descriptor* @vchan_tx_prep(i32* %137, i32* %139, i64 %140)
  store %struct.dma_async_tx_descriptor* %141, %struct.dma_async_tx_descriptor** %6, align 8
  br label %142

142:                                              ; preds = %127, %40, %21
  %143 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %6, align 8
  ret %struct.dma_async_tx_descriptor* %143
}

declare dso_local %struct.gdma_dmaengine_chan* @to_gdma_dma_chan(%struct.dma_chan*) #1

declare dso_local i32 @gdma_dma_maxburst(i64) #1

declare dso_local i32 @DIV_ROUND_UP(i64, i64) #1

declare dso_local %struct.gdma_dma_desc* @kzalloc(i32, i32) #1

declare dso_local i32 @struct_size(%struct.gdma_dma_desc*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local %struct.dma_async_tx_descriptor* @vchan_tx_prep(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
