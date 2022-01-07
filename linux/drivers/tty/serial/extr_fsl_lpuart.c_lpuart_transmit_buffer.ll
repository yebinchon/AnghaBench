; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_fsl_lpuart.c_lpuart_transmit_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_fsl_lpuart.c_lpuart_transmit_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpuart_port = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__, i64, i64, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.circ_buf }
%struct.circ_buf = type { i64, i64* }

@UARTDR = common dso_local global i64 0, align 8
@UARTTCFIFO = common dso_local global i64 0, align 8
@UART_XMIT_SIZE = common dso_local global i32 0, align 4
@WAKEUP_CHARS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpuart_port*)* @lpuart_transmit_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpuart_transmit_buffer(%struct.lpuart_port* %0) #0 {
  %2 = alloca %struct.lpuart_port*, align 8
  %3 = alloca %struct.circ_buf*, align 8
  store %struct.lpuart_port* %0, %struct.lpuart_port** %2, align 8
  %4 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %5 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 3
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  store %struct.circ_buf* %8, %struct.circ_buf** %3, align 8
  %9 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %10 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %35

14:                                               ; preds = %1
  %15 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %16 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %20 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @UARTDR, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @writeb(i64 %18, i64 %24)
  %26 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %27 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %29, align 8
  %32 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %33 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 2
  store i64 0, i64* %34, align 8
  br label %112

35:                                               ; preds = %1
  %36 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %37 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %36, i32 0, i32 1
  %38 = call i64 @lpuart_stopped_or_empty(%struct.TYPE_8__* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %42 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %41, i32 0, i32 1
  %43 = call i32 @lpuart_stop_tx(%struct.TYPE_8__* %42)
  br label %112

44:                                               ; preds = %35
  br label %45

45:                                               ; preds = %63, %44
  %46 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %47 = call i64 @uart_circ_empty(%struct.circ_buf* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %61, label %49

49:                                               ; preds = %45
  %50 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %51 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @UARTTCFIFO, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i64 @readb(i64 %55)
  %57 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %58 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp slt i64 %56, %59
  br label %61

61:                                               ; preds = %49, %45
  %62 = phi i1 [ false, %45 ], [ %60, %49 ]
  br i1 %62, label %63, label %95

63:                                               ; preds = %61
  %64 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %65 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %64, i32 0, i32 1
  %66 = load i64*, i64** %65, align 8
  %67 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %68 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds i64, i64* %66, i64 %69
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %73 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @UARTDR, align 8
  %77 = add nsw i64 %75, %76
  %78 = call i32 @writeb(i64 %71, i64 %77)
  %79 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %80 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = add i64 %81, 1
  %83 = load i32, i32* @UART_XMIT_SIZE, align 4
  %84 = sub nsw i32 %83, 1
  %85 = sext i32 %84 to i64
  %86 = and i64 %82, %85
  %87 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %88 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %87, i32 0, i32 0
  store i64 %86, i64* %88, align 8
  %89 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %90 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %92, align 8
  br label %45

95:                                               ; preds = %61
  %96 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %97 = call i64 @uart_circ_chars_pending(%struct.circ_buf* %96)
  %98 = load i64, i64* @WAKEUP_CHARS, align 8
  %99 = icmp slt i64 %97, %98
  br i1 %99, label %100, label %104

100:                                              ; preds = %95
  %101 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %102 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %101, i32 0, i32 1
  %103 = call i32 @uart_write_wakeup(%struct.TYPE_8__* %102)
  br label %104

104:                                              ; preds = %100, %95
  %105 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %106 = call i64 @uart_circ_empty(%struct.circ_buf* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %104
  %109 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %110 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %109, i32 0, i32 1
  %111 = call i32 @lpuart_stop_tx(%struct.TYPE_8__* %110)
  br label %112

112:                                              ; preds = %14, %40, %108, %104
  ret void
}

declare dso_local i32 @writeb(i64, i64) #1

declare dso_local i64 @lpuart_stopped_or_empty(%struct.TYPE_8__*) #1

declare dso_local i32 @lpuart_stop_tx(%struct.TYPE_8__*) #1

declare dso_local i64 @uart_circ_empty(%struct.circ_buf*) #1

declare dso_local i64 @readb(i64) #1

declare dso_local i64 @uart_circ_chars_pending(%struct.circ_buf*) #1

declare dso_local i32 @uart_write_wakeup(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
