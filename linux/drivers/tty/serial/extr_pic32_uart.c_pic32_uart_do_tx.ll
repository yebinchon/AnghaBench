; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_pic32_uart.c_pic32_uart_do_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_pic32_uart.c_pic32_uart_do_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.circ_buf }
%struct.circ_buf = type { i32*, i64 }
%struct.pic32_sport = type { i32 }

@PIC32_UART_TX_FIFO_DEPTH = common dso_local global i32 0, align 4
@PIC32_UART_TX = common dso_local global i32 0, align 4
@PIC32_UART_STA_UTXBF = common dso_local global i32 0, align 4
@PIC32_UART_STA = common dso_local global i32 0, align 4
@UART_XMIT_SIZE = common dso_local global i32 0, align 4
@WAKEUP_CHARS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @pic32_uart_do_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pic32_uart_do_tx(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.pic32_sport*, align 8
  %4 = alloca %struct.circ_buf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %7 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %8 = call %struct.pic32_sport* @to_pic32_sport(%struct.uart_port* %7)
  store %struct.pic32_sport* %8, %struct.pic32_sport** %3, align 8
  %9 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %10 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %9, i32 0, i32 2
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  store %struct.circ_buf* %12, %struct.circ_buf** %4, align 8
  %13 = load i32, i32* @PIC32_UART_TX_FIFO_DEPTH, align 4
  store i32 %13, i32* %5, align 4
  %14 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %15 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %32

18:                                               ; preds = %1
  %19 = load %struct.pic32_sport*, %struct.pic32_sport** %3, align 8
  %20 = load i32, i32* @PIC32_UART_TX, align 4
  %21 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %22 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @pic32_uart_writel(%struct.pic32_sport* %19, i32 %20, i32 %23)
  %25 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %26 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %27, align 4
  %30 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %31 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %30, i32 0, i32 0
  store i32 0, i32* %31, align 8
  br label %108

32:                                               ; preds = %1
  %33 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %34 = call i64 @uart_tx_stopped(%struct.uart_port* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %38 = call i32 @pic32_uart_stop_tx(%struct.uart_port* %37)
  br label %108

39:                                               ; preds = %32
  %40 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %41 = call i64 @uart_circ_empty(%struct.circ_buf* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  br label %105

44:                                               ; preds = %39
  br label %45

45:                                               ; preds = %90, %44
  %46 = load i32, i32* @PIC32_UART_STA_UTXBF, align 4
  %47 = load %struct.pic32_sport*, %struct.pic32_sport** %3, align 8
  %48 = load i32, i32* @PIC32_UART_STA, align 4
  %49 = call i32 @pic32_uart_readl(%struct.pic32_sport* %47, i32 %48)
  %50 = and i32 %46, %49
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  br i1 %52, label %53, label %91

53:                                               ; preds = %45
  %54 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %55 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %58 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds i32, i32* %56, i64 %59
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %6, align 4
  %62 = load %struct.pic32_sport*, %struct.pic32_sport** %3, align 8
  %63 = load i32, i32* @PIC32_UART_TX, align 4
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @pic32_uart_writel(%struct.pic32_sport* %62, i32 %63, i32 %64)
  %66 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %67 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = add i64 %68, 1
  %70 = load i32, i32* @UART_XMIT_SIZE, align 4
  %71 = sub nsw i32 %70, 1
  %72 = sext i32 %71 to i64
  %73 = and i64 %69, %72
  %74 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %75 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %74, i32 0, i32 1
  store i64 %73, i64* %75, align 8
  %76 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %77 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %78, align 4
  %81 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %82 = call i64 @uart_circ_empty(%struct.circ_buf* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %53
  br label %91

85:                                               ; preds = %53
  %86 = load i32, i32* %5, align 4
  %87 = add i32 %86, -1
  store i32 %87, i32* %5, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %85
  br label %91

90:                                               ; preds = %85
  br label %45

91:                                               ; preds = %89, %84, %45
  %92 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %93 = call i64 @uart_circ_chars_pending(%struct.circ_buf* %92)
  %94 = load i64, i64* @WAKEUP_CHARS, align 8
  %95 = icmp slt i64 %93, %94
  br i1 %95, label %96, label %99

96:                                               ; preds = %91
  %97 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %98 = call i32 @uart_write_wakeup(%struct.uart_port* %97)
  br label %99

99:                                               ; preds = %96, %91
  %100 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %101 = call i64 @uart_circ_empty(%struct.circ_buf* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %99
  br label %105

104:                                              ; preds = %99
  br label %108

105:                                              ; preds = %103, %43
  %106 = load %struct.pic32_sport*, %struct.pic32_sport** %3, align 8
  %107 = call i32 @pic32_uart_irqtxen(%struct.pic32_sport* %106, i32 0)
  br label %108

108:                                              ; preds = %105, %104, %36, %18
  ret void
}

declare dso_local %struct.pic32_sport* @to_pic32_sport(%struct.uart_port*) #1

declare dso_local i32 @pic32_uart_writel(%struct.pic32_sport*, i32, i32) #1

declare dso_local i64 @uart_tx_stopped(%struct.uart_port*) #1

declare dso_local i32 @pic32_uart_stop_tx(%struct.uart_port*) #1

declare dso_local i64 @uart_circ_empty(%struct.circ_buf*) #1

declare dso_local i32 @pic32_uart_readl(%struct.pic32_sport*, i32) #1

declare dso_local i64 @uart_circ_chars_pending(%struct.circ_buf*) #1

declare dso_local i32 @uart_write_wakeup(%struct.uart_port*) #1

declare dso_local i32 @pic32_uart_irqtxen(%struct.pic32_sport*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
