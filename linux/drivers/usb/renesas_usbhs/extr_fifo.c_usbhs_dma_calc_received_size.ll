; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_fifo.c_usbhs_dma_calc_received_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_fifo.c_usbhs_dma_calc_received_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbhs_pkt = type { i64, i32, %struct.usbhs_pipe* }
%struct.usbhs_pipe = type { i32 }
%struct.dma_chan = type { i32 }
%struct.dma_tx_state = type { i64 }

@USBHS_USB_DMAC_XFER_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.usbhs_pkt*, %struct.dma_chan*, i32)* @usbhs_dma_calc_received_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @usbhs_dma_calc_received_size(%struct.usbhs_pkt* %0, %struct.dma_chan* %1, i32 %2) #0 {
  %4 = alloca %struct.usbhs_pkt*, align 8
  %5 = alloca %struct.dma_chan*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.usbhs_pipe*, align 8
  %8 = alloca %struct.dma_tx_state, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.usbhs_pkt* %0, %struct.usbhs_pkt** %4, align 8
  store %struct.dma_chan* %1, %struct.dma_chan** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.usbhs_pkt*, %struct.usbhs_pkt** %4, align 8
  %12 = getelementptr inbounds %struct.usbhs_pkt, %struct.usbhs_pkt* %11, i32 0, i32 2
  %13 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %12, align 8
  store %struct.usbhs_pipe* %13, %struct.usbhs_pipe** %7, align 8
  %14 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %7, align 8
  %15 = call i32 @usbhs_pipe_get_maxpacket(%struct.usbhs_pipe* %14)
  store i32 %15, i32* %10, align 4
  %16 = load %struct.dma_chan*, %struct.dma_chan** %5, align 8
  %17 = load %struct.usbhs_pkt*, %struct.usbhs_pkt** %4, align 8
  %18 = getelementptr inbounds %struct.usbhs_pkt, %struct.usbhs_pkt* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @dmaengine_tx_status(%struct.dma_chan* %16, i32 %19, %struct.dma_tx_state* %8)
  %21 = load %struct.usbhs_pkt*, %struct.usbhs_pkt** %4, align 8
  %22 = getelementptr inbounds %struct.usbhs_pkt, %struct.usbhs_pkt* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds %struct.dma_tx_state, %struct.dma_tx_state* %8, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = sub i64 %23, %25
  store i64 %26, i64* %9, align 8
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %43

29:                                               ; preds = %3
  %30 = load i64, i64* @USBHS_USB_DMAC_XFER_SIZE, align 8
  %31 = load i64, i64* %9, align 8
  %32 = sub i64 %31, %30
  store i64 %32, i64* %9, align 8
  %33 = load i32, i32* %10, align 4
  %34 = sub nsw i32 %33, 1
  %35 = xor i32 %34, -1
  %36 = sext i32 %35 to i64
  %37 = load i64, i64* %9, align 8
  %38 = and i64 %37, %36
  store i64 %38, i64* %9, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = load i64, i64* %9, align 8
  %42 = add i64 %41, %40
  store i64 %42, i64* %9, align 8
  br label %43

43:                                               ; preds = %29, %3
  %44 = load i64, i64* %9, align 8
  ret i64 %44
}

declare dso_local i32 @usbhs_pipe_get_maxpacket(%struct.usbhs_pipe*) #1

declare dso_local i32 @dmaengine_tx_status(%struct.dma_chan*, i32, %struct.dma_tx_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
