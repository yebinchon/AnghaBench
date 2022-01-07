; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sprd_serial.c_sprd_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sprd_serial.c_sprd_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { %struct.TYPE_4__, i64, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.circ_buf }
%struct.circ_buf = type { i64, i64* }

@SPRD_TXD = common dso_local global i32 0, align 4
@THLD_TX_EMPTY = common dso_local global i32 0, align 4
@UART_XMIT_SIZE = common dso_local global i32 0, align 4
@WAKEUP_CHARS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @sprd_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sprd_tx(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.circ_buf*, align 8
  %4 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %5 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %6 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %5, i32 0, i32 2
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  store %struct.circ_buf* %8, %struct.circ_buf** %3, align 8
  %9 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %10 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %27

13:                                               ; preds = %1
  %14 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %15 = load i32, i32* @SPRD_TXD, align 4
  %16 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %17 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @serial_out(%struct.uart_port* %14, i32 %15, i64 %18)
  %20 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %21 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %22, align 8
  %25 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %26 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %25, i32 0, i32 1
  store i64 0, i64* %26, align 8
  br label %91

27:                                               ; preds = %1
  %28 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %29 = call i64 @uart_circ_empty(%struct.circ_buf* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %33 = call i64 @uart_tx_stopped(%struct.uart_port* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %31, %27
  %36 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %37 = call i32 @sprd_stop_tx(%struct.uart_port* %36)
  br label %91

38:                                               ; preds = %31
  %39 = load i32, i32* @THLD_TX_EMPTY, align 4
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %72, %38
  %41 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %42 = load i32, i32* @SPRD_TXD, align 4
  %43 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %44 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %43, i32 0, i32 1
  %45 = load i64*, i64** %44, align 8
  %46 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %47 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds i64, i64* %45, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @serial_out(%struct.uart_port* %41, i32 %42, i64 %50)
  %52 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %53 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = add i64 %54, 1
  %56 = load i32, i32* @UART_XMIT_SIZE, align 4
  %57 = sub nsw i32 %56, 1
  %58 = sext i32 %57 to i64
  %59 = and i64 %55, %58
  %60 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %61 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %60, i32 0, i32 0
  store i64 %59, i64* %61, align 8
  %62 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %63 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %64, align 8
  %67 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %68 = call i64 @uart_circ_empty(%struct.circ_buf* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %40
  br label %76

71:                                               ; preds = %40
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %4, align 4
  %74 = add nsw i32 %73, -1
  store i32 %74, i32* %4, align 4
  %75 = icmp sgt i32 %74, 0
  br i1 %75, label %40, label %76

76:                                               ; preds = %72, %70
  %77 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %78 = call i64 @uart_circ_chars_pending(%struct.circ_buf* %77)
  %79 = load i64, i64* @WAKEUP_CHARS, align 8
  %80 = icmp slt i64 %78, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %76
  %82 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %83 = call i32 @uart_write_wakeup(%struct.uart_port* %82)
  br label %84

84:                                               ; preds = %81, %76
  %85 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %86 = call i64 @uart_circ_empty(%struct.circ_buf* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %84
  %89 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %90 = call i32 @sprd_stop_tx(%struct.uart_port* %89)
  br label %91

91:                                               ; preds = %13, %35, %88, %84
  ret void
}

declare dso_local i32 @serial_out(%struct.uart_port*, i32, i64) #1

declare dso_local i64 @uart_circ_empty(%struct.circ_buf*) #1

declare dso_local i64 @uart_tx_stopped(%struct.uart_port*) #1

declare dso_local i32 @sprd_stop_tx(%struct.uart_port*) #1

declare dso_local i64 @uart_circ_chars_pending(%struct.circ_buf*) #1

declare dso_local i32 @uart_write_wakeup(%struct.uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
