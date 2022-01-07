; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial-tegra.c_tegra_uart_fifo_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial-tegra.c_tegra_uart_fifo_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_uart_port = type { i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }

@UART_FCR_CLEAR_RCVR = common dso_local global i64 0, align 8
@UART_FCR_CLEAR_XMIT = common dso_local global i64 0, align 8
@UART_FCR = common dso_local global i32 0, align 4
@UART_FCR_ENABLE_FIFO = common dso_local global i64 0, align 8
@UART_SCR = common dso_local global i32 0, align 4
@UART_LSR = common dso_local global i32 0, align 4
@UART_LSR_TEMT = common dso_local global i32 0, align 4
@UART_LSR_DR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra_uart_port*, i64)* @tegra_uart_fifo_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_uart_fifo_reset(%struct.tegra_uart_port* %0, i64 %1) #0 {
  %3 = alloca %struct.tegra_uart_port*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.tegra_uart_port* %0, %struct.tegra_uart_port** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %3, align 8
  %9 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %5, align 8
  store i32 10000, i32* %7, align 4
  %11 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %3, align 8
  %12 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %3, align 8
  %17 = call i32 @set_rts(%struct.tegra_uart_port* %16, i32 0)
  br label %18

18:                                               ; preds = %15, %2
  %19 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %3, align 8
  %20 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %19, i32 0, i32 2
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %18
  %26 = load i64, i64* %4, align 8
  %27 = load i64, i64* @UART_FCR_CLEAR_RCVR, align 8
  %28 = load i64, i64* @UART_FCR_CLEAR_XMIT, align 8
  %29 = or i64 %27, %28
  %30 = and i64 %26, %29
  %31 = load i64, i64* %5, align 8
  %32 = or i64 %31, %30
  store i64 %32, i64* %5, align 8
  %33 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %3, align 8
  %34 = load i64, i64* %5, align 8
  %35 = load i32, i32* @UART_FCR, align 4
  %36 = call i32 @tegra_uart_write(%struct.tegra_uart_port* %33, i64 %34, i32 %35)
  br label %75

37:                                               ; preds = %18
  %38 = load i64, i64* @UART_FCR_ENABLE_FIFO, align 8
  %39 = xor i64 %38, -1
  %40 = load i64, i64* %5, align 8
  %41 = and i64 %40, %39
  store i64 %41, i64* %5, align 8
  %42 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %3, align 8
  %43 = load i64, i64* %5, align 8
  %44 = load i32, i32* @UART_FCR, align 4
  %45 = call i32 @tegra_uart_write(%struct.tegra_uart_port* %42, i64 %43, i32 %44)
  %46 = call i32 @udelay(i32 60)
  %47 = load i64, i64* %4, align 8
  %48 = load i64, i64* @UART_FCR_CLEAR_RCVR, align 8
  %49 = load i64, i64* @UART_FCR_CLEAR_XMIT, align 8
  %50 = or i64 %48, %49
  %51 = and i64 %47, %50
  %52 = load i64, i64* %5, align 8
  %53 = or i64 %52, %51
  store i64 %53, i64* %5, align 8
  %54 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %3, align 8
  %55 = load i64, i64* %5, align 8
  %56 = load i32, i32* @UART_FCR, align 4
  %57 = call i32 @tegra_uart_write(%struct.tegra_uart_port* %54, i64 %55, i32 %56)
  %58 = load i64, i64* @UART_FCR_ENABLE_FIFO, align 8
  %59 = load i64, i64* %5, align 8
  %60 = or i64 %59, %58
  store i64 %60, i64* %5, align 8
  %61 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %3, align 8
  %62 = load i64, i64* %5, align 8
  %63 = load i32, i32* @UART_FCR, align 4
  %64 = call i32 @tegra_uart_write(%struct.tegra_uart_port* %61, i64 %62, i32 %63)
  %65 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %3, align 8
  %66 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %65, i32 0, i32 2
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %37
  %72 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %3, align 8
  %73 = call i32 @tegra_uart_wait_fifo_mode_enabled(%struct.tegra_uart_port* %72)
  br label %74

74:                                               ; preds = %71, %37
  br label %75

75:                                               ; preds = %74, %25
  %76 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %3, align 8
  %77 = load i32, i32* @UART_SCR, align 4
  %78 = call i32 @tegra_uart_read(%struct.tegra_uart_port* %76, i32 %77)
  %79 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %3, align 8
  %80 = call i32 @tegra_uart_wait_cycle_time(%struct.tegra_uart_port* %79, i32 32)
  br label %81

81:                                               ; preds = %97, %75
  %82 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %3, align 8
  %83 = load i32, i32* @UART_LSR, align 4
  %84 = call i32 @tegra_uart_read(%struct.tegra_uart_port* %82, i32 %83)
  store i32 %84, i32* %6, align 4
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* @UART_LSR_TEMT, align 4
  %87 = or i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %81
  %90 = load i32, i32* %6, align 4
  %91 = load i32, i32* @UART_LSR_DR, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %89
  br label %101

95:                                               ; preds = %89, %81
  %96 = call i32 @udelay(i32 1)
  br label %97

97:                                               ; preds = %95
  %98 = load i32, i32* %7, align 4
  %99 = add i32 %98, -1
  store i32 %99, i32* %7, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %81, label %101

101:                                              ; preds = %97, %94
  %102 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %3, align 8
  %103 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %101
  %107 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %3, align 8
  %108 = call i32 @set_rts(%struct.tegra_uart_port* %107, i32 1)
  br label %109

109:                                              ; preds = %106, %101
  ret void
}

declare dso_local i32 @set_rts(%struct.tegra_uart_port*, i32) #1

declare dso_local i32 @tegra_uart_write(%struct.tegra_uart_port*, i64, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @tegra_uart_wait_fifo_mode_enabled(%struct.tegra_uart_port*) #1

declare dso_local i32 @tegra_uart_read(%struct.tegra_uart_port*, i32) #1

declare dso_local i32 @tegra_uart_wait_cycle_time(%struct.tegra_uart_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
