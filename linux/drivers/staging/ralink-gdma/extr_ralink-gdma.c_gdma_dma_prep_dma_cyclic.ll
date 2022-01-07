; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/ralink-gdma/extr_ralink-gdma.c_gdma_dma_prep_dma_cyclic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/ralink-gdma/extr_ralink-gdma.c_gdma_dma_prep_dma_cyclic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_async_tx_descriptor = type { i32 }
%struct.dma_chan = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.gdma_dmaengine_chan = type { i32 }
%struct.gdma_dma_desc = type { i64, i32, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64, i64 }

@GDMA_REG_CTRL0_TX_MASK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"cyclic len too large %d\0A\00", align 1
@sg = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"alloc cyclic decs error\0A\00", align 1
@DMA_MEM_TO_DEV = common dso_local global i32 0, align 4
@DMA_DEV_TO_MEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"direction type %d error\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dma_async_tx_descriptor* (%struct.dma_chan*, i64, i64, i64, i32, i64)* @gdma_dma_prep_dma_cyclic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dma_async_tx_descriptor* @gdma_dma_prep_dma_cyclic(%struct.dma_chan* %0, i64 %1, i64 %2, i64 %3, i32 %4, i64 %5) #0 {
  %7 = alloca %struct.dma_async_tx_descriptor*, align 8
  %8 = alloca %struct.dma_chan*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.gdma_dmaengine_chan*, align 8
  %15 = alloca %struct.gdma_dma_desc*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.dma_chan* %0, %struct.dma_chan** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i64 %5, i64* %13, align 8
  %18 = load %struct.dma_chan*, %struct.dma_chan** %8, align 8
  %19 = call %struct.gdma_dmaengine_chan* @to_gdma_dma_chan(%struct.dma_chan* %18)
  store %struct.gdma_dmaengine_chan* %19, %struct.gdma_dmaengine_chan** %14, align 8
  %20 = load i64, i64* %10, align 8
  %21 = load i64, i64* %11, align 8
  %22 = urem i64 %20, %21
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %6
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %7, align 8
  br label %133

25:                                               ; preds = %6
  %26 = load i64, i64* %11, align 8
  %27 = load i64, i64* @GDMA_REG_CTRL0_TX_MASK, align 8
  %28 = icmp ugt i64 %26, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %25
  %30 = load %struct.dma_chan*, %struct.dma_chan** %8, align 8
  %31 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %30, i32 0, i32 0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i64, i64* %11, align 8
  %36 = call i32 (i32, i8*, ...) @dev_err(i32 %34, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %35)
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %7, align 8
  br label %133

37:                                               ; preds = %25
  %38 = load i64, i64* %10, align 8
  %39 = load i64, i64* %11, align 8
  %40 = udiv i64 %38, %39
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %16, align 4
  %42 = load %struct.gdma_dma_desc*, %struct.gdma_dma_desc** %15, align 8
  %43 = load i32, i32* @sg, align 4
  %44 = load i32, i32* %16, align 4
  %45 = call i32 @struct_size(%struct.gdma_dma_desc* %42, i32 %43, i32 %44)
  %46 = load i32, i32* @GFP_ATOMIC, align 4
  %47 = call %struct.gdma_dma_desc* @kzalloc(i32 %45, i32 %46)
  store %struct.gdma_dma_desc* %47, %struct.gdma_dma_desc** %15, align 8
  %48 = load %struct.gdma_dma_desc*, %struct.gdma_dma_desc** %15, align 8
  %49 = icmp ne %struct.gdma_dma_desc* %48, null
  br i1 %49, label %57, label %50

