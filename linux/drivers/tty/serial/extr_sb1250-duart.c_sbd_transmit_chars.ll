; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sb1250-duart.c_sbd_transmit_chars.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sb1250-duart.c_sbd_transmit_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbd_port = type { %struct.uart_port }
%struct.uart_port = type { i32, %struct.TYPE_4__, i64, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.circ_buf }
%struct.circ_buf = type { i64, i64* }

@R_DUART_TX_HOLD = common dso_local global i32 0, align 4
@UART_XMIT_SIZE = common dso_local global i32 0, align 4
@WAKEUP_CHARS = common dso_local global i64 0, align 8
@M_DUART_IMR_TX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sbd_port*)* @sbd_transmit_chars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sbd_transmit_chars(%struct.sbd_port* %0) #0 {
  %2 = alloca %struct.sbd_port*, align 8
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca %struct.circ_buf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sbd_port* %0, %struct.sbd_port** %2, align 8
  %7 = load %struct.sbd_port*, %struct.sbd_port** %2, align 8
  %8 = getelementptr inbounds %struct.sbd_port, %struct.sbd_port* %7, i32 0, i32 0
  store %struct.uart_port* %8, %struct.uart_port** %3, align 8
  %9 = load %struct.sbd_port*, %struct.sbd_port** %2, align 8
  %10 = getelementptr inbounds %struct.sbd_port, %struct.sbd_port* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %10, i32 0, i32 3
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  store %struct.circ_buf* %13, %struct.circ_buf** %4, align 8
  %14 = load %struct.sbd_port*, %struct.sbd_port** %2, align 8
  %15 = getelementptr inbounds %struct.sbd_port, %struct.sbd_port* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %36

19:                                               ; preds = %1
  %20 = load %struct.sbd_port*, %struct.sbd_port** %2, align 8
  %21 = load i32, i32* @R_DUART_TX_HOLD, align 4
  %22 = load %struct.sbd_port*, %struct.sbd_port** %2, align 8
  %23 = getelementptr inbounds %struct.sbd_port, %struct.sbd_port* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @write_sbdchn(%struct.sbd_port* %20, i32 %21, i64 %25)
  %27 = load %struct.sbd_port*, %struct.sbd_port** %2, align 8
  %28 = getelementptr inbounds %struct.sbd_port, %struct.sbd_port* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 4
  %33 = load %struct.sbd_port*, %struct.sbd_port** %2, align 8
  %34 = getelementptr inbounds %struct.sbd_port, %struct.sbd_port* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %34, i32 0, i32 2
  store i64 0, i64* %35, align 8
  br label %114

36:                                               ; preds = %1
  %37 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %38 = call i64 @uart_circ_empty(%struct.circ_buf* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %36
  %41 = load %struct.sbd_port*, %struct.sbd_port** %2, align 8
  %42 = getelementptr inbounds %struct.sbd_port, %struct.sbd_port* %41, i32 0, i32 0
  %43 = call i64 @uart_tx_stopped(%struct.uart_port* %42)
  %44 = icmp ne i64 %43, 0
  br label %45

45:                                               ; preds = %40, %36
  %46 = phi i1 [ true, %36 ], [ %44, %40 ]
  %47 = zext i1 %46 to i32
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %87, label %50

50:                                               ; preds = %45
  %51 = load %struct.sbd_port*, %struct.sbd_port** %2, align 8
  %52 = load i32, i32* @R_DUART_TX_HOLD, align 4
  %53 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %54 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %53, i32 0, i32 1
  %55 = load i64*, i64** %54, align 8
  %56 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %57 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds i64, i64* %55, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @write_sbdchn(%struct.sbd_port* %51, i32 %52, i64 %60)
  %62 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %63 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = add i64 %64, 1
  %66 = load i32, i32* @UART_XMIT_SIZE, align 4
  %67 = sub nsw i32 %66, 1
  %68 = sext i32 %67 to i64
  %69 = and i64 %65, %68
  %70 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %71 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %70, i32 0, i32 0
  store i64 %69, i64* %71, align 8
  %72 = load %struct.sbd_port*, %struct.sbd_port** %2, align 8
  %73 = getelementptr inbounds %struct.sbd_port, %struct.sbd_port* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %75, align 4
  %78 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %79 = call i64 @uart_circ_chars_pending(%struct.circ_buf* %78)
  %80 = load i64, i64* @WAKEUP_CHARS, align 8
  %81 = icmp slt i64 %79, %80
  br i1 %81, label %82, label %86

82:                                               ; preds = %50
  %83 = load %struct.sbd_port*, %struct.sbd_port** %2, align 8
  %84 = getelementptr inbounds %struct.sbd_port, %struct.sbd_port* %83, i32 0, i32 0
  %85 = call i32 @uart_write_wakeup(%struct.uart_port* %84)
  br label %86

86:                                               ; preds = %82, %50
  br label %87

87:                                               ; preds = %86, %45
  %88 = load i32, i32* %6, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %94, label %90

90:                                               ; preds = %87
  %91 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %92 = call i64 @uart_circ_empty(%struct.circ_buf* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %114

94:                                               ; preds = %90, %87
  %95 = load %struct.sbd_port*, %struct.sbd_port** %2, align 8
  %96 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %97 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = srem i32 %98, 2
  %100 = call i32 @R_DUART_IMRREG(i32 %99)
  %101 = call i32 @read_sbdshr(%struct.sbd_port* %95, i32 %100)
  store i32 %101, i32* %5, align 4
  %102 = load i32, i32* @M_DUART_IMR_TX, align 4
  %103 = xor i32 %102, -1
  %104 = load i32, i32* %5, align 4
  %105 = and i32 %104, %103
  store i32 %105, i32* %5, align 4
  %106 = load %struct.sbd_port*, %struct.sbd_port** %2, align 8
  %107 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %108 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = srem i32 %109, 2
  %111 = call i32 @R_DUART_IMRREG(i32 %110)
  %112 = load i32, i32* %5, align 4
  %113 = call i32 @write_sbdshr(%struct.sbd_port* %106, i32 %111, i32 %112)
  br label %114

114:                                              ; preds = %19, %94, %90
  ret void
}

declare dso_local i32 @write_sbdchn(%struct.sbd_port*, i32, i64) #1

declare dso_local i64 @uart_circ_empty(%struct.circ_buf*) #1

declare dso_local i64 @uart_tx_stopped(%struct.uart_port*) #1

declare dso_local i64 @uart_circ_chars_pending(%struct.circ_buf*) #1

declare dso_local i32 @uart_write_wakeup(%struct.uart_port*) #1

declare dso_local i32 @read_sbdshr(%struct.sbd_port*, i32) #1

declare dso_local i32 @R_DUART_IMRREG(i32) #1

declare dso_local i32 @write_sbdshr(%struct.sbd_port*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
