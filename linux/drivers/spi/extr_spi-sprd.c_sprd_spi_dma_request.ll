; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-sprd.c_sprd_spi_dma_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-sprd.c_sprd_spi_dma_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sprd_spi = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i8** }

@.str = private unnamed_addr constant [7 x i8] c"rx_chn\00", align 1
@SPRD_SPI_RX = common dso_local global i64 0, align 8
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"request RX DMA channel failed!\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"tx_chn\00", align 1
@SPRD_SPI_TX = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [32 x i8] c"request TX DMA channel failed!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sprd_spi*)* @sprd_spi_dma_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sprd_spi_dma_request(%struct.sprd_spi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sprd_spi*, align 8
  store %struct.sprd_spi* %0, %struct.sprd_spi** %3, align 8
  %4 = load %struct.sprd_spi*, %struct.sprd_spi** %3, align 8
  %5 = getelementptr inbounds %struct.sprd_spi, %struct.sprd_spi* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 8
  %7 = call i8* @dma_request_chan(i32 %6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.sprd_spi*, %struct.sprd_spi** %3, align 8
  %9 = getelementptr inbounds %struct.sprd_spi, %struct.sprd_spi* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i8**, i8*** %10, align 8
  %12 = load i64, i64* @SPRD_SPI_RX, align 8
  %13 = getelementptr inbounds i8*, i8** %11, i64 %12
  store i8* %7, i8** %13, align 8
  %14 = load %struct.sprd_spi*, %struct.sprd_spi** %3, align 8
  %15 = getelementptr inbounds %struct.sprd_spi, %struct.sprd_spi* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i8**, i8*** %16, align 8
  %18 = load i64, i64* @SPRD_SPI_RX, align 8
  %19 = getelementptr inbounds i8*, i8** %17, i64 %18
  %20 = load i8*, i8** %19, align 8
  %21 = call i64 @IS_ERR_OR_NULL(i8* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %57

23:                                               ; preds = %1
  %24 = load %struct.sprd_spi*, %struct.sprd_spi** %3, align 8
  %25 = getelementptr inbounds %struct.sprd_spi, %struct.sprd_spi* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i8**, i8*** %26, align 8
  %28 = load i64, i64* @SPRD_SPI_RX, align 8
  %29 = getelementptr inbounds i8*, i8** %27, i64 %28
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 @PTR_ERR(i8* %30)
  %32 = load i32, i32* @EPROBE_DEFER, align 4
  %33 = sub nsw i32 0, %32
  %34 = icmp eq i32 %31, %33
  br i1 %34, label %35, label %44

35:                                               ; preds = %23
  %36 = load %struct.sprd_spi*, %struct.sprd_spi** %3, align 8
  %37 = getelementptr inbounds %struct.sprd_spi, %struct.sprd_spi* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i8**, i8*** %38, align 8
  %40 = load i64, i64* @SPRD_SPI_RX, align 8
  %41 = getelementptr inbounds i8*, i8** %39, i64 %40
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @PTR_ERR(i8* %42)
  store i32 %43, i32* %2, align 4
  br label %120

44:                                               ; preds = %23
  %45 = load %struct.sprd_spi*, %struct.sprd_spi** %3, align 8
  %46 = getelementptr inbounds %struct.sprd_spi, %struct.sprd_spi* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @dev_err(i32 %47, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %49 = load %struct.sprd_spi*, %struct.sprd_spi** %3, align 8
  %50 = getelementptr inbounds %struct.sprd_spi, %struct.sprd_spi* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i8**, i8*** %51, align 8
  %53 = load i64, i64* @SPRD_SPI_RX, align 8
  %54 = getelementptr inbounds i8*, i8** %52, i64 %53
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 @PTR_ERR(i8* %55)
  store i32 %56, i32* %2, align 4
  br label %120

57:                                               ; preds = %1
  %58 = load %struct.sprd_spi*, %struct.sprd_spi** %3, align 8
  %59 = getelementptr inbounds %struct.sprd_spi, %struct.sprd_spi* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i8* @dma_request_chan(i32 %60, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %62 = load %struct.sprd_spi*, %struct.sprd_spi** %3, align 8
  %63 = getelementptr inbounds %struct.sprd_spi, %struct.sprd_spi* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i8**, i8*** %64, align 8
  %66 = load i64, i64* @SPRD_SPI_TX, align 8
  %67 = getelementptr inbounds i8*, i8** %65, i64 %66
  store i8* %61, i8** %67, align 8
  %68 = load %struct.sprd_spi*, %struct.sprd_spi** %3, align 8
  %69 = getelementptr inbounds %struct.sprd_spi, %struct.sprd_spi* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i8**, i8*** %70, align 8
  %72 = load i64, i64* @SPRD_SPI_TX, align 8
  %73 = getelementptr inbounds i8*, i8** %71, i64 %72
  %74 = load i8*, i8** %73, align 8
  %75 = call i64 @IS_ERR_OR_NULL(i8* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %119

77:                                               ; preds = %57
  %78 = load %struct.sprd_spi*, %struct.sprd_spi** %3, align 8
  %79 = getelementptr inbounds %struct.sprd_spi, %struct.sprd_spi* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i8**, i8*** %80, align 8
  %82 = load i64, i64* @SPRD_SPI_TX, align 8
  %83 = getelementptr inbounds i8*, i8** %81, i64 %82
  %84 = load i8*, i8** %83, align 8
  %85 = call i32 @PTR_ERR(i8* %84)
  %86 = load i32, i32* @EPROBE_DEFER, align 4
  %87 = sub nsw i32 0, %86
  %88 = icmp eq i32 %85, %87
  br i1 %88, label %89, label %98

89:                                               ; preds = %77
  %90 = load %struct.sprd_spi*, %struct.sprd_spi** %3, align 8
  %91 = getelementptr inbounds %struct.sprd_spi, %struct.sprd_spi* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i8**, i8*** %92, align 8
  %94 = load i64, i64* @SPRD_SPI_TX, align 8
  %95 = getelementptr inbounds i8*, i8** %93, i64 %94
  %96 = load i8*, i8** %95, align 8
  %97 = call i32 @PTR_ERR(i8* %96)
  store i32 %97, i32* %2, align 4
  br label %120

98:                                               ; preds = %77
  %99 = load %struct.sprd_spi*, %struct.sprd_spi** %3, align 8
  %100 = getelementptr inbounds %struct.sprd_spi, %struct.sprd_spi* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @dev_err(i32 %101, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %103 = load %struct.sprd_spi*, %struct.sprd_spi** %3, align 8
  %104 = getelementptr inbounds %struct.sprd_spi, %struct.sprd_spi* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  %106 = load i8**, i8*** %105, align 8
  %107 = load i64, i64* @SPRD_SPI_RX, align 8
  %108 = getelementptr inbounds i8*, i8** %106, i64 %107
  %109 = load i8*, i8** %108, align 8
  %110 = call i32 @dma_release_channel(i8* %109)
  %111 = load %struct.sprd_spi*, %struct.sprd_spi** %3, align 8
  %112 = getelementptr inbounds %struct.sprd_spi, %struct.sprd_spi* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  %114 = load i8**, i8*** %113, align 8
  %115 = load i64, i64* @SPRD_SPI_TX, align 8
  %116 = getelementptr inbounds i8*, i8** %114, i64 %115
  %117 = load i8*, i8** %116, align 8
  %118 = call i32 @PTR_ERR(i8* %117)
  store i32 %118, i32* %2, align 4
  br label %120

119:                                              ; preds = %57
  store i32 0, i32* %2, align 4
  br label %120

120:                                              ; preds = %119, %98, %89, %44, %35
  %121 = load i32, i32* %2, align 4
  ret i32 %121
}

declare dso_local i8* @dma_request_chan(i32, i8*) #1

declare dso_local i64 @IS_ERR_OR_NULL(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @dma_release_channel(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
