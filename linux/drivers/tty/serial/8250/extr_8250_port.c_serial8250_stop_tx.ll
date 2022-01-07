; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_port.c_serial8250_stop_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_port.c_serial8250_stop_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i64 }
%struct.uart_8250_port = type { i32 }

@PORT_16C950 = common dso_local global i64 0, align 8
@UART_ACR_TXDIS = common dso_local global i32 0, align 4
@UART_ACR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @serial8250_stop_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @serial8250_stop_tx(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.uart_8250_port*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %4 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %5 = call %struct.uart_8250_port* @up_to_u8250p(%struct.uart_port* %4)
  store %struct.uart_8250_port* %5, %struct.uart_8250_port** %3, align 8
  %6 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %7 = call i32 @serial8250_rpm_get(%struct.uart_8250_port* %6)
  %8 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %9 = call i32 @__stop_tx(%struct.uart_8250_port* %8)
  %10 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %11 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @PORT_16C950, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %27

15:                                               ; preds = %1
  %16 = load i32, i32* @UART_ACR_TXDIS, align 4
  %17 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %18 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = or i32 %19, %16
  store i32 %20, i32* %18, align 4
  %21 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %22 = load i32, i32* @UART_ACR, align 4
  %23 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %24 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @serial_icr_write(%struct.uart_8250_port* %21, i32 %22, i32 %25)
  br label %27

27:                                               ; preds = %15, %1
  %28 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %29 = call i32 @serial8250_rpm_put(%struct.uart_8250_port* %28)
  ret void
}

declare dso_local %struct.uart_8250_port* @up_to_u8250p(%struct.uart_port*) #1

declare dso_local i32 @serial8250_rpm_get(%struct.uart_8250_port*) #1

declare dso_local i32 @__stop_tx(%struct.uart_8250_port*) #1

declare dso_local i32 @serial_icr_write(%struct.uart_8250_port*, i32, i32) #1

declare dso_local i32 @serial8250_rpm_put(%struct.uart_8250_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
