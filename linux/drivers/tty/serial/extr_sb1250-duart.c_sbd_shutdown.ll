; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sb1250-duart.c_sbd_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sb1250-duart.c_sbd_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.sbd_port = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@R_DUART_CMD = common dso_local global i32 0, align 4
@M_DUART_TX_DIS = common dso_local global i32 0, align 4
@M_DUART_RX_DIS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @sbd_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sbd_shutdown(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.sbd_port*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %4 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %5 = call %struct.sbd_port* @to_sport(%struct.uart_port* %4)
  store %struct.sbd_port* %5, %struct.sbd_port** %3, align 8
  %6 = load %struct.sbd_port*, %struct.sbd_port** %3, align 8
  %7 = load i32, i32* @R_DUART_CMD, align 4
  %8 = load i32, i32* @M_DUART_TX_DIS, align 4
  %9 = load i32, i32* @M_DUART_RX_DIS, align 4
  %10 = or i32 %8, %9
  %11 = call i32 @write_sbdchn(%struct.sbd_port* %6, i32 %7, i32 %10)
  %12 = load %struct.sbd_port*, %struct.sbd_port** %3, align 8
  %13 = getelementptr inbounds %struct.sbd_port, %struct.sbd_port* %12, i32 0, i32 0
  store i32 1, i32* %13, align 4
  %14 = load %struct.sbd_port*, %struct.sbd_port** %3, align 8
  %15 = getelementptr inbounds %struct.sbd_port, %struct.sbd_port* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.sbd_port*, %struct.sbd_port** %3, align 8
  %19 = call i32 @free_irq(i32 %17, %struct.sbd_port* %18)
  ret void
}

declare dso_local %struct.sbd_port* @to_sport(%struct.uart_port*) #1

declare dso_local i32 @write_sbdchn(%struct.sbd_port*, i32, i32) #1

declare dso_local i32 @free_irq(i32, %struct.sbd_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
