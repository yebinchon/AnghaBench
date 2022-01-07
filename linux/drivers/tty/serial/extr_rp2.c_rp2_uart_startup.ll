; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_rp2.c_rp2_uart_startup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_rp2.c_rp2_uart_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.rp2_uart_port = type { i32 }

@RP2_TXRX_CTL = common dso_local global i32 0, align 4
@RP2_TXRX_CTL_MSRIRQ_m = common dso_local global i32 0, align 4
@RP2_TXRX_CTL_RXIRQ_m = common dso_local global i32 0, align 4
@RP2_TXRX_CTL_RX_TRIG_m = common dso_local global i32 0, align 4
@RP2_TXRX_CTL_RX_TRIG_1 = common dso_local global i32 0, align 4
@RP2_CHAN_STAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*)* @rp2_uart_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rp2_uart_startup(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.rp2_uart_port*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %4 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %5 = call %struct.rp2_uart_port* @port_to_up(%struct.uart_port* %4)
  store %struct.rp2_uart_port* %5, %struct.rp2_uart_port** %3, align 8
  %6 = load %struct.rp2_uart_port*, %struct.rp2_uart_port** %3, align 8
  %7 = call i32 @rp2_flush_fifos(%struct.rp2_uart_port* %6)
  %8 = load %struct.rp2_uart_port*, %struct.rp2_uart_port** %3, align 8
  %9 = load i32, i32* @RP2_TXRX_CTL, align 4
  %10 = load i32, i32* @RP2_TXRX_CTL_MSRIRQ_m, align 4
  %11 = load i32, i32* @RP2_TXRX_CTL_RXIRQ_m, align 4
  %12 = call i32 @rp2_rmw(%struct.rp2_uart_port* %8, i32 %9, i32 %10, i32 %11)
  %13 = load %struct.rp2_uart_port*, %struct.rp2_uart_port** %3, align 8
  %14 = load i32, i32* @RP2_TXRX_CTL, align 4
  %15 = load i32, i32* @RP2_TXRX_CTL_RX_TRIG_m, align 4
  %16 = load i32, i32* @RP2_TXRX_CTL_RX_TRIG_1, align 4
  %17 = call i32 @rp2_rmw(%struct.rp2_uart_port* %13, i32 %14, i32 %15, i32 %16)
  %18 = load %struct.rp2_uart_port*, %struct.rp2_uart_port** %3, align 8
  %19 = load i32, i32* @RP2_CHAN_STAT, align 4
  %20 = call i32 @rp2_rmw(%struct.rp2_uart_port* %18, i32 %19, i32 0, i32 0)
  %21 = load %struct.rp2_uart_port*, %struct.rp2_uart_port** %3, align 8
  %22 = load %struct.rp2_uart_port*, %struct.rp2_uart_port** %3, align 8
  %23 = getelementptr inbounds %struct.rp2_uart_port, %struct.rp2_uart_port* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @rp2_mask_ch_irq(%struct.rp2_uart_port* %21, i32 %24, i32 1)
  ret i32 0
}

declare dso_local %struct.rp2_uart_port* @port_to_up(%struct.uart_port*) #1

declare dso_local i32 @rp2_flush_fifos(%struct.rp2_uart_port*) #1

declare dso_local i32 @rp2_rmw(%struct.rp2_uart_port*, i32, i32, i32) #1

declare dso_local i32 @rp2_mask_ch_irq(%struct.rp2_uart_port*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
