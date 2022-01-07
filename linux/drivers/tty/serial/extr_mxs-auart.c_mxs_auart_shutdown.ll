; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_mxs-auart.c_mxs_auart_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_mxs-auart.c_mxs_auart_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.mxs_auart_port = type { i32 }

@AUART_CTRL2_UARTEN = common dso_local global i32 0, align 4
@REG_CTRL2 = common dso_local global i32 0, align 4
@AUART_INTR_RXIEN = common dso_local global i32 0, align 4
@AUART_INTR_RTIEN = common dso_local global i32 0, align 4
@AUART_INTR_CTSMIEN = common dso_local global i32 0, align 4
@REG_INTR = common dso_local global i32 0, align 4
@AUART_CTRL0_CLKGATE = common dso_local global i32 0, align 4
@REG_CTRL0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @mxs_auart_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mxs_auart_shutdown(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.mxs_auart_port*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %4 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %5 = call %struct.mxs_auart_port* @to_auart_port(%struct.uart_port* %4)
  store %struct.mxs_auart_port* %5, %struct.mxs_auart_port** %3, align 8
  %6 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %7 = call i32 @mxs_auart_disable_ms(%struct.uart_port* %6)
  %8 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %3, align 8
  %9 = call i64 @auart_dma_enabled(%struct.mxs_auart_port* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %3, align 8
  %13 = call i32 @mxs_auart_dma_exit(%struct.mxs_auart_port* %12)
  br label %14

14:                                               ; preds = %11, %1
  %15 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %16 = call i64 @uart_console(%struct.uart_port* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %35

18:                                               ; preds = %14
  %19 = load i32, i32* @AUART_CTRL2_UARTEN, align 4
  %20 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %3, align 8
  %21 = load i32, i32* @REG_CTRL2, align 4
  %22 = call i32 @mxs_clr(i32 %19, %struct.mxs_auart_port* %20, i32 %21)
  %23 = load i32, i32* @AUART_INTR_RXIEN, align 4
  %24 = load i32, i32* @AUART_INTR_RTIEN, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @AUART_INTR_CTSMIEN, align 4
  %27 = or i32 %25, %26
  %28 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %3, align 8
  %29 = load i32, i32* @REG_INTR, align 4
  %30 = call i32 @mxs_clr(i32 %27, %struct.mxs_auart_port* %28, i32 %29)
  %31 = load i32, i32* @AUART_CTRL0_CLKGATE, align 4
  %32 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %3, align 8
  %33 = load i32, i32* @REG_CTRL0, align 4
  %34 = call i32 @mxs_set(i32 %31, %struct.mxs_auart_port* %32, i32 %33)
  br label %38

35:                                               ; preds = %14
  %36 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %3, align 8
  %37 = call i32 @mxs_auart_reset_assert(%struct.mxs_auart_port* %36)
  br label %38

38:                                               ; preds = %35, %18
  %39 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %3, align 8
  %40 = getelementptr inbounds %struct.mxs_auart_port, %struct.mxs_auart_port* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @clk_disable_unprepare(i32 %41)
  ret void
}

declare dso_local %struct.mxs_auart_port* @to_auart_port(%struct.uart_port*) #1

declare dso_local i32 @mxs_auart_disable_ms(%struct.uart_port*) #1

declare dso_local i64 @auart_dma_enabled(%struct.mxs_auart_port*) #1

declare dso_local i32 @mxs_auart_dma_exit(%struct.mxs_auart_port*) #1

declare dso_local i64 @uart_console(%struct.uart_port*) #1

declare dso_local i32 @mxs_clr(i32, %struct.mxs_auart_port*, i32) #1

declare dso_local i32 @mxs_set(i32, %struct.mxs_auart_port*, i32) #1

declare dso_local i32 @mxs_auart_reset_assert(%struct.mxs_auart_port*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
