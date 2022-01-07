; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_mvebu-uart.c_mvebu_uart_startup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_mvebu-uart.c_mvebu_uart_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, i32, i64 }
%struct.mvebu_uart = type { i32* }

@CTRL_TXFIFO_RST = common dso_local global i32 0, align 4
@CTRL_RXFIFO_RST = common dso_local global i32 0, align 4
@UART_STAT = common dso_local global i64 0, align 8
@STAT_BRK_ERR = common dso_local global i32 0, align 4
@CTRL_BRK_INT = common dso_local global i32 0, align 4
@UART_TX_IRQ = common dso_local global i64 0, align 8
@UART_IRQ_SUM = common dso_local global i64 0, align 8
@mvebu_uart_isr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"unable to request IRQ %d\0A\00", align 1
@UART_RX_IRQ = common dso_local global i64 0, align 8
@mvebu_uart_rx_isr = common dso_local global i32 0, align 4
@mvebu_uart_tx_isr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*)* @mvebu_uart_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvebu_uart_startup(%struct.uart_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca %struct.mvebu_uart*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  %7 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %8 = call %struct.mvebu_uart* @to_mvuart(%struct.uart_port* %7)
  store %struct.mvebu_uart* %8, %struct.mvebu_uart** %4, align 8
  %9 = load i32, i32* @CTRL_TXFIFO_RST, align 4
  %10 = load i32, i32* @CTRL_RXFIFO_RST, align 4
  %11 = or i32 %9, %10
  %12 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %13 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %16 = call i64 @UART_CTRL(%struct.uart_port* %15)
  %17 = add nsw i64 %14, %16
  %18 = call i32 @writel(i32 %11, i64 %17)
  %19 = call i32 @udelay(i32 1)
  %20 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %21 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @UART_STAT, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i8* @readl(i64 %24)
  %26 = ptrtoint i8* %25 to i32
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* @STAT_BRK_ERR, align 4
  %28 = load i32, i32* %6, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %32 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @UART_STAT, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @writel(i32 %30, i64 %35)
  %37 = load i32, i32* @CTRL_BRK_INT, align 4
  %38 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %39 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %42 = call i64 @UART_CTRL(%struct.uart_port* %41)
  %43 = add nsw i64 %40, %42
  %44 = call i32 @writel(i32 %37, i64 %43)
  %45 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %46 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %49 = call i64 @UART_INTR(%struct.uart_port* %48)
  %50 = add nsw i64 %47, %49
  %51 = call i8* @readl(i64 %50)
  %52 = ptrtoint i8* %51 to i32
  store i32 %52, i32* %5, align 4
  %53 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %54 = call i32 @CTRL_RX_RDY_INT(%struct.uart_port* %53)
  %55 = load i32, i32* %5, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* %5, align 4
  %58 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %59 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %62 = call i64 @UART_INTR(%struct.uart_port* %61)
  %63 = add nsw i64 %60, %62
  %64 = call i32 @writel(i32 %57, i64 %63)
  %65 = load %struct.mvebu_uart*, %struct.mvebu_uart** %4, align 8
  %66 = getelementptr inbounds %struct.mvebu_uart, %struct.mvebu_uart* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = load i64, i64* @UART_TX_IRQ, align 8
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %107, label %72

72:                                               ; preds = %1
  %73 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %74 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.mvebu_uart*, %struct.mvebu_uart** %4, align 8
  %77 = getelementptr inbounds %struct.mvebu_uart, %struct.mvebu_uart* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = load i64, i64* @UART_IRQ_SUM, align 8
  %80 = getelementptr inbounds i32, i32* %78, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @mvebu_uart_isr, align 4
  %83 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %84 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %87 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @dev_name(i32 %88)
  %90 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %91 = call i32 @devm_request_irq(i32 %75, i32 %81, i32 %82, i32 %85, i32 %89, %struct.uart_port* %90)
  store i32 %91, i32* %6, align 4
  %92 = load i32, i32* %6, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %106

94:                                               ; preds = %72
  %95 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %96 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.mvebu_uart*, %struct.mvebu_uart** %4, align 8
  %99 = getelementptr inbounds %struct.mvebu_uart, %struct.mvebu_uart* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = load i64, i64* @UART_IRQ_SUM, align 8
  %102 = getelementptr inbounds i32, i32* %100, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @dev_err(i32 %97, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %103)
  %105 = load i32, i32* %6, align 4
  store i32 %105, i32* %2, align 4
  br label %188

106:                                              ; preds = %72
  br label %187

107:                                              ; preds = %1
  %108 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %109 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.mvebu_uart*, %struct.mvebu_uart** %4, align 8
  %112 = getelementptr inbounds %struct.mvebu_uart, %struct.mvebu_uart* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = load i64, i64* @UART_RX_IRQ, align 8
  %115 = getelementptr inbounds i32, i32* %113, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @mvebu_uart_rx_isr, align 4
  %118 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %119 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %122 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @dev_name(i32 %123)
  %125 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %126 = call i32 @devm_request_irq(i32 %110, i32 %116, i32 %117, i32 %120, i32 %124, %struct.uart_port* %125)
  store i32 %126, i32* %6, align 4
  %127 = load i32, i32* %6, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %141

129:                                              ; preds = %107
  %130 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %131 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.mvebu_uart*, %struct.mvebu_uart** %4, align 8
  %134 = getelementptr inbounds %struct.mvebu_uart, %struct.mvebu_uart* %133, i32 0, i32 0
  %135 = load i32*, i32** %134, align 8
  %136 = load i64, i64* @UART_RX_IRQ, align 8
  %137 = getelementptr inbounds i32, i32* %135, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @dev_err(i32 %132, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %138)
  %140 = load i32, i32* %6, align 4
  store i32 %140, i32* %2, align 4
  br label %188

141:                                              ; preds = %107
  %142 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %143 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.mvebu_uart*, %struct.mvebu_uart** %4, align 8
  %146 = getelementptr inbounds %struct.mvebu_uart, %struct.mvebu_uart* %145, i32 0, i32 0
  %147 = load i32*, i32** %146, align 8
  %148 = load i64, i64* @UART_TX_IRQ, align 8
  %149 = getelementptr inbounds i32, i32* %147, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @mvebu_uart_tx_isr, align 4
  %152 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %153 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %156 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = call i32 @dev_name(i32 %157)
  %159 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %160 = call i32 @devm_request_irq(i32 %144, i32 %150, i32 %151, i32 %154, i32 %158, %struct.uart_port* %159)
  store i32 %160, i32* %6, align 4
  %161 = load i32, i32* %6, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %186

163:                                              ; preds = %141
  %164 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %165 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = load %struct.mvebu_uart*, %struct.mvebu_uart** %4, align 8
  %168 = getelementptr inbounds %struct.mvebu_uart, %struct.mvebu_uart* %167, i32 0, i32 0
  %169 = load i32*, i32** %168, align 8
  %170 = load i64, i64* @UART_TX_IRQ, align 8
  %171 = getelementptr inbounds i32, i32* %169, i64 %170
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @dev_err(i32 %166, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %172)
  %174 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %175 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = load %struct.mvebu_uart*, %struct.mvebu_uart** %4, align 8
  %178 = getelementptr inbounds %struct.mvebu_uart, %struct.mvebu_uart* %177, i32 0, i32 0
  %179 = load i32*, i32** %178, align 8
  %180 = load i64, i64* @UART_RX_IRQ, align 8
  %181 = getelementptr inbounds i32, i32* %179, i64 %180
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %184 = call i32 @devm_free_irq(i32 %176, i32 %182, %struct.uart_port* %183)
  %185 = load i32, i32* %6, align 4
  store i32 %185, i32* %2, align 4
  br label %188

186:                                              ; preds = %141
  br label %187

187:                                              ; preds = %186, %106
  store i32 0, i32* %2, align 4
  br label %188

188:                                              ; preds = %187, %163, %129, %94
  %189 = load i32, i32* %2, align 4
  ret i32 %189
}

declare dso_local %struct.mvebu_uart* @to_mvuart(%struct.uart_port*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @UART_CTRL(%struct.uart_port*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i8* @readl(i64) #1

declare dso_local i64 @UART_INTR(%struct.uart_port*) #1

declare dso_local i32 @CTRL_RX_RDY_INT(%struct.uart_port*) #1

declare dso_local i32 @devm_request_irq(i32, i32, i32, i32, i32, %struct.uart_port*) #1

declare dso_local i32 @dev_name(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @devm_free_irq(i32, i32, %struct.uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
