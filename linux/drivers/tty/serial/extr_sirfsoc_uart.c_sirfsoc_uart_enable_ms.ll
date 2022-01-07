; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sirfsoc_uart.c_sirfsoc_uart_enable_ms.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sirfsoc_uart.c_sirfsoc_uart_enable_ms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.sirfsoc_uart_port = type { i32, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64, %struct.sirfsoc_int_en, %struct.sirfsoc_register }
%struct.sirfsoc_int_en = type { i32 }
%struct.sirfsoc_register = type { i32, i32 }

@SIRF_REAL_UART = common dso_local global i64 0, align 8
@SIRFUART_AFC_TX_EN = common dso_local global i32 0, align 4
@SIRFUART_AFC_RX_EN = common dso_local global i32 0, align 4
@SIRFUART_AFC_CTRL_RX_THD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @sirfsoc_uart_enable_ms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sirfsoc_uart_enable_ms(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.sirfsoc_uart_port*, align 8
  %4 = alloca %struct.sirfsoc_register*, align 8
  %5 = alloca %struct.sirfsoc_int_en*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %6 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %7 = call %struct.sirfsoc_uart_port* @to_sirfport(%struct.uart_port* %6)
  store %struct.sirfsoc_uart_port* %7, %struct.sirfsoc_uart_port** %3, align 8
  %8 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %3, align 8
  %9 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %8, i32 0, i32 3
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 2
  store %struct.sirfsoc_register* %11, %struct.sirfsoc_register** %4, align 8
  %12 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %3, align 8
  %13 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %12, i32 0, i32 3
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  store %struct.sirfsoc_int_en* %15, %struct.sirfsoc_int_en** %5, align 8
  %16 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %3, align 8
  %17 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %1
  br label %83

21:                                               ; preds = %1
  %22 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %3, align 8
  %23 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %22, i32 0, i32 0
  store i32 1, i32* %23, align 8
  %24 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %3, align 8
  %25 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %24, i32 0, i32 3
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @SIRF_REAL_UART, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %77

31:                                               ; preds = %21
  %32 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %33 = load %struct.sirfsoc_register*, %struct.sirfsoc_register** %4, align 8
  %34 = getelementptr inbounds %struct.sirfsoc_register, %struct.sirfsoc_register* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %37 = load %struct.sirfsoc_register*, %struct.sirfsoc_register** %4, align 8
  %38 = getelementptr inbounds %struct.sirfsoc_register, %struct.sirfsoc_register* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @rd_regl(%struct.uart_port* %36, i32 %39)
  %41 = load i32, i32* @SIRFUART_AFC_TX_EN, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @SIRFUART_AFC_RX_EN, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @SIRFUART_AFC_CTRL_RX_THD, align 4
  %46 = or i32 %44, %45
  %47 = call i32 @wr_regl(%struct.uart_port* %32, i32 %35, i32 %46)
  %48 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %3, align 8
  %49 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %67, label %52

52:                                               ; preds = %31
  %53 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %54 = load %struct.sirfsoc_register*, %struct.sirfsoc_register** %4, align 8
  %55 = getelementptr inbounds %struct.sirfsoc_register, %struct.sirfsoc_register* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %58 = load %struct.sirfsoc_register*, %struct.sirfsoc_register** %4, align 8
  %59 = getelementptr inbounds %struct.sirfsoc_register, %struct.sirfsoc_register* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @rd_regl(%struct.uart_port* %57, i32 %60)
  %62 = load %struct.sirfsoc_int_en*, %struct.sirfsoc_int_en** %5, align 8
  %63 = getelementptr inbounds %struct.sirfsoc_int_en, %struct.sirfsoc_int_en* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %61, %64
  %66 = call i32 @wr_regl(%struct.uart_port* %53, i32 %56, i32 %65)
  br label %76

67:                                               ; preds = %31
  %68 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %69 = load %struct.sirfsoc_register*, %struct.sirfsoc_register** %4, align 8
  %70 = getelementptr inbounds %struct.sirfsoc_register, %struct.sirfsoc_register* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.sirfsoc_int_en*, %struct.sirfsoc_int_en** %5, align 8
  %73 = getelementptr inbounds %struct.sirfsoc_int_en, %struct.sirfsoc_int_en* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @wr_regl(%struct.uart_port* %68, i32 %71, i32 %74)
  br label %76

76:                                               ; preds = %67, %52
  br label %83

77:                                               ; preds = %21
  %78 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %3, align 8
  %79 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @gpio_to_irq(i32 %80)
  %82 = call i32 @enable_irq(i32 %81)
  br label %83

83:                                               ; preds = %20, %77, %76
  ret void
}

declare dso_local %struct.sirfsoc_uart_port* @to_sirfport(%struct.uart_port*) #1

declare dso_local i32 @wr_regl(%struct.uart_port*, i32, i32) #1

declare dso_local i32 @rd_regl(%struct.uart_port*, i32) #1

declare dso_local i32 @enable_irq(i32) #1

declare dso_local i32 @gpio_to_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
