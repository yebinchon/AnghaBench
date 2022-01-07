; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_mvebu-uart.c_mvebu_uart_tx_chars.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_mvebu-uart.c_mvebu_uart_tx_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, i64, %struct.TYPE_4__, i64, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.circ_buf }
%struct.circ_buf = type { i64, i64* }

@UART_XMIT_SIZE = common dso_local global i32 0, align 4
@UART_STAT = common dso_local global i64 0, align 8
@STAT_TX_FIFO_FUL = common dso_local global i32 0, align 4
@WAKEUP_CHARS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, i32)* @mvebu_uart_tx_chars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvebu_uart_tx_chars(%struct.uart_port* %0, i32 %1) #0 {
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.circ_buf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %9 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %8, i32 0, i32 4
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  store %struct.circ_buf* %11, %struct.circ_buf** %5, align 8
  %12 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %13 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %34

16:                                               ; preds = %2
  %17 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %18 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %21 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %24 = call i64 @UART_TSH(%struct.uart_port* %23)
  %25 = add nsw i64 %22, %24
  %26 = call i32 @writel(i64 %19, i64 %25)
  %27 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %28 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %29, align 8
  %32 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %33 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %32, i32 0, i32 3
  store i64 0, i64* %33, align 8
  br label %118

34:                                               ; preds = %2
  %35 = load %struct.circ_buf*, %struct.circ_buf** %5, align 8
  %36 = call i64 @uart_circ_empty(%struct.circ_buf* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %40 = call i64 @uart_tx_stopped(%struct.uart_port* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %38, %34
  %43 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %44 = call i32 @mvebu_uart_stop_tx(%struct.uart_port* %43)
  br label %118

45:                                               ; preds = %38
  store i32 0, i32* %6, align 4
  br label %46

46:                                               ; preds = %100, %45
  %47 = load i32, i32* %6, align 4
  %48 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %49 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp ult i32 %47, %50
  br i1 %51, label %52, label %103

52:                                               ; preds = %46
  %53 = load %struct.circ_buf*, %struct.circ_buf** %5, align 8
  %54 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %53, i32 0, i32 1
  %55 = load i64*, i64** %54, align 8
  %56 = load %struct.circ_buf*, %struct.circ_buf** %5, align 8
  %57 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds i64, i64* %55, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %62 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %65 = call i64 @UART_TSH(%struct.uart_port* %64)
  %66 = add nsw i64 %63, %65
  %67 = call i32 @writel(i64 %60, i64 %66)
  %68 = load %struct.circ_buf*, %struct.circ_buf** %5, align 8
  %69 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = add i64 %70, 1
  %72 = load i32, i32* @UART_XMIT_SIZE, align 4
  %73 = sub nsw i32 %72, 1
  %74 = sext i32 %73 to i64
  %75 = and i64 %71, %74
  %76 = load %struct.circ_buf*, %struct.circ_buf** %5, align 8
  %77 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %76, i32 0, i32 0
  store i64 %75, i64* %77, align 8
  %78 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %79 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %80, align 8
  %83 = load %struct.circ_buf*, %struct.circ_buf** %5, align 8
  %84 = call i64 @uart_circ_empty(%struct.circ_buf* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %52
  br label %103

87:                                               ; preds = %52
  %88 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %89 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @UART_STAT, align 8
  %92 = add nsw i64 %90, %91
  %93 = call i32 @readl(i64 %92)
  store i32 %93, i32* %7, align 4
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* @STAT_TX_FIFO_FUL, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %87
  br label %103

99:                                               ; preds = %87
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %6, align 4
  %102 = add i32 %101, 1
  store i32 %102, i32* %6, align 4
  br label %46

103:                                              ; preds = %98, %86, %46
  %104 = load %struct.circ_buf*, %struct.circ_buf** %5, align 8
  %105 = call i64 @uart_circ_chars_pending(%struct.circ_buf* %104)
  %106 = load i64, i64* @WAKEUP_CHARS, align 8
  %107 = icmp slt i64 %105, %106
  br i1 %107, label %108, label %111

108:                                              ; preds = %103
  %109 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %110 = call i32 @uart_write_wakeup(%struct.uart_port* %109)
  br label %111

111:                                              ; preds = %108, %103
  %112 = load %struct.circ_buf*, %struct.circ_buf** %5, align 8
  %113 = call i64 @uart_circ_empty(%struct.circ_buf* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %111
  %116 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %117 = call i32 @mvebu_uart_stop_tx(%struct.uart_port* %116)
  br label %118

118:                                              ; preds = %16, %42, %115, %111
  ret void
}

declare dso_local i32 @writel(i64, i64) #1

declare dso_local i64 @UART_TSH(%struct.uart_port*) #1

declare dso_local i64 @uart_circ_empty(%struct.circ_buf*) #1

declare dso_local i64 @uart_tx_stopped(%struct.uart_port*) #1

declare dso_local i32 @mvebu_uart_stop_tx(%struct.uart_port*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i64 @uart_circ_chars_pending(%struct.circ_buf*) #1

declare dso_local i32 @uart_write_wakeup(%struct.uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
