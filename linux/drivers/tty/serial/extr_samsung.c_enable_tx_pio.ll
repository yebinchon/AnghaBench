; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_samsung.c_enable_tx_pio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_samsung.c_enable_tx_pio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3c24xx_uart_port = type { i8*, i32, i8*, %struct.uart_port }
%struct.uart_port = type { i32 }

@S3C24XX_TX_PIO = common dso_local global i8* null, align 8
@S3C2410_UFCON = common dso_local global i32 0, align 4
@S3C2410_UCON = common dso_local global i32 0, align 4
@S3C64XX_UCON_TXMODE_MASK = common dso_local global i32 0, align 4
@S3C64XX_UCON_TXMODE_CPU = common dso_local global i32 0, align 4
@S3C64XX_UINTM_TXD = common dso_local global i32 0, align 4
@S3C64XX_UINTM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s3c24xx_uart_port*)* @enable_tx_pio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enable_tx_pio(%struct.s3c24xx_uart_port* %0) #0 {
  %2 = alloca %struct.s3c24xx_uart_port*, align 8
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.s3c24xx_uart_port* %0, %struct.s3c24xx_uart_port** %2, align 8
  %6 = load %struct.s3c24xx_uart_port*, %struct.s3c24xx_uart_port** %2, align 8
  %7 = getelementptr inbounds %struct.s3c24xx_uart_port, %struct.s3c24xx_uart_port* %6, i32 0, i32 3
  store %struct.uart_port* %7, %struct.uart_port** %3, align 8
  %8 = load i8*, i8** @S3C24XX_TX_PIO, align 8
  %9 = load %struct.s3c24xx_uart_port*, %struct.s3c24xx_uart_port** %2, align 8
  %10 = getelementptr inbounds %struct.s3c24xx_uart_port, %struct.s3c24xx_uart_port* %9, i32 0, i32 2
  store i8* %8, i8** %10, align 8
  %11 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %12 = load i32, i32* @S3C2410_UFCON, align 4
  %13 = call i32 @rd_regl(%struct.uart_port* %11, i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %15 = load i32, i32* @S3C2410_UFCON, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @wr_regl(%struct.uart_port* %14, i32 %15, i32 %16)
  %18 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %19 = load i32, i32* @S3C2410_UCON, align 4
  %20 = call i32 @rd_regl(%struct.uart_port* %18, i32 %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* @S3C64XX_UCON_TXMODE_MASK, align 4
  %22 = xor i32 %21, -1
  %23 = load i32, i32* %4, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* @S3C64XX_UCON_TXMODE_CPU, align 4
  %26 = load i32, i32* %4, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %4, align 4
  %28 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %29 = load i32, i32* @S3C2410_UCON, align 4
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @wr_regl(%struct.uart_port* %28, i32 %29, i32 %30)
  %32 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %33 = call i64 @s3c24xx_serial_has_interrupt_mask(%struct.uart_port* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %1
  %36 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %37 = load i32, i32* @S3C64XX_UINTM_TXD, align 4
  %38 = load i32, i32* @S3C64XX_UINTM, align 4
  %39 = call i32 @s3c24xx_clear_bit(%struct.uart_port* %36, i32 %37, i32 %38)
  br label %45

40:                                               ; preds = %1
  %41 = load %struct.s3c24xx_uart_port*, %struct.s3c24xx_uart_port** %2, align 8
  %42 = getelementptr inbounds %struct.s3c24xx_uart_port, %struct.s3c24xx_uart_port* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @enable_irq(i32 %43)
  br label %45

45:                                               ; preds = %40, %35
  %46 = load i8*, i8** @S3C24XX_TX_PIO, align 8
  %47 = load %struct.s3c24xx_uart_port*, %struct.s3c24xx_uart_port** %2, align 8
  %48 = getelementptr inbounds %struct.s3c24xx_uart_port, %struct.s3c24xx_uart_port* %47, i32 0, i32 0
  store i8* %46, i8** %48, align 8
  ret void
}

declare dso_local i32 @rd_regl(%struct.uart_port*, i32) #1

declare dso_local i32 @wr_regl(%struct.uart_port*, i32, i32) #1

declare dso_local i64 @s3c24xx_serial_has_interrupt_mask(%struct.uart_port*) #1

declare dso_local i32 @s3c24xx_clear_bit(%struct.uart_port*, i32, i32) #1

declare dso_local i32 @enable_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
