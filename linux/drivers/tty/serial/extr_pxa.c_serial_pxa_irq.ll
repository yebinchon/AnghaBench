; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_pxa.c_serial_pxa_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_pxa.c_serial_pxa_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_pxa_port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@UART_IIR = common dso_local global i32 0, align 4
@UART_IIR_NO_INT = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@UART_LSR = common dso_local global i32 0, align 4
@UART_LSR_DR = common dso_local global i32 0, align 4
@UART_LSR_THRE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @serial_pxa_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @serial_pxa_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.uart_pxa_port*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.uart_pxa_port*
  store %struct.uart_pxa_port* %10, %struct.uart_pxa_port** %6, align 8
  %11 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %6, align 8
  %12 = load i32, i32* @UART_IIR, align 4
  %13 = call i32 @serial_in(%struct.uart_pxa_port* %11, i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @UART_IIR_NO_INT, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @IRQ_NONE, align 4
  store i32 %19, i32* %3, align 4
  br label %51

20:                                               ; preds = %2
  %21 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %6, align 8
  %22 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = call i32 @spin_lock(i32* %23)
  %25 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %6, align 8
  %26 = load i32, i32* @UART_LSR, align 4
  %27 = call i32 @serial_in(%struct.uart_pxa_port* %25, i32 %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @UART_LSR_DR, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %20
  %33 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %6, align 8
  %34 = call i32 @receive_chars(%struct.uart_pxa_port* %33, i32* %8)
  br label %35

35:                                               ; preds = %32, %20
  %36 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %6, align 8
  %37 = call i32 @check_modem_status(%struct.uart_pxa_port* %36)
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @UART_LSR_THRE, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %35
  %43 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %6, align 8
  %44 = call i32 @transmit_chars(%struct.uart_pxa_port* %43)
  br label %45

45:                                               ; preds = %42, %35
  %46 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %6, align 8
  %47 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = call i32 @spin_unlock(i32* %48)
  %50 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %45, %18
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @serial_in(%struct.uart_pxa_port*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @receive_chars(%struct.uart_pxa_port*, i32*) #1

declare dso_local i32 @check_modem_status(%struct.uart_pxa_port*) #1

declare dso_local i32 @transmit_chars(%struct.uart_pxa_port*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
