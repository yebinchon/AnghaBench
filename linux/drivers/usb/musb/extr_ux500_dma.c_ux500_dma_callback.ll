; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/musb/extr_ux500_dma.c_ux500_dma_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/musb/extr_ux500_dma.c_ux500_dma_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_channel = type { %struct.ux500_dma_channel* }
%struct.ux500_dma_channel = type { i32, %struct.TYPE_2__, i32, %struct.musb_hw_ep* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.musb_hw_ep = type { i32, %struct.musb* }
%struct.musb = type { i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"DMA rx transfer done on hw_ep=%d\0A\00", align 1
@MUSB_DMA_STATUS_FREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @ux500_dma_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ux500_dma_callback(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.dma_channel*, align 8
  %4 = alloca %struct.ux500_dma_channel*, align 8
  %5 = alloca %struct.musb_hw_ep*, align 8
  %6 = alloca %struct.musb*, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.dma_channel*
  store %struct.dma_channel* %9, %struct.dma_channel** %3, align 8
  %10 = load %struct.dma_channel*, %struct.dma_channel** %3, align 8
  %11 = getelementptr inbounds %struct.dma_channel, %struct.dma_channel* %10, i32 0, i32 0
  %12 = load %struct.ux500_dma_channel*, %struct.ux500_dma_channel** %11, align 8
  store %struct.ux500_dma_channel* %12, %struct.ux500_dma_channel** %4, align 8
  %13 = load %struct.ux500_dma_channel*, %struct.ux500_dma_channel** %4, align 8
  %14 = getelementptr inbounds %struct.ux500_dma_channel, %struct.ux500_dma_channel* %13, i32 0, i32 3
  %15 = load %struct.musb_hw_ep*, %struct.musb_hw_ep** %14, align 8
  store %struct.musb_hw_ep* %15, %struct.musb_hw_ep** %5, align 8
  %16 = load %struct.musb_hw_ep*, %struct.musb_hw_ep** %5, align 8
  %17 = getelementptr inbounds %struct.musb_hw_ep, %struct.musb_hw_ep* %16, i32 0, i32 1
  %18 = load %struct.musb*, %struct.musb** %17, align 8
  store %struct.musb* %18, %struct.musb** %6, align 8
  %19 = load %struct.musb*, %struct.musb** %6, align 8
  %20 = getelementptr inbounds %struct.musb, %struct.musb* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.musb_hw_ep*, %struct.musb_hw_ep** %5, align 8
  %23 = getelementptr inbounds %struct.musb_hw_ep, %struct.musb_hw_ep* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @dev_dbg(i32 %21, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load %struct.musb*, %struct.musb** %6, align 8
  %27 = getelementptr inbounds %struct.musb, %struct.musb* %26, i32 0, i32 0
  %28 = load i64, i64* %7, align 8
  %29 = call i32 @spin_lock_irqsave(i32* %27, i64 %28)
  %30 = load %struct.ux500_dma_channel*, %struct.ux500_dma_channel** %4, align 8
  %31 = getelementptr inbounds %struct.ux500_dma_channel, %struct.ux500_dma_channel* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.ux500_dma_channel*, %struct.ux500_dma_channel** %4, align 8
  %34 = getelementptr inbounds %struct.ux500_dma_channel, %struct.ux500_dma_channel* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  store i32 %32, i32* %35, align 4
  %36 = load i32, i32* @MUSB_DMA_STATUS_FREE, align 4
  %37 = load %struct.ux500_dma_channel*, %struct.ux500_dma_channel** %4, align 8
  %38 = getelementptr inbounds %struct.ux500_dma_channel, %struct.ux500_dma_channel* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store i32 %36, i32* %39, align 4
  %40 = load %struct.musb*, %struct.musb** %6, align 8
  %41 = load %struct.musb_hw_ep*, %struct.musb_hw_ep** %5, align 8
  %42 = getelementptr inbounds %struct.musb_hw_ep, %struct.musb_hw_ep* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.ux500_dma_channel*, %struct.ux500_dma_channel** %4, align 8
  %45 = getelementptr inbounds %struct.ux500_dma_channel, %struct.ux500_dma_channel* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @musb_dma_completion(%struct.musb* %40, i32 %43, i32 %46)
  %48 = load %struct.musb*, %struct.musb** %6, align 8
  %49 = getelementptr inbounds %struct.musb, %struct.musb* %48, i32 0, i32 0
  %50 = load i64, i64* %7, align 8
  %51 = call i32 @spin_unlock_irqrestore(i32* %49, i64 %50)
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @musb_dma_completion(%struct.musb*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
