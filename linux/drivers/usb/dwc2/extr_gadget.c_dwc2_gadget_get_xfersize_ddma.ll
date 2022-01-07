; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_gadget.c_dwc2_gadget_get_xfersize_ddma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_gadget.c_dwc2_gadget_get_xfersize_ddma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc2_hsotg_ep = type { i32, %struct.dwc2_dma_desc*, %struct.dwc2_hsotg* }
%struct.dwc2_dma_desc = type { i32 }
%struct.dwc2_hsotg = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@DEV_DMA_NBYTES_MASK = common dso_local global i32 0, align 4
@DEV_DMA_STS_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"descriptor %d closed with %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dwc2_hsotg_ep*)* @dwc2_gadget_get_xfersize_ddma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwc2_gadget_get_xfersize_ddma(%struct.dwc2_hsotg_ep* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dwc2_hsotg_ep*, align 8
  %4 = alloca %struct.dwc2_hsotg*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dwc2_dma_desc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dwc2_hsotg_ep* %0, %struct.dwc2_hsotg_ep** %3, align 8
  %9 = load %struct.dwc2_hsotg_ep*, %struct.dwc2_hsotg_ep** %3, align 8
  %10 = getelementptr inbounds %struct.dwc2_hsotg_ep, %struct.dwc2_hsotg_ep* %9, i32 0, i32 2
  %11 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %10, align 8
  store %struct.dwc2_hsotg* %11, %struct.dwc2_hsotg** %4, align 8
  store i32 0, i32* %5, align 4
  %12 = load %struct.dwc2_hsotg_ep*, %struct.dwc2_hsotg_ep** %3, align 8
  %13 = getelementptr inbounds %struct.dwc2_hsotg_ep, %struct.dwc2_hsotg_ep* %12, i32 0, i32 1
  %14 = load %struct.dwc2_dma_desc*, %struct.dwc2_dma_desc** %13, align 8
  store %struct.dwc2_dma_desc* %14, %struct.dwc2_dma_desc** %6, align 8
  %15 = load %struct.dwc2_dma_desc*, %struct.dwc2_dma_desc** %6, align 8
  %16 = icmp ne %struct.dwc2_dma_desc* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %57

20:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  br label %21

21:                                               ; preds = %52, %20
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.dwc2_hsotg_ep*, %struct.dwc2_hsotg_ep** %3, align 8
  %24 = getelementptr inbounds %struct.dwc2_hsotg_ep, %struct.dwc2_hsotg_ep* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %55

27:                                               ; preds = %21
  %28 = load %struct.dwc2_dma_desc*, %struct.dwc2_dma_desc** %6, align 8
  %29 = getelementptr inbounds %struct.dwc2_dma_desc, %struct.dwc2_dma_desc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @DEV_DMA_NBYTES_MASK, align 4
  %33 = and i32 %31, %32
  %34 = load i32, i32* %5, align 4
  %35 = add i32 %34, %33
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @DEV_DMA_STS_MASK, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %27
  %41 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %42 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @DEV_DMA_STS_MASK, align 4
  %47 = and i32 %45, %46
  %48 = call i32 @dev_err(i32 %43, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %47)
  br label %49

49:                                               ; preds = %40, %27
  %50 = load %struct.dwc2_dma_desc*, %struct.dwc2_dma_desc** %6, align 8
  %51 = getelementptr inbounds %struct.dwc2_dma_desc, %struct.dwc2_dma_desc* %50, i32 1
  store %struct.dwc2_dma_desc* %51, %struct.dwc2_dma_desc** %6, align 8
  br label %52

52:                                               ; preds = %49
  %53 = load i32, i32* %7, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %7, align 4
  br label %21

55:                                               ; preds = %21
  %56 = load i32, i32* %5, align 4
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %55, %17
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
