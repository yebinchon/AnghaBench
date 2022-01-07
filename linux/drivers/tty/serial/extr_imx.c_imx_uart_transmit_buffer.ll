; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_imx.c_imx_uart_transmit_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_imx.c_imx_uart_transmit_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx_port = type { %struct.TYPE_8__, i64, i64 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.circ_buf }
%struct.circ_buf = type { i32*, i64 }

@URTX0 = common dso_local global i32 0, align 4
@UCR1 = common dso_local global i32 0, align 4
@UCR1_TRDYEN = common dso_local global i32 0, align 4
@UCR1_TXDMAEN = common dso_local global i32 0, align 4
@UTS_TXFULL = common dso_local global i32 0, align 4
@UART_XMIT_SIZE = common dso_local global i32 0, align 4
@WAKEUP_CHARS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.imx_port*)* @imx_uart_transmit_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @imx_uart_transmit_buffer(%struct.imx_port* %0) #0 {
  %2 = alloca %struct.imx_port*, align 8
  %3 = alloca %struct.circ_buf*, align 8
  %4 = alloca i32, align 4
  store %struct.imx_port* %0, %struct.imx_port** %2, align 8
  %5 = load %struct.imx_port*, %struct.imx_port** %2, align 8
  %6 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 2
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  store %struct.circ_buf* %9, %struct.circ_buf** %3, align 8
  %10 = load %struct.imx_port*, %struct.imx_port** %2, align 8
  %11 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %32

15:                                               ; preds = %1
  %16 = load %struct.imx_port*, %struct.imx_port** %2, align 8
  %17 = load %struct.imx_port*, %struct.imx_port** %2, align 8
  %18 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @URTX0, align 4
  %22 = call i32 @imx_uart_writel(%struct.imx_port* %16, i32 %20, i32 %21)
  %23 = load %struct.imx_port*, %struct.imx_port** %2, align 8
  %24 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 4
  %29 = load %struct.imx_port*, %struct.imx_port** %2, align 8
  %30 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  store i32 0, i32* %31, align 8
  br label %139

32:                                               ; preds = %1
  %33 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %34 = call i64 @uart_circ_empty(%struct.circ_buf* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %32
  %37 = load %struct.imx_port*, %struct.imx_port** %2, align 8
  %38 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %37, i32 0, i32 0
  %39 = call i64 @uart_tx_stopped(%struct.TYPE_8__* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %36, %32
  %42 = load %struct.imx_port*, %struct.imx_port** %2, align 8
  %43 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %42, i32 0, i32 0
  %44 = call i32 @imx_uart_stop_tx(%struct.TYPE_8__* %43)
  br label %139

45:                                               ; preds = %36
  %46 = load %struct.imx_port*, %struct.imx_port** %2, align 8
  %47 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %78

50:                                               ; preds = %45
  %51 = load %struct.imx_port*, %struct.imx_port** %2, align 8
  %52 = load i32, i32* @UCR1, align 4
  %53 = call i32 @imx_uart_readl(%struct.imx_port* %51, i32 %52)
  store i32 %53, i32* %4, align 4
  %54 = load i32, i32* @UCR1_TRDYEN, align 4
  %55 = xor i32 %54, -1
  %56 = load i32, i32* %4, align 4
  %57 = and i32 %56, %55
  store i32 %57, i32* %4, align 4
  %58 = load %struct.imx_port*, %struct.imx_port** %2, align 8
  %59 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %50
  %63 = load i32, i32* @UCR1_TXDMAEN, align 4
  %64 = load i32, i32* %4, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %4, align 4
  %66 = load %struct.imx_port*, %struct.imx_port** %2, align 8
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* @UCR1, align 4
  %69 = call i32 @imx_uart_writel(%struct.imx_port* %66, i32 %67, i32 %68)
  br label %77

70:                                               ; preds = %50
  %71 = load %struct.imx_port*, %struct.imx_port** %2, align 8
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* @UCR1, align 4
  %74 = call i32 @imx_uart_writel(%struct.imx_port* %71, i32 %72, i32 %73)
  %75 = load %struct.imx_port*, %struct.imx_port** %2, align 8
  %76 = call i32 @imx_uart_dma_tx(%struct.imx_port* %75)
  br label %77

77:                                               ; preds = %70, %62
  br label %139

78:                                               ; preds = %45
  br label %79

79:                                               ; preds = %94, %78
  %80 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %81 = call i64 @uart_circ_empty(%struct.circ_buf* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %92, label %83

83:                                               ; preds = %79
  %84 = load %struct.imx_port*, %struct.imx_port** %2, align 8
  %85 = load %struct.imx_port*, %struct.imx_port** %2, align 8
  %86 = call i32 @imx_uart_uts_reg(%struct.imx_port* %85)
  %87 = call i32 @imx_uart_readl(%struct.imx_port* %84, i32 %86)
  %88 = load i32, i32* @UTS_TXFULL, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  %91 = xor i1 %90, true
  br label %92

92:                                               ; preds = %83, %79
  %93 = phi i1 [ false, %79 ], [ %91, %83 ]
  br i1 %93, label %94, label %122

94:                                               ; preds = %92
  %95 = load %struct.imx_port*, %struct.imx_port** %2, align 8
  %96 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %97 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %100 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = getelementptr inbounds i32, i32* %98, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @URTX0, align 4
  %105 = call i32 @imx_uart_writel(%struct.imx_port* %95, i32 %103, i32 %104)
  %106 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %107 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = add i64 %108, 1
  %110 = load i32, i32* @UART_XMIT_SIZE, align 4
  %111 = sub nsw i32 %110, 1
  %112 = sext i32 %111 to i64
  %113 = and i64 %109, %112
  %114 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %115 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %114, i32 0, i32 1
  store i64 %113, i64* %115, align 8
  %116 = load %struct.imx_port*, %struct.imx_port** %2, align 8
  %117 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %119, align 4
  br label %79

122:                                              ; preds = %92
  %123 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %124 = call i64 @uart_circ_chars_pending(%struct.circ_buf* %123)
  %125 = load i64, i64* @WAKEUP_CHARS, align 8
  %126 = icmp slt i64 %124, %125
  br i1 %126, label %127, label %131

127:                                              ; preds = %122
  %128 = load %struct.imx_port*, %struct.imx_port** %2, align 8
  %129 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %128, i32 0, i32 0
  %130 = call i32 @uart_write_wakeup(%struct.TYPE_8__* %129)
  br label %131

131:                                              ; preds = %127, %122
  %132 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %133 = call i64 @uart_circ_empty(%struct.circ_buf* %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %131
  %136 = load %struct.imx_port*, %struct.imx_port** %2, align 8
  %137 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %136, i32 0, i32 0
  %138 = call i32 @imx_uart_stop_tx(%struct.TYPE_8__* %137)
  br label %139

139:                                              ; preds = %15, %41, %77, %135, %131
  ret void
}

declare dso_local i32 @imx_uart_writel(%struct.imx_port*, i32, i32) #1

declare dso_local i64 @uart_circ_empty(%struct.circ_buf*) #1

declare dso_local i64 @uart_tx_stopped(%struct.TYPE_8__*) #1

declare dso_local i32 @imx_uart_stop_tx(%struct.TYPE_8__*) #1

declare dso_local i32 @imx_uart_readl(%struct.imx_port*, i32) #1

declare dso_local i32 @imx_uart_dma_tx(%struct.imx_port*) #1

declare dso_local i32 @imx_uart_uts_reg(%struct.imx_port*) #1

declare dso_local i64 @uart_circ_chars_pending(%struct.circ_buf*) #1

declare dso_local i32 @uart_write_wakeup(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
