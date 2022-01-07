; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_port.c_serial8250_handle_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_port.c_serial8250_handle_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.uart_8250_port = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@UART_IIR_NO_INT = common dso_local global i32 0, align 4
@UART_LSR = common dso_local global i32 0, align 4
@UART_LSR_DR = common dso_local global i8 0, align 1
@UART_LSR_BI = common dso_local global i8 0, align 1
@UART_LSR_THRE = common dso_local global i8 0, align 1
@UART_IER_THRI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @serial8250_handle_irq(%struct.uart_port* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.uart_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i64, align 8
  %8 = alloca %struct.uart_8250_port*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %10 = call %struct.uart_8250_port* @up_to_u8250p(%struct.uart_port* %9)
  store %struct.uart_8250_port* %10, %struct.uart_8250_port** %8, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @UART_IIR_NO_INT, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %83

16:                                               ; preds = %2
  %17 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %18 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %17, i32 0, i32 0
  %19 = load i64, i64* %7, align 8
  %20 = call i32 @spin_lock_irqsave(i32* %18, i64 %19)
  %21 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %22 = load i32, i32* @UART_LSR, align 4
  %23 = call zeroext i8 @serial_port_in(%struct.uart_port* %21, i32 %22)
  store i8 %23, i8* %6, align 1
  %24 = load i8, i8* %6, align 1
  %25 = zext i8 %24 to i32
  %26 = load i8, i8* @UART_LSR_DR, align 1
  %27 = zext i8 %26 to i32
  %28 = load i8, i8* @UART_LSR_BI, align 1
  %29 = zext i8 %28 to i32
  %30 = or i32 %27, %29
  %31 = and i32 %25, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %48

33:                                               ; preds = %16
  %34 = load %struct.uart_8250_port*, %struct.uart_8250_port** %8, align 8
  %35 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = icmp ne %struct.TYPE_2__* %36, null
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load %struct.uart_8250_port*, %struct.uart_8250_port** %8, align 8
  %40 = load i32, i32* %5, align 4
  %41 = call i64 @handle_rx_dma(%struct.uart_8250_port* %39, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %38, %33
  %44 = load %struct.uart_8250_port*, %struct.uart_8250_port** %8, align 8
  %45 = load i8, i8* %6, align 1
  %46 = call zeroext i8 @serial8250_rx_chars(%struct.uart_8250_port* %44, i8 zeroext %45)
  store i8 %46, i8* %6, align 1
  br label %47

47:                                               ; preds = %43, %38
  br label %48

48:                                               ; preds = %47, %16
  %49 = load %struct.uart_8250_port*, %struct.uart_8250_port** %8, align 8
  %50 = call i32 @serial8250_modem_status(%struct.uart_8250_port* %49)
  %51 = load %struct.uart_8250_port*, %struct.uart_8250_port** %8, align 8
  %52 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %51, i32 0, i32 1
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = icmp ne %struct.TYPE_2__* %53, null
  br i1 %54, label %55, label %62

55:                                               ; preds = %48
  %56 = load %struct.uart_8250_port*, %struct.uart_8250_port** %8, align 8
  %57 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %56, i32 0, i32 1
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %79

62:                                               ; preds = %55, %48
  %63 = load i8, i8* %6, align 1
  %64 = zext i8 %63 to i32
  %65 = load i8, i8* @UART_LSR_THRE, align 1
  %66 = zext i8 %65 to i32
  %67 = and i32 %64, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %79

69:                                               ; preds = %62
  %70 = load %struct.uart_8250_port*, %struct.uart_8250_port** %8, align 8
  %71 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @UART_IER_THRI, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %69
  %77 = load %struct.uart_8250_port*, %struct.uart_8250_port** %8, align 8
  %78 = call i32 @serial8250_tx_chars(%struct.uart_8250_port* %77)
  br label %79

79:                                               ; preds = %76, %69, %62, %55
  %80 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %81 = load i64, i64* %7, align 8
  %82 = call i32 @uart_unlock_and_check_sysrq(%struct.uart_port* %80, i64 %81)
  store i32 1, i32* %3, align 4
  br label %83

83:                                               ; preds = %79, %15
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local %struct.uart_8250_port* @up_to_u8250p(%struct.uart_port*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local zeroext i8 @serial_port_in(%struct.uart_port*, i32) #1

declare dso_local i64 @handle_rx_dma(%struct.uart_8250_port*, i32) #1

declare dso_local zeroext i8 @serial8250_rx_chars(%struct.uart_8250_port*, i8 zeroext) #1

declare dso_local i32 @serial8250_modem_status(%struct.uart_8250_port*) #1

declare dso_local i32 @serial8250_tx_chars(%struct.uart_8250_port*) #1

declare dso_local i32 @uart_unlock_and_check_sysrq(%struct.uart_port*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
