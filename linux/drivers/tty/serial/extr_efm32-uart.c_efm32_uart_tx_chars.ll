; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_efm32-uart.c_efm32_uart_tx_chars.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_efm32-uart.c_efm32_uart_tx_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efm32_uart_port = type { %struct.uart_port }
%struct.uart_port = type { i64, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.circ_buf }
%struct.circ_buf = type { i64, i64* }

@UARTn_STATUS = common dso_local global i32 0, align 4
@UARTn_STATUS_TXBL = common dso_local global i32 0, align 4
@UARTn_TXDATA = common dso_local global i32 0, align 4
@UART_XMIT_SIZE = common dso_local global i32 0, align 4
@WAKEUP_CHARS = common dso_local global i64 0, align 8
@UARTn_STATUS_TXC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.efm32_uart_port*)* @efm32_uart_tx_chars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @efm32_uart_tx_chars(%struct.efm32_uart_port* %0) #0 {
  %2 = alloca %struct.efm32_uart_port*, align 8
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca %struct.circ_buf*, align 8
  store %struct.efm32_uart_port* %0, %struct.efm32_uart_port** %2, align 8
  %5 = load %struct.efm32_uart_port*, %struct.efm32_uart_port** %2, align 8
  %6 = getelementptr inbounds %struct.efm32_uart_port, %struct.efm32_uart_port* %5, i32 0, i32 0
  store %struct.uart_port* %6, %struct.uart_port** %3, align 8
  %7 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %8 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %7, i32 0, i32 2
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  store %struct.circ_buf* %10, %struct.circ_buf** %4, align 8
  br label %11

11:                                               ; preds = %73, %23, %1
  %12 = load %struct.efm32_uart_port*, %struct.efm32_uart_port** %2, align 8
  %13 = load i32, i32* @UARTn_STATUS, align 4
  %14 = call i32 @efm32_uart_read32(%struct.efm32_uart_port* %12, i32 %13)
  %15 = load i32, i32* @UARTn_STATUS_TXBL, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %74

18:                                               ; preds = %11
  %19 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %20 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %37

23:                                               ; preds = %18
  %24 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %25 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 8
  %29 = load %struct.efm32_uart_port*, %struct.efm32_uart_port** %2, align 8
  %30 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %31 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i32, i32* @UARTn_TXDATA, align 4
  %34 = call i32 @efm32_uart_write32(%struct.efm32_uart_port* %29, i64 %32, i32 %33)
  %35 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %36 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %35, i32 0, i32 0
  store i64 0, i64* %36, align 8
  br label %11

37:                                               ; preds = %18
  %38 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %39 = call i64 @uart_circ_empty(%struct.circ_buf* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %72, label %41

41:                                               ; preds = %37
  %42 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %43 = call i32 @uart_tx_stopped(%struct.uart_port* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %72, label %45

45:                                               ; preds = %41
  %46 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %47 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 8
  %51 = load %struct.efm32_uart_port*, %struct.efm32_uart_port** %2, align 8
  %52 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %53 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %52, i32 0, i32 1
  %54 = load i64*, i64** %53, align 8
  %55 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %56 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds i64, i64* %54, i64 %57
  %59 = load i64, i64* %58, align 8
  %60 = load i32, i32* @UARTn_TXDATA, align 4
  %61 = call i32 @efm32_uart_write32(%struct.efm32_uart_port* %51, i64 %59, i32 %60)
  %62 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %63 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = add i64 %64, 1
  %66 = load i32, i32* @UART_XMIT_SIZE, align 4
  %67 = sub nsw i32 %66, 1
  %68 = sext i32 %67 to i64
  %69 = and i64 %65, %68
  %70 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %71 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %70, i32 0, i32 0
  store i64 %69, i64* %71, align 8
  br label %73

72:                                               ; preds = %41, %37
  br label %74

73:                                               ; preds = %45
  br label %11

74:                                               ; preds = %72, %11
  %75 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %76 = call i64 @uart_circ_chars_pending(%struct.circ_buf* %75)
  %77 = load i64, i64* @WAKEUP_CHARS, align 8
  %78 = icmp slt i64 %76, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %74
  %80 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %81 = call i32 @uart_write_wakeup(%struct.uart_port* %80)
  br label %82

82:                                               ; preds = %79, %74
  %83 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %84 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %101, label %87

87:                                               ; preds = %82
  %88 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %89 = call i64 @uart_circ_empty(%struct.circ_buf* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %101

91:                                               ; preds = %87
  %92 = load %struct.efm32_uart_port*, %struct.efm32_uart_port** %2, align 8
  %93 = load i32, i32* @UARTn_STATUS, align 4
  %94 = call i32 @efm32_uart_read32(%struct.efm32_uart_port* %92, i32 %93)
  %95 = load i32, i32* @UARTn_STATUS_TXC, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %91
  %99 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %100 = call i32 @efm32_uart_stop_tx(%struct.uart_port* %99)
  br label %101

101:                                              ; preds = %98, %91, %87, %82
  ret void
}

declare dso_local i32 @efm32_uart_read32(%struct.efm32_uart_port*, i32) #1

declare dso_local i32 @efm32_uart_write32(%struct.efm32_uart_port*, i64, i32) #1

declare dso_local i64 @uart_circ_empty(%struct.circ_buf*) #1

declare dso_local i32 @uart_tx_stopped(%struct.uart_port*) #1

declare dso_local i64 @uart_circ_chars_pending(%struct.circ_buf*) #1

declare dso_local i32 @uart_write_wakeup(%struct.uart_port*) #1

declare dso_local i32 @efm32_uart_stop_tx(%struct.uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
