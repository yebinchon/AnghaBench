; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_net2280.c_queue_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_net2280.c_queue_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net2280_ep = type { i32, %struct.net2280_dma* }
%struct.net2280_dma = type { i32 }
%struct.net2280_request = type { i32, %struct.net2280_dma* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net2280_ep*, %struct.net2280_request*, i32)* @queue_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @queue_dma(%struct.net2280_ep* %0, %struct.net2280_request* %1, i32 %2) #0 {
  %4 = alloca %struct.net2280_ep*, align 8
  %5 = alloca %struct.net2280_request*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.net2280_dma*, align 8
  %8 = alloca i32, align 4
  store %struct.net2280_ep* %0, %struct.net2280_ep** %4, align 8
  store %struct.net2280_request* %1, %struct.net2280_request** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.net2280_ep*, %struct.net2280_ep** %4, align 8
  %10 = getelementptr inbounds %struct.net2280_ep, %struct.net2280_ep* %9, i32 0, i32 1
  %11 = load %struct.net2280_dma*, %struct.net2280_dma** %10, align 8
  store %struct.net2280_dma* %11, %struct.net2280_dma** %7, align 8
  %12 = load %struct.net2280_request*, %struct.net2280_request** %5, align 8
  %13 = getelementptr inbounds %struct.net2280_request, %struct.net2280_request* %12, i32 0, i32 1
  %14 = load %struct.net2280_dma*, %struct.net2280_dma** %13, align 8
  %15 = load %struct.net2280_ep*, %struct.net2280_ep** %4, align 8
  %16 = getelementptr inbounds %struct.net2280_ep, %struct.net2280_ep* %15, i32 0, i32 1
  store %struct.net2280_dma* %14, %struct.net2280_dma** %16, align 8
  %17 = load %struct.net2280_dma*, %struct.net2280_dma** %7, align 8
  %18 = load %struct.net2280_request*, %struct.net2280_request** %5, align 8
  %19 = getelementptr inbounds %struct.net2280_request, %struct.net2280_request* %18, i32 0, i32 1
  store %struct.net2280_dma* %17, %struct.net2280_dma** %19, align 8
  %20 = load %struct.net2280_ep*, %struct.net2280_ep** %4, align 8
  %21 = getelementptr inbounds %struct.net2280_ep, %struct.net2280_ep* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %8, align 4
  %23 = load %struct.net2280_request*, %struct.net2280_request** %5, align 8
  %24 = getelementptr inbounds %struct.net2280_request, %struct.net2280_request* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.net2280_ep*, %struct.net2280_ep** %4, align 8
  %27 = getelementptr inbounds %struct.net2280_ep, %struct.net2280_ep* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load i32, i32* %8, align 4
  %29 = load %struct.net2280_request*, %struct.net2280_request** %5, align 8
  %30 = getelementptr inbounds %struct.net2280_request, %struct.net2280_request* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load %struct.net2280_ep*, %struct.net2280_ep** %4, align 8
  %32 = getelementptr inbounds %struct.net2280_ep, %struct.net2280_ep* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @cpu_to_le32(i32 %33)
  %35 = load %struct.net2280_dma*, %struct.net2280_dma** %7, align 8
  %36 = getelementptr inbounds %struct.net2280_dma, %struct.net2280_dma* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load %struct.net2280_ep*, %struct.net2280_ep** %4, align 8
  %38 = load %struct.net2280_request*, %struct.net2280_request** %5, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @fill_dma_desc(%struct.net2280_ep* %37, %struct.net2280_request* %38, i32 %39)
  ret void
}

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @fill_dma_desc(%struct.net2280_ep*, %struct.net2280_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
