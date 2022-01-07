; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_pxa.c_serial_pxa_startup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_pxa.c_serial_pxa_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.uart_pxa_port = type { i32, %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@UART_MCR_AFE = common dso_local global i32 0, align 4
@serial_pxa_irq = common dso_local global i32 0, align 4
@UART_FCR = common dso_local global i32 0, align 4
@UART_FCR_ENABLE_FIFO = common dso_local global i32 0, align 4
@UART_FCR_CLEAR_RCVR = common dso_local global i32 0, align 4
@UART_FCR_CLEAR_XMIT = common dso_local global i32 0, align 4
@UART_LSR = common dso_local global i32 0, align 4
@UART_RX = common dso_local global i32 0, align 4
@UART_IIR = common dso_local global i32 0, align 4
@UART_MSR = common dso_local global i32 0, align 4
@UART_LCR = common dso_local global i32 0, align 4
@UART_LCR_WLEN8 = common dso_local global i32 0, align 4
@TIOCM_OUT2 = common dso_local global i32 0, align 4
@UART_IER_RLSI = common dso_local global i32 0, align 4
@UART_IER_RDI = common dso_local global i32 0, align 4
@UART_IER_RTOIE = common dso_local global i32 0, align 4
@UART_IER_UUE = common dso_local global i32 0, align 4
@UART_IER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*)* @serial_pxa_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @serial_pxa_startup(%struct.uart_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca %struct.uart_pxa_port*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  %7 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %8 = bitcast %struct.uart_port* %7 to %struct.uart_pxa_port*
  store %struct.uart_pxa_port* %8, %struct.uart_pxa_port** %4, align 8
  %9 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %10 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp eq i32 %11, 3
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load i32, i32* @UART_MCR_AFE, align 4
  %15 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %4, align 8
  %16 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = or i32 %17, %14
  store i32 %18, i32* %16, align 4
  br label %22

19:                                               ; preds = %1
  %20 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %4, align 8
  %21 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %20, i32 0, i32 4
  store i32 0, i32* %21, align 4
  br label %22

22:                                               ; preds = %19, %13
  %23 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %4, align 8
  %24 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @clk_get_rate(i32 %25)
  %27 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %4, align 8
  %28 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 3
  store i32 %26, i32* %29, align 4
  %30 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %4, align 8
  %31 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @serial_pxa_irq, align 4
  %35 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %4, align 8
  %36 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %4, align 8
  %39 = call i32 @request_irq(i32 %33, i32 %34, i32 0, i32 %37, %struct.uart_pxa_port* %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %22
  %43 = load i32, i32* %6, align 4
  store i32 %43, i32* %2, align 4
  br label %126

44:                                               ; preds = %22
  %45 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %4, align 8
  %46 = load i32, i32* @UART_FCR, align 4
  %47 = load i32, i32* @UART_FCR_ENABLE_FIFO, align 4
  %48 = call i32 @serial_out(%struct.uart_pxa_port* %45, i32 %46, i32 %47)
  %49 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %4, align 8
  %50 = load i32, i32* @UART_FCR, align 4
  %51 = load i32, i32* @UART_FCR_ENABLE_FIFO, align 4
  %52 = load i32, i32* @UART_FCR_CLEAR_RCVR, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @UART_FCR_CLEAR_XMIT, align 4
  %55 = or i32 %53, %54
  %56 = call i32 @serial_out(%struct.uart_pxa_port* %49, i32 %50, i32 %55)
  %57 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %4, align 8
  %58 = load i32, i32* @UART_FCR, align 4
  %59 = call i32 @serial_out(%struct.uart_pxa_port* %57, i32 %58, i32 0)
  %60 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %4, align 8
  %61 = load i32, i32* @UART_LSR, align 4
  %62 = call i32 @serial_in(%struct.uart_pxa_port* %60, i32 %61)
  %63 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %4, align 8
  %64 = load i32, i32* @UART_RX, align 4
  %65 = call i32 @serial_in(%struct.uart_pxa_port* %63, i32 %64)
  %66 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %4, align 8
  %67 = load i32, i32* @UART_IIR, align 4
  %68 = call i32 @serial_in(%struct.uart_pxa_port* %66, i32 %67)
  %69 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %4, align 8
  %70 = load i32, i32* @UART_MSR, align 4
  %71 = call i32 @serial_in(%struct.uart_pxa_port* %69, i32 %70)
  %72 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %4, align 8
  %73 = load i32, i32* @UART_LCR, align 4
  %74 = load i32, i32* @UART_LCR_WLEN8, align 4
  %75 = call i32 @serial_out(%struct.uart_pxa_port* %72, i32 %73, i32 %74)
  %76 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %4, align 8
  %77 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i64, i64* %5, align 8
  %80 = call i32 @spin_lock_irqsave(i32* %78, i64 %79)
  %81 = load i32, i32* @TIOCM_OUT2, align 4
  %82 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %4, align 8
  %83 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = or i32 %85, %81
  store i32 %86, i32* %84, align 4
  %87 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %4, align 8
  %88 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %87, i32 0, i32 1
  %89 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %4, align 8
  %90 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @serial_pxa_set_mctrl(%struct.TYPE_2__* %88, i32 %92)
  %94 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %4, align 8
  %95 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load i64, i64* %5, align 8
  %98 = call i32 @spin_unlock_irqrestore(i32* %96, i64 %97)
  %99 = load i32, i32* @UART_IER_RLSI, align 4
  %100 = load i32, i32* @UART_IER_RDI, align 4
  %101 = or i32 %99, %100
  %102 = load i32, i32* @UART_IER_RTOIE, align 4
  %103 = or i32 %101, %102
  %104 = load i32, i32* @UART_IER_UUE, align 4
  %105 = or i32 %103, %104
  %106 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %4, align 8
  %107 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 4
  %108 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %4, align 8
  %109 = load i32, i32* @UART_IER, align 4
  %110 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %4, align 8
  %111 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @serial_out(%struct.uart_pxa_port* %108, i32 %109, i32 %112)
  %114 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %4, align 8
  %115 = load i32, i32* @UART_LSR, align 4
  %116 = call i32 @serial_in(%struct.uart_pxa_port* %114, i32 %115)
  %117 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %4, align 8
  %118 = load i32, i32* @UART_RX, align 4
  %119 = call i32 @serial_in(%struct.uart_pxa_port* %117, i32 %118)
  %120 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %4, align 8
  %121 = load i32, i32* @UART_IIR, align 4
  %122 = call i32 @serial_in(%struct.uart_pxa_port* %120, i32 %121)
  %123 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %4, align 8
  %124 = load i32, i32* @UART_MSR, align 4
  %125 = call i32 @serial_in(%struct.uart_pxa_port* %123, i32 %124)
  store i32 0, i32* %2, align 4
  br label %126

126:                                              ; preds = %44, %42
  %127 = load i32, i32* %2, align 4
  ret i32 %127
}

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.uart_pxa_port*) #1

declare dso_local i32 @serial_out(%struct.uart_pxa_port*, i32, i32) #1

declare dso_local i32 @serial_in(%struct.uart_pxa_port*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @serial_pxa_set_mctrl(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
