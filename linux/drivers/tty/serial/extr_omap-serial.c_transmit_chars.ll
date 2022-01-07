; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_omap-serial.c_transmit_chars.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_omap-serial.c_transmit_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_omap_port = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__, i64, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.circ_buf }
%struct.circ_buf = type { i64, i64* }

@UART_TX = common dso_local global i32 0, align 4
@UART_XMIT_SIZE = common dso_local global i32 0, align 4
@WAKEUP_CHARS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_omap_port*, i32)* @transmit_chars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @transmit_chars(%struct.uart_omap_port* %0, i32 %1) #0 {
  %3 = alloca %struct.uart_omap_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.circ_buf*, align 8
  %6 = alloca i32, align 4
  store %struct.uart_omap_port* %0, %struct.uart_omap_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.uart_omap_port*, %struct.uart_omap_port** %3, align 8
  %8 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 3
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  store %struct.circ_buf* %11, %struct.circ_buf** %5, align 8
  %12 = load %struct.uart_omap_port*, %struct.uart_omap_port** %3, align 8
  %13 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %34

17:                                               ; preds = %2
  %18 = load %struct.uart_omap_port*, %struct.uart_omap_port** %3, align 8
  %19 = load i32, i32* @UART_TX, align 4
  %20 = load %struct.uart_omap_port*, %struct.uart_omap_port** %3, align 8
  %21 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @serial_out(%struct.uart_omap_port* %18, i32 %19, i64 %23)
  %25 = load %struct.uart_omap_port*, %struct.uart_omap_port** %3, align 8
  %26 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 4
  %31 = load %struct.uart_omap_port*, %struct.uart_omap_port** %3, align 8
  %32 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 2
  store i64 0, i64* %33, align 8
  br label %107

34:                                               ; preds = %2
  %35 = load %struct.circ_buf*, %struct.circ_buf** %5, align 8
  %36 = call i64 @uart_circ_empty(%struct.circ_buf* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %34
  %39 = load %struct.uart_omap_port*, %struct.uart_omap_port** %3, align 8
  %40 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %39, i32 0, i32 0
  %41 = call i64 @uart_tx_stopped(%struct.TYPE_8__* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %38, %34
  %44 = load %struct.uart_omap_port*, %struct.uart_omap_port** %3, align 8
  %45 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %44, i32 0, i32 0
  %46 = call i32 @serial_omap_stop_tx(%struct.TYPE_8__* %45)
  br label %107

47:                                               ; preds = %38
  %48 = load %struct.uart_omap_port*, %struct.uart_omap_port** %3, align 8
  %49 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = sdiv i32 %51, 4
  store i32 %52, i32* %6, align 4
  br label %53

53:                                               ; preds = %86, %47
  %54 = load %struct.uart_omap_port*, %struct.uart_omap_port** %3, align 8
  %55 = load i32, i32* @UART_TX, align 4
  %56 = load %struct.circ_buf*, %struct.circ_buf** %5, align 8
  %57 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %56, i32 0, i32 1
  %58 = load i64*, i64** %57, align 8
  %59 = load %struct.circ_buf*, %struct.circ_buf** %5, align 8
  %60 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds i64, i64* %58, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @serial_out(%struct.uart_omap_port* %54, i32 %55, i64 %63)
  %65 = load %struct.circ_buf*, %struct.circ_buf** %5, align 8
  %66 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = add i64 %67, 1
  %69 = load i32, i32* @UART_XMIT_SIZE, align 4
  %70 = sub nsw i32 %69, 1
  %71 = sext i32 %70 to i64
  %72 = and i64 %68, %71
  %73 = load %struct.circ_buf*, %struct.circ_buf** %5, align 8
  %74 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %73, i32 0, i32 0
  store i64 %72, i64* %74, align 8
  %75 = load %struct.uart_omap_port*, %struct.uart_omap_port** %3, align 8
  %76 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %78, align 4
  %81 = load %struct.circ_buf*, %struct.circ_buf** %5, align 8
  %82 = call i64 @uart_circ_empty(%struct.circ_buf* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %53
  br label %90

85:                                               ; preds = %53
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %6, align 4
  %88 = add nsw i32 %87, -1
  store i32 %88, i32* %6, align 4
  %89 = icmp sgt i32 %88, 0
  br i1 %89, label %53, label %90

90:                                               ; preds = %86, %84
  %91 = load %struct.circ_buf*, %struct.circ_buf** %5, align 8
  %92 = call i64 @uart_circ_chars_pending(%struct.circ_buf* %91)
  %93 = load i64, i64* @WAKEUP_CHARS, align 8
  %94 = icmp slt i64 %92, %93
  br i1 %94, label %95, label %99

95:                                               ; preds = %90
  %96 = load %struct.uart_omap_port*, %struct.uart_omap_port** %3, align 8
  %97 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %96, i32 0, i32 0
  %98 = call i32 @uart_write_wakeup(%struct.TYPE_8__* %97)
  br label %99

99:                                               ; preds = %95, %90
  %100 = load %struct.circ_buf*, %struct.circ_buf** %5, align 8
  %101 = call i64 @uart_circ_empty(%struct.circ_buf* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %99
  %104 = load %struct.uart_omap_port*, %struct.uart_omap_port** %3, align 8
  %105 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %104, i32 0, i32 0
  %106 = call i32 @serial_omap_stop_tx(%struct.TYPE_8__* %105)
  br label %107

107:                                              ; preds = %17, %43, %103, %99
  ret void
}

declare dso_local i32 @serial_out(%struct.uart_omap_port*, i32, i64) #1

declare dso_local i64 @uart_circ_empty(%struct.circ_buf*) #1

declare dso_local i64 @uart_tx_stopped(%struct.TYPE_8__*) #1

declare dso_local i32 @serial_omap_stop_tx(%struct.TYPE_8__*) #1

declare dso_local i64 @uart_circ_chars_pending(%struct.circ_buf*) #1

declare dso_local i32 @uart_write_wakeup(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
