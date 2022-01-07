; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sccnxp.c_sccnxp_start_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sccnxp.c_sccnxp_start_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.sccnxp_port = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@SCCNXP_HAVE_IO = common dso_local global i32 0, align 4
@DIR_OP = common dso_local global i32 0, align 4
@IMR_TXRDY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @sccnxp_start_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sccnxp_start_tx(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.sccnxp_port*, align 8
  %4 = alloca i64, align 8
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %5 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %6 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.sccnxp_port* @dev_get_drvdata(i32 %7)
  store %struct.sccnxp_port* %8, %struct.sccnxp_port** %3, align 8
  %9 = load %struct.sccnxp_port*, %struct.sccnxp_port** %3, align 8
  %10 = getelementptr inbounds %struct.sccnxp_port, %struct.sccnxp_port* %9, i32 0, i32 0
  %11 = load i64, i64* %4, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.sccnxp_port*, %struct.sccnxp_port** %3, align 8
  %14 = getelementptr inbounds %struct.sccnxp_port, %struct.sccnxp_port* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @SCCNXP_HAVE_IO, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %1
  %22 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %23 = load i32, i32* @DIR_OP, align 4
  %24 = call i32 @sccnxp_set_bit(%struct.uart_port* %22, i32 %23, i32 1)
  br label %25

25:                                               ; preds = %21, %1
  %26 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %27 = load i32, i32* @IMR_TXRDY, align 4
  %28 = call i32 @sccnxp_enable_irq(%struct.uart_port* %26, i32 %27)
  %29 = load %struct.sccnxp_port*, %struct.sccnxp_port** %3, align 8
  %30 = getelementptr inbounds %struct.sccnxp_port, %struct.sccnxp_port* %29, i32 0, i32 0
  %31 = load i64, i64* %4, align 8
  %32 = call i32 @spin_unlock_irqrestore(i32* %30, i64 %31)
  ret void
}

declare dso_local %struct.sccnxp_port* @dev_get_drvdata(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @sccnxp_set_bit(%struct.uart_port*, i32, i32) #1

declare dso_local i32 @sccnxp_enable_irq(%struct.uart_port*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
