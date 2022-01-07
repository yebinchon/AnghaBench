; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-stm32.c_stm32_spi_dma_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-stm32.c_stm32_spi_dma_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_spi = type { i32, i32, i32, %struct.TYPE_8__*, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__*, i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64 }
%struct.dma_slave_config = type { i32, i32, i32, i8*, i64, i8*, i64 }

@DMA_SLAVE_BUSWIDTH_1_BYTE = common dso_local global i32 0, align 4
@DMA_SLAVE_BUSWIDTH_2_BYTES = common dso_local global i32 0, align 4
@DMA_SLAVE_BUSWIDTH_4_BYTES = common dso_local global i32 0, align 4
@DMA_DEV_TO_MEM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"Rx DMA config buswidth=%d, maxburst=%d\0A\00", align 1
@DMA_MEM_TO_DEV = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"Tx DMA config buswidth=%d, maxburst=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stm32_spi*, %struct.dma_slave_config*, i32)* @stm32_spi_dma_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stm32_spi_dma_config(%struct.stm32_spi* %0, %struct.dma_slave_config* %1, i32 %2) #0 {
  %4 = alloca %struct.stm32_spi*, align 8
  %5 = alloca %struct.dma_slave_config*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.stm32_spi* %0, %struct.stm32_spi** %4, align 8
  store %struct.dma_slave_config* %1, %struct.dma_slave_config** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.stm32_spi*, %struct.stm32_spi** %4, align 8
  %10 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp sle i32 %11, 8
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i32, i32* @DMA_SLAVE_BUSWIDTH_1_BYTE, align 4
  store i32 %14, i32* %7, align 4
  br label %25

15:                                               ; preds = %3
  %16 = load %struct.stm32_spi*, %struct.stm32_spi** %4, align 8
  %17 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp sle i32 %18, 16
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load i32, i32* @DMA_SLAVE_BUSWIDTH_2_BYTES, align 4
  store i32 %21, i32* %7, align 4
  br label %24

22:                                               ; preds = %15
  %23 = load i32, i32* @DMA_SLAVE_BUSWIDTH_4_BYTES, align 4
  store i32 %23, i32* %7, align 4
  br label %24

24:                                               ; preds = %22, %20
  br label %25

25:                                               ; preds = %24, %13
  %26 = load %struct.stm32_spi*, %struct.stm32_spi** %4, align 8
  %27 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %26, i32 0, i32 3
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %25
  %33 = load %struct.stm32_spi*, %struct.stm32_spi** %4, align 8
  %34 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %35, 2
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  store i8* inttoptr (i64 1 to i8*), i8** %8, align 8
  br label %44

38:                                               ; preds = %32
  %39 = load %struct.stm32_spi*, %struct.stm32_spi** %4, align 8
  %40 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = sext i32 %41 to i64
  %43 = inttoptr i64 %42 to i8*
  store i8* %43, i8** %8, align 8
  br label %44

44:                                               ; preds = %38, %37
  br label %46

45:                                               ; preds = %25
  store i8* inttoptr (i64 1 to i8*), i8** %8, align 8
  br label %46

46:                                               ; preds = %45, %44
  %47 = load %struct.dma_slave_config*, %struct.dma_slave_config** %5, align 8
  %48 = call i32 @memset(%struct.dma_slave_config* %47, i32 0, i32 48)
  %49 = load i32, i32* %6, align 4
  %50 = load %struct.dma_slave_config*, %struct.dma_slave_config** %5, align 8
  %51 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load %struct.dma_slave_config*, %struct.dma_slave_config** %5, align 8
  %53 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = sext i32 %54 to i64
  %56 = load i64, i64* @DMA_DEV_TO_MEM, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %85

58:                                               ; preds = %46
  %59 = load %struct.stm32_spi*, %struct.stm32_spi** %4, align 8
  %60 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %59, i32 0, i32 4
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.stm32_spi*, %struct.stm32_spi** %4, align 8
  %63 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %62, i32 0, i32 3
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %61, %69
  %71 = load %struct.dma_slave_config*, %struct.dma_slave_config** %5, align 8
  %72 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %71, i32 0, i32 6
  store i64 %70, i64* %72, align 8
  %73 = load i32, i32* %7, align 4
  %74 = load %struct.dma_slave_config*, %struct.dma_slave_config** %5, align 8
  %75 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 4
  %76 = load i8*, i8** %8, align 8
  %77 = load %struct.dma_slave_config*, %struct.dma_slave_config** %5, align 8
  %78 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %77, i32 0, i32 5
  store i8* %76, i8** %78, align 8
  %79 = load %struct.stm32_spi*, %struct.stm32_spi** %4, align 8
  %80 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* %7, align 4
  %83 = load i8*, i8** %8, align 8
  %84 = call i32 @dev_dbg(i32 %81, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %82, i8* %83)
  br label %120

85:                                               ; preds = %46
  %86 = load %struct.dma_slave_config*, %struct.dma_slave_config** %5, align 8
  %87 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = sext i32 %88 to i64
  %90 = load i64, i64* @DMA_MEM_TO_DEV, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %119

92:                                               ; preds = %85
  %93 = load %struct.stm32_spi*, %struct.stm32_spi** %4, align 8
  %94 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %93, i32 0, i32 4
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.stm32_spi*, %struct.stm32_spi** %4, align 8
  %97 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %96, i32 0, i32 3
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = add nsw i64 %95, %103
  %105 = load %struct.dma_slave_config*, %struct.dma_slave_config** %5, align 8
  %106 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %105, i32 0, i32 4
  store i64 %104, i64* %106, align 8
  %107 = load i32, i32* %7, align 4
  %108 = load %struct.dma_slave_config*, %struct.dma_slave_config** %5, align 8
  %109 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %108, i32 0, i32 2
  store i32 %107, i32* %109, align 8
  %110 = load i8*, i8** %8, align 8
  %111 = load %struct.dma_slave_config*, %struct.dma_slave_config** %5, align 8
  %112 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %111, i32 0, i32 3
  store i8* %110, i8** %112, align 8
  %113 = load %struct.stm32_spi*, %struct.stm32_spi** %4, align 8
  %114 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* %7, align 4
  %117 = load i8*, i8** %8, align 8
  %118 = call i32 @dev_dbg(i32 %115, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %116, i8* %117)
  br label %119

119:                                              ; preds = %92, %85
  br label %120

120:                                              ; preds = %119, %58
  ret void
}

declare dso_local i32 @memset(%struct.dma_slave_config*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
