; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_gadget.c_dwc2_gadget_get_chain_limit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_gadget.c_dwc2_gadget_get_chain_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc2_hsotg_ep = type { i32, i64 }

@DEV_DMA_ISOC_TX_NBYTES_LIMIT = common dso_local global i32 0, align 4
@DEV_DMA_ISOC_RX_NBYTES_LIMIT = common dso_local global i32 0, align 4
@MAX_DMA_DESC_NUM_HS_ISOC = common dso_local global i32 0, align 4
@DEV_DMA_NBYTES_LIMIT = common dso_local global i32 0, align 4
@MAX_DMA_DESC_NUM_GENERIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dwc2_hsotg_ep*)* @dwc2_gadget_get_chain_limit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwc2_gadget_get_chain_limit(%struct.dwc2_hsotg_ep* %0) #0 {
  %2 = alloca %struct.dwc2_hsotg_ep*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.dwc2_hsotg_ep* %0, %struct.dwc2_hsotg_ep** %2, align 8
  %5 = load %struct.dwc2_hsotg_ep*, %struct.dwc2_hsotg_ep** %2, align 8
  %6 = getelementptr inbounds %struct.dwc2_hsotg_ep, %struct.dwc2_hsotg_ep* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %23

10:                                               ; preds = %1
  %11 = load %struct.dwc2_hsotg_ep*, %struct.dwc2_hsotg_ep** %2, align 8
  %12 = getelementptr inbounds %struct.dwc2_hsotg_ep, %struct.dwc2_hsotg_ep* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = load i32, i32* @DEV_DMA_ISOC_TX_NBYTES_LIMIT, align 4
  br label %19

17:                                               ; preds = %10
  %18 = load i32, i32* @DEV_DMA_ISOC_RX_NBYTES_LIMIT, align 4
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi i32 [ %16, %15 ], [ %18, %17 ]
  %21 = load i32, i32* @MAX_DMA_DESC_NUM_HS_ISOC, align 4
  %22 = mul i32 %20, %21
  store i32 %22, i32* %4, align 4
  br label %27

23:                                               ; preds = %1
  %24 = load i32, i32* @DEV_DMA_NBYTES_LIMIT, align 4
  %25 = load i32, i32* @MAX_DMA_DESC_NUM_GENERIC, align 4
  %26 = mul i32 %24, %25
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %23, %19
  %28 = load i32, i32* %4, align 4
  ret i32 %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
