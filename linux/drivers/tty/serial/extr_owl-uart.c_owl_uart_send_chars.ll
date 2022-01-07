; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_owl-uart.c_owl_uart_send_chars.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_owl-uart.c_owl_uart_send_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.circ_buf }
%struct.circ_buf = type { i32*, i64 }

@OWL_UART_STAT = common dso_local global i32 0, align 4
@OWL_UART_STAT_TFFU = common dso_local global i32 0, align 4
@OWL_UART_TXDAT = common dso_local global i32 0, align 4
@SERIAL_XMIT_SIZE = common dso_local global i32 0, align 4
@WAKEUP_CHARS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @owl_uart_send_chars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @owl_uart_send_chars(%struct.uart_port* %0) #0 {
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
  %10 = call i64 @uart_tx_stopped(%struct.uart_port* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %100

13:                                               ; preds = %1
  %14 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %15 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %43

18:                                               ; preds = %13
  br label %19

19:                                               ; preds = %27, %18
  %20 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %21 = load i32, i32* @OWL_UART_STAT, align 4
  %22 = call i32 @owl_uart_read(%struct.uart_port* %20, i32 %21)
  %23 = load i32, i32* @OWL_UART_STAT_TFFU, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  br i1 %26, label %27, label %29

27:                                               ; preds = %19
  %28 = call i32 (...) @cpu_relax()
  br label %19

29:                                               ; preds = %19
  %30 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %31 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %32 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @OWL_UART_TXDAT, align 4
  %35 = call i32 @owl_uart_write(%struct.uart_port* %30, i32 %33, i32 %34)
  %36 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %37 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %38, align 4
  %41 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %42 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %41, i32 0, i32 0
  store i32 0, i32* %42, align 8
  br label %43

43:                                               ; preds = %29, %13
  br label %44

44:                                               ; preds = %57, %43
  %45 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %46 = load i32, i32* @OWL_UART_STAT, align 4
  %47 = call i32 @owl_uart_read(%struct.uart_port* %45, i32 %46)
  %48 = load i32, i32* @OWL_UART_STAT_TFFU, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  br i1 %51, label %52, label %85

52:                                               ; preds = %44
  %53 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %54 = call i64 @uart_circ_empty(%struct.circ_buf* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  br label %85

57:                                               ; preds = %52
  %58 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %59 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %62 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds i32, i32* %60, i64 %63
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %4, align 4
  %66 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* @OWL_UART_TXDAT, align 4
  %69 = call i32 @owl_uart_write(%struct.uart_port* %66, i32 %67, i32 %68)
  %70 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %71 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = add i64 %72, 1
  %74 = load i32, i32* @SERIAL_XMIT_SIZE, align 4
  %75 = sub nsw i32 %74, 1
  %76 = sext i32 %75 to i64
  %77 = and i64 %73, %76
  %78 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %79 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %78, i32 0, i32 1
  store i64 %77, i64* %79, align 8
  %80 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %81 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %82, align 4
  br label %44

85:                                               ; preds = %56, %44
  %86 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %87 = call i64 @uart_circ_chars_pending(%struct.circ_buf* %86)
  %88 = load i64, i64* @WAKEUP_CHARS, align 8
  %89 = icmp slt i64 %87, %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %85
  %91 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %92 = call i32 @uart_write_wakeup(%struct.uart_port* %91)
  br label %93

93:                                               ; preds = %90, %85
  %94 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %95 = call i64 @uart_circ_empty(%struct.circ_buf* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %93
  %98 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %99 = call i32 @owl_uart_stop_tx(%struct.uart_port* %98)
  br label %100

100:                                              ; preds = %12, %97, %93
  ret void
}

declare dso_local i64 @uart_tx_stopped(%struct.uart_port*) #1

declare dso_local i32 @owl_uart_read(%struct.uart_port*, i32) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @owl_uart_write(%struct.uart_port*, i32, i32) #1

declare dso_local i64 @uart_circ_empty(%struct.circ_buf*) #1

declare dso_local i64 @uart_circ_chars_pending(%struct.circ_buf*) #1

declare dso_local i32 @uart_write_wakeup(%struct.uart_port*) #1

declare dso_local i32 @owl_uart_stop_tx(%struct.uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
