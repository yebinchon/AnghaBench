; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_port.c_serial8250_em485_rts_after_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_port.c_serial8250_em485_rts_after_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_8250_port = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@SER_RS485_RTS_AFTER_SEND = common dso_local global i32 0, align 4
@UART_MCR_RTS = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_8250_port*)* @serial8250_em485_rts_after_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @serial8250_em485_rts_after_send(%struct.uart_8250_port* %0) #0 {
  %2 = alloca %struct.uart_8250_port*, align 8
  %3 = alloca i8, align 1
  store %struct.uart_8250_port* %0, %struct.uart_8250_port** %2, align 8
  %4 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %5 = call zeroext i8 @serial8250_in_MCR(%struct.uart_8250_port* %4)
  store i8 %5, i8* %3, align 1
  %6 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %7 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @SER_RS485_RTS_AFTER_SEND, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %1
  %15 = load i8, i8* @UART_MCR_RTS, align 1
  %16 = zext i8 %15 to i32
  %17 = load i8, i8* %3, align 1
  %18 = zext i8 %17 to i32
  %19 = or i32 %18, %16
  %20 = trunc i32 %19 to i8
  store i8 %20, i8* %3, align 1
  br label %29

21:                                               ; preds = %1
  %22 = load i8, i8* @UART_MCR_RTS, align 1
  %23 = zext i8 %22 to i32
  %24 = xor i32 %23, -1
  %25 = load i8, i8* %3, align 1
  %26 = zext i8 %25 to i32
  %27 = and i32 %26, %24
  %28 = trunc i32 %27 to i8
  store i8 %28, i8* %3, align 1
  br label %29

29:                                               ; preds = %21, %14
  %30 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %31 = load i8, i8* %3, align 1
  %32 = call i32 @serial8250_out_MCR(%struct.uart_8250_port* %30, i8 zeroext %31)
  ret void
}

declare dso_local zeroext i8 @serial8250_in_MCR(%struct.uart_8250_port*) #1

declare dso_local i32 @serial8250_out_MCR(%struct.uart_8250_port*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
