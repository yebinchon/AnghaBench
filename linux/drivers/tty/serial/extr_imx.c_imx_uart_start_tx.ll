; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_imx.c_imx_uart_start_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_imx.c_imx_uart_start_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { %struct.TYPE_6__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.imx_port = type { %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { i64 }

@SER_RS485_ENABLED = common dso_local global i32 0, align 4
@UCR2 = common dso_local global i32 0, align 4
@SER_RS485_RTS_ON_SEND = common dso_local global i32 0, align 4
@SER_RS485_RX_DURING_TX = common dso_local global i32 0, align 4
@UCR4 = common dso_local global i32 0, align 4
@UCR4_TCEN = common dso_local global i32 0, align 4
@UCR1 = common dso_local global i32 0, align 4
@UCR1_TRDYEN = common dso_local global i32 0, align 4
@UCR1_TXDMAEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @imx_uart_start_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @imx_uart_start_tx(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.imx_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %7 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %8 = bitcast %struct.uart_port* %7 to %struct.imx_port*
  store %struct.imx_port* %8, %struct.imx_port** %3, align 8
  %9 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %10 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %22, label %14

14:                                               ; preds = %1
  %15 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %16 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %15, i32 0, i32 0
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = call i64 @uart_circ_empty(i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  br label %135

22:                                               ; preds = %14, %1
  %23 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %24 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @SER_RS485_ENABLED, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %79

30:                                               ; preds = %22
  %31 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %32 = load i32, i32* @UCR2, align 4
  %33 = call i32 @imx_uart_readl(%struct.imx_port* %31, i32 %32)
  store i32 %33, i32* %5, align 4
  %34 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %35 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @SER_RS485_RTS_ON_SEND, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %30
  %42 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %43 = call i32 @imx_uart_rts_active(%struct.imx_port* %42, i32* %5)
  br label %47

44:                                               ; preds = %30
  %45 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %46 = call i32 @imx_uart_rts_inactive(%struct.imx_port* %45, i32* %5)
  br label %47

47:                                               ; preds = %44, %41
  %48 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @UCR2, align 4
  %51 = call i32 @imx_uart_writel(%struct.imx_port* %48, i32 %49, i32 %50)
  %52 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %53 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @SER_RS485_RX_DURING_TX, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %47
  %60 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %61 = call i32 @imx_uart_stop_rx(%struct.uart_port* %60)
  br label %62

62:                                               ; preds = %59, %47
  %63 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %64 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %78, label %67

67:                                               ; preds = %62
  %68 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %69 = load i32, i32* @UCR4, align 4
  %70 = call i32 @imx_uart_readl(%struct.imx_port* %68, i32 %69)
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* @UCR4_TCEN, align 4
  %72 = load i32, i32* %6, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %6, align 4
  %74 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* @UCR4, align 4
  %77 = call i32 @imx_uart_writel(%struct.imx_port* %74, i32 %75, i32 %76)
  br label %78

78:                                               ; preds = %67, %62
  br label %79

79:                                               ; preds = %78, %22
  %80 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %81 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %94, label %84

84:                                               ; preds = %79
  %85 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %86 = load i32, i32* @UCR1, align 4
  %87 = call i32 @imx_uart_readl(%struct.imx_port* %85, i32 %86)
  store i32 %87, i32* %4, align 4
  %88 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %89 = load i32, i32* %4, align 4
  %90 = load i32, i32* @UCR1_TRDYEN, align 4
  %91 = or i32 %89, %90
  %92 = load i32, i32* @UCR1, align 4
  %93 = call i32 @imx_uart_writel(%struct.imx_port* %88, i32 %91, i32 %92)
  br label %94

94:                                               ; preds = %84, %79
  %95 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %96 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %135

99:                                               ; preds = %94
  %100 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %101 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %120

105:                                              ; preds = %99
  %106 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %107 = load i32, i32* @UCR1, align 4
  %108 = call i32 @imx_uart_readl(%struct.imx_port* %106, i32 %107)
  store i32 %108, i32* %4, align 4
  %109 = load i32, i32* @UCR1_TXDMAEN, align 4
  %110 = xor i32 %109, -1
  %111 = load i32, i32* %4, align 4
  %112 = and i32 %111, %110
  store i32 %112, i32* %4, align 4
  %113 = load i32, i32* @UCR1_TRDYEN, align 4
  %114 = load i32, i32* %4, align 4
  %115 = or i32 %114, %113
  store i32 %115, i32* %4, align 4
  %116 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %117 = load i32, i32* %4, align 4
  %118 = load i32, i32* @UCR1, align 4
  %119 = call i32 @imx_uart_writel(%struct.imx_port* %116, i32 %117, i32 %118)
  br label %135

120:                                              ; preds = %99
  %121 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %122 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %121, i32 0, i32 0
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  %125 = call i64 @uart_circ_empty(i32* %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %134, label %127

127:                                              ; preds = %120
  %128 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %129 = call i32 @uart_tx_stopped(%struct.uart_port* %128)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %134, label %131

131:                                              ; preds = %127
  %132 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %133 = call i32 @imx_uart_dma_tx(%struct.imx_port* %132)
  br label %134

134:                                              ; preds = %131, %127, %120
  br label %135

135:                                              ; preds = %21, %105, %134, %94
  ret void
}

declare dso_local i64 @uart_circ_empty(i32*) #1

declare dso_local i32 @imx_uart_readl(%struct.imx_port*, i32) #1

declare dso_local i32 @imx_uart_rts_active(%struct.imx_port*, i32*) #1

declare dso_local i32 @imx_uart_rts_inactive(%struct.imx_port*, i32*) #1

declare dso_local i32 @imx_uart_writel(%struct.imx_port*, i32, i32) #1

declare dso_local i32 @imx_uart_stop_rx(%struct.uart_port*) #1

declare dso_local i32 @uart_tx_stopped(%struct.uart_port*) #1

declare dso_local i32 @imx_uart_dma_tx(%struct.imx_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
