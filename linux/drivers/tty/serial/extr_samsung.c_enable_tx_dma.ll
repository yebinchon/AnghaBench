; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_samsung.c_enable_tx_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_samsung.c_enable_tx_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3c24xx_uart_port = type { i32, i32, %struct.uart_port }
%struct.uart_port = type { i32 }

@S3C64XX_UINTM_TXD = common dso_local global i32 0, align 4
@S3C64XX_UINTM = common dso_local global i32 0, align 4
@S3C2410_UCON = common dso_local global i32 0, align 4
@S3C64XX_UCON_TXBURST_MASK = common dso_local global i32 0, align 4
@S3C64XX_UCON_TXMODE_MASK = common dso_local global i32 0, align 4
@S3C64XX_UCON_TXBURST_16 = common dso_local global i32 0, align 4
@S3C64XX_UCON_TXBURST_1 = common dso_local global i32 0, align 4
@S3C64XX_UCON_TXMODE_DMA = common dso_local global i32 0, align 4
@S3C24XX_TX_DMA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s3c24xx_uart_port*)* @enable_tx_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enable_tx_dma(%struct.s3c24xx_uart_port* %0) #0 {
  %2 = alloca %struct.s3c24xx_uart_port*, align 8
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca i32, align 4
  store %struct.s3c24xx_uart_port* %0, %struct.s3c24xx_uart_port** %2, align 8
  %5 = load %struct.s3c24xx_uart_port*, %struct.s3c24xx_uart_port** %2, align 8
  %6 = getelementptr inbounds %struct.s3c24xx_uart_port, %struct.s3c24xx_uart_port* %5, i32 0, i32 2
  store %struct.uart_port* %6, %struct.uart_port** %3, align 8
  %7 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %8 = call i64 @s3c24xx_serial_has_interrupt_mask(%struct.uart_port* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %12 = load i32, i32* @S3C64XX_UINTM_TXD, align 4
  %13 = load i32, i32* @S3C64XX_UINTM, align 4
  %14 = call i32 @s3c24xx_set_bit(%struct.uart_port* %11, i32 %12, i32 %13)
  br label %20

15:                                               ; preds = %1
  %16 = load %struct.s3c24xx_uart_port*, %struct.s3c24xx_uart_port** %2, align 8
  %17 = getelementptr inbounds %struct.s3c24xx_uart_port, %struct.s3c24xx_uart_port* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @disable_irq_nosync(i32 %18)
  br label %20

20:                                               ; preds = %15, %10
  %21 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %22 = load i32, i32* @S3C2410_UCON, align 4
  %23 = call i32 @rd_regl(%struct.uart_port* %21, i32 %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* @S3C64XX_UCON_TXBURST_MASK, align 4
  %25 = load i32, i32* @S3C64XX_UCON_TXMODE_MASK, align 4
  %26 = or i32 %24, %25
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %4, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %4, align 4
  %30 = call i32 (...) @dma_get_cache_alignment()
  %31 = icmp sge i32 %30, 16
  br i1 %31, label %32, label %34

32:                                               ; preds = %20
  %33 = load i32, i32* @S3C64XX_UCON_TXBURST_16, align 4
  br label %36

34:                                               ; preds = %20
  %35 = load i32, i32* @S3C64XX_UCON_TXBURST_1, align 4
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi i32 [ %33, %32 ], [ %35, %34 ]
  %38 = load i32, i32* %4, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* @S3C64XX_UCON_TXMODE_DMA, align 4
  %41 = load i32, i32* %4, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %4, align 4
  %43 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %44 = load i32, i32* @S3C2410_UCON, align 4
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @wr_regl(%struct.uart_port* %43, i32 %44, i32 %45)
  %47 = load i32, i32* @S3C24XX_TX_DMA, align 4
  %48 = load %struct.s3c24xx_uart_port*, %struct.s3c24xx_uart_port** %2, align 8
  %49 = getelementptr inbounds %struct.s3c24xx_uart_port, %struct.s3c24xx_uart_port* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  ret void
}

declare dso_local i64 @s3c24xx_serial_has_interrupt_mask(%struct.uart_port*) #1

declare dso_local i32 @s3c24xx_set_bit(%struct.uart_port*, i32, i32) #1

declare dso_local i32 @disable_irq_nosync(i32) #1

declare dso_local i32 @rd_regl(%struct.uart_port*, i32) #1

declare dso_local i32 @dma_get_cache_alignment(...) #1

declare dso_local i32 @wr_regl(%struct.uart_port*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
