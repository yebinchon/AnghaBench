; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_mxs-auart.c_mxs_auart_irq_handle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_mxs-auart.c_mxs_auart_irq_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxs_auart_port = type { i32, i32*, i32, i64, i32 }

@REG_STAT = common dso_local global i32 0, align 4
@REG_INTR = common dso_local global i32 0, align 4
@AUART_INTR_RTIS = common dso_local global i32 0, align 4
@AUART_INTR_TXIS = common dso_local global i32 0, align 4
@AUART_INTR_RXIS = common dso_local global i32 0, align 4
@AUART_INTR_CTSMIS = common dso_local global i32 0, align 4
@UART_GPIO_CTS = common dso_local global i64 0, align 8
@UART_GPIO_DCD = common dso_local global i64 0, align 8
@UART_GPIO_DSR = common dso_local global i64 0, align 8
@UART_GPIO_RI = common dso_local global i64 0, align 8
@AUART_STAT_CTS = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @mxs_auart_irq_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxs_auart_irq_handle(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mxs_auart_port*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.mxs_auart_port*
  store %struct.mxs_auart_port* %10, %struct.mxs_auart_port** %6, align 8
  %11 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %6, align 8
  %12 = getelementptr inbounds %struct.mxs_auart_port, %struct.mxs_auart_port* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %7, align 4
  %14 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %6, align 8
  %15 = load i32, i32* @REG_STAT, align 4
  %16 = call i32 @mxs_read(%struct.mxs_auart_port* %14, i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %6, align 8
  %18 = load i32, i32* @REG_INTR, align 4
  %19 = call i32 @mxs_read(%struct.mxs_auart_port* %17, i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @AUART_INTR_RTIS, align 4
  %22 = load i32, i32* @AUART_INTR_TXIS, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @AUART_INTR_RXIS, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @AUART_INTR_CTSMIS, align 4
  %27 = or i32 %25, %26
  %28 = and i32 %20, %27
  %29 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %6, align 8
  %30 = load i32, i32* @REG_INTR, align 4
  %31 = call i32 @mxs_clr(i32 %28, %struct.mxs_auart_port* %29, i32 %30)
  %32 = load i32, i32* %3, align 4
  %33 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %6, align 8
  %34 = getelementptr inbounds %struct.mxs_auart_port, %struct.mxs_auart_port* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load i64, i64* @UART_GPIO_CTS, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %32, %38
  br i1 %39, label %67, label %40

40:                                               ; preds = %2
  %41 = load i32, i32* %3, align 4
  %42 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %6, align 8
  %43 = getelementptr inbounds %struct.mxs_auart_port, %struct.mxs_auart_port* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load i64, i64* @UART_GPIO_DCD, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = icmp eq i32 %41, %47
  br i1 %48, label %67, label %49

49:                                               ; preds = %40
  %50 = load i32, i32* %3, align 4
  %51 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %6, align 8
  %52 = getelementptr inbounds %struct.mxs_auart_port, %struct.mxs_auart_port* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = load i64, i64* @UART_GPIO_DSR, align 8
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = icmp eq i32 %50, %56
  br i1 %57, label %67, label %58

58:                                               ; preds = %49
  %59 = load i32, i32* %3, align 4
  %60 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %6, align 8
  %61 = getelementptr inbounds %struct.mxs_auart_port, %struct.mxs_auart_port* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = load i64, i64* @UART_GPIO_RI, align 8
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = icmp eq i32 %59, %65
  br i1 %66, label %67, label %74

67:                                               ; preds = %58, %49, %40, %2
  %68 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %6, align 8
  %69 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %6, align 8
  %70 = getelementptr inbounds %struct.mxs_auart_port, %struct.mxs_auart_port* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @mctrl_gpio_get(i32 %71, i32* %7)
  %73 = call i32 @mxs_auart_modem_status(%struct.mxs_auart_port* %68, i32 %72)
  br label %74

74:                                               ; preds = %67, %58
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* @AUART_INTR_CTSMIS, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %103

79:                                               ; preds = %74
  %80 = call i64 (...) @CTS_AT_AUART()
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %94

82:                                               ; preds = %79
  %83 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %6, align 8
  %84 = getelementptr inbounds %struct.mxs_auart_port, %struct.mxs_auart_port* %83, i32 0, i32 3
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %82
  %88 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %6, align 8
  %89 = getelementptr inbounds %struct.mxs_auart_port, %struct.mxs_auart_port* %88, i32 0, i32 2
  %90 = load i32, i32* %8, align 4
  %91 = load i32, i32* @AUART_STAT_CTS, align 4
  %92 = and i32 %90, %91
  %93 = call i32 @uart_handle_cts_change(i32* %89, i32 %92)
  br label %94

94:                                               ; preds = %87, %82, %79
  %95 = load i32, i32* @AUART_INTR_CTSMIS, align 4
  %96 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %6, align 8
  %97 = load i32, i32* @REG_INTR, align 4
  %98 = call i32 @mxs_clr(i32 %95, %struct.mxs_auart_port* %96, i32 %97)
  %99 = load i32, i32* @AUART_INTR_CTSMIS, align 4
  %100 = xor i32 %99, -1
  %101 = load i32, i32* %5, align 4
  %102 = and i32 %101, %100
  store i32 %102, i32* %5, align 4
  br label %103

103:                                              ; preds = %94, %74
  %104 = load i32, i32* %5, align 4
  %105 = load i32, i32* @AUART_INTR_RTIS, align 4
  %106 = load i32, i32* @AUART_INTR_RXIS, align 4
  %107 = or i32 %105, %106
  %108 = and i32 %104, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %124

110:                                              ; preds = %103
  %111 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %6, align 8
  %112 = call i32 @auart_dma_enabled(%struct.mxs_auart_port* %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %117, label %114

114:                                              ; preds = %110
  %115 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %6, align 8
  %116 = call i32 @mxs_auart_rx_chars(%struct.mxs_auart_port* %115)
  br label %117

117:                                              ; preds = %114, %110
  %118 = load i32, i32* @AUART_INTR_RTIS, align 4
  %119 = load i32, i32* @AUART_INTR_RXIS, align 4
  %120 = or i32 %118, %119
  %121 = xor i32 %120, -1
  %122 = load i32, i32* %5, align 4
  %123 = and i32 %122, %121
  store i32 %123, i32* %5, align 4
  br label %124

124:                                              ; preds = %117, %103
  %125 = load i32, i32* %5, align 4
  %126 = load i32, i32* @AUART_INTR_TXIS, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %136

129:                                              ; preds = %124
  %130 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %6, align 8
  %131 = call i32 @mxs_auart_tx_chars(%struct.mxs_auart_port* %130)
  %132 = load i32, i32* @AUART_INTR_TXIS, align 4
  %133 = xor i32 %132, -1
  %134 = load i32, i32* %5, align 4
  %135 = and i32 %134, %133
  store i32 %135, i32* %5, align 4
  br label %136

136:                                              ; preds = %129, %124
  %137 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %137
}

declare dso_local i32 @mxs_read(%struct.mxs_auart_port*, i32) #1

declare dso_local i32 @mxs_clr(i32, %struct.mxs_auart_port*, i32) #1

declare dso_local i32 @mxs_auart_modem_status(%struct.mxs_auart_port*, i32) #1

declare dso_local i32 @mctrl_gpio_get(i32, i32*) #1

declare dso_local i64 @CTS_AT_AUART(...) #1

declare dso_local i32 @uart_handle_cts_change(i32*, i32) #1

declare dso_local i32 @auart_dma_enabled(%struct.mxs_auart_port*) #1

declare dso_local i32 @mxs_auart_rx_chars(%struct.mxs_auart_port*) #1

declare dso_local i32 @mxs_auart_tx_chars(%struct.mxs_auart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
