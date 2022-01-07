; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_dw.c_dw8250_handle_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_dw.c_dw8250_handle_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 (%struct.uart_port*, i32)*, i32, i32 }
%struct.uart_8250_port = type { i32 }
%struct.dw8250_data = type { i32 }

@UART_IIR = common dso_local global i32 0, align 4
@UART_IIR_RX_TIMEOUT = common dso_local global i32 0, align 4
@UART_LSR = common dso_local global i32 0, align 4
@UART_LSR_DR = common dso_local global i32 0, align 4
@UART_LSR_BI = common dso_local global i32 0, align 4
@UART_RX = common dso_local global i32 0, align 4
@UART_IIR_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*)* @dw8250_handle_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dw8250_handle_irq(%struct.uart_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca %struct.uart_8250_port*, align 8
  %5 = alloca %struct.dw8250_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  %9 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %10 = call %struct.uart_8250_port* @up_to_u8250p(%struct.uart_port* %9)
  store %struct.uart_8250_port* %10, %struct.uart_8250_port** %4, align 8
  %11 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %12 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.dw8250_data* @to_dw8250_data(i32 %13)
  store %struct.dw8250_data* %14, %struct.dw8250_data** %5, align 8
  %15 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %16 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %15, i32 0, i32 0
  %17 = load i32 (%struct.uart_port*, i32)*, i32 (%struct.uart_port*, i32)** %16, align 8
  %18 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %19 = load i32, i32* @UART_IIR, align 4
  %20 = call i32 %17(%struct.uart_port* %18, i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load %struct.uart_8250_port*, %struct.uart_8250_port** %4, align 8
  %22 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %59, label %25

25:                                               ; preds = %1
  %26 = load i32, i32* %6, align 4
  %27 = and i32 %26, 63
  %28 = load i32, i32* @UART_IIR_RX_TIMEOUT, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %59

30:                                               ; preds = %25
  %31 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %32 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %31, i32 0, i32 1
  %33 = load i64, i64* %8, align 8
  %34 = call i32 @spin_lock_irqsave(i32* %32, i64 %33)
  %35 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %36 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %35, i32 0, i32 0
  %37 = load i32 (%struct.uart_port*, i32)*, i32 (%struct.uart_port*, i32)** %36, align 8
  %38 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %39 = load i32, i32* @UART_LSR, align 4
  %40 = call i32 %37(%struct.uart_port* %38, i32 %39)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @UART_LSR_DR, align 4
  %43 = load i32, i32* @UART_LSR_BI, align 4
  %44 = or i32 %42, %43
  %45 = and i32 %41, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %54, label %47

47:                                               ; preds = %30
  %48 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %49 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %48, i32 0, i32 0
  %50 = load i32 (%struct.uart_port*, i32)*, i32 (%struct.uart_port*, i32)** %49, align 8
  %51 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %52 = load i32, i32* @UART_RX, align 4
  %53 = call i32 %50(%struct.uart_port* %51, i32 %52)
  br label %54

54:                                               ; preds = %47, %30
  %55 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %56 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %55, i32 0, i32 1
  %57 = load i64, i64* %8, align 8
  %58 = call i32 @spin_unlock_irqrestore(i32* %56, i64 %57)
  br label %59

59:                                               ; preds = %54, %25, %1
  %60 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %61 = load i32, i32* %6, align 4
  %62 = call i64 @serial8250_handle_irq(%struct.uart_port* %60, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  store i32 1, i32* %2, align 4
  br label %81

65:                                               ; preds = %59
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* @UART_IIR_BUSY, align 4
  %68 = and i32 %66, %67
  %69 = load i32, i32* @UART_IIR_BUSY, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %80

71:                                               ; preds = %65
  %72 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %73 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %72, i32 0, i32 0
  %74 = load i32 (%struct.uart_port*, i32)*, i32 (%struct.uart_port*, i32)** %73, align 8
  %75 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %76 = load %struct.dw8250_data*, %struct.dw8250_data** %5, align 8
  %77 = getelementptr inbounds %struct.dw8250_data, %struct.dw8250_data* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 %74(%struct.uart_port* %75, i32 %78)
  store i32 1, i32* %2, align 4
  br label %81

80:                                               ; preds = %65
  store i32 0, i32* %2, align 4
  br label %81

81:                                               ; preds = %80, %71, %64
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local %struct.uart_8250_port* @up_to_u8250p(%struct.uart_port*) #1

declare dso_local %struct.dw8250_data* @to_dw8250_data(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @serial8250_handle_irq(%struct.uart_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
