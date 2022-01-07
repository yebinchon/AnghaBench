; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sifive.c___ssp_transmit_chars.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sifive.c___ssp_transmit_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sifive_serial_port = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__, i64, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.circ_buf }
%struct.circ_buf = type { i64, i64* }

@SIFIVE_TX_FIFO_DEPTH = common dso_local global i32 0, align 4
@UART_XMIT_SIZE = common dso_local global i32 0, align 4
@WAKEUP_CHARS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sifive_serial_port*)* @__ssp_transmit_chars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__ssp_transmit_chars(%struct.sifive_serial_port* %0) #0 {
  %2 = alloca %struct.sifive_serial_port*, align 8
  %3 = alloca %struct.circ_buf*, align 8
  %4 = alloca i32, align 4
  store %struct.sifive_serial_port* %0, %struct.sifive_serial_port** %2, align 8
  %5 = load %struct.sifive_serial_port*, %struct.sifive_serial_port** %2, align 8
  %6 = getelementptr inbounds %struct.sifive_serial_port, %struct.sifive_serial_port* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 2
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  store %struct.circ_buf* %9, %struct.circ_buf** %3, align 8
  %10 = load %struct.sifive_serial_port*, %struct.sifive_serial_port** %2, align 8
  %11 = getelementptr inbounds %struct.sifive_serial_port, %struct.sifive_serial_port* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %31

15:                                               ; preds = %1
  %16 = load %struct.sifive_serial_port*, %struct.sifive_serial_port** %2, align 8
  %17 = load %struct.sifive_serial_port*, %struct.sifive_serial_port** %2, align 8
  %18 = getelementptr inbounds %struct.sifive_serial_port, %struct.sifive_serial_port* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @__ssp_transmit_char(%struct.sifive_serial_port* %16, i64 %20)
  %22 = load %struct.sifive_serial_port*, %struct.sifive_serial_port** %2, align 8
  %23 = getelementptr inbounds %struct.sifive_serial_port, %struct.sifive_serial_port* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %25, align 8
  %28 = load %struct.sifive_serial_port*, %struct.sifive_serial_port** %2, align 8
  %29 = getelementptr inbounds %struct.sifive_serial_port, %struct.sifive_serial_port* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 1
  store i64 0, i64* %30, align 8
  br label %99

31:                                               ; preds = %1
  %32 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %33 = call i64 @uart_circ_empty(%struct.circ_buf* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %31
  %36 = load %struct.sifive_serial_port*, %struct.sifive_serial_port** %2, align 8
  %37 = getelementptr inbounds %struct.sifive_serial_port, %struct.sifive_serial_port* %36, i32 0, i32 0
  %38 = call i64 @uart_tx_stopped(%struct.TYPE_8__* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %35, %31
  %41 = load %struct.sifive_serial_port*, %struct.sifive_serial_port** %2, align 8
  %42 = getelementptr inbounds %struct.sifive_serial_port, %struct.sifive_serial_port* %41, i32 0, i32 0
  %43 = call i32 @sifive_serial_stop_tx(%struct.TYPE_8__* %42)
  br label %99

44:                                               ; preds = %35
  %45 = load i32, i32* @SIFIVE_TX_FIFO_DEPTH, align 4
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %78, %44
  %47 = load %struct.sifive_serial_port*, %struct.sifive_serial_port** %2, align 8
  %48 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %49 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %48, i32 0, i32 1
  %50 = load i64*, i64** %49, align 8
  %51 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %52 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds i64, i64* %50, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @__ssp_transmit_char(%struct.sifive_serial_port* %47, i64 %55)
  %57 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %58 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = add i64 %59, 1
  %61 = load i32, i32* @UART_XMIT_SIZE, align 4
  %62 = sub nsw i32 %61, 1
  %63 = sext i32 %62 to i64
  %64 = and i64 %60, %63
  %65 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %66 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %65, i32 0, i32 0
  store i64 %64, i64* %66, align 8
  %67 = load %struct.sifive_serial_port*, %struct.sifive_serial_port** %2, align 8
  %68 = getelementptr inbounds %struct.sifive_serial_port, %struct.sifive_serial_port* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %70, align 8
  %73 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %74 = call i64 @uart_circ_empty(%struct.circ_buf* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %46
  br label %82

77:                                               ; preds = %46
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %4, align 4
  %80 = add nsw i32 %79, -1
  store i32 %80, i32* %4, align 4
  %81 = icmp sgt i32 %80, 0
  br i1 %81, label %46, label %82

82:                                               ; preds = %78, %76
  %83 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %84 = call i64 @uart_circ_chars_pending(%struct.circ_buf* %83)
  %85 = load i64, i64* @WAKEUP_CHARS, align 8
  %86 = icmp slt i64 %84, %85
  br i1 %86, label %87, label %91

87:                                               ; preds = %82
  %88 = load %struct.sifive_serial_port*, %struct.sifive_serial_port** %2, align 8
  %89 = getelementptr inbounds %struct.sifive_serial_port, %struct.sifive_serial_port* %88, i32 0, i32 0
  %90 = call i32 @uart_write_wakeup(%struct.TYPE_8__* %89)
  br label %91

91:                                               ; preds = %87, %82
  %92 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %93 = call i64 @uart_circ_empty(%struct.circ_buf* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %91
  %96 = load %struct.sifive_serial_port*, %struct.sifive_serial_port** %2, align 8
  %97 = getelementptr inbounds %struct.sifive_serial_port, %struct.sifive_serial_port* %96, i32 0, i32 0
  %98 = call i32 @sifive_serial_stop_tx(%struct.TYPE_8__* %97)
  br label %99

99:                                               ; preds = %15, %40, %95, %91
  ret void
}

declare dso_local i32 @__ssp_transmit_char(%struct.sifive_serial_port*, i64) #1

declare dso_local i64 @uart_circ_empty(%struct.circ_buf*) #1

declare dso_local i64 @uart_tx_stopped(%struct.TYPE_8__*) #1

declare dso_local i32 @sifive_serial_stop_tx(%struct.TYPE_8__*) #1

declare dso_local i64 @uart_circ_chars_pending(%struct.circ_buf*) #1

declare dso_local i32 @uart_write_wakeup(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
