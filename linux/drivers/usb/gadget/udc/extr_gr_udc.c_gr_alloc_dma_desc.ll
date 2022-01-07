; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_gr_udc.c_gr_alloc_dma_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_gr_udc.c_gr_alloc_dma_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gr_dma_desc = type { i32 }
%struct.gr_ep = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"Could not allocate from DMA pool\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.gr_dma_desc* (%struct.gr_ep*, i32)* @gr_alloc_dma_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.gr_dma_desc* @gr_alloc_dma_desc(%struct.gr_ep* %0, i32 %1) #0 {
  %3 = alloca %struct.gr_dma_desc*, align 8
  %4 = alloca %struct.gr_ep*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.gr_dma_desc*, align 8
  store %struct.gr_ep* %0, %struct.gr_ep** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.gr_ep*, %struct.gr_ep** %4, align 8
  %9 = getelementptr inbounds %struct.gr_ep, %struct.gr_ep* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call %struct.gr_dma_desc* @dma_pool_zalloc(i32 %12, i32 %13, i32* %6)
  store %struct.gr_dma_desc* %14, %struct.gr_dma_desc** %7, align 8
  %15 = load %struct.gr_dma_desc*, %struct.gr_dma_desc** %7, align 8
  %16 = icmp ne %struct.gr_dma_desc* %15, null
  br i1 %16, label %24, label %17

17:                                               ; preds = %2
  %18 = load %struct.gr_ep*, %struct.gr_ep** %4, align 8
  %19 = getelementptr inbounds %struct.gr_ep, %struct.gr_ep* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @dev_err(i32 %22, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  store %struct.gr_dma_desc* null, %struct.gr_dma_desc** %3, align 8
  br label %29

24:                                               ; preds = %2
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.gr_dma_desc*, %struct.gr_dma_desc** %7, align 8
  %27 = getelementptr inbounds %struct.gr_dma_desc, %struct.gr_dma_desc* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load %struct.gr_dma_desc*, %struct.gr_dma_desc** %7, align 8
  store %struct.gr_dma_desc* %28, %struct.gr_dma_desc** %3, align 8
  br label %29

29:                                               ; preds = %24, %17
  %30 = load %struct.gr_dma_desc*, %struct.gr_dma_desc** %3, align 8
  ret %struct.gr_dma_desc* %30
}

declare dso_local %struct.gr_dma_desc* @dma_pool_zalloc(i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
