; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_fsl_lpuart.c_lpuart32_transmit_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_fsl_lpuart.c_lpuart32_transmit_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpuart_port = type { i64, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__, i64, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.circ_buf }
%struct.circ_buf = type { i64, i64* }

@UARTDATA = common dso_local global i32 0, align 4
@UARTWATER = common dso_local global i32 0, align 4
@UARTWATER_TXCNT_OFF = common dso_local global i64 0, align 8
@UARTWATER_COUNT_MASK = common dso_local global i64 0, align 8
@UART_XMIT_SIZE = common dso_local global i32 0, align 4
@WAKEUP_CHARS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpuart_port*)* @lpuart32_transmit_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpuart32_transmit_buffer(%struct.lpuart_port* %0) #0 {
  %2 = alloca %struct.lpuart_port*, align 8
  %3 = alloca %struct.circ_buf*, align 8
  %4 = alloca i64, align 8
  store %struct.lpuart_port* %0, %struct.lpuart_port** %2, align 8
  %5 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %6 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 2
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  store %struct.circ_buf* %9, %struct.circ_buf** %3, align 8
  %10 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %11 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %33

15:                                               ; preds = %1
  %16 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %17 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %16, i32 0, i32 1
  %18 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %19 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i32, i32* @UARTDATA, align 4
  %23 = call i32 @lpuart32_write(%struct.TYPE_10__* %17, i64 %21, i32 %22)
  %24 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %25 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %27, align 8
  %30 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %31 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 1
  store i64 0, i64* %32, align 8
  br label %121

33:                                               ; preds = %1
  %34 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %35 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %34, i32 0, i32 1
  %36 = call i64 @lpuart_stopped_or_empty(%struct.TYPE_10__* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %40 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %39, i32 0, i32 1
  %41 = call i32 @lpuart32_stop_tx(%struct.TYPE_10__* %40)
  br label %121

42:                                               ; preds = %33
  %43 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %44 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %43, i32 0, i32 1
  %45 = load i32, i32* @UARTWATER, align 4
  %46 = call i64 @lpuart32_read(%struct.TYPE_10__* %44, i32 %45)
  store i64 %46, i64* %4, align 8
  %47 = load i64, i64* %4, align 8
  %48 = load i64, i64* @UARTWATER_TXCNT_OFF, align 8
  %49 = lshr i64 %47, %48
  store i64 %49, i64* %4, align 8
  %50 = load i64, i64* @UARTWATER_COUNT_MASK, align 8
  %51 = load i64, i64* %4, align 8
  %52 = and i64 %51, %50
  store i64 %52, i64* %4, align 8
  br label %53

53:                                               ; preds = %65, %42
  %54 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %55 = call i64 @uart_circ_empty(%struct.circ_buf* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %63, label %57

57:                                               ; preds = %53
  %58 = load i64, i64* %4, align 8
  %59 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %60 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ult i64 %58, %61
  br label %63

63:                                               ; preds = %57, %53
  %64 = phi i1 [ false, %53 ], [ %62, %57 ]
  br i1 %64, label %65, label %104

65:                                               ; preds = %63
  %66 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %67 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %66, i32 0, i32 1
  %68 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %69 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %68, i32 0, i32 1
  %70 = load i64*, i64** %69, align 8
  %71 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %72 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds i64, i64* %70, i64 %73
  %75 = load i64, i64* %74, align 8
  %76 = load i32, i32* @UARTDATA, align 4
  %77 = call i32 @lpuart32_write(%struct.TYPE_10__* %67, i64 %75, i32 %76)
  %78 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %79 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = add i64 %80, 1
  %82 = load i32, i32* @UART_XMIT_SIZE, align 4
  %83 = sub nsw i32 %82, 1
  %84 = sext i32 %83 to i64
  %85 = and i64 %81, %84
  %86 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %87 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %86, i32 0, i32 0
  store i64 %85, i64* %87, align 8
  %88 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %89 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %91, align 8
  %94 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %95 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %94, i32 0, i32 1
  %96 = load i32, i32* @UARTWATER, align 4
  %97 = call i64 @lpuart32_read(%struct.TYPE_10__* %95, i32 %96)
  store i64 %97, i64* %4, align 8
  %98 = load i64, i64* %4, align 8
  %99 = load i64, i64* @UARTWATER_TXCNT_OFF, align 8
  %100 = lshr i64 %98, %99
  store i64 %100, i64* %4, align 8
  %101 = load i64, i64* @UARTWATER_COUNT_MASK, align 8
  %102 = load i64, i64* %4, align 8
  %103 = and i64 %102, %101
  store i64 %103, i64* %4, align 8
  br label %53

104:                                              ; preds = %63
  %105 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %106 = call i64 @uart_circ_chars_pending(%struct.circ_buf* %105)
  %107 = load i64, i64* @WAKEUP_CHARS, align 8
  %108 = icmp slt i64 %106, %107
  br i1 %108, label %109, label %113

109:                                              ; preds = %104
  %110 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %111 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %110, i32 0, i32 1
  %112 = call i32 @uart_write_wakeup(%struct.TYPE_10__* %111)
  br label %113

113:                                              ; preds = %109, %104
  %114 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %115 = call i64 @uart_circ_empty(%struct.circ_buf* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %113
  %118 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %119 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %118, i32 0, i32 1
  %120 = call i32 @lpuart32_stop_tx(%struct.TYPE_10__* %119)
  br label %121

121:                                              ; preds = %15, %38, %117, %113
  ret void
}

declare dso_local i32 @lpuart32_write(%struct.TYPE_10__*, i64, i32) #1

declare dso_local i64 @lpuart_stopped_or_empty(%struct.TYPE_10__*) #1

declare dso_local i32 @lpuart32_stop_tx(%struct.TYPE_10__*) #1

declare dso_local i64 @lpuart32_read(%struct.TYPE_10__*, i32) #1

declare dso_local i64 @uart_circ_empty(%struct.circ_buf*) #1

declare dso_local i64 @uart_circ_chars_pending(%struct.circ_buf*) #1

declare dso_local i32 @uart_write_wakeup(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
