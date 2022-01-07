; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_ar933x_uart.c_ar933x_uart_rx_chars.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_ar933x_uart.c_ar933x_uart_rx_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar933x_uart_port = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.tty_port }
%struct.tty_port = type { i32 }

@AR933X_UART_DATA_REG = common dso_local global i32 0, align 4
@AR933X_UART_DATA_RX_CSR = common dso_local global i32 0, align 4
@AR933X_UART_DATA_TX_RX_MASK = common dso_local global i32 0, align 4
@AR933X_DUMMY_STATUS_RD = common dso_local global i32 0, align 4
@TTY_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ar933x_uart_port*)* @ar933x_uart_rx_chars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar933x_uart_rx_chars(%struct.ar933x_uart_port* %0) #0 {
  %2 = alloca %struct.ar933x_uart_port*, align 8
  %3 = alloca %struct.tty_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  store %struct.ar933x_uart_port* %0, %struct.ar933x_uart_port** %2, align 8
  %7 = load %struct.ar933x_uart_port*, %struct.ar933x_uart_port** %2, align 8
  %8 = getelementptr inbounds %struct.ar933x_uart_port, %struct.ar933x_uart_port* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 3
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store %struct.tty_port* %11, %struct.tty_port** %3, align 8
  store i32 256, i32* %4, align 4
  br label %12

12:                                               ; preds = %56, %1
  %13 = load %struct.ar933x_uart_port*, %struct.ar933x_uart_port** %2, align 8
  %14 = load i32, i32* @AR933X_UART_DATA_REG, align 4
  %15 = call i32 @ar933x_uart_read(%struct.ar933x_uart_port* %13, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @AR933X_UART_DATA_RX_CSR, align 4
  %18 = and i32 %16, %17
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %12
  br label %60

21:                                               ; preds = %12
  %22 = load %struct.ar933x_uart_port*, %struct.ar933x_uart_port** %2, align 8
  %23 = load i32, i32* @AR933X_UART_DATA_REG, align 4
  %24 = load i32, i32* @AR933X_UART_DATA_RX_CSR, align 4
  %25 = call i32 @ar933x_uart_write(%struct.ar933x_uart_port* %22, i32 %23, i32 %24)
  %26 = load %struct.ar933x_uart_port*, %struct.ar933x_uart_port** %2, align 8
  %27 = getelementptr inbounds %struct.ar933x_uart_port, %struct.ar933x_uart_port* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %29, align 8
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @AR933X_UART_DATA_TX_RX_MASK, align 4
  %34 = and i32 %32, %33
  %35 = trunc i32 %34 to i8
  store i8 %35, i8* %6, align 1
  %36 = load %struct.ar933x_uart_port*, %struct.ar933x_uart_port** %2, align 8
  %37 = getelementptr inbounds %struct.ar933x_uart_port, %struct.ar933x_uart_port* %36, i32 0, i32 0
  %38 = load i8, i8* %6, align 1
  %39 = call i64 @uart_handle_sysrq_char(%struct.TYPE_6__* %37, i8 zeroext %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %21
  br label %56

42:                                               ; preds = %21
  %43 = load %struct.ar933x_uart_port*, %struct.ar933x_uart_port** %2, align 8
  %44 = getelementptr inbounds %struct.ar933x_uart_port, %struct.ar933x_uart_port* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @AR933X_DUMMY_STATUS_RD, align 4
  %48 = and i32 %46, %47
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %42
  %51 = load %struct.tty_port*, %struct.tty_port** %3, align 8
  %52 = load i8, i8* %6, align 1
  %53 = load i32, i32* @TTY_NORMAL, align 4
  %54 = call i32 @tty_insert_flip_char(%struct.tty_port* %51, i8 zeroext %52, i32 %53)
  br label %55

55:                                               ; preds = %50, %42
  br label %56

56:                                               ; preds = %55, %41
  %57 = load i32, i32* %4, align 4
  %58 = add nsw i32 %57, -1
  store i32 %58, i32* %4, align 4
  %59 = icmp sgt i32 %57, 0
  br i1 %59, label %12, label %60

60:                                               ; preds = %56, %20
  %61 = load %struct.ar933x_uart_port*, %struct.ar933x_uart_port** %2, align 8
  %62 = getelementptr inbounds %struct.ar933x_uart_port, %struct.ar933x_uart_port* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  %64 = call i32 @spin_unlock(i32* %63)
  %65 = load %struct.tty_port*, %struct.tty_port** %3, align 8
  %66 = call i32 @tty_flip_buffer_push(%struct.tty_port* %65)
  %67 = load %struct.ar933x_uart_port*, %struct.ar933x_uart_port** %2, align 8
  %68 = getelementptr inbounds %struct.ar933x_uart_port, %struct.ar933x_uart_port* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  %70 = call i32 @spin_lock(i32* %69)
  ret void
}

declare dso_local i32 @ar933x_uart_read(%struct.ar933x_uart_port*, i32) #1

declare dso_local i32 @ar933x_uart_write(%struct.ar933x_uart_port*, i32, i32) #1

declare dso_local i64 @uart_handle_sysrq_char(%struct.TYPE_6__*, i8 zeroext) #1

declare dso_local i32 @tty_insert_flip_char(%struct.tty_port*, i8 zeroext, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @tty_flip_buffer_push(%struct.tty_port*) #1

declare dso_local i32 @spin_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
