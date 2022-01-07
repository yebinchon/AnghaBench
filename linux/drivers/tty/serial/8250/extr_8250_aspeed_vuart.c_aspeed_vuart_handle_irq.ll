; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_aspeed_vuart.c_aspeed_vuart_handle_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_aspeed_vuart.c_aspeed_vuart_handle_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { %struct.TYPE_2__*, %struct.aspeed_vuart*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.aspeed_vuart = type { i32, %struct.uart_8250_port* }
%struct.uart_8250_port = type { i32 }

@UART_IIR = common dso_local global i32 0, align 4
@UART_IIR_NO_INT = common dso_local global i32 0, align 4
@UART_LSR = common dso_local global i32 0, align 4
@UART_LSR_DR = common dso_local global i32 0, align 4
@UART_LSR_BI = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@unthrottle_timeout = common dso_local global i64 0, align 8
@UART_LSR_THRE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*)* @aspeed_vuart_handle_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aspeed_vuart_handle_irq(%struct.uart_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca %struct.uart_8250_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.aspeed_vuart*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  %11 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %12 = call %struct.uart_8250_port* @up_to_u8250p(%struct.uart_port* %11)
  store %struct.uart_8250_port* %12, %struct.uart_8250_port** %4, align 8
  %13 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %14 = load i32, i32* @UART_IIR, align 4
  %15 = call i32 @serial_port_in(%struct.uart_port* %13, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @UART_IIR_NO_INT, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %107

21:                                               ; preds = %1
  %22 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %23 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %22, i32 0, i32 2
  %24 = load i64, i64* %7, align 8
  %25 = call i32 @spin_lock_irqsave(i32* %23, i64 %24)
  %26 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %27 = load i32, i32* @UART_LSR, align 4
  %28 = call i32 @serial_port_in(%struct.uart_port* %26, i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @UART_LSR_DR, align 4
  %31 = load i32, i32* @UART_LSR_BI, align 4
  %32 = or i32 %30, %31
  %33 = and i32 %29, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %93

35:                                               ; preds = %21
  %36 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %37 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = call i32 @tty_buffer_space_avail(i32* %39)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %64, label %43

43:                                               ; preds = %35
  %44 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %45 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %44, i32 0, i32 1
  %46 = load %struct.aspeed_vuart*, %struct.aspeed_vuart** %45, align 8
  store %struct.aspeed_vuart* %46, %struct.aspeed_vuart** %10, align 8
  %47 = load %struct.uart_8250_port*, %struct.uart_8250_port** %4, align 8
  %48 = call i32 @__aspeed_vuart_set_throttle(%struct.uart_8250_port* %47, i32 1)
  %49 = load %struct.aspeed_vuart*, %struct.aspeed_vuart** %10, align 8
  %50 = getelementptr inbounds %struct.aspeed_vuart, %struct.aspeed_vuart* %49, i32 0, i32 0
  %51 = call i32 @timer_pending(i32* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %63, label %53

53:                                               ; preds = %43
  %54 = load %struct.uart_8250_port*, %struct.uart_8250_port** %4, align 8
  %55 = load %struct.aspeed_vuart*, %struct.aspeed_vuart** %10, align 8
  %56 = getelementptr inbounds %struct.aspeed_vuart, %struct.aspeed_vuart* %55, i32 0, i32 1
  store %struct.uart_8250_port* %54, %struct.uart_8250_port** %56, align 8
  %57 = load %struct.aspeed_vuart*, %struct.aspeed_vuart** %10, align 8
  %58 = getelementptr inbounds %struct.aspeed_vuart, %struct.aspeed_vuart* %57, i32 0, i32 0
  %59 = load i64, i64* @jiffies, align 8
  %60 = load i64, i64* @unthrottle_timeout, align 8
  %61 = add nsw i64 %59, %60
  %62 = call i32 @mod_timer(i32* %58, i64 %61)
  br label %63

63:                                               ; preds = %53, %43
  br label %92

64:                                               ; preds = %35
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @min(i32 %65, i32 256)
  store i32 %66, i32* %9, align 4
  br label %67

67:                                               ; preds = %79, %64
  %68 = load %struct.uart_8250_port*, %struct.uart_8250_port** %4, align 8
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @serial8250_read_char(%struct.uart_8250_port* %68, i32 %69)
  %71 = load %struct.uart_8250_port*, %struct.uart_8250_port** %4, align 8
  %72 = load i32, i32* @UART_LSR, align 4
  %73 = call i32 @serial_in(%struct.uart_8250_port* %71, i32 %72)
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %9, align 4
  %75 = add nsw i32 %74, -1
  store i32 %75, i32* %9, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %67
  br label %86

78:                                               ; preds = %67
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* @UART_LSR_DR, align 4
  %82 = load i32, i32* @UART_LSR_BI, align 4
  %83 = or i32 %81, %82
  %84 = and i32 %80, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %67, label %86

86:                                               ; preds = %79, %77
  %87 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %88 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %87, i32 0, i32 0
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = call i32 @tty_flip_buffer_push(i32* %90)
  br label %92

92:                                               ; preds = %86, %63
  br label %93

93:                                               ; preds = %92, %21
  %94 = load %struct.uart_8250_port*, %struct.uart_8250_port** %4, align 8
  %95 = call i32 @serial8250_modem_status(%struct.uart_8250_port* %94)
  %96 = load i32, i32* %6, align 4
  %97 = load i32, i32* @UART_LSR_THRE, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %93
  %101 = load %struct.uart_8250_port*, %struct.uart_8250_port** %4, align 8
  %102 = call i32 @serial8250_tx_chars(%struct.uart_8250_port* %101)
  br label %103

103:                                              ; preds = %100, %93
  %104 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %105 = load i64, i64* %7, align 8
  %106 = call i32 @uart_unlock_and_check_sysrq(%struct.uart_port* %104, i64 %105)
  store i32 1, i32* %2, align 4
  br label %107

107:                                              ; preds = %103, %20
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

declare dso_local %struct.uart_8250_port* @up_to_u8250p(%struct.uart_port*) #1

declare dso_local i32 @serial_port_in(%struct.uart_port*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @tty_buffer_space_avail(i32*) #1

declare dso_local i32 @__aspeed_vuart_set_throttle(%struct.uart_8250_port*, i32) #1

declare dso_local i32 @timer_pending(i32*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @serial8250_read_char(%struct.uart_8250_port*, i32) #1

declare dso_local i32 @serial_in(%struct.uart_8250_port*, i32) #1

declare dso_local i32 @tty_flip_buffer_push(i32*) #1

declare dso_local i32 @serial8250_modem_status(%struct.uart_8250_port*) #1

declare dso_local i32 @serial8250_tx_chars(%struct.uart_8250_port*) #1

declare dso_local i32 @uart_unlock_and_check_sysrq(%struct.uart_port*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
