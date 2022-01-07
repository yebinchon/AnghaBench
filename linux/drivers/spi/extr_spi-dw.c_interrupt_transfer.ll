; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-dw.c_interrupt_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-dw.c_interrupt_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_spi = type { i64, i64, i32 }

@DW_SPI_ISR = common dso_local global i32 0, align 4
@SPI_INT_TXOI = common dso_local global i32 0, align 4
@SPI_INT_RXOI = common dso_local global i32 0, align 4
@SPI_INT_RXUI = common dso_local global i32 0, align 4
@DW_SPI_ICR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"interrupt_transfer: fifo overrun/underrun\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@SPI_INT_TXEI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dw_spi*)* @interrupt_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @interrupt_transfer(%struct.dw_spi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dw_spi*, align 8
  %4 = alloca i32, align 4
  store %struct.dw_spi* %0, %struct.dw_spi** %3, align 8
  %5 = load %struct.dw_spi*, %struct.dw_spi** %3, align 8
  %6 = load i32, i32* @DW_SPI_ISR, align 4
  %7 = call i32 @dw_readl(%struct.dw_spi* %5, i32 %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @SPI_INT_TXOI, align 4
  %10 = load i32, i32* @SPI_INT_RXOI, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @SPI_INT_RXUI, align 4
  %13 = or i32 %11, %12
  %14 = and i32 %8, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %1
  %17 = load %struct.dw_spi*, %struct.dw_spi** %3, align 8
  %18 = load i32, i32* @DW_SPI_ICR, align 4
  %19 = call i32 @dw_readl(%struct.dw_spi* %17, i32 %18)
  %20 = load %struct.dw_spi*, %struct.dw_spi** %3, align 8
  %21 = call i32 @int_error_stop(%struct.dw_spi* %20, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %22, i32* %2, align 4
  br label %58

23:                                               ; preds = %1
  %24 = load %struct.dw_spi*, %struct.dw_spi** %3, align 8
  %25 = call i32 @dw_reader(%struct.dw_spi* %24)
  %26 = load %struct.dw_spi*, %struct.dw_spi** %3, align 8
  %27 = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.dw_spi*, %struct.dw_spi** %3, align 8
  %30 = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %28, %31
  br i1 %32, label %33, label %42

33:                                               ; preds = %23
  %34 = load %struct.dw_spi*, %struct.dw_spi** %3, align 8
  %35 = load i32, i32* @SPI_INT_TXEI, align 4
  %36 = call i32 @spi_mask_intr(%struct.dw_spi* %34, i32 %35)
  %37 = load %struct.dw_spi*, %struct.dw_spi** %3, align 8
  %38 = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @spi_finalize_current_transfer(i32 %39)
  %41 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %41, i32* %2, align 4
  br label %58

42:                                               ; preds = %23
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @SPI_INT_TXEI, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %42
  %48 = load %struct.dw_spi*, %struct.dw_spi** %3, align 8
  %49 = load i32, i32* @SPI_INT_TXEI, align 4
  %50 = call i32 @spi_mask_intr(%struct.dw_spi* %48, i32 %49)
  %51 = load %struct.dw_spi*, %struct.dw_spi** %3, align 8
  %52 = call i32 @dw_writer(%struct.dw_spi* %51)
  %53 = load %struct.dw_spi*, %struct.dw_spi** %3, align 8
  %54 = load i32, i32* @SPI_INT_TXEI, align 4
  %55 = call i32 @spi_umask_intr(%struct.dw_spi* %53, i32 %54)
  br label %56

56:                                               ; preds = %47, %42
  %57 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %57, i32* %2, align 4
  br label %58

58:                                               ; preds = %56, %33, %16
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32 @dw_readl(%struct.dw_spi*, i32) #1

declare dso_local i32 @int_error_stop(%struct.dw_spi*, i8*) #1

declare dso_local i32 @dw_reader(%struct.dw_spi*) #1

declare dso_local i32 @spi_mask_intr(%struct.dw_spi*, i32) #1

declare dso_local i32 @spi_finalize_current_transfer(i32) #1

declare dso_local i32 @dw_writer(%struct.dw_spi*) #1

declare dso_local i32 @spi_umask_intr(%struct.dw_spi*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
