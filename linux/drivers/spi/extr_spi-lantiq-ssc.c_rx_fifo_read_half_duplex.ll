; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-lantiq-ssc.c_rx_fifo_read_half_duplex.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-lantiq-ssc.c_rx_fifo_read_half_duplex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lantiq_ssc_spi = type { i32, i32* }

@LTQ_SPI_STAT = common dso_local global i32 0, align 4
@LTQ_SPI_STAT_RXBV_M = common dso_local global i32 0, align 4
@LTQ_SPI_STAT_RXBV_S = common dso_local global i32 0, align 4
@LTQ_SPI_RB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lantiq_ssc_spi*)* @rx_fifo_read_half_duplex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rx_fifo_read_half_duplex(%struct.lantiq_ssc_spi* %0) #0 {
  %2 = alloca %struct.lantiq_ssc_spi*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.lantiq_ssc_spi* %0, %struct.lantiq_ssc_spi** %2, align 8
  %9 = load %struct.lantiq_ssc_spi*, %struct.lantiq_ssc_spi** %2, align 8
  %10 = call i32 @rx_fifo_level(%struct.lantiq_ssc_spi* %9)
  store i32 %10, i32* %8, align 4
  br label %11

11:                                               ; preds = %77, %1
  %12 = load i32, i32* %8, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %80

14:                                               ; preds = %11
  %15 = load %struct.lantiq_ssc_spi*, %struct.lantiq_ssc_spi** %2, align 8
  %16 = getelementptr inbounds %struct.lantiq_ssc_spi, %struct.lantiq_ssc_spi* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %17, 4
  br i1 %18, label %19, label %59

19:                                               ; preds = %14
  %20 = load %struct.lantiq_ssc_spi*, %struct.lantiq_ssc_spi** %2, align 8
  %21 = load i32, i32* @LTQ_SPI_STAT, align 4
  %22 = call i32 @lantiq_ssc_readl(%struct.lantiq_ssc_spi* %20, i32 %21)
  %23 = load i32, i32* @LTQ_SPI_STAT_RXBV_M, align 4
  %24 = and i32 %22, %23
  %25 = load i32, i32* @LTQ_SPI_STAT_RXBV_S, align 4
  %26 = lshr i32 %24, %25
  store i32 %26, i32* %6, align 4
  %27 = load %struct.lantiq_ssc_spi*, %struct.lantiq_ssc_spi** %2, align 8
  %28 = load i32, i32* @LTQ_SPI_RB, align 4
  %29 = call i32 @lantiq_ssc_readl(%struct.lantiq_ssc_spi* %27, i32 %28)
  store i32 %29, i32* %3, align 4
  %30 = load i32, i32* %6, align 4
  %31 = sub i32 %30, 1
  %32 = mul i32 %31, 8
  store i32 %32, i32* %7, align 4
  %33 = load %struct.lantiq_ssc_spi*, %struct.lantiq_ssc_spi** %2, align 8
  %34 = getelementptr inbounds %struct.lantiq_ssc_spi, %struct.lantiq_ssc_spi* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  store i32* %35, i32** %5, align 8
  br label %36

36:                                               ; preds = %39, %19
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %58

39:                                               ; preds = %36
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* %7, align 4
  %42 = lshr i32 %40, %41
  %43 = and i32 %42, 255
  %44 = load i32*, i32** %5, align 8
  %45 = getelementptr inbounds i32, i32* %44, i32 1
  store i32* %45, i32** %5, align 8
  store i32 %43, i32* %44, align 4
  %46 = load i32, i32* %6, align 4
  %47 = add i32 %46, -1
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %7, align 4
  %49 = sub i32 %48, 8
  store i32 %49, i32* %7, align 4
  %50 = load %struct.lantiq_ssc_spi*, %struct.lantiq_ssc_spi** %2, align 8
  %51 = getelementptr inbounds %struct.lantiq_ssc_spi, %struct.lantiq_ssc_spi* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = add nsw i32 %52, -1
  store i32 %53, i32* %51, align 8
  %54 = load %struct.lantiq_ssc_spi*, %struct.lantiq_ssc_spi** %2, align 8
  %55 = getelementptr inbounds %struct.lantiq_ssc_spi, %struct.lantiq_ssc_spi* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i32 1
  store i32* %57, i32** %55, align 8
  br label %36

58:                                               ; preds = %36
  br label %77

59:                                               ; preds = %14
  %60 = load %struct.lantiq_ssc_spi*, %struct.lantiq_ssc_spi** %2, align 8
  %61 = load i32, i32* @LTQ_SPI_RB, align 4
  %62 = call i32 @lantiq_ssc_readl(%struct.lantiq_ssc_spi* %60, i32 %61)
  store i32 %62, i32* %3, align 4
  %63 = load %struct.lantiq_ssc_spi*, %struct.lantiq_ssc_spi** %2, align 8
  %64 = getelementptr inbounds %struct.lantiq_ssc_spi, %struct.lantiq_ssc_spi* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  store i32* %65, i32** %4, align 8
  %66 = load i32, i32* %3, align 4
  %67 = load i32*, i32** %4, align 8
  %68 = getelementptr inbounds i32, i32* %67, i32 1
  store i32* %68, i32** %4, align 8
  store i32 %66, i32* %67, align 4
  %69 = load %struct.lantiq_ssc_spi*, %struct.lantiq_ssc_spi** %2, align 8
  %70 = getelementptr inbounds %struct.lantiq_ssc_spi, %struct.lantiq_ssc_spi* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = sub nsw i32 %71, 4
  store i32 %72, i32* %70, align 8
  %73 = load %struct.lantiq_ssc_spi*, %struct.lantiq_ssc_spi** %2, align 8
  %74 = getelementptr inbounds %struct.lantiq_ssc_spi, %struct.lantiq_ssc_spi* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 4
  store i32* %76, i32** %74, align 8
  br label %77

77:                                               ; preds = %59, %58
  %78 = load i32, i32* %8, align 4
  %79 = add i32 %78, -1
  store i32 %79, i32* %8, align 4
  br label %11

80:                                               ; preds = %11
  ret void
}

declare dso_local i32 @rx_fifo_level(%struct.lantiq_ssc_spi*) #1

declare dso_local i32 @lantiq_ssc_readl(%struct.lantiq_ssc_spi*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
