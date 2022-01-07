; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_altera_uart.c_altera_uart_tx_chars.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_altera_uart.c_altera_uart_tx_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.altera_uart = type { i32, %struct.uart_port }
%struct.uart_port = type { %struct.TYPE_4__, i64, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.circ_buf }
%struct.circ_buf = type { i64, i64, i64* }

@ALTERA_UART_TXDATA_REG = common dso_local global i32 0, align 4
@ALTERA_UART_STATUS_REG = common dso_local global i32 0, align 4
@ALTERA_UART_STATUS_TRDY_MSK = common dso_local global i32 0, align 4
@UART_XMIT_SIZE = common dso_local global i32 0, align 4
@WAKEUP_CHARS = common dso_local global i64 0, align 8
@ALTERA_UART_CONTROL_TRDY_MSK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.altera_uart*)* @altera_uart_tx_chars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @altera_uart_tx_chars(%struct.altera_uart* %0) #0 {
  %2 = alloca %struct.altera_uart*, align 8
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca %struct.circ_buf*, align 8
  store %struct.altera_uart* %0, %struct.altera_uart** %2, align 8
  %5 = load %struct.altera_uart*, %struct.altera_uart** %2, align 8
  %6 = getelementptr inbounds %struct.altera_uart, %struct.altera_uart* %5, i32 0, i32 1
  store %struct.uart_port* %6, %struct.uart_port** %3, align 8
  %7 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %8 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %7, i32 0, i32 2
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  store %struct.circ_buf* %10, %struct.circ_buf** %4, align 8
  %11 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %12 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %29

15:                                               ; preds = %1
  %16 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %17 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %18 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i32, i32* @ALTERA_UART_TXDATA_REG, align 4
  %21 = call i32 @altera_uart_writel(%struct.uart_port* %16, i64 %19, i32 %20)
  %22 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %23 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %22, i32 0, i32 1
  store i64 0, i64* %23, align 8
  %24 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %25 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 8
  br label %98

29:                                               ; preds = %1
  br label %30

30:                                               ; preds = %46, %29
  %31 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %32 = load i32, i32* @ALTERA_UART_STATUS_REG, align 4
  %33 = call i32 @altera_uart_readl(%struct.uart_port* %31, i32 %32)
  %34 = load i32, i32* @ALTERA_UART_STATUS_TRDY_MSK, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %73

37:                                               ; preds = %30
  %38 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %39 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %42 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %40, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  br label %73

46:                                               ; preds = %37
  %47 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %48 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %49 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %48, i32 0, i32 2
  %50 = load i64*, i64** %49, align 8
  %51 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %52 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds i64, i64* %50, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = load i32, i32* @ALTERA_UART_TXDATA_REG, align 4
  %57 = call i32 @altera_uart_writel(%struct.uart_port* %47, i64 %55, i32 %56)
  %58 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %59 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = add i64 %60, 1
  %62 = load i32, i32* @UART_XMIT_SIZE, align 4
  %63 = sub nsw i32 %62, 1
  %64 = sext i32 %63 to i64
  %65 = and i64 %61, %64
  %66 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %67 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %66, i32 0, i32 1
  store i64 %65, i64* %67, align 8
  %68 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %69 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %70, align 8
  br label %30

73:                                               ; preds = %45, %30
  %74 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %75 = call i64 @uart_circ_chars_pending(%struct.circ_buf* %74)
  %76 = load i64, i64* @WAKEUP_CHARS, align 8
  %77 = icmp slt i64 %75, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %73
  %79 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %80 = call i32 @uart_write_wakeup(%struct.uart_port* %79)
  br label %81

81:                                               ; preds = %78, %73
  %82 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %83 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %86 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = icmp eq i64 %84, %87
  br i1 %88, label %89, label %98

89:                                               ; preds = %81
  %90 = load i32, i32* @ALTERA_UART_CONTROL_TRDY_MSK, align 4
  %91 = xor i32 %90, -1
  %92 = load %struct.altera_uart*, %struct.altera_uart** %2, align 8
  %93 = getelementptr inbounds %struct.altera_uart, %struct.altera_uart* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = and i32 %94, %91
  store i32 %95, i32* %93, align 8
  %96 = load %struct.altera_uart*, %struct.altera_uart** %2, align 8
  %97 = call i32 @altera_uart_update_ctrl_reg(%struct.altera_uart* %96)
  br label %98

98:                                               ; preds = %15, %89, %81
  ret void
}

declare dso_local i32 @altera_uart_writel(%struct.uart_port*, i64, i32) #1

declare dso_local i32 @altera_uart_readl(%struct.uart_port*, i32) #1

declare dso_local i64 @uart_circ_chars_pending(%struct.circ_buf*) #1

declare dso_local i32 @uart_write_wakeup(%struct.uart_port*) #1

declare dso_local i32 @altera_uart_update_ctrl_reg(%struct.altera_uart*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
