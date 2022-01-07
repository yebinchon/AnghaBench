; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_bcm63xx_uart.c_bcm_uart_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_bcm63xx_uart.c_bcm_uart_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }

@UART_IR_REG = common dso_local global i32 0, align 4
@UART_RX_INT_STAT = common dso_local global i32 0, align 4
@UART_TX_INT_STAT = common dso_local global i32 0, align 4
@UART_IR_EXTIP = common dso_local global i32 0, align 4
@UART_EXTINP_REG = common dso_local global i32 0, align 4
@UART_EXTINP_IR_CTS = common dso_local global i32 0, align 4
@UART_EXTINP_CTS_MASK = common dso_local global i32 0, align 4
@UART_EXTINP_IR_DCD = common dso_local global i32 0, align 4
@UART_EXTINP_DCD_MASK = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @bcm_uart_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_uart_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.uart_port*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.uart_port*
  store %struct.uart_port* %9, %struct.uart_port** %5, align 8
  %10 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %11 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %10, i32 0, i32 0
  %12 = call i32 @spin_lock(i32* %11)
  %13 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %14 = load i32, i32* @UART_IR_REG, align 4
  %15 = call i32 @bcm_uart_readl(%struct.uart_port* %13, i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @UART_RX_INT_STAT, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %22 = call i32 @bcm_uart_do_rx(%struct.uart_port* %21)
  br label %23

23:                                               ; preds = %20, %2
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @UART_TX_INT_STAT, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %30 = call i32 @bcm_uart_do_tx(%struct.uart_port* %29)
  br label %31

31:                                               ; preds = %28, %23
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @UART_IR_EXTIP, align 4
  %34 = call i32 @UART_IR_MASK(i32 %33)
  %35 = and i32 %32, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %65

37:                                               ; preds = %31
  %38 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %39 = load i32, i32* @UART_EXTINP_REG, align 4
  %40 = call i32 @bcm_uart_readl(%struct.uart_port* %38, i32 %39)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @UART_EXTINP_IR_CTS, align 4
  %43 = call i32 @UART_EXTINP_IRSTAT(i32 %42)
  %44 = and i32 %41, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %37
  %47 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @UART_EXTINP_CTS_MASK, align 4
  %50 = and i32 %48, %49
  %51 = call i32 @uart_handle_cts_change(%struct.uart_port* %47, i32 %50)
  br label %52

52:                                               ; preds = %46, %37
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @UART_EXTINP_IR_DCD, align 4
  %55 = call i32 @UART_EXTINP_IRSTAT(i32 %54)
  %56 = and i32 %53, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %52
  %59 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* @UART_EXTINP_DCD_MASK, align 4
  %62 = and i32 %60, %61
  %63 = call i32 @uart_handle_dcd_change(%struct.uart_port* %59, i32 %62)
  br label %64

64:                                               ; preds = %58, %52
  br label %65

65:                                               ; preds = %64, %31
  %66 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %67 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %66, i32 0, i32 0
  %68 = call i32 @spin_unlock(i32* %67)
  %69 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %69
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @bcm_uart_readl(%struct.uart_port*, i32) #1

declare dso_local i32 @bcm_uart_do_rx(%struct.uart_port*) #1

declare dso_local i32 @bcm_uart_do_tx(%struct.uart_port*) #1

declare dso_local i32 @UART_IR_MASK(i32) #1

declare dso_local i32 @UART_EXTINP_IRSTAT(i32) #1

declare dso_local i32 @uart_handle_cts_change(%struct.uart_port*, i32) #1

declare dso_local i32 @uart_handle_dcd_change(%struct.uart_port*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
