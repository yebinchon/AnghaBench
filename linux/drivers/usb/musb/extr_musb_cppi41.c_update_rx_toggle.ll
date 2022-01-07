; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/musb/extr_musb_cppi41.c_update_rx_toggle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/musb/extr_musb_cppi41.c_update_rx_toggle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cppi41_dma_channel = type { i32, %struct.musb_hw_ep*, i64 }
%struct.musb_hw_ep = type { i32, i32, %struct.musb* }
%struct.musb = type { i32 }

@MUSB_RXCSR = common dso_local global i32 0, align 4
@MUSB_RXCSR_H_DATATOGGLE = common dso_local global i32 0, align 4
@MUSB_RXCSR_H_WR_DATATOGGLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Restoring DATA1 toggle.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cppi41_dma_channel*)* @update_rx_toggle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_rx_toggle(%struct.cppi41_dma_channel* %0) #0 {
  %2 = alloca %struct.cppi41_dma_channel*, align 8
  %3 = alloca %struct.musb_hw_ep*, align 8
  %4 = alloca %struct.musb*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.cppi41_dma_channel* %0, %struct.cppi41_dma_channel** %2, align 8
  %7 = load %struct.cppi41_dma_channel*, %struct.cppi41_dma_channel** %2, align 8
  %8 = getelementptr inbounds %struct.cppi41_dma_channel, %struct.cppi41_dma_channel* %7, i32 0, i32 1
  %9 = load %struct.musb_hw_ep*, %struct.musb_hw_ep** %8, align 8
  store %struct.musb_hw_ep* %9, %struct.musb_hw_ep** %3, align 8
  %10 = load %struct.musb_hw_ep*, %struct.musb_hw_ep** %3, align 8
  %11 = getelementptr inbounds %struct.musb_hw_ep, %struct.musb_hw_ep* %10, i32 0, i32 2
  %12 = load %struct.musb*, %struct.musb** %11, align 8
  store %struct.musb* %12, %struct.musb** %4, align 8
  %13 = load %struct.cppi41_dma_channel*, %struct.cppi41_dma_channel** %2, align 8
  %14 = getelementptr inbounds %struct.cppi41_dma_channel, %struct.cppi41_dma_channel* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %70

18:                                               ; preds = %1
  %19 = load %struct.musb*, %struct.musb** %4, align 8
  %20 = call i32 @is_host_active(%struct.musb* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  br label %70

23:                                               ; preds = %18
  %24 = load %struct.musb*, %struct.musb** %4, align 8
  %25 = getelementptr inbounds %struct.musb, %struct.musb* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.musb_hw_ep*, %struct.musb_hw_ep** %3, align 8
  %28 = getelementptr inbounds %struct.musb_hw_ep, %struct.musb_hw_ep* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @musb_ep_select(i32 %26, i32 %29)
  %31 = load %struct.musb_hw_ep*, %struct.musb_hw_ep** %3, align 8
  %32 = getelementptr inbounds %struct.musb_hw_ep, %struct.musb_hw_ep* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @MUSB_RXCSR, align 4
  %35 = call i32 @musb_readw(i32 %33, i32 %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @MUSB_RXCSR_H_DATATOGGLE, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i32 1, i32 0
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %66, label %44

44:                                               ; preds = %23
  %45 = load i32, i32* %6, align 4
  %46 = load %struct.cppi41_dma_channel*, %struct.cppi41_dma_channel** %2, align 8
  %47 = getelementptr inbounds %struct.cppi41_dma_channel, %struct.cppi41_dma_channel* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp eq i32 %45, %48
  br i1 %49, label %50, label %66

50:                                               ; preds = %44
  %51 = load i32, i32* @MUSB_RXCSR_H_DATATOGGLE, align 4
  %52 = load i32, i32* @MUSB_RXCSR_H_WR_DATATOGGLE, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* %5, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %5, align 4
  %56 = load %struct.cppi41_dma_channel*, %struct.cppi41_dma_channel** %2, align 8
  %57 = getelementptr inbounds %struct.cppi41_dma_channel, %struct.cppi41_dma_channel* %56, i32 0, i32 1
  %58 = load %struct.musb_hw_ep*, %struct.musb_hw_ep** %57, align 8
  %59 = getelementptr inbounds %struct.musb_hw_ep, %struct.musb_hw_ep* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @MUSB_RXCSR, align 4
  %62 = load i32, i32* %5, align 4
  %63 = call i32 @musb_writew(i32 %60, i32 %61, i32 %62)
  %64 = load %struct.musb*, %struct.musb** %4, align 8
  %65 = call i32 @musb_dbg(%struct.musb* %64, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %66

66:                                               ; preds = %50, %44, %23
  %67 = load i32, i32* %6, align 4
  %68 = load %struct.cppi41_dma_channel*, %struct.cppi41_dma_channel** %2, align 8
  %69 = getelementptr inbounds %struct.cppi41_dma_channel, %struct.cppi41_dma_channel* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  br label %70

70:                                               ; preds = %66, %22, %17
  ret void
}

declare dso_local i32 @is_host_active(%struct.musb*) #1

declare dso_local i32 @musb_ep_select(i32, i32) #1

declare dso_local i32 @musb_readw(i32, i32) #1

declare dso_local i32 @musb_writew(i32, i32, i32) #1

declare dso_local i32 @musb_dbg(%struct.musb*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
