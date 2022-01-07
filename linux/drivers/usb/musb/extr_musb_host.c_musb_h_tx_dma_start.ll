; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/musb/extr_musb_host.c_musb_h_tx_dma_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/musb/extr_musb_host.c_musb_h_tx_dma_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.musb_hw_ep = type { i32, i32 }

@MUSB_TXCSR = common dso_local global i32 0, align 4
@MUSB_TXCSR_DMAENAB = common dso_local global i32 0, align 4
@MUSB_TXCSR_H_WZC_BITS = common dso_local global i32 0, align 4
@MUSB_TXCSR_DMAMODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.musb_hw_ep*)* @musb_h_tx_dma_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @musb_h_tx_dma_start(%struct.musb_hw_ep* %0) #0 {
  %2 = alloca %struct.musb_hw_ep*, align 8
  %3 = alloca i32, align 4
  store %struct.musb_hw_ep* %0, %struct.musb_hw_ep** %2, align 8
  %4 = load %struct.musb_hw_ep*, %struct.musb_hw_ep** %2, align 8
  %5 = getelementptr inbounds %struct.musb_hw_ep, %struct.musb_hw_ep* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @MUSB_TXCSR, align 4
  %8 = call i32 @musb_readw(i32 %6, i32 %7)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* @MUSB_TXCSR_DMAENAB, align 4
  %10 = load i32, i32* @MUSB_TXCSR_H_WZC_BITS, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* %3, align 4
  %13 = or i32 %12, %11
  store i32 %13, i32* %3, align 4
  %14 = load %struct.musb_hw_ep*, %struct.musb_hw_ep** %2, align 8
  %15 = getelementptr inbounds %struct.musb_hw_ep, %struct.musb_hw_ep* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @is_cppi_enabled(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = load i32, i32* @MUSB_TXCSR_DMAMODE, align 4
  %21 = load i32, i32* %3, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %19, %1
  %24 = load %struct.musb_hw_ep*, %struct.musb_hw_ep** %2, align 8
  %25 = getelementptr inbounds %struct.musb_hw_ep, %struct.musb_hw_ep* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @MUSB_TXCSR, align 4
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @musb_writew(i32 %26, i32 %27, i32 %28)
  ret void
}

declare dso_local i32 @musb_readw(i32, i32) #1

declare dso_local i64 @is_cppi_enabled(i32) #1

declare dso_local i32 @musb_writew(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
