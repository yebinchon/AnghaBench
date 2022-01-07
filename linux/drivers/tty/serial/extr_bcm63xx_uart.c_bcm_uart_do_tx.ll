; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_bcm63xx_uart.c_bcm_uart_do_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_bcm63xx_uart.c_bcm_uart_do_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.circ_buf }
%struct.circ_buf = type { i32*, i64 }

@UART_FIFO_REG = common dso_local global i32 0, align 4
@UART_MCTL_REG = common dso_local global i32 0, align 4
@UART_MCTL_TXFIFOFILL_MASK = common dso_local global i32 0, align 4
@UART_MCTL_TXFIFOFILL_SHIFT = common dso_local global i32 0, align 4
@UART_XMIT_SIZE = common dso_local global i32 0, align 4
@WAKEUP_CHARS = common dso_local global i64 0, align 8
@UART_IR_REG = common dso_local global i32 0, align 4
@UART_TX_INT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @bcm_uart_do_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm_uart_do_tx(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.circ_buf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %7 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %8 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %25

11:                                               ; preds = %1
  %12 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %13 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %14 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @UART_FIFO_REG, align 4
  %17 = call i32 @bcm_uart_writel(%struct.uart_port* %12, i32 %15, i32 %16)
  %18 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %19 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %20, align 8
  %23 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %24 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %23, i32 0, i32 0
  store i32 0, i32* %24, align 8
  br label %118

25:                                               ; preds = %1
  %26 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %27 = call i64 @uart_tx_stopped(%struct.uart_port* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %31 = call i32 @bcm_uart_stop_tx(%struct.uart_port* %30)
  br label %118

32:                                               ; preds = %25
  %33 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %34 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %33, i32 0, i32 3
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  store %struct.circ_buf* %36, %struct.circ_buf** %3, align 8
  %37 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %38 = call i64 @uart_circ_empty(%struct.circ_buf* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  br label %106

41:                                               ; preds = %32
  %42 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %43 = load i32, i32* @UART_MCTL_REG, align 4
  %44 = call i32 @bcm_uart_readl(%struct.uart_port* %42, i32 %43)
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @UART_MCTL_TXFIFOFILL_MASK, align 4
  %47 = and i32 %45, %46
  %48 = load i32, i32* @UART_MCTL_TXFIFOFILL_SHIFT, align 4
  %49 = lshr i32 %47, %48
  store i32 %49, i32* %4, align 4
  %50 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %51 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %4, align 4
  %54 = sub i32 %52, %53
  store i32 %54, i32* %5, align 4
  br label %55

55:                                               ; preds = %91, %41
  %56 = load i32, i32* %5, align 4
  %57 = add i32 %56, -1
  store i32 %57, i32* %5, align 4
  %58 = icmp ne i32 %56, 0
  br i1 %58, label %59, label %92

59:                                               ; preds = %55
  %60 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %61 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %64 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds i32, i32* %62, i64 %65
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %6, align 4
  %68 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* @UART_FIFO_REG, align 4
  %71 = call i32 @bcm_uart_writel(%struct.uart_port* %68, i32 %69, i32 %70)
  %72 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %73 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = add i64 %74, 1
  %76 = load i32, i32* @UART_XMIT_SIZE, align 4
  %77 = sub nsw i32 %76, 1
  %78 = sext i32 %77 to i64
  %79 = and i64 %75, %78
  %80 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %81 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %80, i32 0, i32 1
  store i64 %79, i64* %81, align 8
  %82 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %83 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %84, align 8
  %87 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %88 = call i64 @uart_circ_empty(%struct.circ_buf* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %59
  br label %92

91:                                               ; preds = %59
  br label %55

92:                                               ; preds = %90, %55
  %93 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %94 = call i64 @uart_circ_chars_pending(%struct.circ_buf* %93)
  %95 = load i64, i64* @WAKEUP_CHARS, align 8
  %96 = icmp slt i64 %94, %95
  br i1 %96, label %97, label %100

97:                                               ; preds = %92
  %98 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %99 = call i32 @uart_write_wakeup(%struct.uart_port* %98)
  br label %100

100:                                              ; preds = %97, %92
  %101 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %102 = call i64 @uart_circ_empty(%struct.circ_buf* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %100
  br label %106

105:                                              ; preds = %100
  br label %118

106:                                              ; preds = %104, %40
  %107 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %108 = load i32, i32* @UART_IR_REG, align 4
  %109 = call i32 @bcm_uart_readl(%struct.uart_port* %107, i32 %108)
  store i32 %109, i32* %4, align 4
  %110 = load i32, i32* @UART_TX_INT_MASK, align 4
  %111 = xor i32 %110, -1
  %112 = load i32, i32* %4, align 4
  %113 = and i32 %112, %111
  store i32 %113, i32* %4, align 4
  %114 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %115 = load i32, i32* %4, align 4
  %116 = load i32, i32* @UART_IR_REG, align 4
  %117 = call i32 @bcm_uart_writel(%struct.uart_port* %114, i32 %115, i32 %116)
  br label %118

118:                                              ; preds = %106, %105, %29, %11
  ret void
}

declare dso_local i32 @bcm_uart_writel(%struct.uart_port*, i32, i32) #1

declare dso_local i64 @uart_tx_stopped(%struct.uart_port*) #1

declare dso_local i32 @bcm_uart_stop_tx(%struct.uart_port*) #1

declare dso_local i64 @uart_circ_empty(%struct.circ_buf*) #1

declare dso_local i32 @bcm_uart_readl(%struct.uart_port*, i32) #1

declare dso_local i64 @uart_circ_chars_pending(%struct.circ_buf*) #1

declare dso_local i32 @uart_write_wakeup(%struct.uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
