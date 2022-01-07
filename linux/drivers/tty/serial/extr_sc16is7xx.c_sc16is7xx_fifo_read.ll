; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sc16is7xx.c_sc16is7xx_fifo_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sc16is7xx.c_sc16is7xx_fifo_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.sc16is7xx_port = type { i32, i32 }

@SC16IS7XX_RHR_REG = common dso_local global i32 0, align 4
@SC16IS7XX_REG_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, i32)* @sc16is7xx_fifo_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sc16is7xx_fifo_read(%struct.uart_port* %0, i32 %1) #0 {
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sc16is7xx_port*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %9 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.sc16is7xx_port* @dev_get_drvdata(i32 %10)
  store %struct.sc16is7xx_port* %11, %struct.sc16is7xx_port** %5, align 8
  %12 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %13 = call i32 @sc16is7xx_line(%struct.uart_port* %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* @SC16IS7XX_RHR_REG, align 4
  %15 = load i32, i32* @SC16IS7XX_REG_SHIFT, align 4
  %16 = shl i32 %14, %15
  %17 = load i32, i32* %6, align 4
  %18 = or i32 %16, %17
  store i32 %18, i32* %7, align 4
  %19 = load %struct.sc16is7xx_port*, %struct.sc16is7xx_port** %5, align 8
  %20 = getelementptr inbounds %struct.sc16is7xx_port, %struct.sc16is7xx_port* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @regcache_cache_bypass(i32 %21, i32 1)
  %23 = load %struct.sc16is7xx_port*, %struct.sc16is7xx_port** %5, align 8
  %24 = getelementptr inbounds %struct.sc16is7xx_port, %struct.sc16is7xx_port* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.sc16is7xx_port*, %struct.sc16is7xx_port** %5, align 8
  %28 = getelementptr inbounds %struct.sc16is7xx_port, %struct.sc16is7xx_port* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @regmap_raw_read(i32 %25, i32 %26, i32 %29, i32 %30)
  %32 = load %struct.sc16is7xx_port*, %struct.sc16is7xx_port** %5, align 8
  %33 = getelementptr inbounds %struct.sc16is7xx_port, %struct.sc16is7xx_port* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @regcache_cache_bypass(i32 %34, i32 0)
  ret void
}

declare dso_local %struct.sc16is7xx_port* @dev_get_drvdata(i32) #1

declare dso_local i32 @sc16is7xx_line(%struct.uart_port*) #1

declare dso_local i32 @regcache_cache_bypass(i32, i32) #1

declare dso_local i32 @regmap_raw_read(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
