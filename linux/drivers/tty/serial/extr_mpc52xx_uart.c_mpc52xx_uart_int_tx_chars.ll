; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_mpc52xx_uart.c_mpc52xx_uart_int_tx_chars.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_mpc52xx_uart.c_mpc52xx_uart_int_tx_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 (%struct.uart_port*, i64)*, i64 (%struct.uart_port*)* }
%struct.uart_port = type { %struct.TYPE_5__, i64, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.circ_buf }
%struct.circ_buf = type { i64, i64* }

@psc_ops = common dso_local global %struct.TYPE_6__* null, align 8
@UART_XMIT_SIZE = common dso_local global i32 0, align 4
@WAKEUP_CHARS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*)* @mpc52xx_uart_int_tx_chars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpc52xx_uart_int_tx_chars(%struct.uart_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca %struct.circ_buf*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  %5 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %6 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %5, i32 0, i32 2
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  store %struct.circ_buf* %8, %struct.circ_buf** %4, align 8
  %9 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %10 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %29

13:                                               ; preds = %1
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** @psc_ops, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32 (%struct.uart_port*, i64)*, i32 (%struct.uart_port*, i64)** %15, align 8
  %17 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %18 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %19 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = call i32 %16(%struct.uart_port* %17, i64 %20)
  %22 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %23 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %24, align 8
  %27 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %28 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %27, i32 0, i32 1
  store i64 0, i64* %28, align 8
  store i32 1, i32* %2, align 4
  br label %98

29:                                               ; preds = %1
  %30 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %31 = call i64 @uart_circ_empty(%struct.circ_buf* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %35 = call i64 @uart_tx_stopped(%struct.uart_port* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %33, %29
  %38 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %39 = call i32 @mpc52xx_uart_stop_tx(%struct.uart_port* %38)
  store i32 0, i32* %2, align 4
  br label %98

40:                                               ; preds = %33
  br label %41

41:                                               ; preds = %81, %40
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** @psc_ops, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  %44 = load i64 (%struct.uart_port*)*, i64 (%struct.uart_port*)** %43, align 8
  %45 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %46 = call i64 %44(%struct.uart_port* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %82

48:                                               ; preds = %41
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** @psc_ops, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32 (%struct.uart_port*, i64)*, i32 (%struct.uart_port*, i64)** %50, align 8
  %52 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %53 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %54 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %53, i32 0, i32 1
  %55 = load i64*, i64** %54, align 8
  %56 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %57 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds i64, i64* %55, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = call i32 %51(%struct.uart_port* %52, i64 %60)
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
  %72 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %73 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %74, align 8
  %77 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %78 = call i64 @uart_circ_empty(%struct.circ_buf* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %48
  br label %82

81:                                               ; preds = %48
  br label %41

82:                                               ; preds = %80, %41
  %83 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %84 = call i64 @uart_circ_chars_pending(%struct.circ_buf* %83)
  %85 = load i64, i64* @WAKEUP_CHARS, align 8
  %86 = icmp slt i64 %84, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %82
  %88 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %89 = call i32 @uart_write_wakeup(%struct.uart_port* %88)
  br label %90

90:                                               ; preds = %87, %82
  %91 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %92 = call i64 @uart_circ_empty(%struct.circ_buf* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %90
  %95 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %96 = call i32 @mpc52xx_uart_stop_tx(%struct.uart_port* %95)
  store i32 0, i32* %2, align 4
  br label %98

97:                                               ; preds = %90
  store i32 1, i32* %2, align 4
  br label %98

98:                                               ; preds = %97, %94, %37, %13
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local i64 @uart_circ_empty(%struct.circ_buf*) #1

declare dso_local i64 @uart_tx_stopped(%struct.uart_port*) #1

declare dso_local i32 @mpc52xx_uart_stop_tx(%struct.uart_port*) #1

declare dso_local i64 @uart_circ_chars_pending(%struct.circ_buf*) #1

declare dso_local i32 @uart_write_wakeup(%struct.uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
