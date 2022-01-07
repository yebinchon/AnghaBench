; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_renesas_usb3.c_usb3_dma_kick_prd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_renesas_usb3.c_usb3_dma_kick_prd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.renesas_usb3_ep = type { i32, i64, %struct.renesas_usb3_dma* }
%struct.renesas_usb3_dma = type { i32, i32 }
%struct.renesas_usb3 = type { i32 }

@DMA_CON_PRD_EN = common dso_local global i32 0, align 4
@DMA_CON_PIPE_DIR = common dso_local global i32 0, align 4
@USB3_DMA_INT_STA = common dso_local global i32 0, align 4
@USB3_AXI_INT_STA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.renesas_usb3_ep*)* @usb3_dma_kick_prd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usb3_dma_kick_prd(%struct.renesas_usb3_ep* %0) #0 {
  %2 = alloca %struct.renesas_usb3_ep*, align 8
  %3 = alloca %struct.renesas_usb3_dma*, align 8
  %4 = alloca %struct.renesas_usb3*, align 8
  %5 = alloca i32, align 4
  store %struct.renesas_usb3_ep* %0, %struct.renesas_usb3_ep** %2, align 8
  %6 = load %struct.renesas_usb3_ep*, %struct.renesas_usb3_ep** %2, align 8
  %7 = getelementptr inbounds %struct.renesas_usb3_ep, %struct.renesas_usb3_ep* %6, i32 0, i32 2
  %8 = load %struct.renesas_usb3_dma*, %struct.renesas_usb3_dma** %7, align 8
  store %struct.renesas_usb3_dma* %8, %struct.renesas_usb3_dma** %3, align 8
  %9 = load %struct.renesas_usb3_ep*, %struct.renesas_usb3_ep** %2, align 8
  %10 = call %struct.renesas_usb3* @usb3_ep_to_usb3(%struct.renesas_usb3_ep* %9)
  store %struct.renesas_usb3* %10, %struct.renesas_usb3** %4, align 8
  %11 = load %struct.renesas_usb3_ep*, %struct.renesas_usb3_ep** %2, align 8
  %12 = getelementptr inbounds %struct.renesas_usb3_ep, %struct.renesas_usb3_ep* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @DMA_COM_PIPE_NO(i32 %13)
  %15 = load i32, i32* @DMA_CON_PRD_EN, align 4
  %16 = or i32 %14, %15
  store i32 %16, i32* %5, align 4
  %17 = load %struct.renesas_usb3_ep*, %struct.renesas_usb3_ep** %2, align 8
  %18 = getelementptr inbounds %struct.renesas_usb3_ep, %struct.renesas_usb3_ep* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %1
  %22 = load i32, i32* @DMA_CON_PIPE_DIR, align 4
  %23 = load i32, i32* %5, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %5, align 4
  br label %25

25:                                               ; preds = %21, %1
  %26 = call i32 (...) @wmb()
  %27 = load %struct.renesas_usb3*, %struct.renesas_usb3** %4, align 8
  %28 = load %struct.renesas_usb3_ep*, %struct.renesas_usb3_ep** %2, align 8
  %29 = getelementptr inbounds %struct.renesas_usb3_ep, %struct.renesas_usb3_ep* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = shl i32 1, %30
  %32 = load i32, i32* @USB3_DMA_INT_STA, align 4
  %33 = call i32 @usb3_write(%struct.renesas_usb3* %27, i32 %31, i32 %32)
  %34 = load %struct.renesas_usb3*, %struct.renesas_usb3** %4, align 8
  %35 = load %struct.renesas_usb3_dma*, %struct.renesas_usb3_dma** %3, align 8
  %36 = getelementptr inbounds %struct.renesas_usb3_dma, %struct.renesas_usb3_dma* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @AXI_INT_PRDEN_CLR_STA(i32 %37)
  %39 = load %struct.renesas_usb3_dma*, %struct.renesas_usb3_dma** %3, align 8
  %40 = getelementptr inbounds %struct.renesas_usb3_dma, %struct.renesas_usb3_dma* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @AXI_INT_PRDERR_STA(i32 %41)
  %43 = or i32 %38, %42
  %44 = load i32, i32* @USB3_AXI_INT_STA, align 4
  %45 = call i32 @usb3_write(%struct.renesas_usb3* %34, i32 %43, i32 %44)
  %46 = load %struct.renesas_usb3*, %struct.renesas_usb3** %4, align 8
  %47 = load %struct.renesas_usb3_dma*, %struct.renesas_usb3_dma** %3, align 8
  %48 = getelementptr inbounds %struct.renesas_usb3_dma, %struct.renesas_usb3_dma* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.renesas_usb3_dma*, %struct.renesas_usb3_dma** %3, align 8
  %51 = getelementptr inbounds %struct.renesas_usb3_dma, %struct.renesas_usb3_dma* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @USB3_DMA_CH0_PRD_ADR(i32 %52)
  %54 = call i32 @usb3_write(%struct.renesas_usb3* %46, i32 %49, i32 %53)
  %55 = load %struct.renesas_usb3*, %struct.renesas_usb3** %4, align 8
  %56 = load i32, i32* %5, align 4
  %57 = load %struct.renesas_usb3_dma*, %struct.renesas_usb3_dma** %3, align 8
  %58 = getelementptr inbounds %struct.renesas_usb3_dma, %struct.renesas_usb3_dma* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @USB3_DMA_CH0_CON(i32 %59)
  %61 = call i32 @usb3_write(%struct.renesas_usb3* %55, i32 %56, i32 %60)
  %62 = load %struct.renesas_usb3*, %struct.renesas_usb3** %4, align 8
  %63 = load %struct.renesas_usb3_ep*, %struct.renesas_usb3_ep** %2, align 8
  %64 = getelementptr inbounds %struct.renesas_usb3_ep, %struct.renesas_usb3_ep* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @usb3_enable_dma_irq(%struct.renesas_usb3* %62, i32 %65)
  ret void
}

declare dso_local %struct.renesas_usb3* @usb3_ep_to_usb3(%struct.renesas_usb3_ep*) #1

declare dso_local i32 @DMA_COM_PIPE_NO(i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @usb3_write(%struct.renesas_usb3*, i32, i32) #1

declare dso_local i32 @AXI_INT_PRDEN_CLR_STA(i32) #1

declare dso_local i32 @AXI_INT_PRDERR_STA(i32) #1

declare dso_local i32 @USB3_DMA_CH0_PRD_ADR(i32) #1

declare dso_local i32 @USB3_DMA_CH0_CON(i32) #1

declare dso_local i32 @usb3_enable_dma_irq(%struct.renesas_usb3*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
