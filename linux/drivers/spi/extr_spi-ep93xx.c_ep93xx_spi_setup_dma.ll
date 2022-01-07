; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-ep93xx.c_ep93xx_spi_setup_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-ep93xx.c_ep93xx_spi_setup_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ep93xx_spi = type { i8*, i32*, i8*, %struct.TYPE_2__, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i32, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DMA_SLAVE = common dso_local global i32 0, align 4
@EP93XX_DMA_SSP = common dso_local global i8* null, align 8
@DMA_DEV_TO_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"ep93xx-spi-rx\00", align 1
@ep93xx_spi_dma_filter = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@DMA_MEM_TO_DEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"ep93xx-spi-tx\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ep93xx_spi*)* @ep93xx_spi_setup_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ep93xx_spi_setup_dma(%struct.ep93xx_spi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ep93xx_spi*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ep93xx_spi* %0, %struct.ep93xx_spi** %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call i64 @get_zeroed_page(i32 %6)
  %8 = inttoptr i64 %7 to i8*
  %9 = load %struct.ep93xx_spi*, %struct.ep93xx_spi** %3, align 8
  %10 = getelementptr inbounds %struct.ep93xx_spi, %struct.ep93xx_spi* %9, i32 0, i32 0
  store i8* %8, i8** %10, align 8
  %11 = load %struct.ep93xx_spi*, %struct.ep93xx_spi** %3, align 8
  %12 = getelementptr inbounds %struct.ep93xx_spi, %struct.ep93xx_spi* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %91

18:                                               ; preds = %1
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @dma_cap_zero(i32 %19)
  %21 = load i32, i32* @DMA_SLAVE, align 4
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @dma_cap_set(i32 %21, i32 %22)
  %24 = load i8*, i8** @EP93XX_DMA_SSP, align 8
  %25 = load %struct.ep93xx_spi*, %struct.ep93xx_spi** %3, align 8
  %26 = getelementptr inbounds %struct.ep93xx_spi, %struct.ep93xx_spi* %25, i32 0, i32 4
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  store i8* %24, i8** %27, align 8
  %28 = load i32, i32* @DMA_DEV_TO_MEM, align 4
  %29 = load %struct.ep93xx_spi*, %struct.ep93xx_spi** %3, align 8
  %30 = getelementptr inbounds %struct.ep93xx_spi, %struct.ep93xx_spi* %29, i32 0, i32 4
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  store i32 %28, i32* %31, align 8
  %32 = load %struct.ep93xx_spi*, %struct.ep93xx_spi** %3, align 8
  %33 = getelementptr inbounds %struct.ep93xx_spi, %struct.ep93xx_spi* %32, i32 0, i32 4
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8** %34, align 8
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @ep93xx_spi_dma_filter, align 4
  %37 = load %struct.ep93xx_spi*, %struct.ep93xx_spi** %3, align 8
  %38 = getelementptr inbounds %struct.ep93xx_spi, %struct.ep93xx_spi* %37, i32 0, i32 4
  %39 = call i8* @dma_request_channel(i32 %35, i32 %36, %struct.TYPE_2__* %38)
  %40 = bitcast i8* %39 to i32*
  %41 = load %struct.ep93xx_spi*, %struct.ep93xx_spi** %3, align 8
  %42 = getelementptr inbounds %struct.ep93xx_spi, %struct.ep93xx_spi* %41, i32 0, i32 1
  store i32* %40, i32** %42, align 8
  %43 = load %struct.ep93xx_spi*, %struct.ep93xx_spi** %3, align 8
  %44 = getelementptr inbounds %struct.ep93xx_spi, %struct.ep93xx_spi* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %18
  %48 = load i32, i32* @ENODEV, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %5, align 4
  br label %84

50:                                               ; preds = %18
  %51 = load i8*, i8** @EP93XX_DMA_SSP, align 8
  %52 = load %struct.ep93xx_spi*, %struct.ep93xx_spi** %3, align 8
  %53 = getelementptr inbounds %struct.ep93xx_spi, %struct.ep93xx_spi* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 2
  store i8* %51, i8** %54, align 8
  %55 = load i32, i32* @DMA_MEM_TO_DEV, align 4
  %56 = load %struct.ep93xx_spi*, %struct.ep93xx_spi** %3, align 8
  %57 = getelementptr inbounds %struct.ep93xx_spi, %struct.ep93xx_spi* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  store i32 %55, i32* %58, align 8
  %59 = load %struct.ep93xx_spi*, %struct.ep93xx_spi** %3, align 8
  %60 = getelementptr inbounds %struct.ep93xx_spi, %struct.ep93xx_spi* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8** %61, align 8
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* @ep93xx_spi_dma_filter, align 4
  %64 = load %struct.ep93xx_spi*, %struct.ep93xx_spi** %3, align 8
  %65 = getelementptr inbounds %struct.ep93xx_spi, %struct.ep93xx_spi* %64, i32 0, i32 3
  %66 = call i8* @dma_request_channel(i32 %62, i32 %63, %struct.TYPE_2__* %65)
  %67 = load %struct.ep93xx_spi*, %struct.ep93xx_spi** %3, align 8
  %68 = getelementptr inbounds %struct.ep93xx_spi, %struct.ep93xx_spi* %67, i32 0, i32 2
  store i8* %66, i8** %68, align 8
  %69 = load %struct.ep93xx_spi*, %struct.ep93xx_spi** %3, align 8
  %70 = getelementptr inbounds %struct.ep93xx_spi, %struct.ep93xx_spi* %69, i32 0, i32 2
  %71 = load i8*, i8** %70, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %76, label %73

73:                                               ; preds = %50
  %74 = load i32, i32* @ENODEV, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %5, align 4
  br label %77

76:                                               ; preds = %50
  store i32 0, i32* %2, align 4
  br label %91

77:                                               ; preds = %73
  %78 = load %struct.ep93xx_spi*, %struct.ep93xx_spi** %3, align 8
  %79 = getelementptr inbounds %struct.ep93xx_spi, %struct.ep93xx_spi* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = call i32 @dma_release_channel(i32* %80)
  %82 = load %struct.ep93xx_spi*, %struct.ep93xx_spi** %3, align 8
  %83 = getelementptr inbounds %struct.ep93xx_spi, %struct.ep93xx_spi* %82, i32 0, i32 1
  store i32* null, i32** %83, align 8
  br label %84

84:                                               ; preds = %77, %47
  %85 = load %struct.ep93xx_spi*, %struct.ep93xx_spi** %3, align 8
  %86 = getelementptr inbounds %struct.ep93xx_spi, %struct.ep93xx_spi* %85, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  %88 = ptrtoint i8* %87 to i64
  %89 = call i32 @free_page(i64 %88)
  %90 = load i32, i32* %5, align 4
  store i32 %90, i32* %2, align 4
  br label %91

91:                                               ; preds = %84, %76, %15
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local i64 @get_zeroed_page(i32) #1

declare dso_local i32 @dma_cap_zero(i32) #1

declare dso_local i32 @dma_cap_set(i32, i32) #1

declare dso_local i8* @dma_request_channel(i32, i32, %struct.TYPE_2__*) #1

declare dso_local i32 @dma_release_channel(i32*) #1

declare dso_local i32 @free_page(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
