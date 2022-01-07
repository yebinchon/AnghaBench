; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-pic32.c_pic32_spi_set_word_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-pic32.c_pic32_spi_set_word_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pic32_spi = type { i32, %struct.TYPE_2__*, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@pic32_spi_rx_byte = common dso_local global i32 0, align 4
@pic32_spi_tx_byte = common dso_local global i32 0, align 4
@PIC32_BPW_8 = common dso_local global i32 0, align 4
@DMA_SLAVE_BUSWIDTH_1_BYTE = common dso_local global i32 0, align 4
@pic32_spi_rx_word = common dso_local global i32 0, align 4
@pic32_spi_tx_word = common dso_local global i32 0, align 4
@PIC32_BPW_16 = common dso_local global i32 0, align 4
@DMA_SLAVE_BUSWIDTH_2_BYTES = common dso_local global i32 0, align 4
@pic32_spi_rx_dword = common dso_local global i32 0, align 4
@pic32_spi_tx_dword = common dso_local global i32 0, align 4
@PIC32_BPW_32 = common dso_local global i32 0, align 4
@DMA_SLAVE_BUSWIDTH_4_BYTES = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CTRL_BPW_MASK = common dso_local global i32 0, align 4
@CTRL_BPW_SHIFT = common dso_local global i32 0, align 4
@PIC32F_DMA_PREP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pic32_spi*, i32)* @pic32_spi_set_word_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pic32_spi_set_word_size(%struct.pic32_spi* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pic32_spi*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pic32_spi* %0, %struct.pic32_spi** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  switch i32 %9, label %37 [
    i32 8, label %10
    i32 16, label %19
    i32 32, label %28
  ]

10:                                               ; preds = %2
  %11 = load i32, i32* @pic32_spi_rx_byte, align 4
  %12 = load %struct.pic32_spi*, %struct.pic32_spi** %4, align 8
  %13 = getelementptr inbounds %struct.pic32_spi, %struct.pic32_spi* %12, i32 0, i32 5
  store i32 %11, i32* %13, align 4
  %14 = load i32, i32* @pic32_spi_tx_byte, align 4
  %15 = load %struct.pic32_spi*, %struct.pic32_spi** %4, align 8
  %16 = getelementptr inbounds %struct.pic32_spi, %struct.pic32_spi* %15, i32 0, i32 4
  store i32 %14, i32* %16, align 8
  %17 = load i32, i32* @PIC32_BPW_8, align 4
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* @DMA_SLAVE_BUSWIDTH_1_BYTE, align 4
  store i32 %18, i32* %6, align 4
  br label %40

19:                                               ; preds = %2
  %20 = load i32, i32* @pic32_spi_rx_word, align 4
  %21 = load %struct.pic32_spi*, %struct.pic32_spi** %4, align 8
  %22 = getelementptr inbounds %struct.pic32_spi, %struct.pic32_spi* %21, i32 0, i32 5
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* @pic32_spi_tx_word, align 4
  %24 = load %struct.pic32_spi*, %struct.pic32_spi** %4, align 8
  %25 = getelementptr inbounds %struct.pic32_spi, %struct.pic32_spi* %24, i32 0, i32 4
  store i32 %23, i32* %25, align 8
  %26 = load i32, i32* @PIC32_BPW_16, align 4
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* @DMA_SLAVE_BUSWIDTH_2_BYTES, align 4
  store i32 %27, i32* %6, align 4
  br label %40

28:                                               ; preds = %2
  %29 = load i32, i32* @pic32_spi_rx_dword, align 4
  %30 = load %struct.pic32_spi*, %struct.pic32_spi** %4, align 8
  %31 = getelementptr inbounds %struct.pic32_spi, %struct.pic32_spi* %30, i32 0, i32 5
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* @pic32_spi_tx_dword, align 4
  %33 = load %struct.pic32_spi*, %struct.pic32_spi** %4, align 8
  %34 = getelementptr inbounds %struct.pic32_spi, %struct.pic32_spi* %33, i32 0, i32 4
  store i32 %32, i32* %34, align 8
  %35 = load i32, i32* @PIC32_BPW_32, align 4
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* @DMA_SLAVE_BUSWIDTH_4_BYTES, align 4
  store i32 %36, i32* %6, align 4
  br label %40

37:                                               ; preds = %2
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %81

40:                                               ; preds = %28, %19, %10
  %41 = load %struct.pic32_spi*, %struct.pic32_spi** %4, align 8
  %42 = getelementptr inbounds %struct.pic32_spi, %struct.pic32_spi* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sdiv i32 %44, 8
  %46 = call i32 @DIV_ROUND_UP(i32 %43, i32 %45)
  %47 = load %struct.pic32_spi*, %struct.pic32_spi** %4, align 8
  %48 = getelementptr inbounds %struct.pic32_spi, %struct.pic32_spi* %47, i32 0, i32 3
  store i32 %46, i32* %48, align 4
  %49 = load %struct.pic32_spi*, %struct.pic32_spi** %4, align 8
  %50 = getelementptr inbounds %struct.pic32_spi, %struct.pic32_spi* %49, i32 0, i32 1
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = call i32 @readl(i32* %52)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* @CTRL_BPW_MASK, align 4
  %55 = load i32, i32* @CTRL_BPW_SHIFT, align 4
  %56 = shl i32 %54, %55
  %57 = xor i32 %56, -1
  %58 = load i32, i32* %8, align 4
  %59 = and i32 %58, %57
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* @CTRL_BPW_SHIFT, align 4
  %62 = shl i32 %60, %61
  %63 = load i32, i32* %8, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %8, align 4
  %66 = load %struct.pic32_spi*, %struct.pic32_spi** %4, align 8
  %67 = getelementptr inbounds %struct.pic32_spi, %struct.pic32_spi* %66, i32 0, i32 1
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = call i32 @writel(i32 %65, i32* %69)
  %71 = load i32, i32* @PIC32F_DMA_PREP, align 4
  %72 = load %struct.pic32_spi*, %struct.pic32_spi** %4, align 8
  %73 = getelementptr inbounds %struct.pic32_spi, %struct.pic32_spi* %72, i32 0, i32 0
  %74 = call i64 @test_bit(i32 %71, i32* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %40
  %77 = load %struct.pic32_spi*, %struct.pic32_spi** %4, align 8
  %78 = load i32, i32* %6, align 4
  %79 = call i32 @pic32_spi_dma_config(%struct.pic32_spi* %77, i32 %78)
  br label %80

80:                                               ; preds = %76, %40
  store i32 0, i32* %3, align 4
  br label %81

81:                                               ; preds = %80, %37
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @readl(i32*) #1

declare dso_local i32 @writel(i32, i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @pic32_spi_dma_config(%struct.pic32_spi*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
