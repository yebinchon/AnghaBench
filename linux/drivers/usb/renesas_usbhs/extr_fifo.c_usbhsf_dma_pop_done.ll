; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_fifo.c_usbhsf_dma_pop_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_fifo.c_usbhsf_dma_pop_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbhs_pkt = type { i32 }
%struct.usbhs_priv = type { i32 }

@has_usb_dmac = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbhs_pkt*, i32*)* @usbhsf_dma_pop_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbhsf_dma_pop_done(%struct.usbhs_pkt* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usbhs_pkt*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.usbhs_priv*, align 8
  store %struct.usbhs_pkt* %0, %struct.usbhs_pkt** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.usbhs_pkt*, %struct.usbhs_pkt** %4, align 8
  %8 = getelementptr inbounds %struct.usbhs_pkt, %struct.usbhs_pkt* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.usbhs_priv* @usbhs_pipe_to_priv(i32 %9)
  store %struct.usbhs_priv* %10, %struct.usbhs_priv** %6, align 8
  %11 = load %struct.usbhs_priv*, %struct.usbhs_priv** %6, align 8
  %12 = load i32, i32* @has_usb_dmac, align 4
  %13 = call i64 @usbhs_get_dparam(%struct.usbhs_priv* %11, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load %struct.usbhs_pkt*, %struct.usbhs_pkt** %4, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = call i32 @usbhsf_dma_pop_done_with_usb_dmac(%struct.usbhs_pkt* %16, i32* %17)
  store i32 %18, i32* %3, align 4
  br label %23

19:                                               ; preds = %2
  %20 = load %struct.usbhs_pkt*, %struct.usbhs_pkt** %4, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = call i32 @usbhsf_dma_pop_done_with_rx_irq(%struct.usbhs_pkt* %20, i32* %21)
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %19, %15
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

declare dso_local %struct.usbhs_priv* @usbhs_pipe_to_priv(i32) #1

declare dso_local i64 @usbhs_get_dparam(%struct.usbhs_priv*, i32) #1

declare dso_local i32 @usbhsf_dma_pop_done_with_usb_dmac(%struct.usbhs_pkt*, i32*) #1

declare dso_local i32 @usbhsf_dma_pop_done_with_rx_irq(%struct.usbhs_pkt*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
