; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_imx.c_imx_uart_stop_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_imx.c_imx_uart_stop_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.imx_port = type { i64 }

@UCR1 = common dso_local global i32 0, align 4
@UCR1_TRDYEN = common dso_local global i32 0, align 4
@SER_RS485_ENABLED = common dso_local global i32 0, align 4
@USR2 = common dso_local global i32 0, align 4
@USR2_TXDC = common dso_local global i32 0, align 4
@UCR2 = common dso_local global i32 0, align 4
@SER_RS485_RTS_AFTER_SEND = common dso_local global i32 0, align 4
@UCR4 = common dso_local global i32 0, align 4
@UCR4_TCEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @imx_uart_stop_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @imx_uart_stop_tx(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.imx_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %7 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %8 = bitcast %struct.uart_port* %7 to %struct.imx_port*
  store %struct.imx_port* %8, %struct.imx_port** %3, align 8
  %9 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %10 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %74

14:                                               ; preds = %1
  %15 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %16 = load i32, i32* @UCR1, align 4
  %17 = call i32 @imx_uart_readl(%struct.imx_port* %15, i32 %16)
  store i32 %17, i32* %4, align 4
  %18 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @UCR1_TRDYEN, align 4
  %21 = xor i32 %20, -1
  %22 = and i32 %19, %21
  %23 = load i32, i32* @UCR1, align 4
  %24 = call i32 @imx_uart_writel(%struct.imx_port* %18, i32 %22, i32 %23)
  %25 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %26 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @SER_RS485_ENABLED, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %74

32:                                               ; preds = %14
  %33 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %34 = load i32, i32* @USR2, align 4
  %35 = call i32 @imx_uart_readl(%struct.imx_port* %33, i32 %34)
  %36 = load i32, i32* @USR2_TXDC, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %74

39:                                               ; preds = %32
  %40 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %41 = load i32, i32* @UCR2, align 4
  %42 = call i32 @imx_uart_readl(%struct.imx_port* %40, i32 %41)
  store i32 %42, i32* %5, align 4
  %43 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %44 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @SER_RS485_RTS_AFTER_SEND, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %39
  %51 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %52 = call i32 @imx_uart_rts_active(%struct.imx_port* %51, i32* %5)
  br label %56

53:                                               ; preds = %39
  %54 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %55 = call i32 @imx_uart_rts_inactive(%struct.imx_port* %54, i32* %5)
  br label %56

56:                                               ; preds = %53, %50
  %57 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* @UCR2, align 4
  %60 = call i32 @imx_uart_writel(%struct.imx_port* %57, i32 %58, i32 %59)
  %61 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %62 = call i32 @imx_uart_start_rx(%struct.uart_port* %61)
  %63 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %64 = load i32, i32* @UCR4, align 4
  %65 = call i32 @imx_uart_readl(%struct.imx_port* %63, i32 %64)
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* @UCR4_TCEN, align 4
  %67 = xor i32 %66, -1
  %68 = load i32, i32* %6, align 4
  %69 = and i32 %68, %67
  store i32 %69, i32* %6, align 4
  %70 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* @UCR4, align 4
  %73 = call i32 @imx_uart_writel(%struct.imx_port* %70, i32 %71, i32 %72)
  br label %74

74:                                               ; preds = %13, %56, %32, %14
  ret void
}

declare dso_local i32 @imx_uart_readl(%struct.imx_port*, i32) #1

declare dso_local i32 @imx_uart_writel(%struct.imx_port*, i32, i32) #1

declare dso_local i32 @imx_uart_rts_active(%struct.imx_port*, i32*) #1

declare dso_local i32 @imx_uart_rts_inactive(%struct.imx_port*, i32*) #1

declare dso_local i32 @imx_uart_start_rx(%struct.uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
