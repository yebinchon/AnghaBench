; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_port.c_serial8250_tx_chars.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_port.c_serial8250_tx_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_8250_port = type { i32, i32, %struct.uart_port }
%struct.uart_port = type { %struct.TYPE_4__, i64, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.circ_buf }
%struct.circ_buf = type { i64, i64* }

@UART_TX = common dso_local global i32 0, align 4
@UART_XMIT_SIZE = common dso_local global i32 0, align 4
@UART_CAP_HFIFO = common dso_local global i32 0, align 4
@UART_LSR = common dso_local global i32 0, align 4
@BOTH_EMPTY = common dso_local global i32 0, align 4
@UART_CAP_MINI = common dso_local global i32 0, align 4
@UART_LSR_THRE = common dso_local global i32 0, align 4
@WAKEUP_CHARS = common dso_local global i64 0, align 8
@UART_CAP_RPM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @serial8250_tx_chars(%struct.uart_8250_port* %0) #0 {
  %2 = alloca %struct.uart_8250_port*, align 8
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca %struct.circ_buf*, align 8
  %5 = alloca i32, align 4
  store %struct.uart_8250_port* %0, %struct.uart_8250_port** %2, align 8
  %6 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %7 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %6, i32 0, i32 2
  store %struct.uart_port* %7, %struct.uart_port** %3, align 8
  %8 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %9 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %8, i32 0, i32 2
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  store %struct.circ_buf* %11, %struct.circ_buf** %4, align 8
  %12 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %13 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %30

16:                                               ; preds = %1
  %17 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %18 = load i32, i32* @UART_TX, align 4
  %19 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %20 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @serial_out(%struct.uart_8250_port* %17, i32 %18, i64 %21)
  %23 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %24 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %25, align 8
  %28 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %29 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %28, i32 0, i32 1
  store i64 0, i64* %29, align 8
  br label %137

30:                                               ; preds = %1
  %31 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %32 = call i64 @uart_tx_stopped(%struct.uart_port* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %36 = call i32 @serial8250_stop_tx(%struct.uart_port* %35)
  br label %137

37:                                               ; preds = %30
  %38 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %39 = call i64 @uart_circ_empty(%struct.circ_buf* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %43 = call i32 @__stop_tx(%struct.uart_8250_port* %42)
  br label %137

44:                                               ; preds = %37
  %45 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %46 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %111, %44
  %49 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %50 = load i32, i32* @UART_TX, align 4
  %51 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %52 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %51, i32 0, i32 1
  %53 = load i64*, i64** %52, align 8
  %54 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %55 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds i64, i64* %53, i64 %56
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @serial_out(%struct.uart_8250_port* %49, i32 %50, i64 %58)
  %60 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %61 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = add i64 %62, 1
  %64 = load i32, i32* @UART_XMIT_SIZE, align 4
  %65 = sub nsw i32 %64, 1
  %66 = sext i32 %65 to i64
  %67 = and i64 %63, %66
  %68 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %69 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %68, i32 0, i32 0
  store i64 %67, i64* %69, align 8
  %70 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %71 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %72, align 8
  %75 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %76 = call i64 @uart_circ_empty(%struct.circ_buf* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %48
  br label %115

79:                                               ; preds = %48
  %80 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %81 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @UART_CAP_HFIFO, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %95

86:                                               ; preds = %79
  %87 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %88 = load i32, i32* @UART_LSR, align 4
  %89 = call i32 @serial_in(%struct.uart_8250_port* %87, i32 %88)
  %90 = load i32, i32* @BOTH_EMPTY, align 4
  %91 = and i32 %89, %90
  %92 = load i32, i32* @BOTH_EMPTY, align 4
  %93 = icmp ne i32 %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %86
  br label %115

95:                                               ; preds = %86, %79
  %96 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %97 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @UART_CAP_MINI, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %110

102:                                              ; preds = %95
  %103 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %104 = load i32, i32* @UART_LSR, align 4
  %105 = call i32 @serial_in(%struct.uart_8250_port* %103, i32 %104)
  %106 = load i32, i32* @UART_LSR_THRE, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %110, label %109

109:                                              ; preds = %102
  br label %115

110:                                              ; preds = %102, %95
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %5, align 4
  %113 = add nsw i32 %112, -1
  store i32 %113, i32* %5, align 4
  %114 = icmp sgt i32 %113, 0
  br i1 %114, label %48, label %115

115:                                              ; preds = %111, %109, %94, %78
  %116 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %117 = call i64 @uart_circ_chars_pending(%struct.circ_buf* %116)
  %118 = load i64, i64* @WAKEUP_CHARS, align 8
  %119 = icmp slt i64 %117, %118
  br i1 %119, label %120, label %123

120:                                              ; preds = %115
  %121 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %122 = call i32 @uart_write_wakeup(%struct.uart_port* %121)
  br label %123

123:                                              ; preds = %120, %115
  %124 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %125 = call i64 @uart_circ_empty(%struct.circ_buf* %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %137

127:                                              ; preds = %123
  %128 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %129 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @UART_CAP_RPM, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %137, label %134

134:                                              ; preds = %127
  %135 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %136 = call i32 @__stop_tx(%struct.uart_8250_port* %135)
  br label %137

137:                                              ; preds = %16, %34, %41, %134, %127, %123
  ret void
}

declare dso_local i32 @serial_out(%struct.uart_8250_port*, i32, i64) #1

declare dso_local i64 @uart_tx_stopped(%struct.uart_port*) #1

declare dso_local i32 @serial8250_stop_tx(%struct.uart_port*) #1

declare dso_local i64 @uart_circ_empty(%struct.circ_buf*) #1

declare dso_local i32 @__stop_tx(%struct.uart_8250_port*) #1

declare dso_local i32 @serial_in(%struct.uart_8250_port*, i32) #1

declare dso_local i64 @uart_circ_chars_pending(%struct.circ_buf*) #1

declare dso_local i32 @uart_write_wakeup(%struct.uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
