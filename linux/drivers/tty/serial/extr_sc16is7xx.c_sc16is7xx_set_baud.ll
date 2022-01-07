; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sc16is7xx.c_sc16is7xx_set_baud.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sc16is7xx.c_sc16is7xx_set_baud.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i64, i32 }
%struct.sc16is7xx_port = type { i32, i32 }

@SC16IS7XX_MCR_CLKSEL_BIT = common dso_local global i64 0, align 8
@SC16IS7XX_LCR_REG = common dso_local global i32 0, align 4
@SC16IS7XX_LCR_CONF_MODE_B = common dso_local global i64 0, align 8
@SC16IS7XX_EFR_REG = common dso_local global i32 0, align 4
@SC16IS7XX_EFR_ENABLE_BIT = common dso_local global i64 0, align 8
@SC16IS7XX_MCR_REG = common dso_local global i32 0, align 4
@SC16IS7XX_LCR_CONF_MODE_A = common dso_local global i64 0, align 8
@SC16IS7XX_DLH_REG = common dso_local global i32 0, align 4
@SC16IS7XX_DLL_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*, i32)* @sc16is7xx_set_baud to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sc16is7xx_set_baud(%struct.uart_port* %0, i32 %1) #0 {
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sc16is7xx_port*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %11 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.sc16is7xx_port* @dev_get_drvdata(i32 %12)
  store %struct.sc16is7xx_port* %13, %struct.sc16is7xx_port** %5, align 8
  store i64 0, i64* %7, align 8
  %14 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %15 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %8, align 8
  %17 = load i64, i64* %8, align 8
  %18 = udiv i64 %17, 16
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = udiv i64 %18, %20
  store i64 %21, i64* %9, align 8
  %22 = load i64, i64* %9, align 8
  %23 = icmp ugt i64 %22, 65535
  br i1 %23, label %24, label %28

24:                                               ; preds = %2
  %25 = load i64, i64* @SC16IS7XX_MCR_CLKSEL_BIT, align 8
  store i64 %25, i64* %7, align 8
  %26 = load i64, i64* %9, align 8
  %27 = udiv i64 %26, 4
  store i64 %27, i64* %9, align 8
  br label %28

28:                                               ; preds = %24, %2
  %29 = load %struct.sc16is7xx_port*, %struct.sc16is7xx_port** %5, align 8
  %30 = getelementptr inbounds %struct.sc16is7xx_port, %struct.sc16is7xx_port* %29, i32 0, i32 1
  %31 = call i32 @mutex_lock(i32* %30)
  %32 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %33 = load i32, i32* @SC16IS7XX_LCR_REG, align 4
  %34 = call i64 @sc16is7xx_port_read(%struct.uart_port* %32, i32 %33)
  store i64 %34, i64* %6, align 8
  %35 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %36 = load i32, i32* @SC16IS7XX_LCR_REG, align 4
  %37 = load i64, i64* @SC16IS7XX_LCR_CONF_MODE_B, align 8
  %38 = call i32 @sc16is7xx_port_write(%struct.uart_port* %35, i32 %36, i64 %37)
  %39 = load %struct.sc16is7xx_port*, %struct.sc16is7xx_port** %5, align 8
  %40 = getelementptr inbounds %struct.sc16is7xx_port, %struct.sc16is7xx_port* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @regcache_cache_bypass(i32 %41, i32 1)
  %43 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %44 = load i32, i32* @SC16IS7XX_EFR_REG, align 4
  %45 = load i64, i64* @SC16IS7XX_EFR_ENABLE_BIT, align 8
  %46 = call i32 @sc16is7xx_port_write(%struct.uart_port* %43, i32 %44, i64 %45)
  %47 = load %struct.sc16is7xx_port*, %struct.sc16is7xx_port** %5, align 8
  %48 = getelementptr inbounds %struct.sc16is7xx_port, %struct.sc16is7xx_port* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @regcache_cache_bypass(i32 %49, i32 0)
  %51 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %52 = load i32, i32* @SC16IS7XX_LCR_REG, align 4
  %53 = load i64, i64* %6, align 8
  %54 = call i32 @sc16is7xx_port_write(%struct.uart_port* %51, i32 %52, i64 %53)
  %55 = load %struct.sc16is7xx_port*, %struct.sc16is7xx_port** %5, align 8
  %56 = getelementptr inbounds %struct.sc16is7xx_port, %struct.sc16is7xx_port* %55, i32 0, i32 1
  %57 = call i32 @mutex_unlock(i32* %56)
  %58 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %59 = load i32, i32* @SC16IS7XX_MCR_REG, align 4
  %60 = load i64, i64* @SC16IS7XX_MCR_CLKSEL_BIT, align 8
  %61 = load i64, i64* %7, align 8
  %62 = call i32 @sc16is7xx_port_update(%struct.uart_port* %58, i32 %59, i64 %60, i64 %61)
  %63 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %64 = load i32, i32* @SC16IS7XX_LCR_REG, align 4
  %65 = load i64, i64* @SC16IS7XX_LCR_CONF_MODE_A, align 8
  %66 = call i32 @sc16is7xx_port_write(%struct.uart_port* %63, i32 %64, i64 %65)
  %67 = load %struct.sc16is7xx_port*, %struct.sc16is7xx_port** %5, align 8
  %68 = getelementptr inbounds %struct.sc16is7xx_port, %struct.sc16is7xx_port* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @regcache_cache_bypass(i32 %69, i32 1)
  %71 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %72 = load i32, i32* @SC16IS7XX_DLH_REG, align 4
  %73 = load i64, i64* %9, align 8
  %74 = udiv i64 %73, 256
  %75 = call i32 @sc16is7xx_port_write(%struct.uart_port* %71, i32 %72, i64 %74)
  %76 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %77 = load i32, i32* @SC16IS7XX_DLL_REG, align 4
  %78 = load i64, i64* %9, align 8
  %79 = urem i64 %78, 256
  %80 = call i32 @sc16is7xx_port_write(%struct.uart_port* %76, i32 %77, i64 %79)
  %81 = load %struct.sc16is7xx_port*, %struct.sc16is7xx_port** %5, align 8
  %82 = getelementptr inbounds %struct.sc16is7xx_port, %struct.sc16is7xx_port* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @regcache_cache_bypass(i32 %83, i32 0)
  %85 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %86 = load i32, i32* @SC16IS7XX_LCR_REG, align 4
  %87 = load i64, i64* %6, align 8
  %88 = call i32 @sc16is7xx_port_write(%struct.uart_port* %85, i32 %86, i64 %87)
  %89 = load i64, i64* %8, align 8
  %90 = udiv i64 %89, 16
  %91 = load i64, i64* %9, align 8
  %92 = call i32 @DIV_ROUND_CLOSEST(i64 %90, i64 %91)
  ret i32 %92
}

declare dso_local %struct.sc16is7xx_port* @dev_get_drvdata(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @sc16is7xx_port_read(%struct.uart_port*, i32) #1

declare dso_local i32 @sc16is7xx_port_write(%struct.uart_port*, i32, i64) #1

declare dso_local i32 @regcache_cache_bypass(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @sc16is7xx_port_update(%struct.uart_port*, i32, i64, i64) #1

declare dso_local i32 @DIV_ROUND_CLOSEST(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
