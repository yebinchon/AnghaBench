; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_bcm63xx_uart.c_bcm_uart_startup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_bcm63xx_uart.c_bcm_uart_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, i32, i32 }

@UART_IR_REG = common dso_local global i32 0, align 4
@UART_EXTINP_REG = common dso_local global i32 0, align 4
@UART_MCTL_REG = common dso_local global i32 0, align 4
@UART_MCTL_RXFIFOTHRESH_MASK = common dso_local global i32 0, align 4
@UART_MCTL_TXFIFOTHRESH_MASK = common dso_local global i32 0, align 4
@UART_MCTL_RXFIFOTHRESH_SHIFT = common dso_local global i32 0, align 4
@UART_MCTL_TXFIFOTHRESH_SHIFT = common dso_local global i32 0, align 4
@UART_CTL_REG = common dso_local global i32 0, align 4
@UART_CTL_RXTMOUTCNT_MASK = common dso_local global i32 0, align 4
@UART_CTL_RXTMOUTCNT_SHIFT = common dso_local global i32 0, align 4
@UART_EXTINP_INT_MASK = common dso_local global i32 0, align 4
@UART_EXTINP_DCD_NOSENSE_MASK = common dso_local global i32 0, align 4
@UART_EXTINP_CTS_NOSENSE_MASK = common dso_local global i32 0, align 4
@bcm_uart_interrupt = common dso_local global i32 0, align 4
@UART_RX_INT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*)* @bcm_uart_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_uart_startup(%struct.uart_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  %6 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %7 = call i32 @bcm_uart_disable(%struct.uart_port* %6)
  %8 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %9 = load i32, i32* @UART_IR_REG, align 4
  %10 = call i32 @bcm_uart_writel(%struct.uart_port* %8, i32 0, i32 %9)
  %11 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %12 = call i32 @bcm_uart_flush(%struct.uart_port* %11)
  %13 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %14 = load i32, i32* @UART_EXTINP_REG, align 4
  %15 = call i32 @bcm_uart_readl(%struct.uart_port* %13, i32 %14)
  %16 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %17 = load i32, i32* @UART_MCTL_REG, align 4
  %18 = call i32 @bcm_uart_readl(%struct.uart_port* %16, i32 %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* @UART_MCTL_RXFIFOTHRESH_MASK, align 4
  %20 = load i32, i32* @UART_MCTL_TXFIFOTHRESH_MASK, align 4
  %21 = or i32 %19, %20
  %22 = xor i32 %21, -1
  %23 = load i32, i32* %4, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %4, align 4
  %25 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %26 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = sdiv i32 %27, 2
  %29 = load i32, i32* @UART_MCTL_RXFIFOTHRESH_SHIFT, align 4
  %30 = shl i32 %28, %29
  %31 = load i32, i32* %4, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %4, align 4
  %33 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %34 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = sdiv i32 %35, 2
  %37 = load i32, i32* @UART_MCTL_TXFIFOTHRESH_SHIFT, align 4
  %38 = shl i32 %36, %37
  %39 = load i32, i32* %4, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %4, align 4
  %41 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @UART_MCTL_REG, align 4
  %44 = call i32 @bcm_uart_writel(%struct.uart_port* %41, i32 %42, i32 %43)
  %45 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %46 = load i32, i32* @UART_CTL_REG, align 4
  %47 = call i32 @bcm_uart_readl(%struct.uart_port* %45, i32 %46)
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* @UART_CTL_RXTMOUTCNT_MASK, align 4
  %49 = xor i32 %48, -1
  %50 = load i32, i32* %4, align 4
  %51 = and i32 %50, %49
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* @UART_CTL_RXTMOUTCNT_SHIFT, align 4
  %53 = shl i32 1, %52
  %54 = load i32, i32* %4, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %4, align 4
  %56 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* @UART_CTL_REG, align 4
  %59 = call i32 @bcm_uart_writel(%struct.uart_port* %56, i32 %57, i32 %58)
  %60 = load i32, i32* @UART_EXTINP_INT_MASK, align 4
  store i32 %60, i32* %4, align 4
  %61 = load i32, i32* @UART_EXTINP_DCD_NOSENSE_MASK, align 4
  %62 = load i32, i32* %4, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %4, align 4
  %64 = load i32, i32* @UART_EXTINP_CTS_NOSENSE_MASK, align 4
  %65 = load i32, i32* %4, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %4, align 4
  %67 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* @UART_EXTINP_REG, align 4
  %70 = call i32 @bcm_uart_writel(%struct.uart_port* %67, i32 %68, i32 %69)
  %71 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %72 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @bcm_uart_interrupt, align 4
  %75 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %76 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @dev_name(i32 %77)
  %79 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %80 = call i32 @request_irq(i32 %73, i32 %74, i32 0, i32 %78, %struct.uart_port* %79)
  store i32 %80, i32* %5, align 4
  %81 = load i32, i32* %5, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %1
  %84 = load i32, i32* %5, align 4
  store i32 %84, i32* %2, align 4
  br label %92

85:                                               ; preds = %1
  %86 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %87 = load i32, i32* @UART_RX_INT_MASK, align 4
  %88 = load i32, i32* @UART_IR_REG, align 4
  %89 = call i32 @bcm_uart_writel(%struct.uart_port* %86, i32 %87, i32 %88)
  %90 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %91 = call i32 @bcm_uart_enable(%struct.uart_port* %90)
  store i32 0, i32* %2, align 4
  br label %92

92:                                               ; preds = %85, %83
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local i32 @bcm_uart_disable(%struct.uart_port*) #1

declare dso_local i32 @bcm_uart_writel(%struct.uart_port*, i32, i32) #1

declare dso_local i32 @bcm_uart_flush(%struct.uart_port*) #1

declare dso_local i32 @bcm_uart_readl(%struct.uart_port*, i32) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.uart_port*) #1

declare dso_local i32 @dev_name(i32) #1

declare dso_local i32 @bcm_uart_enable(%struct.uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
