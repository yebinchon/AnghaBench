; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sunsu.c_sunsu_serial_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sunsu.c_sunsu_serial_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_sunsu_port = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@UART_LSR = common dso_local global i32 0, align 4
@UART_LSR_DR = common dso_local global i8 0, align 1
@UART_LSR_THRE = common dso_local global i8 0, align 1
@UART_IIR = common dso_local global i32 0, align 4
@UART_IIR_NO_INT = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @sunsu_serial_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sunsu_serial_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.uart_sunsu_port*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8, align 1
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.uart_sunsu_port*
  store %struct.uart_sunsu_port* %9, %struct.uart_sunsu_port** %5, align 8
  %10 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %5, align 8
  %11 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i64, i64* %6, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  br label %15

15:                                               ; preds = %57, %2
  %16 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %5, align 8
  %17 = load i32, i32* @UART_LSR, align 4
  %18 = call zeroext i8 @serial_inp(%struct.uart_sunsu_port* %16, i32 %17)
  store i8 %18, i8* %7, align 1
  %19 = load i8, i8* %7, align 1
  %20 = zext i8 %19 to i32
  %21 = load i8, i8* @UART_LSR_DR, align 1
  %22 = zext i8 %21 to i32
  %23 = and i32 %20, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %15
  %26 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %5, align 8
  %27 = call i32 @receive_chars(%struct.uart_sunsu_port* %26, i8* %7)
  br label %28

28:                                               ; preds = %25, %15
  %29 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %5, align 8
  %30 = call i32 @check_modem_status(%struct.uart_sunsu_port* %29)
  %31 = load i8, i8* %7, align 1
  %32 = zext i8 %31 to i32
  %33 = load i8, i8* @UART_LSR_THRE, align 1
  %34 = zext i8 %33 to i32
  %35 = and i32 %32, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %28
  %38 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %5, align 8
  %39 = call i32 @transmit_chars(%struct.uart_sunsu_port* %38)
  br label %40

40:                                               ; preds = %37, %28
  %41 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %5, align 8
  %42 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i64, i64* %6, align 8
  %45 = call i32 @spin_unlock_irqrestore(i32* %43, i64 %44)
  %46 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %5, align 8
  %47 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = call i32 @tty_flip_buffer_push(i32* %50)
  %52 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %5, align 8
  %53 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i64, i64* %6, align 8
  %56 = call i32 @spin_lock_irqsave(i32* %54, i64 %55)
  br label %57

57:                                               ; preds = %40
  %58 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %5, align 8
  %59 = load i32, i32* @UART_IIR, align 4
  %60 = call i32 @serial_in(%struct.uart_sunsu_port* %58, i32 %59)
  %61 = load i32, i32* @UART_IIR_NO_INT, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  %64 = xor i1 %63, true
  br i1 %64, label %15, label %65

65:                                               ; preds = %57
  %66 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %5, align 8
  %67 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i64, i64* %6, align 8
  %70 = call i32 @spin_unlock_irqrestore(i32* %68, i64 %69)
  %71 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %71
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local zeroext i8 @serial_inp(%struct.uart_sunsu_port*, i32) #1

declare dso_local i32 @receive_chars(%struct.uart_sunsu_port*, i8*) #1

declare dso_local i32 @check_modem_status(%struct.uart_sunsu_port*) #1

declare dso_local i32 @transmit_chars(%struct.uart_sunsu_port*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @tty_flip_buffer_push(i32*) #1

declare dso_local i32 @serial_in(%struct.uart_sunsu_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
