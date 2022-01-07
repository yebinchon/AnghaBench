; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sc16is7xx.c_sc16is7xx_port_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sc16is7xx.c_sc16is7xx_port_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.sc16is7xx_port = type { i32 }

@SC16IS7XX_REG_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, i32, i32, i32)* @sc16is7xx_port_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sc16is7xx_port_update(%struct.uart_port* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.uart_port*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sc16is7xx_port*, align 8
  %10 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %12 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.sc16is7xx_port* @dev_get_drvdata(i32 %13)
  store %struct.sc16is7xx_port* %14, %struct.sc16is7xx_port** %9, align 8
  %15 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %16 = call i32 @sc16is7xx_line(%struct.uart_port* %15)
  store i32 %16, i32* %10, align 4
  %17 = load %struct.sc16is7xx_port*, %struct.sc16is7xx_port** %9, align 8
  %18 = getelementptr inbounds %struct.sc16is7xx_port, %struct.sc16is7xx_port* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @SC16IS7XX_REG_SHIFT, align 4
  %22 = shl i32 %20, %21
  %23 = load i32, i32* %10, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @regmap_update_bits(i32 %19, i32 %24, i32 %25, i32 %26)
  ret void
}

declare dso_local %struct.sc16is7xx_port* @dev_get_drvdata(i32) #1

declare dso_local i32 @sc16is7xx_line(%struct.uart_port*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
