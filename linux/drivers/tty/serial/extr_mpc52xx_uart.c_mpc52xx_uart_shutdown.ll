; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_mpc52xx_uart.c_mpc52xx_uart_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_mpc52xx_uart.c_mpc52xx_uart_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.uart_port*)*, i32 (%struct.uart_port*, i32)*, i32 (%struct.uart_port*, i64)*, i32 (%struct.uart_port*, i32)* }
%struct.uart_port = type { i32, i64 }

@psc_ops = common dso_local global %struct.TYPE_2__* null, align 8
@MPC52xx_PSC_RST_RX = common dso_local global i32 0, align 4
@MPC52xx_PSC_RST_TX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @mpc52xx_uart_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpc52xx_uart_shutdown(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %3 = load %struct.TYPE_2__*, %struct.TYPE_2__** @psc_ops, align 8
  %4 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 3
  %5 = load i32 (%struct.uart_port*, i32)*, i32 (%struct.uart_port*, i32)** %4, align 8
  %6 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %7 = load i32, i32* @MPC52xx_PSC_RST_RX, align 4
  %8 = call i32 %5(%struct.uart_port* %6, i32 %7)
  %9 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %10 = call i32 @uart_console(%struct.uart_port* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @psc_ops, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 3
  %15 = load i32 (%struct.uart_port*, i32)*, i32 (%struct.uart_port*, i32)** %14, align 8
  %16 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %17 = load i32, i32* @MPC52xx_PSC_RST_TX, align 4
  %18 = call i32 %15(%struct.uart_port* %16, i32 %17)
  br label %19

19:                                               ; preds = %12, %1
  %20 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %21 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %20, i32 0, i32 1
  store i64 0, i64* %21, align 8
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @psc_ops, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 2
  %24 = load i32 (%struct.uart_port*, i64)*, i32 (%struct.uart_port*, i64)** %23, align 8
  %25 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %26 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %27 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = call i32 %24(%struct.uart_port* %25, i64 %28)
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @psc_ops, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32 (%struct.uart_port*, i32)*, i32 (%struct.uart_port*, i32)** %31, align 8
  %33 = icmp ne i32 (%struct.uart_port*, i32)* %32, null
  br i1 %33, label %34, label %40

34:                                               ; preds = %19
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** @psc_ops, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32 (%struct.uart_port*, i32)*, i32 (%struct.uart_port*, i32)** %36, align 8
  %38 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %39 = call i32 %37(%struct.uart_port* %38, i32 0)
  br label %40

40:                                               ; preds = %34, %19
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** @psc_ops, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32 (%struct.uart_port*)*, i32 (%struct.uart_port*)** %42, align 8
  %44 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %45 = call i32 %43(%struct.uart_port* %44)
  %46 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %47 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %50 = call i32 @free_irq(i32 %48, %struct.uart_port* %49)
  ret void
}

declare dso_local i32 @uart_console(%struct.uart_port*) #1

declare dso_local i32 @free_irq(i32, %struct.uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
