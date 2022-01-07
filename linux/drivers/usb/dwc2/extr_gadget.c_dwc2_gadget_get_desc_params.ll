; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_gadget.c_dwc2_gadget_get_desc_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_gadget.c_dwc2_gadget_get_desc_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc2_hsotg_ep = type { i32, i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@DEV_DMA_NBYTES_MASK = common dso_local global i32 0, align 4
@DEV_DMA_ISOC_TX_NBYTES_LIMIT = common dso_local global i32 0, align 4
@DEV_DMA_ISOC_TX_NBYTES_MASK = common dso_local global i32 0, align 4
@DEV_DMA_ISOC_RX_NBYTES_LIMIT = common dso_local global i32 0, align 4
@DEV_DMA_ISOC_RX_NBYTES_MASK = common dso_local global i32 0, align 4
@DEV_DMA_NBYTES_LIMIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dwc2_hsotg_ep*, i32*)* @dwc2_gadget_get_desc_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwc2_gadget_get_desc_params(%struct.dwc2_hsotg_ep* %0, i32* %1) #0 {
  %3 = alloca %struct.dwc2_hsotg_ep*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dwc2_hsotg_ep* %0, %struct.dwc2_hsotg_ep** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.dwc2_hsotg_ep*, %struct.dwc2_hsotg_ep** %3, align 8
  %9 = getelementptr inbounds %struct.dwc2_hsotg_ep, %struct.dwc2_hsotg_ep* %8, i32 0, i32 3
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %5, align 4
  %12 = load %struct.dwc2_hsotg_ep*, %struct.dwc2_hsotg_ep** %3, align 8
  %13 = getelementptr inbounds %struct.dwc2_hsotg_ep, %struct.dwc2_hsotg_ep* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %15 = load %struct.dwc2_hsotg_ep*, %struct.dwc2_hsotg_ep** %3, align 8
  %16 = getelementptr inbounds %struct.dwc2_hsotg_ep, %struct.dwc2_hsotg_ep* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* %5, align 4
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* @DEV_DMA_NBYTES_MASK, align 4
  %25 = load i32*, i32** %4, align 8
  store i32 %24, i32* %25, align 4
  br label %53

26:                                               ; preds = %19, %2
  %27 = load %struct.dwc2_hsotg_ep*, %struct.dwc2_hsotg_ep** %3, align 8
  %28 = getelementptr inbounds %struct.dwc2_hsotg_ep, %struct.dwc2_hsotg_ep* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %43

31:                                               ; preds = %26
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = load i32, i32* @DEV_DMA_ISOC_TX_NBYTES_LIMIT, align 4
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* @DEV_DMA_ISOC_TX_NBYTES_MASK, align 4
  %37 = load i32*, i32** %4, align 8
  store i32 %36, i32* %37, align 4
  br label %42

38:                                               ; preds = %31
  %39 = load i32, i32* @DEV_DMA_ISOC_RX_NBYTES_LIMIT, align 4
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* @DEV_DMA_ISOC_RX_NBYTES_MASK, align 4
  %41 = load i32*, i32** %4, align 8
  store i32 %40, i32* %41, align 4
  br label %42

42:                                               ; preds = %38, %34
  br label %52

43:                                               ; preds = %26
  %44 = load i32, i32* @DEV_DMA_NBYTES_LIMIT, align 4
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* @DEV_DMA_NBYTES_MASK, align 4
  %46 = load i32*, i32** %4, align 8
  store i32 %45, i32* %46, align 4
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* %5, align 4
  %49 = srem i32 %47, %48
  %50 = load i32, i32* %7, align 4
  %51 = sub nsw i32 %50, %49
  store i32 %51, i32* %7, align 4
  br label %52

52:                                               ; preds = %43, %42
  br label %53

53:                                               ; preds = %52, %22
  %54 = load i32, i32* %7, align 4
  ret i32 %54
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
