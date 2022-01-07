; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_fifo.c___usbhsf_dma_map_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_fifo.c___usbhsf_dma_map_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbhs_pkt = type { %struct.usbhs_pipe* }
%struct.usbhs_pipe = type { i32 }
%struct.usbhs_priv = type { i32 }
%struct.usbhs_pipe_info = type { i32 (i32, %struct.usbhs_pkt*, i32)* }
%struct.usbhs_fifo = type { i32 }
%struct.dma_chan = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbhs_pkt*, i32)* @__usbhsf_dma_map_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__usbhsf_dma_map_ctrl(%struct.usbhs_pkt* %0, i32 %1) #0 {
  %3 = alloca %struct.usbhs_pkt*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.usbhs_pipe*, align 8
  %6 = alloca %struct.usbhs_priv*, align 8
  %7 = alloca %struct.usbhs_pipe_info*, align 8
  %8 = alloca %struct.usbhs_fifo*, align 8
  %9 = alloca %struct.dma_chan*, align 8
  store %struct.usbhs_pkt* %0, %struct.usbhs_pkt** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.usbhs_pkt*, %struct.usbhs_pkt** %3, align 8
  %11 = getelementptr inbounds %struct.usbhs_pkt, %struct.usbhs_pkt* %10, i32 0, i32 0
  %12 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %11, align 8
  store %struct.usbhs_pipe* %12, %struct.usbhs_pipe** %5, align 8
  %13 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %5, align 8
  %14 = call %struct.usbhs_priv* @usbhs_pipe_to_priv(%struct.usbhs_pipe* %13)
  store %struct.usbhs_priv* %14, %struct.usbhs_priv** %6, align 8
  %15 = load %struct.usbhs_priv*, %struct.usbhs_priv** %6, align 8
  %16 = call %struct.usbhs_pipe_info* @usbhs_priv_to_pipeinfo(%struct.usbhs_priv* %15)
  store %struct.usbhs_pipe_info* %16, %struct.usbhs_pipe_info** %7, align 8
  %17 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %5, align 8
  %18 = call %struct.usbhs_fifo* @usbhs_pipe_to_fifo(%struct.usbhs_pipe* %17)
  store %struct.usbhs_fifo* %18, %struct.usbhs_fifo** %8, align 8
  %19 = load %struct.usbhs_fifo*, %struct.usbhs_fifo** %8, align 8
  %20 = load %struct.usbhs_pkt*, %struct.usbhs_pkt** %3, align 8
  %21 = call %struct.dma_chan* @usbhsf_dma_chan_get(%struct.usbhs_fifo* %19, %struct.usbhs_pkt* %20)
  store %struct.dma_chan* %21, %struct.dma_chan** %9, align 8
  %22 = load %struct.usbhs_pipe_info*, %struct.usbhs_pipe_info** %7, align 8
  %23 = getelementptr inbounds %struct.usbhs_pipe_info, %struct.usbhs_pipe_info* %22, i32 0, i32 0
  %24 = load i32 (i32, %struct.usbhs_pkt*, i32)*, i32 (i32, %struct.usbhs_pkt*, i32)** %23, align 8
  %25 = load %struct.dma_chan*, %struct.dma_chan** %9, align 8
  %26 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.usbhs_pkt*, %struct.usbhs_pkt** %3, align 8
  %31 = load i32, i32* %4, align 4
  %32 = call i32 %24(i32 %29, %struct.usbhs_pkt* %30, i32 %31)
  ret i32 %32
}

declare dso_local %struct.usbhs_priv* @usbhs_pipe_to_priv(%struct.usbhs_pipe*) #1

declare dso_local %struct.usbhs_pipe_info* @usbhs_priv_to_pipeinfo(%struct.usbhs_priv*) #1

declare dso_local %struct.usbhs_fifo* @usbhs_pipe_to_fifo(%struct.usbhs_pipe*) #1

declare dso_local %struct.dma_chan* @usbhsf_dma_chan_get(%struct.usbhs_fifo*, %struct.usbhs_pkt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
