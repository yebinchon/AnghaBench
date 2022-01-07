; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_renesas_usb3.c_usb3_dma_update_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_renesas_usb3.c_usb3_dma_update_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.renesas_usb3_ep = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.renesas_usb3_prd* }
%struct.renesas_usb3_prd = type { i32 }
%struct.renesas_usb3_request = type { %struct.usb_request }
%struct.usb_request = type { i32, i32 }

@USB3_PRD1_D = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@USB3_PRD1_E = common dso_local global i32 0, align 4
@USB3_DMA_MAX_XFER_SIZE = common dso_local global i32 0, align 4
@USB3_PRD1_SIZE_MASK = common dso_local global i32 0, align 4
@USB3_DMA_NUM_PRD_ENTRIES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.renesas_usb3_ep*, %struct.renesas_usb3_request*)* @usb3_dma_update_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb3_dma_update_status(%struct.renesas_usb3_ep* %0, %struct.renesas_usb3_request* %1) #0 {
  %3 = alloca %struct.renesas_usb3_ep*, align 8
  %4 = alloca %struct.renesas_usb3_request*, align 8
  %5 = alloca %struct.renesas_usb3_prd*, align 8
  %6 = alloca %struct.usb_request*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.renesas_usb3_ep* %0, %struct.renesas_usb3_ep** %3, align 8
  store %struct.renesas_usb3_request* %1, %struct.renesas_usb3_request** %4, align 8
  %11 = load %struct.renesas_usb3_ep*, %struct.renesas_usb3_ep** %3, align 8
  %12 = getelementptr inbounds %struct.renesas_usb3_ep, %struct.renesas_usb3_ep* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.renesas_usb3_prd*, %struct.renesas_usb3_prd** %14, align 8
  store %struct.renesas_usb3_prd* %15, %struct.renesas_usb3_prd** %5, align 8
  %16 = load %struct.renesas_usb3_request*, %struct.renesas_usb3_request** %4, align 8
  %17 = getelementptr inbounds %struct.renesas_usb3_request, %struct.renesas_usb3_request* %16, i32 0, i32 0
  store %struct.usb_request* %17, %struct.usb_request** %6, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %18 = call i32 (...) @rmb()
  br label %19

19:                                               ; preds = %74, %2
  %20 = load %struct.renesas_usb3_prd*, %struct.renesas_usb3_prd** %5, align 8
  %21 = getelementptr inbounds %struct.renesas_usb3_prd, %struct.renesas_usb3_prd* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @USB3_PRD1_D, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = load i32, i32* @EIO, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %10, align 4
  br label %29

29:                                               ; preds = %26, %19
  %30 = load %struct.renesas_usb3_prd*, %struct.renesas_usb3_prd** %5, align 8
  %31 = getelementptr inbounds %struct.renesas_usb3_prd, %struct.renesas_usb3_prd* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @USB3_PRD1_E, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %29
  %37 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %38 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @USB3_DMA_MAX_XFER_SIZE, align 4
  %41 = srem i32 %39, %40
  store i32 %41, i32* %8, align 4
  br label %44

42:                                               ; preds = %29
  %43 = load i32, i32* @USB3_DMA_MAX_XFER_SIZE, align 4
  store i32 %43, i32* %8, align 4
  br label %44

44:                                               ; preds = %42, %36
  %45 = load %struct.renesas_usb3_prd*, %struct.renesas_usb3_prd** %5, align 8
  %46 = getelementptr inbounds %struct.renesas_usb3_prd, %struct.renesas_usb3_prd* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @USB3_PRD1_SIZE_MASK, align 4
  %49 = and i32 %47, %48
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %7, align 4
  %52 = sub nsw i32 %50, %51
  %53 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %54 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, %52
  store i32 %56, i32* %54, align 4
  %57 = load %struct.renesas_usb3_prd*, %struct.renesas_usb3_prd** %5, align 8
  %58 = getelementptr inbounds %struct.renesas_usb3_prd, %struct.renesas_usb3_prd* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @USB3_PRD1_E, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %68, label %63

63:                                               ; preds = %44
  %64 = load i32, i32* %9, align 4
  %65 = add nsw i32 %64, 1
  %66 = load i32, i32* @USB3_DMA_NUM_PRD_ENTRIES, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %63, %44
  br label %75

69:                                               ; preds = %63
  %70 = load %struct.renesas_usb3_prd*, %struct.renesas_usb3_prd** %5, align 8
  %71 = getelementptr inbounds %struct.renesas_usb3_prd, %struct.renesas_usb3_prd* %70, i32 1
  store %struct.renesas_usb3_prd* %71, %struct.renesas_usb3_prd** %5, align 8
  %72 = load i32, i32* %9, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %9, align 4
  br label %74

74:                                               ; preds = %69
  br i1 true, label %19, label %75

75:                                               ; preds = %74, %68
  %76 = load i32, i32* %10, align 4
  ret i32 %76
}

declare dso_local i32 @rmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
