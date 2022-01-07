; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_fifo.c_usbhsf_dma_try_pop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_fifo.c_usbhsf_dma_try_pop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbhs_pkt = type { i32 }
%struct.usbhs_priv = type { i32 }

@has_usb_dmac = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbhs_pkt*, i32*)* @usbhsf_dma_try_pop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbhsf_dma_try_pop(%struct.usbhs_pkt* %0, i32* %1) #0 {
  %3 = alloca %struct.usbhs_pkt*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.usbhs_priv*, align 8
  store %struct.usbhs_pkt* %0, %struct.usbhs_pkt** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %struct.usbhs_pkt*, %struct.usbhs_pkt** %3, align 8
  %7 = getelementptr inbounds %struct.usbhs_pkt, %struct.usbhs_pkt* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.usbhs_priv* @usbhs_pipe_to_priv(i32 %8)
  store %struct.usbhs_priv* %9, %struct.usbhs_priv** %5, align 8
  %10 = load %struct.usbhs_priv*, %struct.usbhs_priv** %5, align 8
  %11 = load i32, i32* @has_usb_dmac, align 4
  %12 = call i32 @usbhs_get_dparam(%struct.usbhs_priv* %10, i32 %11)
  %13 = call i32 @BUG_ON(i32 %12)
  %14 = load %struct.usbhs_pkt*, %struct.usbhs_pkt** %3, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = call i32 @usbhsf_dma_try_pop_with_rx_irq(%struct.usbhs_pkt* %14, i32* %15)
  ret i32 %16
}

declare dso_local %struct.usbhs_priv* @usbhs_pipe_to_priv(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @usbhs_get_dparam(%struct.usbhs_priv*, i32) #1

declare dso_local i32 @usbhsf_dma_try_pop_with_rx_irq(%struct.usbhs_pkt*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
