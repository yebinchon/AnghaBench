; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_mxs-auart.c_mxs_auart_dma_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_mxs-auart.c_mxs_auart_dma_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxs_auart_port = type { i32 }

@AUART_CTRL2_TXDMAE = common dso_local global i32 0, align 4
@AUART_CTRL2_RXDMAE = common dso_local global i32 0, align 4
@AUART_CTRL2_DMAONERR = common dso_local global i32 0, align 4
@REG_CTRL2 = common dso_local global i32 0, align 4
@MXS_AUART_DMA_ENABLED = common dso_local global i32 0, align 4
@MXS_AUART_DMA_TX_SYNC = common dso_local global i32 0, align 4
@MXS_AUART_DMA_RX_READY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mxs_auart_port*)* @mxs_auart_dma_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mxs_auart_dma_exit(%struct.mxs_auart_port* %0) #0 {
  %2 = alloca %struct.mxs_auart_port*, align 8
  store %struct.mxs_auart_port* %0, %struct.mxs_auart_port** %2, align 8
  %3 = load i32, i32* @AUART_CTRL2_TXDMAE, align 4
  %4 = load i32, i32* @AUART_CTRL2_RXDMAE, align 4
  %5 = or i32 %3, %4
  %6 = load i32, i32* @AUART_CTRL2_DMAONERR, align 4
  %7 = or i32 %5, %6
  %8 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %2, align 8
  %9 = load i32, i32* @REG_CTRL2, align 4
  %10 = call i32 @mxs_clr(i32 %7, %struct.mxs_auart_port* %8, i32 %9)
  %11 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %2, align 8
  %12 = call i32 @mxs_auart_dma_exit_channel(%struct.mxs_auart_port* %11)
  %13 = load i32, i32* @MXS_AUART_DMA_ENABLED, align 4
  %14 = xor i32 %13, -1
  %15 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %2, align 8
  %16 = getelementptr inbounds %struct.mxs_auart_port, %struct.mxs_auart_port* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, %14
  store i32 %18, i32* %16, align 4
  %19 = load i32, i32* @MXS_AUART_DMA_TX_SYNC, align 4
  %20 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %2, align 8
  %21 = getelementptr inbounds %struct.mxs_auart_port, %struct.mxs_auart_port* %20, i32 0, i32 0
  %22 = call i32 @clear_bit(i32 %19, i32* %21)
  %23 = load i32, i32* @MXS_AUART_DMA_RX_READY, align 4
  %24 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %2, align 8
  %25 = getelementptr inbounds %struct.mxs_auart_port, %struct.mxs_auart_port* %24, i32 0, i32 0
  %26 = call i32 @clear_bit(i32 %23, i32* %25)
  ret void
}

declare dso_local i32 @mxs_clr(i32, %struct.mxs_auart_port*, i32) #1

declare dso_local i32 @mxs_auart_dma_exit_channel(%struct.mxs_auart_port*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
