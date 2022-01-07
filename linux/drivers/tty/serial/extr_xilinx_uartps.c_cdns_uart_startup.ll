; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_xilinx_uartps.c_cdns_uart_startup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_xilinx_uartps.c_cdns_uart_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i64, i32, i32, i32, %struct.cdns_uart* }
%struct.cdns_uart = type { i32 }

@CDNS_UART_RXBS_SUPPORT = common dso_local global i32 0, align 4
@CDNS_UART_CR_TX_DIS = common dso_local global i32 0, align 4
@CDNS_UART_CR_RX_DIS = common dso_local global i32 0, align 4
@CDNS_UART_CR = common dso_local global i64 0, align 8
@CDNS_UART_CR_TXRST = common dso_local global i32 0, align 4
@CDNS_UART_CR_RXRST = common dso_local global i32 0, align 4
@CDNS_UART_CR_RX_EN = common dso_local global i32 0, align 4
@CDNS_UART_MR_CHMODE_NORM = common dso_local global i32 0, align 4
@CDNS_UART_MR_STOPMODE_1_BIT = common dso_local global i32 0, align 4
@CDNS_UART_MR_PARITY_NONE = common dso_local global i32 0, align 4
@CDNS_UART_MR_CHARLEN_8_BIT = common dso_local global i32 0, align 4
@CDNS_UART_MR = common dso_local global i64 0, align 8
@rx_trigger_level = common dso_local global i32 0, align 4
@CDNS_UART_RXWM = common dso_local global i64 0, align 8
@rx_timeout = common dso_local global i32 0, align 4
@CDNS_UART_RXTOUT = common dso_local global i64 0, align 8
@CDNS_UART_ISR = common dso_local global i64 0, align 8
@cdns_uart_isr = common dso_local global i32 0, align 4
@CDNS_UART_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"request_irq '%d' failed with %d\0A\00", align 1
@CDNS_UART_RX_IRQS = common dso_local global i32 0, align 4
@CDNS_UART_IXR_BRK = common dso_local global i32 0, align 4
@CDNS_UART_IER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*)* @cdns_uart_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdns_uart_startup(%struct.uart_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca %struct.cdns_uart*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  %9 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %10 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %9, i32 0, i32 4
  %11 = load %struct.cdns_uart*, %struct.cdns_uart** %10, align 8
  store %struct.cdns_uart* %11, %struct.cdns_uart** %4, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.cdns_uart*, %struct.cdns_uart** %4, align 8
  %13 = getelementptr inbounds %struct.cdns_uart, %struct.cdns_uart* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @CDNS_UART_RXBS_SUPPORT, align 4
  %16 = and i32 %14, %15
  store i32 %16, i32* %5, align 4
  %17 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %18 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %17, i32 0, i32 3
  %19 = load i64, i64* %7, align 8
  %20 = call i32 @spin_lock_irqsave(i32* %18, i64 %19)
  %21 = load i32, i32* @CDNS_UART_CR_TX_DIS, align 4
  %22 = load i32, i32* @CDNS_UART_CR_RX_DIS, align 4
  %23 = or i32 %21, %22
  %24 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %25 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @CDNS_UART_CR, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @writel(i32 %23, i64 %28)
  %30 = load i32, i32* @CDNS_UART_CR_TXRST, align 4
  %31 = load i32, i32* @CDNS_UART_CR_RXRST, align 4
  %32 = or i32 %30, %31
  %33 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %34 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @CDNS_UART_CR, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @writel(i32 %32, i64 %37)
  br label %39

39:                                               ; preds = %51, %1
  %40 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %41 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @CDNS_UART_CR, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @readl(i64 %44)
  %46 = load i32, i32* @CDNS_UART_CR_TXRST, align 4
  %47 = load i32, i32* @CDNS_UART_CR_RXRST, align 4
  %48 = or i32 %46, %47
  %49 = and i32 %45, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %39
  %52 = call i32 (...) @cpu_relax()
  br label %39

53:                                               ; preds = %39
  %54 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %55 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @CDNS_UART_CR, align 8
  %58 = add nsw i64 %56, %57
  %59 = call i32 @readl(i64 %58)
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* @CDNS_UART_CR_RX_DIS, align 4
  %61 = xor i32 %60, -1
  %62 = load i32, i32* %8, align 4
  %63 = and i32 %62, %61
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* @CDNS_UART_CR_RX_EN, align 4
  %65 = load i32, i32* %8, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* %8, align 4
  %68 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %69 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @CDNS_UART_CR, align 8
  %72 = add nsw i64 %70, %71
  %73 = call i32 @writel(i32 %67, i64 %72)
  %74 = load i32, i32* @CDNS_UART_MR_CHMODE_NORM, align 4
  %75 = load i32, i32* @CDNS_UART_MR_STOPMODE_1_BIT, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* @CDNS_UART_MR_PARITY_NONE, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* @CDNS_UART_MR_CHARLEN_8_BIT, align 4
  %80 = or i32 %78, %79
  %81 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %82 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @CDNS_UART_MR, align 8
  %85 = add nsw i64 %83, %84
  %86 = call i32 @writel(i32 %80, i64 %85)
  %87 = load i32, i32* @rx_trigger_level, align 4
  %88 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %89 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @CDNS_UART_RXWM, align 8
  %92 = add nsw i64 %90, %91
  %93 = call i32 @writel(i32 %87, i64 %92)
  %94 = load i32, i32* @rx_timeout, align 4
  %95 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %96 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @CDNS_UART_RXTOUT, align 8
  %99 = add nsw i64 %97, %98
  %100 = call i32 @writel(i32 %94, i64 %99)
  %101 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %102 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @CDNS_UART_ISR, align 8
  %105 = add nsw i64 %103, %104
  %106 = call i32 @readl(i64 %105)
  %107 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %108 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @CDNS_UART_ISR, align 8
  %111 = add nsw i64 %109, %110
  %112 = call i32 @writel(i32 %106, i64 %111)
  %113 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %114 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %113, i32 0, i32 3
  %115 = load i64, i64* %7, align 8
  %116 = call i32 @spin_unlock_irqrestore(i32* %114, i64 %115)
  %117 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %118 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @cdns_uart_isr, align 4
  %121 = load i32, i32* @CDNS_UART_NAME, align 4
  %122 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %123 = call i32 @request_irq(i32 %119, i32 %120, i32 0, i32 %121, %struct.uart_port* %122)
  store i32 %123, i32* %6, align 4
  %124 = load i32, i32* %6, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %136

126:                                              ; preds = %53
  %127 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %128 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %131 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* %6, align 4
  %134 = call i32 @dev_err(i32 %129, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %132, i32 %133)
  %135 = load i32, i32* %6, align 4
  store i32 %135, i32* %2, align 4
  br label %158

136:                                              ; preds = %53
  %137 = load i32, i32* %5, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %149

139:                                              ; preds = %136
  %140 = load i32, i32* @CDNS_UART_RX_IRQS, align 4
  %141 = load i32, i32* @CDNS_UART_IXR_BRK, align 4
  %142 = or i32 %140, %141
  %143 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %144 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @CDNS_UART_IER, align 8
  %147 = add nsw i64 %145, %146
  %148 = call i32 @writel(i32 %142, i64 %147)
  br label %157

149:                                              ; preds = %136
  %150 = load i32, i32* @CDNS_UART_RX_IRQS, align 4
  %151 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %152 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @CDNS_UART_IER, align 8
  %155 = add nsw i64 %153, %154
  %156 = call i32 @writel(i32 %150, i64 %155)
  br label %157

157:                                              ; preds = %149, %139
  store i32 0, i32* %2, align 4
  br label %158

158:                                              ; preds = %157, %126
  %159 = load i32, i32* %2, align 4
  ret i32 %159
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.uart_port*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
