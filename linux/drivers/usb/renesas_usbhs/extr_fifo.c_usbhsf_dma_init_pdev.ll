; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_fifo.c_usbhsf_dma_init_pdev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_fifo.c_usbhsf_dma_init_pdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbhs_fifo = type { i32, i8*, i32, i8* }

@DMA_SLAVE = common dso_local global i32 0, align 4
@usbhsf_dma_filter = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usbhs_fifo*)* @usbhsf_dma_init_pdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usbhsf_dma_init_pdev(%struct.usbhs_fifo* %0) #0 {
  %2 = alloca %struct.usbhs_fifo*, align 8
  %3 = alloca i32, align 4
  store %struct.usbhs_fifo* %0, %struct.usbhs_fifo** %2, align 8
  %4 = load i32, i32* %3, align 4
  %5 = call i32 @dma_cap_zero(i32 %4)
  %6 = load i32, i32* @DMA_SLAVE, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @dma_cap_set(i32 %6, i32 %7)
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @usbhsf_dma_filter, align 4
  %11 = load %struct.usbhs_fifo*, %struct.usbhs_fifo** %2, align 8
  %12 = getelementptr inbounds %struct.usbhs_fifo, %struct.usbhs_fifo* %11, i32 0, i32 2
  %13 = call i8* @dma_request_channel(i32 %9, i32 %10, i32* %12)
  %14 = load %struct.usbhs_fifo*, %struct.usbhs_fifo** %2, align 8
  %15 = getelementptr inbounds %struct.usbhs_fifo, %struct.usbhs_fifo* %14, i32 0, i32 3
  store i8* %13, i8** %15, align 8
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @dma_cap_zero(i32 %16)
  %18 = load i32, i32* @DMA_SLAVE, align 4
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @dma_cap_set(i32 %18, i32 %19)
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @usbhsf_dma_filter, align 4
  %23 = load %struct.usbhs_fifo*, %struct.usbhs_fifo** %2, align 8
  %24 = getelementptr inbounds %struct.usbhs_fifo, %struct.usbhs_fifo* %23, i32 0, i32 0
  %25 = call i8* @dma_request_channel(i32 %21, i32 %22, i32* %24)
  %26 = load %struct.usbhs_fifo*, %struct.usbhs_fifo** %2, align 8
  %27 = getelementptr inbounds %struct.usbhs_fifo, %struct.usbhs_fifo* %26, i32 0, i32 1
  store i8* %25, i8** %27, align 8
  ret void
}

declare dso_local i32 @dma_cap_zero(i32) #1

declare dso_local i32 @dma_cap_set(i32, i32) #1

declare dso_local i8* @dma_request_channel(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
