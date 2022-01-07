; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sccnxp.c_sccnxp_startup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sccnxp.c_sccnxp_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i64, i32 }
%struct.sccnxp_port = type { i32*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@SCCNXP_HAVE_IO = common dso_local global i32 0, align 4
@SCCNXP_OPCR_REG = common dso_local global i32 0, align 4
@SCCNXP_CR_REG = common dso_local global i32 0, align 4
@CR_CMD_RX_RESET = common dso_local global i32 0, align 4
@CR_CMD_TX_RESET = common dso_local global i32 0, align 4
@CR_CMD_STATUS_RESET = common dso_local global i32 0, align 4
@CR_CMD_BREAK_RESET = common dso_local global i32 0, align 4
@CR_RX_ENABLE = common dso_local global i32 0, align 4
@CR_TX_ENABLE = common dso_local global i32 0, align 4
@IMR_RXRDY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*)* @sccnxp_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sccnxp_startup(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.sccnxp_port*, align 8
  %4 = alloca i64, align 8
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %5 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %6 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = call %struct.sccnxp_port* @dev_get_drvdata(i32 %7)
  store %struct.sccnxp_port* %8, %struct.sccnxp_port** %3, align 8
  %9 = load %struct.sccnxp_port*, %struct.sccnxp_port** %3, align 8
  %10 = getelementptr inbounds %struct.sccnxp_port, %struct.sccnxp_port* %9, i32 0, i32 1
  %11 = load i64, i64* %4, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.sccnxp_port*, %struct.sccnxp_port** %3, align 8
  %14 = getelementptr inbounds %struct.sccnxp_port, %struct.sccnxp_port* %13, i32 0, i32 2
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @SCCNXP_HAVE_IO, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %1
  %22 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %23 = load i32, i32* @SCCNXP_OPCR_REG, align 4
  %24 = call i32 @sccnxp_write(%struct.uart_port* %22, i32 %23, i32 0)
  br label %25

25:                                               ; preds = %21, %1
  %26 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %27 = load i32, i32* @SCCNXP_CR_REG, align 4
  %28 = load i32, i32* @CR_CMD_RX_RESET, align 4
  %29 = call i32 @sccnxp_port_write(%struct.uart_port* %26, i32 %27, i32 %28)
  %30 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %31 = load i32, i32* @SCCNXP_CR_REG, align 4
  %32 = load i32, i32* @CR_CMD_TX_RESET, align 4
  %33 = call i32 @sccnxp_port_write(%struct.uart_port* %30, i32 %31, i32 %32)
  %34 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %35 = load i32, i32* @SCCNXP_CR_REG, align 4
  %36 = load i32, i32* @CR_CMD_STATUS_RESET, align 4
  %37 = call i32 @sccnxp_port_write(%struct.uart_port* %34, i32 %35, i32 %36)
  %38 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %39 = load i32, i32* @SCCNXP_CR_REG, align 4
  %40 = load i32, i32* @CR_CMD_BREAK_RESET, align 4
  %41 = call i32 @sccnxp_port_write(%struct.uart_port* %38, i32 %39, i32 %40)
  %42 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %43 = load i32, i32* @SCCNXP_CR_REG, align 4
  %44 = load i32, i32* @CR_RX_ENABLE, align 4
  %45 = load i32, i32* @CR_TX_ENABLE, align 4
  %46 = or i32 %44, %45
  %47 = call i32 @sccnxp_port_write(%struct.uart_port* %42, i32 %43, i32 %46)
  %48 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %49 = load i32, i32* @IMR_RXRDY, align 4
  %50 = call i32 @sccnxp_enable_irq(%struct.uart_port* %48, i32 %49)
  %51 = load %struct.sccnxp_port*, %struct.sccnxp_port** %3, align 8
  %52 = getelementptr inbounds %struct.sccnxp_port, %struct.sccnxp_port* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %55 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds i32, i32* %53, i64 %56
  store i32 1, i32* %57, align 4
  %58 = load %struct.sccnxp_port*, %struct.sccnxp_port** %3, align 8
  %59 = getelementptr inbounds %struct.sccnxp_port, %struct.sccnxp_port* %58, i32 0, i32 1
  %60 = load i64, i64* %4, align 8
  %61 = call i32 @spin_unlock_irqrestore(i32* %59, i64 %60)
  ret i32 0
}

declare dso_local %struct.sccnxp_port* @dev_get_drvdata(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @sccnxp_write(%struct.uart_port*, i32, i32) #1

declare dso_local i32 @sccnxp_port_write(%struct.uart_port*, i32, i32) #1

declare dso_local i32 @sccnxp_enable_irq(%struct.uart_port*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
