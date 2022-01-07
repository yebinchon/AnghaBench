; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_fifo.c_usbhsf_dma_chan_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_fifo.c_usbhsf_dma_chan_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.usbhs_fifo = type { %struct.dma_chan*, %struct.dma_chan* }
%struct.usbhs_pkt = type { i32* }

@usbhs_fifo_dma_push_handler = common dso_local global i32 0, align 4
@usbhs_fifo_dma_pop_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dma_chan* (%struct.usbhs_fifo*, %struct.usbhs_pkt*)* @usbhsf_dma_chan_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dma_chan* @usbhsf_dma_chan_get(%struct.usbhs_fifo* %0, %struct.usbhs_pkt* %1) #0 {
  %3 = alloca %struct.dma_chan*, align 8
  %4 = alloca %struct.usbhs_fifo*, align 8
  %5 = alloca %struct.usbhs_pkt*, align 8
  store %struct.usbhs_fifo* %0, %struct.usbhs_fifo** %4, align 8
  store %struct.usbhs_pkt* %1, %struct.usbhs_pkt** %5, align 8
  %6 = load %struct.usbhs_pkt*, %struct.usbhs_pkt** %5, align 8
  %7 = getelementptr inbounds %struct.usbhs_pkt, %struct.usbhs_pkt* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = icmp eq i32* @usbhs_fifo_dma_push_handler, %8
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load %struct.usbhs_fifo*, %struct.usbhs_fifo** %4, align 8
  %12 = getelementptr inbounds %struct.usbhs_fifo, %struct.usbhs_fifo* %11, i32 0, i32 1
  %13 = load %struct.dma_chan*, %struct.dma_chan** %12, align 8
  store %struct.dma_chan* %13, %struct.dma_chan** %3, align 8
  br label %24

14:                                               ; preds = %2
  %15 = load %struct.usbhs_pkt*, %struct.usbhs_pkt** %5, align 8
  %16 = getelementptr inbounds %struct.usbhs_pkt, %struct.usbhs_pkt* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = icmp eq i32* @usbhs_fifo_dma_pop_handler, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = load %struct.usbhs_fifo*, %struct.usbhs_fifo** %4, align 8
  %21 = getelementptr inbounds %struct.usbhs_fifo, %struct.usbhs_fifo* %20, i32 0, i32 0
  %22 = load %struct.dma_chan*, %struct.dma_chan** %21, align 8
  store %struct.dma_chan* %22, %struct.dma_chan** %3, align 8
  br label %24

23:                                               ; preds = %14
  store %struct.dma_chan* null, %struct.dma_chan** %3, align 8
  br label %24

24:                                               ; preds = %23, %19, %10
  %25 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  ret %struct.dma_chan* %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