50:                                               ; preds = %37
  %51 = load %struct.dma_chan*, %struct.dma_chan** %8, align 8
  %52 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %51, i32 0, i32 0
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 (i32, i8*, ...) @dev_err(i32 %55, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %7, align 8
  br label %133

57:                                               ; preds = %37
  %58 = load i64, i64* %10, align 8
  %59 = load %struct.gdma_dma_desc*, %struct.gdma_dma_desc** %15, align 8
  %60 = getelementptr inbounds %struct.gdma_dma_desc, %struct.gdma_dma_desc* %59, i32 0, i32 0
  store i64 %58, i64* %60, align 8
  store i32 0, i32* %17, align 4
  br label %61

61:                                               ; preds = %112, %57
  %62 = load i32, i32* %17, align 4
  %63 = load i32, i32* %16, align 4
  %64 = icmp ult i32 %62, %63
  br i1 %64, label %65, label %115

65:                                               ; preds = %61
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* @DMA_MEM_TO_DEV, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %78

69:                                               ; preds = %65
  %70 = load i64, i64* %9, align 8
  %71 = load %struct.gdma_dma_desc*, %struct.gdma_dma_desc** %15, align 8
  %72 = getelementptr inbounds %struct.gdma_dma_desc, %struct.gdma_dma_desc* %71, i32 0, i32 5
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = load i32, i32* %17, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  store i64 %70, i64* %77, align 8
  br label %100

78:                                               ; preds = %65
  %79 = load i32, i32* %12, align 4
  %80 = load i32, i32* @DMA_DEV_TO_MEM, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %91

82:                                               ; preds = %78
  %83 = load i64, i64* %9, align 8
  %84 = load %struct.gdma_dma_desc*, %struct.gdma_dma_desc** %15, align 8
  %85 = getelementptr inbounds %struct.gdma_dma_desc, %struct.gdma_dma_desc* %84, i32 0, i32 5
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = load i32, i32* %17, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 1
  store i64 %83, i64* %90, align 8
  br label %99

91:                                               ; preds = %78
  %92 = load %struct.dma_chan*, %struct.dma_chan** %8, align 8
  %93 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %92, i32 0, i32 0
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %12, align 4
  %98 = call i32 (i32, i8*, ...) @dev_err(i32 %96, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %97)
  br label %130

99:                                               ; preds = %82
  br label %100

100:                                              ; preds = %99, %69
  %101 = load i64, i64* %11, align 8
  %102 = load %struct.gdma_dma_desc*, %struct.gdma_dma_desc** %15, align 8
  %103 = getelementptr inbounds %struct.gdma_dma_desc, %struct.gdma_dma_desc* %102, i32 0, i32 5
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %103, align 8
  %105 = load i32, i32* %17, align 4
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 2
  store i64 %101, i64* %108, align 8
  %109 = load i64, i64* %11, align 8
  %110 = load i64, i64* %9, align 8
  %111 = add i64 %110, %109
  store i64 %111, i64* %9, align 8
  br label %112

112:                                              ; preds = %100
  %113 = load i32, i32* %17, align 4
  %114 = add i32 %113, 1
  store i32 %114, i32* %17, align 4
  br label %61

115:                                              ; preds = %61
  %116 = load i32, i32* %16, align 4
  %117 = load %struct.gdma_dma_desc*, %struct.gdma_dma_desc** %15, align 8
  %118 = getelementptr inbounds %struct.gdma_dma_desc, %struct.gdma_dma_desc* %117, i32 0, i32 1
  store i32 %116, i32* %118, align 8
  %119 = load i32, i32* %12, align 4
  %120 = load %struct.gdma_dma_desc*, %struct.gdma_dma_desc** %15, align 8
  %121 = getelementptr inbounds %struct.gdma_dma_desc, %struct.gdma_dma_desc* %120, i32 0, i32 2
  store i32 %119, i32* %121, align 4
  %122 = load %struct.gdma_dma_desc*, %struct.gdma_dma_desc** %15, align 8
  %123 = getelementptr inbounds %struct.gdma_dma_desc, %struct.gdma_dma_desc* %122, i32 0, i32 3
  store i32 1, i32* %123, align 8
  %124 = load %struct.gdma_dmaengine_chan*, %struct.gdma_dmaengine_chan** %14, align 8
  %125 = getelementptr inbounds %struct.gdma_dmaengine_chan, %struct.gdma_dmaengine_chan* %124, i32 0, i32 0
  %126 = load %struct.gdma_dma_desc*, %struct.gdma_dma_desc** %15, align 8
  %127 = getelementptr inbounds %struct.gdma_dma_desc, %struct.gdma_dma_desc* %126, i32 0, i32 4
  %128 = load i64, i64* %13, align 8
  %129 = call %struct.dma_async_tx_descriptor* @vchan_tx_prep(i32* %125, i32* %127, i64 %128)
  store %struct.dma_async_tx_descriptor* %129, %struct.dma_async_tx_descriptor** %7, align 8
  br label %133

130:                                              ; preds = %91
  %131 = load %struct.gdma_dma_desc*, %struct.gdma_dma_desc** %15, align 8
  %132 = call i32 @kfree(%struct.gdma_dma_desc* %131)
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %7, align 8
  br label %133

133:                                              ; preds = %130, %115, %50, %29, %24
  %134 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %7, align 8
  ret %struct.dma_async_tx_descriptor* %134
}

declare dso_local %struct.gdma_dmaengine_chan* @to_gdma_dma_chan(%struct.dma_chan*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local %struct.gdma_dma_desc* @kzalloc(i32, i32) #1

declare dso_local i32 @struct_size(%struct.gdma_dma_desc*, i32, i32) #1

declare dso_local %struct.dma_async_tx_descriptor* @vchan_tx_prep(i32*, i32*, i64) #1

declare dso_local i32 @kfree(%struct.gdma_dma_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
