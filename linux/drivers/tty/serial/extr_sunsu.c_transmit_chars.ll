; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sunsu.c_transmit_chars.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sunsu.c_transmit_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_sunsu_port = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__, i64, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.circ_buf }
%struct.circ_buf = type { i64, i32* }

@UART_TX = common dso_local global i32 0, align 4
@UART_XMIT_SIZE = common dso_local global i32 0, align 4
@WAKEUP_CHARS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_sunsu_port*)* @transmit_chars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @transmit_chars(%struct.uart_sunsu_port* %0) #0 {
  %2 = alloca %struct.uart_sunsu_port*, align 8
  %3 = alloca %struct.circ_buf*, align 8
  %4 = alloca i32, align 4
  store %struct.uart_sunsu_port* %0, %struct.uart_sunsu_port** %2, align 8
  %5 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %2, align 8
  %6 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 3
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  store %struct.circ_buf* %9, %struct.circ_buf** %3, align 8
  %10 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %2, align 8
  %11 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %32

15:                                               ; preds = %1
  %16 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %2, align 8
  %17 = load i32, i32* @UART_TX, align 4
  %18 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %2, align 8
  %19 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @serial_outp(%struct.uart_sunsu_port* %16, i32 %17, i64 %21)
  %23 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %2, align 8
  %24 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 4
  %29 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %2, align 8
  %30 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 2
  store i64 0, i64* %31, align 8
  br label %106

32:                                               ; preds = %1
  %33 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %2, align 8
  %34 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %33, i32 0, i32 0
  %35 = call i64 @uart_tx_stopped(%struct.TYPE_8__* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %2, align 8
  %39 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %38, i32 0, i32 0
  %40 = call i32 @sunsu_stop_tx(%struct.TYPE_8__* %39)
  br label %106

41:                                               ; preds = %32
  %42 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %43 = call i64 @uart_circ_empty(%struct.circ_buf* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %2, align 8
  %47 = call i32 @__stop_tx(%struct.uart_sunsu_port* %46)
  br label %106

48:                                               ; preds = %41
  %49 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %2, align 8
  %50 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %86, %48
  %54 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %2, align 8
  %55 = load i32, i32* @UART_TX, align 4
  %56 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %57 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %60 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds i32, i32* %58, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @serial_out(%struct.uart_sunsu_port* %54, i32 %55, i32 %63)
  %65 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %66 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = add i64 %67, 1
  %69 = load i32, i32* @UART_XMIT_SIZE, align 4
  %70 = sub nsw i32 %69, 1
  %71 = sext i32 %70 to i64
  %72 = and i64 %68, %71
  %73 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %74 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %73, i32 0, i32 0
  store i64 %72, i64* %74, align 8
  %75 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %2, align 8
  %76 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %78, align 4
  %81 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %82 = call i64 @uart_circ_empty(%struct.circ_buf* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %53
  br label %90

85:                                               ; preds = %53
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %4, align 4
  %88 = add nsw i32 %87, -1
  store i32 %88, i32* %4, align 4
  %89 = icmp sgt i32 %88, 0
  br i1 %89, label %53, label %90

90:                                               ; preds = %86, %84
  %91 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %92 = call i64 @uart_circ_chars_pending(%struct.circ_buf* %91)
  %93 = load i64, i64* @WAKEUP_CHARS, align 8
  %94 = icmp slt i64 %92, %93
  br i1 %94, label %95, label %99

95:                                               ; preds = %90
  %96 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %2, align 8
  %97 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %96, i32 0, i32 0
  %98 = call i32 @uart_write_wakeup(%struct.TYPE_8__* %97)
  br label %99

99:                                               ; preds = %95, %90
  %100 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %101 = call i64 @uart_circ_empty(%struct.circ_buf* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %99
  %104 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %2, align 8
  %105 = call i32 @__stop_tx(%struct.uart_sunsu_port* %104)
  br label %106

106:                                              ; preds = %15, %37, %45, %103, %99
  ret void
}

declare dso_local i32 @serial_outp(%struct.uart_sunsu_port*, i32, i64) #1

declare dso_local i64 @uart_tx_stopped(%struct.TYPE_8__*) #1

declare dso_local i32 @sunsu_stop_tx(%struct.TYPE_8__*) #1

declare dso_local i64 @uart_circ_empty(%struct.circ_buf*) #1

declare dso_local i32 @__stop_tx(%struct.uart_sunsu_port*) #1

declare dso_local i32 @serial_out(%struct.uart_sunsu_port*, i32, i32) #1

declare dso_local i64 @uart_circ_chars_pending(%struct.circ_buf*) #1

declare dso_local i32 @uart_write_wakeup(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
