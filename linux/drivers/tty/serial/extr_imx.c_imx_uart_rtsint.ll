; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_imx.c_imx_uart_rtsint.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_imx.c_imx_uart_rtsint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx_port = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@USR1_RTSD = common dso_local global i32 0, align 4
@USR1 = common dso_local global i32 0, align 4
@USR1_RTSS = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @imx_uart_rtsint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx_uart_rtsint(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.imx_port*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.imx_port*
  store %struct.imx_port* %8, %struct.imx_port** %5, align 8
  %9 = load %struct.imx_port*, %struct.imx_port** %5, align 8
  %10 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = call i32 @spin_lock(i32* %11)
  %13 = load %struct.imx_port*, %struct.imx_port** %5, align 8
  %14 = load i32, i32* @USR1_RTSD, align 4
  %15 = load i32, i32* @USR1, align 4
  %16 = call i32 @imx_uart_writel(%struct.imx_port* %13, i32 %14, i32 %15)
  %17 = load %struct.imx_port*, %struct.imx_port** %5, align 8
  %18 = load i32, i32* @USR1, align 4
  %19 = call i32 @imx_uart_readl(%struct.imx_port* %17, i32 %18)
  %20 = load i32, i32* @USR1_RTSS, align 4
  %21 = and i32 %19, %20
  store i32 %21, i32* %6, align 4
  %22 = load %struct.imx_port*, %struct.imx_port** %5, align 8
  %23 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %22, i32 0, i32 0
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i32 @uart_handle_cts_change(%struct.TYPE_6__* %23, i32 %28)
  %30 = load %struct.imx_port*, %struct.imx_port** %5, align 8
  %31 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = call i32 @wake_up_interruptible(i32* %35)
  %37 = load %struct.imx_port*, %struct.imx_port** %5, align 8
  %38 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = call i32 @spin_unlock(i32* %39)
  %41 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %41
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @imx_uart_writel(%struct.imx_port*, i32, i32) #1

declare dso_local i32 @imx_uart_readl(%struct.imx_port*, i32) #1

declare dso_local i32 @uart_handle_cts_change(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
