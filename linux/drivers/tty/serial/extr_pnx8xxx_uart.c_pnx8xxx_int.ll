; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_pnx8xxx_uart.c_pnx8xxx_int.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_pnx8xxx_uart.c_pnx8xxx_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnx8xxx_port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@PNX8XXX_ISTAT = common dso_local global i32 0, align 4
@PNX8XXX_IEN = common dso_local global i32 0, align 4
@PNX8XXX_UART_INT_RX = common dso_local global i32 0, align 4
@PNX8XXX_UART_INT_BREAK = common dso_local global i32 0, align 4
@PNX8XXX_UART_INT_TX = common dso_local global i32 0, align 4
@PNX8XXX_ICLR = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @pnx8xxx_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pnx8xxx_int(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.pnx8xxx_port*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.pnx8xxx_port*
  store %struct.pnx8xxx_port* %8, %struct.pnx8xxx_port** %5, align 8
  %9 = load %struct.pnx8xxx_port*, %struct.pnx8xxx_port** %5, align 8
  %10 = getelementptr inbounds %struct.pnx8xxx_port, %struct.pnx8xxx_port* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = call i32 @spin_lock(i32* %11)
  %13 = load %struct.pnx8xxx_port*, %struct.pnx8xxx_port** %5, align 8
  %14 = load i32, i32* @PNX8XXX_ISTAT, align 4
  %15 = call i32 @serial_in(%struct.pnx8xxx_port* %13, i32 %14)
  %16 = load %struct.pnx8xxx_port*, %struct.pnx8xxx_port** %5, align 8
  %17 = load i32, i32* @PNX8XXX_IEN, align 4
  %18 = call i32 @serial_in(%struct.pnx8xxx_port* %16, i32 %17)
  %19 = and i32 %15, %18
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @PNX8XXX_UART_INT_RX, align 4
  %22 = load i32, i32* @PNX8XXX_UART_INT_BREAK, align 4
  %23 = or i32 %21, %22
  %24 = and i32 %20, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %2
  %27 = load %struct.pnx8xxx_port*, %struct.pnx8xxx_port** %5, align 8
  %28 = call i32 @pnx8xxx_rx_chars(%struct.pnx8xxx_port* %27)
  br label %29

29:                                               ; preds = %26, %2
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @PNX8XXX_UART_INT_TX, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load %struct.pnx8xxx_port*, %struct.pnx8xxx_port** %5, align 8
  %36 = call i32 @pnx8xxx_tx_chars(%struct.pnx8xxx_port* %35)
  br label %37

37:                                               ; preds = %34, %29
  %38 = load %struct.pnx8xxx_port*, %struct.pnx8xxx_port** %5, align 8
  %39 = load i32, i32* @PNX8XXX_ICLR, align 4
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @serial_out(%struct.pnx8xxx_port* %38, i32 %39, i32 %40)
  %42 = load %struct.pnx8xxx_port*, %struct.pnx8xxx_port** %5, align 8
  %43 = getelementptr inbounds %struct.pnx8xxx_port, %struct.pnx8xxx_port* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = call i32 @spin_unlock(i32* %44)
  %46 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %46
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @serial_in(%struct.pnx8xxx_port*, i32) #1

declare dso_local i32 @pnx8xxx_rx_chars(%struct.pnx8xxx_port*) #1

declare dso_local i32 @pnx8xxx_tx_chars(%struct.pnx8xxx_port*) #1

declare dso_local i32 @serial_out(%struct.pnx8xxx_port*, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
