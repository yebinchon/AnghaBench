; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sccnxp.c_sccnxp_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sccnxp.c_sccnxp_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i64, i32 }
%struct.sccnxp_port = type { i32, %struct.TYPE_2__*, i64* }
%struct.TYPE_2__ = type { i32 }

@IMR_TXRDY = common dso_local global i32 0, align 4
@IMR_RXRDY = common dso_local global i32 0, align 4
@SCCNXP_CR_REG = common dso_local global i32 0, align 4
@CR_RX_DISABLE = common dso_local global i32 0, align 4
@CR_TX_DISABLE = common dso_local global i32 0, align 4
@SCCNXP_HAVE_IO = common dso_local global i32 0, align 4
@DIR_OP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @sccnxp_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sccnxp_shutdown(%struct.uart_port* %0) #0 {
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
  %10 = getelementptr inbounds %struct.sccnxp_port, %struct.sccnxp_port* %9, i32 0, i32 0
  %11 = load i64, i64* %4, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.sccnxp_port*, %struct.sccnxp_port** %3, align 8
  %14 = getelementptr inbounds %struct.sccnxp_port, %struct.sccnxp_port* %13, i32 0, i32 2
  %15 = load i64*, i64** %14, align 8
  %16 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %17 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds i64, i64* %15, i64 %18
  store i64 0, i64* %19, align 8
  %20 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %21 = load i32, i32* @IMR_TXRDY, align 4
  %22 = load i32, i32* @IMR_RXRDY, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @sccnxp_disable_irq(%struct.uart_port* %20, i32 %23)
  %25 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %26 = load i32, i32* @SCCNXP_CR_REG, align 4
  %27 = load i32, i32* @CR_RX_DISABLE, align 4
  %28 = load i32, i32* @CR_TX_DISABLE, align 4
  %29 = or i32 %27, %28
  %30 = call i32 @sccnxp_port_write(%struct.uart_port* %25, i32 %26, i32 %29)
  %31 = load %struct.sccnxp_port*, %struct.sccnxp_port** %3, align 8
  %32 = getelementptr inbounds %struct.sccnxp_port, %struct.sccnxp_port* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @SCCNXP_HAVE_IO, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %1
  %40 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %41 = load i32, i32* @DIR_OP, align 4
  %42 = call i32 @sccnxp_set_bit(%struct.uart_port* %40, i32 %41, i32 0)
  br label %43

43:                                               ; preds = %39, %1
  %44 = load %struct.sccnxp_port*, %struct.sccnxp_port** %3, align 8
  %45 = getelementptr inbounds %struct.sccnxp_port, %struct.sccnxp_port* %44, i32 0, i32 0
  %46 = load i64, i64* %4, align 8
  %47 = call i32 @spin_unlock_irqrestore(i32* %45, i64 %46)
  ret void
}

declare dso_local %struct.sccnxp_port* @dev_get_drvdata(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @sccnxp_disable_irq(%struct.uart_port*, i32) #1

declare dso_local i32 @sccnxp_port_write(%struct.uart_port*, i32, i32) #1

declare dso_local i32 @sccnxp_set_bit(%struct.uart_port*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
