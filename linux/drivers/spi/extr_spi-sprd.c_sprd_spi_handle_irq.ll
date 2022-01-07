; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-sprd.c_sprd_spi_handle_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-sprd.c_sprd_spi_handle_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sprd_spi = type { i32, i64, i64 (%struct.sprd_spi*, i64)*, i32, %struct.TYPE_2__, i32, i64 }
%struct.TYPE_2__ = type { i64 }

@SPRD_SPI_INT_MASK_STS = common dso_local global i64 0, align 8
@SPRD_SPI_MASK_TX_END = common dso_local global i32 0, align 4
@SPRD_SPI_TX_END_CLR = common dso_local global i32 0, align 4
@SPRD_SPI_INT_CLR = common dso_local global i64 0, align 8
@SPRD_SPI_RX_MODE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@SPRD_SPI_MASK_RX_END = common dso_local global i32 0, align 4
@SPRD_SPI_RX_END_CLR = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @sprd_spi_handle_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sprd_spi_handle_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sprd_spi*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.sprd_spi*
  store %struct.sprd_spi* %9, %struct.sprd_spi** %6, align 8
  %10 = load %struct.sprd_spi*, %struct.sprd_spi** %6, align 8
  %11 = getelementptr inbounds %struct.sprd_spi, %struct.sprd_spi* %10, i32 0, i32 6
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @SPRD_SPI_INT_MASK_STS, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @readl_relaxed(i64 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @SPRD_SPI_MASK_TX_END, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %40

20:                                               ; preds = %2
  %21 = load i32, i32* @SPRD_SPI_TX_END_CLR, align 4
  %22 = load %struct.sprd_spi*, %struct.sprd_spi** %6, align 8
  %23 = getelementptr inbounds %struct.sprd_spi, %struct.sprd_spi* %22, i32 0, i32 6
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @SPRD_SPI_INT_CLR, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @writel_relaxed(i32 %21, i64 %26)
  %28 = load %struct.sprd_spi*, %struct.sprd_spi** %6, align 8
  %29 = getelementptr inbounds %struct.sprd_spi, %struct.sprd_spi* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @SPRD_SPI_RX_MODE, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %20
  %35 = load %struct.sprd_spi*, %struct.sprd_spi** %6, align 8
  %36 = getelementptr inbounds %struct.sprd_spi, %struct.sprd_spi* %35, i32 0, i32 3
  %37 = call i32 @complete(i32* %36)
  br label %38

38:                                               ; preds = %34, %20
  %39 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %39, i32* %3, align 4
  br label %97

40:                                               ; preds = %2
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @SPRD_SPI_MASK_RX_END, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %95

45:                                               ; preds = %40
  %46 = load i32, i32* @SPRD_SPI_RX_END_CLR, align 4
  %47 = load %struct.sprd_spi*, %struct.sprd_spi** %6, align 8
  %48 = getelementptr inbounds %struct.sprd_spi, %struct.sprd_spi* %47, i32 0, i32 6
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @SPRD_SPI_INT_CLR, align 8
  %51 = add nsw i64 %49, %50
  %52 = call i32 @writel_relaxed(i32 %46, i64 %51)
  %53 = load %struct.sprd_spi*, %struct.sprd_spi** %6, align 8
  %54 = getelementptr inbounds %struct.sprd_spi, %struct.sprd_spi* %53, i32 0, i32 4
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.sprd_spi*, %struct.sprd_spi** %6, align 8
  %58 = getelementptr inbounds %struct.sprd_spi, %struct.sprd_spi* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp slt i64 %56, %59
  br i1 %60, label %61, label %90

61:                                               ; preds = %45
  %62 = load %struct.sprd_spi*, %struct.sprd_spi** %6, align 8
  %63 = getelementptr inbounds %struct.sprd_spi, %struct.sprd_spi* %62, i32 0, i32 4
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.sprd_spi*, %struct.sprd_spi** %6, align 8
  %67 = getelementptr inbounds %struct.sprd_spi, %struct.sprd_spi* %66, i32 0, i32 5
  %68 = load i32, i32* %67, align 8
  %69 = sext i32 %68 to i64
  %70 = add nsw i64 %69, %65
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %67, align 8
  %72 = load %struct.sprd_spi*, %struct.sprd_spi** %6, align 8
  %73 = getelementptr inbounds %struct.sprd_spi, %struct.sprd_spi* %72, i32 0, i32 2
  %74 = load i64 (%struct.sprd_spi*, i64)*, i64 (%struct.sprd_spi*, i64)** %73, align 8
  %75 = load %struct.sprd_spi*, %struct.sprd_spi** %6, align 8
  %76 = load %struct.sprd_spi*, %struct.sprd_spi** %6, align 8
  %77 = getelementptr inbounds %struct.sprd_spi, %struct.sprd_spi* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.sprd_spi*, %struct.sprd_spi** %6, align 8
  %80 = getelementptr inbounds %struct.sprd_spi, %struct.sprd_spi* %79, i32 0, i32 4
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = sub nsw i64 %78, %82
  %84 = call i64 %74(%struct.sprd_spi* %75, i64 %83)
  %85 = load %struct.sprd_spi*, %struct.sprd_spi** %6, align 8
  %86 = getelementptr inbounds %struct.sprd_spi, %struct.sprd_spi* %85, i32 0, i32 4
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = add nsw i64 %88, %84
  store i64 %89, i64* %87, align 8
  br label %90

90:                                               ; preds = %61, %45
  %91 = load %struct.sprd_spi*, %struct.sprd_spi** %6, align 8
  %92 = getelementptr inbounds %struct.sprd_spi, %struct.sprd_spi* %91, i32 0, i32 3
  %93 = call i32 @complete(i32* %92)
  %94 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %94, i32* %3, align 4
  br label %97

95:                                               ; preds = %40
  %96 = load i32, i32* @IRQ_NONE, align 4
  store i32 %96, i32* %3, align 4
  br label %97

97:                                               ; preds = %95, %90, %38
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
