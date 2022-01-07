; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-stm32-qspi.c_stm32_qspi_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-stm32-qspi.c_stm32_qspi_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_qspi = type { i64, i64, i64 }
%struct.spi_mem_op = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

@CCR_FMODE_MM = common dso_local global i64 0, align 8
@SPI_MEM_DATA_IN = common dso_local global i64 0, align 8
@SPI_MEM_DATA_OUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stm32_qspi*, %struct.spi_mem_op*)* @stm32_qspi_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_qspi_tx(%struct.stm32_qspi* %0, %struct.spi_mem_op* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.stm32_qspi*, align 8
  %5 = alloca %struct.spi_mem_op*, align 8
  store %struct.stm32_qspi* %0, %struct.stm32_qspi** %4, align 8
  store %struct.spi_mem_op* %1, %struct.spi_mem_op** %5, align 8
  %6 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %7 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %58

12:                                               ; preds = %2
  %13 = load %struct.stm32_qspi*, %struct.stm32_qspi** %4, align 8
  %14 = getelementptr inbounds %struct.stm32_qspi, %struct.stm32_qspi* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @CCR_FMODE_MM, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %12
  %19 = load %struct.stm32_qspi*, %struct.stm32_qspi** %4, align 8
  %20 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %21 = call i32 @stm32_qspi_tx_mm(%struct.stm32_qspi* %19, %struct.spi_mem_op* %20)
  store i32 %21, i32* %3, align 4
  br label %58

22:                                               ; preds = %12
  %23 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %24 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @SPI_MEM_DATA_IN, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %22
  %30 = load %struct.stm32_qspi*, %struct.stm32_qspi** %4, align 8
  %31 = getelementptr inbounds %struct.stm32_qspi, %struct.stm32_qspi* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %46, label %34

34:                                               ; preds = %29, %22
  %35 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %36 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @SPI_MEM_DATA_OUT, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %53

41:                                               ; preds = %34
  %42 = load %struct.stm32_qspi*, %struct.stm32_qspi** %4, align 8
  %43 = getelementptr inbounds %struct.stm32_qspi, %struct.stm32_qspi* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %41, %29
  %47 = load %struct.stm32_qspi*, %struct.stm32_qspi** %4, align 8
  %48 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %49 = call i32 @stm32_qspi_tx_dma(%struct.stm32_qspi* %47, %struct.spi_mem_op* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %46
  store i32 0, i32* %3, align 4
  br label %58

52:                                               ; preds = %46
  br label %53

53:                                               ; preds = %52, %41, %34
  br label %54

54:                                               ; preds = %53
  %55 = load %struct.stm32_qspi*, %struct.stm32_qspi** %4, align 8
  %56 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %57 = call i32 @stm32_qspi_tx_poll(%struct.stm32_qspi* %55, %struct.spi_mem_op* %56)
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %54, %51, %18, %11
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @stm32_qspi_tx_mm(%struct.stm32_qspi*, %struct.spi_mem_op*) #1

declare dso_local i32 @stm32_qspi_tx_dma(%struct.stm32_qspi*, %struct.spi_mem_op*) #1

declare dso_local i32 @stm32_qspi_tx_poll(%struct.stm32_qspi*, %struct.spi_mem_op*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
