; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sc16is7xx.c_sc16is7xx_set_mctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sc16is7xx.c_sc16is7xx_set_mctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.sc16is7xx_port = type { i32 }
%struct.sc16is7xx_one = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@SC16IS7XX_RECONF_MD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, i32)* @sc16is7xx_set_mctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sc16is7xx_set_mctrl(%struct.uart_port* %0, i32 %1) #0 {
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sc16is7xx_port*, align 8
  %6 = alloca %struct.sc16is7xx_one*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %8 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.sc16is7xx_port* @dev_get_drvdata(i32 %9)
  store %struct.sc16is7xx_port* %10, %struct.sc16is7xx_port** %5, align 8
  %11 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %12 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %13 = call %struct.sc16is7xx_one* @to_sc16is7xx_one(%struct.uart_port* %11, %struct.uart_port* %12)
  store %struct.sc16is7xx_one* %13, %struct.sc16is7xx_one** %6, align 8
  %14 = load i32, i32* @SC16IS7XX_RECONF_MD, align 4
  %15 = load %struct.sc16is7xx_one*, %struct.sc16is7xx_one** %6, align 8
  %16 = getelementptr inbounds %struct.sc16is7xx_one, %struct.sc16is7xx_one* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = or i32 %18, %14
  store i32 %19, i32* %17, align 4
  %20 = load %struct.sc16is7xx_port*, %struct.sc16is7xx_port** %5, align 8
  %21 = getelementptr inbounds %struct.sc16is7xx_port, %struct.sc16is7xx_port* %20, i32 0, i32 0
  %22 = load %struct.sc16is7xx_one*, %struct.sc16is7xx_one** %6, align 8
  %23 = getelementptr inbounds %struct.sc16is7xx_one, %struct.sc16is7xx_one* %22, i32 0, i32 0
  %24 = call i32 @kthread_queue_work(i32* %21, i32* %23)
  ret void
}

declare dso_local %struct.sc16is7xx_port* @dev_get_drvdata(i32) #1

declare dso_local %struct.sc16is7xx_one* @to_sc16is7xx_one(%struct.uart_port*, %struct.uart_port*) #1

declare dso_local i32 @kthread_queue_work(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
