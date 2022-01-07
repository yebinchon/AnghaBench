; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_fifo.c_usbhsf_dma_pop_done_with_usb_dmac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_fifo.c_usbhsf_dma_pop_done_with_usb_dmac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbhs_pkt = type { i32, %struct.usbhs_pipe* }
%struct.usbhs_pipe = type { i32 }
%struct.usbhs_priv = type { i32 }
%struct.usbhs_fifo = type { i32 }
%struct.dma_chan = type { i32 }

@BRDYSTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbhs_pkt*, i32*)* @usbhsf_dma_pop_done_with_usb_dmac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbhsf_dma_pop_done_with_usb_dmac(%struct.usbhs_pkt* %0, i32* %1) #0 {
  %3 = alloca %struct.usbhs_pkt*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.usbhs_pipe*, align 8
  %6 = alloca %struct.usbhs_priv*, align 8
  %7 = alloca %struct.usbhs_fifo*, align 8
  %8 = alloca %struct.dma_chan*, align 8
  %9 = alloca i32, align 4
  store %struct.usbhs_pkt* %0, %struct.usbhs_pkt** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load %struct.usbhs_pkt*, %struct.usbhs_pkt** %3, align 8
  %11 = getelementptr inbounds %struct.usbhs_pkt, %struct.usbhs_pkt* %10, i32 0, i32 1
  %12 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %11, align 8
  store %struct.usbhs_pipe* %12, %struct.usbhs_pipe** %5, align 8
  %13 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %5, align 8
  %14 = call %struct.usbhs_priv* @usbhs_pipe_to_priv(%struct.usbhs_pipe* %13)
  store %struct.usbhs_priv* %14, %struct.usbhs_priv** %6, align 8
  %15 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %5, align 8
  %16 = call %struct.usbhs_fifo* @usbhs_pipe_to_fifo(%struct.usbhs_pipe* %15)
  store %struct.usbhs_fifo* %16, %struct.usbhs_fifo** %7, align 8
  %17 = load %struct.usbhs_fifo*, %struct.usbhs_fifo** %7, align 8
  %18 = load %struct.usbhs_pkt*, %struct.usbhs_pkt** %3, align 8
  %19 = call %struct.dma_chan* @usbhsf_dma_chan_get(%struct.usbhs_fifo* %17, %struct.usbhs_pkt* %18)
  store %struct.dma_chan* %19, %struct.dma_chan** %8, align 8
  %20 = load %struct.usbhs_priv*, %struct.usbhs_priv** %6, align 8
  %21 = load i32, i32* @BRDYSTS, align 4
  %22 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %5, align 8
  %23 = call i32 @usbhs_pipe_number(%struct.usbhs_pipe* %22)
  %24 = call i32 @usbhs_xxxsts_clear(%struct.usbhs_priv* %20, i32 %21, i32 %23)
  %25 = load %struct.usbhs_priv*, %struct.usbhs_priv** %6, align 8
  %26 = load %struct.usbhs_fifo*, %struct.usbhs_fifo** %7, align 8
  %27 = call i32 @usbhsf_fifo_rcv_len(%struct.usbhs_priv* %25, %struct.usbhs_fifo* %26)
  store i32 %27, i32* %9, align 4
  %28 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %5, align 8
  %29 = load %struct.usbhs_fifo*, %struct.usbhs_fifo** %7, align 8
  %30 = call i32 @usbhsf_fifo_clear(%struct.usbhs_pipe* %28, %struct.usbhs_fifo* %29)
  %31 = load %struct.usbhs_pkt*, %struct.usbhs_pkt** %3, align 8
  %32 = load %struct.dma_chan*, %struct.dma_chan** %8, align 8
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @usbhs_dma_calc_received_size(%struct.usbhs_pkt* %31, %struct.dma_chan* %32, i32 %33)
  %35 = load %struct.usbhs_pkt*, %struct.usbhs_pkt** %3, align 8
  %36 = getelementptr inbounds %struct.usbhs_pkt, %struct.usbhs_pkt* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %5, align 8
  %38 = call i32 @usbhs_pipe_running(%struct.usbhs_pipe* %37, i32 0)
  %39 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %5, align 8
  %40 = load %struct.usbhs_fifo*, %struct.usbhs_fifo** %7, align 8
  %41 = call i32 @usbhsf_dma_stop(%struct.usbhs_pipe* %39, %struct.usbhs_fifo* %40)
  %42 = load %struct.usbhs_pkt*, %struct.usbhs_pkt** %3, align 8
  %43 = call i32 @usbhsf_dma_unmap(%struct.usbhs_pkt* %42)
  %44 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %5, align 8
  %45 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %5, align 8
  %46 = getelementptr inbounds %struct.usbhs_pipe, %struct.usbhs_pipe* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @usbhsf_fifo_unselect(%struct.usbhs_pipe* %44, i32 %47)
  %49 = load i32*, i32** %4, align 8
  store i32 1, i32* %49, align 4
  ret i32 0
}

declare dso_local %struct.usbhs_priv* @usbhs_pipe_to_priv(%struct.usbhs_pipe*) #1

declare dso_local %struct.usbhs_fifo* @usbhs_pipe_to_fifo(%struct.usbhs_pipe*) #1

declare dso_local %struct.dma_chan* @usbhsf_dma_chan_get(%struct.usbhs_fifo*, %struct.usbhs_pkt*) #1

declare dso_local i32 @usbhs_xxxsts_clear(%struct.usbhs_priv*, i32, i32) #1

declare dso_local i32 @usbhs_pipe_number(%struct.usbhs_pipe*) #1

declare dso_local i32 @usbhsf_fifo_rcv_len(%struct.usbhs_priv*, %struct.usbhs_fifo*) #1

declare dso_local i32 @usbhsf_fifo_clear(%struct.usbhs_pipe*, %struct.usbhs_fifo*) #1

declare dso_local i32 @usbhs_dma_calc_received_size(%struct.usbhs_pkt*, %struct.dma_chan*, i32) #1

declare dso_local i32 @usbhs_pipe_running(%struct.usbhs_pipe*, i32) #1

declare dso_local i32 @usbhsf_dma_stop(%struct.usbhs_pipe*, %struct.usbhs_fifo*) #1

declare dso_local i32 @usbhsf_dma_unmap(%struct.usbhs_pkt*) #1

declare dso_local i32 @usbhsf_fifo_unselect(%struct.usbhs_pipe*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
