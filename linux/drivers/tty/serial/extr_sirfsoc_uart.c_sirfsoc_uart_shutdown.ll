; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sirfsoc_uart.c_sirfsoc_uart_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sirfsoc_uart.c_sirfsoc_uart_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.sirfsoc_uart_port = type { i32, i32, i32, i64, i32, i64, i32, i32, i64, %struct.TYPE_4__*, i64, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, %struct.sirfsoc_register }
%struct.sirfsoc_register = type { i32, i32, i32 }
%struct.TYPE_3__ = type { %struct.circ_buf }
%struct.circ_buf = type { i32, i32 }

@SIRF_USP_UART = common dso_local global i64 0, align 8
@TX_DMA_IDLE = common dso_local global i32 0, align 4
@SIRFUART_RX_FIFO_MASK = common dso_local global i32 0, align 4
@SIRFSOC_RX_DMA_BUF_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @sirfsoc_uart_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sirfsoc_uart_shutdown(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.sirfsoc_uart_port*, align 8
  %4 = alloca %struct.sirfsoc_register*, align 8
  %5 = alloca %struct.circ_buf*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %6 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %7 = call %struct.sirfsoc_uart_port* @to_sirfport(%struct.uart_port* %6)
  store %struct.sirfsoc_uart_port* %7, %struct.sirfsoc_uart_port** %3, align 8
  %8 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %3, align 8
  %9 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %8, i32 0, i32 9
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  store %struct.sirfsoc_register* %11, %struct.sirfsoc_register** %4, align 8
  %12 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %3, align 8
  %13 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %12, i32 0, i32 12
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  store %struct.circ_buf* %14, %struct.circ_buf** %5, align 8
  %15 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %3, align 8
  %16 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %15, i32 0, i32 11
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %1
  %20 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %21 = load %struct.sirfsoc_register*, %struct.sirfsoc_register** %4, align 8
  %22 = getelementptr inbounds %struct.sirfsoc_register, %struct.sirfsoc_register* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @wr_regl(%struct.uart_port* %20, i32 %23, i64 0)
  br label %31

25:                                               ; preds = %1
  %26 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %27 = load %struct.sirfsoc_register*, %struct.sirfsoc_register** %4, align 8
  %28 = getelementptr inbounds %struct.sirfsoc_register, %struct.sirfsoc_register* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @wr_regl(%struct.uart_port* %26, i32 %29, i64 -1)
  br label %31

31:                                               ; preds = %25, %19
  %32 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %33 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %3, align 8
  %36 = call i32 @free_irq(i32 %34, %struct.sirfsoc_uart_port* %35)
  %37 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %3, align 8
  %38 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %37, i32 0, i32 10
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %31
  %42 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %43 = call i32 @sirfsoc_uart_disable_ms(%struct.uart_port* %42)
  br label %44

44:                                               ; preds = %41, %31
  %45 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %3, align 8
  %46 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %45, i32 0, i32 9
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @SIRF_USP_UART, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %68

52:                                               ; preds = %44
  %53 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %3, align 8
  %54 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %53, i32 0, i32 8
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %68

57:                                               ; preds = %52
  %58 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %3, align 8
  %59 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %58, i32 0, i32 7
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @gpio_set_value(i32 %60, i32 1)
  %62 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %3, align 8
  %63 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %62, i32 0, i32 6
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @gpio_to_irq(i32 %64)
  %66 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %3, align 8
  %67 = call i32 @free_irq(i32 %65, %struct.sirfsoc_uart_port* %66)
  br label %68

68:                                               ; preds = %57, %52, %44
  %69 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %3, align 8
  %70 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %69, i32 0, i32 5
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %68
  %74 = load i32, i32* @TX_DMA_IDLE, align 4
  %75 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %3, align 8
  %76 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %75, i32 0, i32 4
  store i32 %74, i32* %76, align 8
  br label %77

77:                                               ; preds = %73, %68
  %78 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %3, align 8
  %79 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %78, i32 0, i32 3
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %120

82:                                               ; preds = %77
  %83 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %3, align 8
  %84 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %120

87:                                               ; preds = %82
  br label %88

88:                                               ; preds = %113, %87
  %89 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %90 = load %struct.sirfsoc_register*, %struct.sirfsoc_register** %4, align 8
  %91 = getelementptr inbounds %struct.sirfsoc_register, %struct.sirfsoc_register* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @rd_regl(%struct.uart_port* %89, i32 %92)
  %94 = load i32, i32* @SIRFUART_RX_FIFO_MASK, align 4
  %95 = and i32 %93, %94
  %96 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %3, align 8
  %97 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = icmp sgt i32 %95, %98
  br i1 %99, label %100, label %111

100:                                              ; preds = %88
  %101 = load %struct.circ_buf*, %struct.circ_buf** %5, align 8
  %102 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.circ_buf*, %struct.circ_buf** %5, align 8
  %105 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @SIRFSOC_RX_DMA_BUF_SIZE, align 4
  %108 = call i32 @CIRC_CNT(i32 %103, i32 %106, i32 %107)
  %109 = icmp ne i32 %108, 0
  %110 = xor i1 %109, true
  br label %111

111:                                              ; preds = %100, %88
  %112 = phi i1 [ false, %88 ], [ %110, %100 ]
  br i1 %112, label %113, label %114

113:                                              ; preds = %111
  br label %88

114:                                              ; preds = %111
  %115 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %3, align 8
  %116 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %115, i32 0, i32 0
  store i32 0, i32* %116, align 8
  %117 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %3, align 8
  %118 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %117, i32 0, i32 2
  %119 = call i32 @hrtimer_cancel(i32* %118)
  br label %120

120:                                              ; preds = %114, %82, %77
  ret void
}

declare dso_local %struct.sirfsoc_uart_port* @to_sirfport(%struct.uart_port*) #1

declare dso_local i32 @wr_regl(%struct.uart_port*, i32, i64) #1

declare dso_local i32 @free_irq(i32, %struct.sirfsoc_uart_port*) #1

declare dso_local i32 @sirfsoc_uart_disable_ms(%struct.uart_port*) #1

declare dso_local i32 @gpio_set_value(i32, i32) #1

declare dso_local i32 @gpio_to_irq(i32) #1

declare dso_local i32 @rd_regl(%struct.uart_port*, i32) #1

declare dso_local i32 @CIRC_CNT(i32, i32, i32) #1

declare dso_local i32 @hrtimer_cancel(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
