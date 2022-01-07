; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_samsung.c_s3c64xx_serial_handle_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_samsung.c_s3c64xx_serial_handle_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3c24xx_uart_port = type { %struct.uart_port }
%struct.uart_port = type { i32 }

@S3C64XX_UINTP = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@S3C64XX_UINTM_RXD_MSK = common dso_local global i32 0, align 4
@S3C64XX_UINTM_TXD_MSK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @s3c64xx_serial_handle_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c64xx_serial_handle_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.s3c24xx_uart_port*, align 8
  %6 = alloca %struct.uart_port*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.s3c24xx_uart_port*
  store %struct.s3c24xx_uart_port* %10, %struct.s3c24xx_uart_port** %5, align 8
  %11 = load %struct.s3c24xx_uart_port*, %struct.s3c24xx_uart_port** %5, align 8
  %12 = getelementptr inbounds %struct.s3c24xx_uart_port, %struct.s3c24xx_uart_port* %11, i32 0, i32 0
  store %struct.uart_port* %12, %struct.uart_port** %6, align 8
  %13 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %14 = load i32, i32* @S3C64XX_UINTP, align 4
  %15 = call i32 @rd_regl(%struct.uart_port* %13, i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @S3C64XX_UINTM_RXD_MSK, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %2
  %22 = load i32, i32* %3, align 4
  %23 = load i8*, i8** %4, align 8
  %24 = call i32 @s3c24xx_serial_rx_chars(i32 %22, i8* %23)
  store i32 %24, i32* %8, align 4
  %25 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %26 = load i32, i32* @S3C64XX_UINTP, align 4
  %27 = load i32, i32* @S3C64XX_UINTM_RXD_MSK, align 4
  %28 = call i32 @wr_regl(%struct.uart_port* %25, i32 %26, i32 %27)
  br label %29

29:                                               ; preds = %21, %2
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @S3C64XX_UINTM_TXD_MSK, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %29
  %35 = load i32, i32* %3, align 4
  %36 = load i8*, i8** %4, align 8
  %37 = call i32 @s3c24xx_serial_tx_chars(i32 %35, i8* %36)
  store i32 %37, i32* %8, align 4
  %38 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %39 = load i32, i32* @S3C64XX_UINTP, align 4
  %40 = load i32, i32* @S3C64XX_UINTM_TXD_MSK, align 4
  %41 = call i32 @wr_regl(%struct.uart_port* %38, i32 %39, i32 %40)
  br label %42

42:                                               ; preds = %34, %29
  %43 = load i32, i32* %8, align 4
  ret i32 %43
}

declare dso_local i32 @rd_regl(%struct.uart_port*, i32) #1

declare dso_local i32 @s3c24xx_serial_rx_chars(i32, i8*) #1

declare dso_local i32 @wr_regl(%struct.uart_port*, i32, i32) #1

declare dso_local i32 @s3c24xx_serial_tx_chars(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
