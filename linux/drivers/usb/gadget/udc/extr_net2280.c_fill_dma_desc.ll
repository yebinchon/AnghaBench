; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_net2280.c_fill_dma_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_net2280.c_fill_dma_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net2280_ep = type { %struct.TYPE_5__*, %struct.TYPE_4__, i64 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.net2280_request = type { i32, %struct.TYPE_6__, %struct.net2280_dma* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.net2280_dma = type { i8*, i8* }

@DMA_DIRECTION = common dso_local global i32 0, align 4
@PLX_2280 = common dso_local global i32 0, align 4
@END_OF_CHAIN = common dso_local global i32 0, align 4
@VALID_BIT = common dso_local global i32 0, align 4
@DMA_DONE_INTERRUPT_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net2280_ep*, %struct.net2280_request*, i32)* @fill_dma_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill_dma_desc(%struct.net2280_ep* %0, %struct.net2280_request* %1, i32 %2) #0 {
  %4 = alloca %struct.net2280_ep*, align 8
  %5 = alloca %struct.net2280_request*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.net2280_dma*, align 8
  %8 = alloca i32, align 4
  store %struct.net2280_ep* %0, %struct.net2280_ep** %4, align 8
  store %struct.net2280_request* %1, %struct.net2280_request** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.net2280_request*, %struct.net2280_request** %5, align 8
  %10 = getelementptr inbounds %struct.net2280_request, %struct.net2280_request* %9, i32 0, i32 2
  %11 = load %struct.net2280_dma*, %struct.net2280_dma** %10, align 8
  store %struct.net2280_dma* %11, %struct.net2280_dma** %7, align 8
  %12 = load %struct.net2280_request*, %struct.net2280_request** %5, align 8
  %13 = getelementptr inbounds %struct.net2280_request, %struct.net2280_request* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %8, align 4
  %16 = load %struct.net2280_ep*, %struct.net2280_ep** %4, align 8
  %17 = getelementptr inbounds %struct.net2280_ep, %struct.net2280_ep* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %3
  %21 = load i32, i32* @DMA_DIRECTION, align 4
  %22 = call i32 @BIT(i32 %21)
  %23 = load i32, i32* %8, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %8, align 4
  br label %25

25:                                               ; preds = %20, %3
  %26 = load %struct.net2280_ep*, %struct.net2280_ep** %4, align 8
  %27 = getelementptr inbounds %struct.net2280_ep, %struct.net2280_ep* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %38, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* %8, align 4
  %32 = load %struct.net2280_ep*, %struct.net2280_ep** %4, align 8
  %33 = getelementptr inbounds %struct.net2280_ep, %struct.net2280_ep* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = srem i32 %31, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %47, label %38

38:                                               ; preds = %30, %25
  %39 = load %struct.net2280_ep*, %struct.net2280_ep** %4, align 8
  %40 = getelementptr inbounds %struct.net2280_ep, %struct.net2280_ep* %39, i32 0, i32 0
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @PLX_2280, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %38, %30
  %48 = load i32, i32* @END_OF_CHAIN, align 4
  %49 = call i32 @BIT(i32 %48)
  %50 = load i32, i32* %8, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %8, align 4
  br label %52

52:                                               ; preds = %47, %38
  %53 = load i32, i32* %6, align 4
  %54 = load %struct.net2280_request*, %struct.net2280_request** %5, align 8
  %55 = getelementptr inbounds %struct.net2280_request, %struct.net2280_request* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %52
  %59 = load i32, i32* @VALID_BIT, align 4
  %60 = call i32 @BIT(i32 %59)
  %61 = load i32, i32* %8, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %8, align 4
  br label %63

63:                                               ; preds = %58, %52
  %64 = load i32, i32* @DMA_DONE_INTERRUPT_ENABLE, align 4
  %65 = call i32 @BIT(i32 %64)
  %66 = load i32, i32* %8, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %8, align 4
  %68 = load %struct.net2280_request*, %struct.net2280_request** %5, align 8
  %69 = getelementptr inbounds %struct.net2280_request, %struct.net2280_request* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i8* @cpu_to_le32(i32 %71)
  %73 = load %struct.net2280_dma*, %struct.net2280_dma** %7, align 8
  %74 = getelementptr inbounds %struct.net2280_dma, %struct.net2280_dma* %73, i32 0, i32 1
  store i8* %72, i8** %74, align 8
  %75 = call i32 (...) @wmb()
  %76 = load i32, i32* %8, align 4
  %77 = call i8* @cpu_to_le32(i32 %76)
  %78 = load %struct.net2280_dma*, %struct.net2280_dma** %7, align 8
  %79 = getelementptr inbounds %struct.net2280_dma, %struct.net2280_dma* %78, i32 0, i32 0
  store i8* %77, i8** %79, align 8
  ret void
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
