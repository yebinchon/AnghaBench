; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_net2280.c_dma_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_net2280.c_dma_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net2280_ep = type { i32 }
%struct.net2280_request = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@DMA_BYTE_COUNT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net2280_ep*, %struct.net2280_request*, i32, i32)* @dma_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dma_done(%struct.net2280_ep* %0, %struct.net2280_request* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.net2280_ep*, align 8
  %6 = alloca %struct.net2280_request*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.net2280_ep* %0, %struct.net2280_ep** %5, align 8
  store %struct.net2280_request* %1, %struct.net2280_request** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load %struct.net2280_request*, %struct.net2280_request** %6, align 8
  %10 = getelementptr inbounds %struct.net2280_request, %struct.net2280_request* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i32, i32* @DMA_BYTE_COUNT_MASK, align 4
  %14 = load i32, i32* %7, align 4
  %15 = and i32 %13, %14
  %16 = sext i32 %15 to i64
  %17 = sub nsw i64 %12, %16
  %18 = load %struct.net2280_request*, %struct.net2280_request** %6, align 8
  %19 = getelementptr inbounds %struct.net2280_request, %struct.net2280_request* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  store i64 %17, i64* %20, align 8
  %21 = load %struct.net2280_ep*, %struct.net2280_ep** %5, align 8
  %22 = load %struct.net2280_request*, %struct.net2280_request** %6, align 8
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @done(%struct.net2280_ep* %21, %struct.net2280_request* %22, i32 %23)
  ret void
}

declare dso_local i32 @done(%struct.net2280_ep*, %struct.net2280_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
