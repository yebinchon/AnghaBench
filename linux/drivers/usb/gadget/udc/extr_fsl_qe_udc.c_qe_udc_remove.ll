; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_fsl_qe_udc.c_qe_udc_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_fsl_qe_udc.c_qe_udc_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.qe_udc = type { i32, i32, i32, %struct.TYPE_6__, %struct.qe_ep*, i8*, i64, i32* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.qe_ep = type { i32, i32, i8*, i64, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }

@done = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@DMA_ADDR_INVALID = common dso_local global i8* null, align 8
@USB_CRC_SIZE = common dso_local global i32 0, align 4
@USB_BDRING_LEN = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @qe_udc_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qe_udc_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.qe_udc*, align 8
  %4 = alloca %struct.qe_ep*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %7 = call %struct.qe_udc* @platform_get_drvdata(%struct.platform_device* %6)
  store %struct.qe_udc* %7, %struct.qe_udc** %3, align 8
  %8 = load i32, i32* @done, align 4
  %9 = call i32 @DECLARE_COMPLETION_ONSTACK(i32 %8)
  %10 = load %struct.qe_udc*, %struct.qe_udc** %3, align 8
  %11 = getelementptr inbounds %struct.qe_udc, %struct.qe_udc* %10, i32 0, i32 3
  %12 = call i32 @usb_del_gadget_udc(%struct.TYPE_6__* %11)
  %13 = load %struct.qe_udc*, %struct.qe_udc** %3, align 8
  %14 = getelementptr inbounds %struct.qe_udc, %struct.qe_udc* %13, i32 0, i32 7
  store i32* @done, i32** %14, align 8
  %15 = load %struct.qe_udc*, %struct.qe_udc** %3, align 8
  %16 = getelementptr inbounds %struct.qe_udc, %struct.qe_udc* %15, i32 0, i32 1
  %17 = call i32 @tasklet_disable(i32* %16)
  %18 = load %struct.qe_udc*, %struct.qe_udc** %3, align 8
  %19 = getelementptr inbounds %struct.qe_udc, %struct.qe_udc* %18, i32 0, i32 6
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %36

22:                                               ; preds = %1
  %23 = load %struct.qe_udc*, %struct.qe_udc** %3, align 8
  %24 = getelementptr inbounds %struct.qe_udc, %struct.qe_udc* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.qe_udc*, %struct.qe_udc** %3, align 8
  %29 = getelementptr inbounds %struct.qe_udc, %struct.qe_udc* %28, i32 0, i32 5
  %30 = load i8*, i8** %29, align 8
  %31 = load i32, i32* @DMA_TO_DEVICE, align 4
  %32 = call i32 @dma_unmap_single(i32 %27, i8* %30, i32 256, i32 %31)
  %33 = load i8*, i8** @DMA_ADDR_INVALID, align 8
  %34 = load %struct.qe_udc*, %struct.qe_udc** %3, align 8
  %35 = getelementptr inbounds %struct.qe_udc, %struct.qe_udc* %34, i32 0, i32 5
  store i8* %33, i8** %35, align 8
  br label %47

36:                                               ; preds = %1
  %37 = load %struct.qe_udc*, %struct.qe_udc** %3, align 8
  %38 = getelementptr inbounds %struct.qe_udc, %struct.qe_udc* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.qe_udc*, %struct.qe_udc** %3, align 8
  %43 = getelementptr inbounds %struct.qe_udc, %struct.qe_udc* %42, i32 0, i32 5
  %44 = load i8*, i8** %43, align 8
  %45 = load i32, i32* @DMA_TO_DEVICE, align 4
  %46 = call i32 @dma_sync_single_for_cpu(i32 %41, i8* %44, i32 256, i32 %45)
  br label %47

47:                                               ; preds = %36, %22
  %48 = load %struct.qe_udc*, %struct.qe_udc** %3, align 8
  %49 = getelementptr inbounds %struct.qe_udc, %struct.qe_udc* %48, i32 0, i32 4
  %50 = load %struct.qe_ep*, %struct.qe_ep** %49, align 8
  %51 = getelementptr inbounds %struct.qe_ep, %struct.qe_ep* %50, i64 0
  store %struct.qe_ep* %51, %struct.qe_ep** %4, align 8
  %52 = load %struct.qe_ep*, %struct.qe_ep** %4, align 8
  %53 = getelementptr inbounds %struct.qe_ep, %struct.qe_ep* %52, i32 0, i32 6
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @cpm_muram_offset(i32 %54)
  %56 = call i32 @cpm_muram_free(i32 %55)
  %57 = load %struct.qe_ep*, %struct.qe_ep** %4, align 8
  %58 = getelementptr inbounds %struct.qe_ep, %struct.qe_ep* %57, i32 0, i32 5
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @USB_CRC_SIZE, align 4
  %62 = add nsw i32 %60, %61
  %63 = add nsw i32 %62, 2
  %64 = load i32, i32* @USB_BDRING_LEN, align 4
  %65 = add nsw i32 %64, 1
  %66 = mul nsw i32 %63, %65
  store i32 %66, i32* %5, align 4
  %67 = load %struct.qe_ep*, %struct.qe_ep** %4, align 8
  %68 = getelementptr inbounds %struct.qe_ep, %struct.qe_ep* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @kfree(i32 %69)
  %71 = load %struct.qe_ep*, %struct.qe_ep** %4, align 8
  %72 = getelementptr inbounds %struct.qe_ep, %struct.qe_ep* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %90

75:                                               ; preds = %47
  %76 = load %struct.qe_udc*, %struct.qe_udc** %3, align 8
  %77 = getelementptr inbounds %struct.qe_udc, %struct.qe_udc* %76, i32 0, i32 3
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.qe_ep*, %struct.qe_ep** %4, align 8
  %82 = getelementptr inbounds %struct.qe_ep, %struct.qe_ep* %81, i32 0, i32 2
  %83 = load i8*, i8** %82, align 8
  %84 = load i32, i32* %5, align 4
  %85 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %86 = call i32 @dma_unmap_single(i32 %80, i8* %83, i32 %84, i32 %85)
  %87 = load i8*, i8** @DMA_ADDR_INVALID, align 8
  %88 = load %struct.qe_ep*, %struct.qe_ep** %4, align 8
  %89 = getelementptr inbounds %struct.qe_ep, %struct.qe_ep* %88, i32 0, i32 2
  store i8* %87, i8** %89, align 8
  br label %102

90:                                               ; preds = %47
  %91 = load %struct.qe_udc*, %struct.qe_udc** %3, align 8
  %92 = getelementptr inbounds %struct.qe_udc, %struct.qe_udc* %91, i32 0, i32 3
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.qe_ep*, %struct.qe_ep** %4, align 8
  %97 = getelementptr inbounds %struct.qe_ep, %struct.qe_ep* %96, i32 0, i32 2
  %98 = load i8*, i8** %97, align 8
  %99 = load i32, i32* %5, align 4
  %100 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %101 = call i32 @dma_sync_single_for_cpu(i32 %95, i8* %98, i32 %99, i32 %100)
  br label %102

102:                                              ; preds = %90, %75
  %103 = load %struct.qe_ep*, %struct.qe_ep** %4, align 8
  %104 = getelementptr inbounds %struct.qe_ep, %struct.qe_ep* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @kfree(i32 %105)
  %107 = load %struct.qe_ep*, %struct.qe_ep** %4, align 8
  %108 = getelementptr inbounds %struct.qe_ep, %struct.qe_ep* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @kfree(i32 %109)
  %111 = load %struct.qe_udc*, %struct.qe_udc** %3, align 8
  %112 = getelementptr inbounds %struct.qe_udc, %struct.qe_udc* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.qe_udc*, %struct.qe_udc** %3, align 8
  %115 = call i32 @free_irq(i32 %113, %struct.qe_udc* %114)
  %116 = load %struct.qe_udc*, %struct.qe_udc** %3, align 8
  %117 = getelementptr inbounds %struct.qe_udc, %struct.qe_udc* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @irq_dispose_mapping(i32 %118)
  %120 = load %struct.qe_udc*, %struct.qe_udc** %3, align 8
  %121 = getelementptr inbounds %struct.qe_udc, %struct.qe_udc* %120, i32 0, i32 1
  %122 = call i32 @tasklet_kill(i32* %121)
  %123 = load %struct.qe_udc*, %struct.qe_udc** %3, align 8
  %124 = getelementptr inbounds %struct.qe_udc, %struct.qe_udc* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @iounmap(i32 %125)
  %127 = call i32 @wait_for_completion(i32* @done)
  ret i32 0
}

declare dso_local %struct.qe_udc* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @DECLARE_COMPLETION_ONSTACK(i32) #1

declare dso_local i32 @usb_del_gadget_udc(%struct.TYPE_6__*) #1

declare dso_local i32 @tasklet_disable(i32*) #1

declare dso_local i32 @dma_unmap_single(i32, i8*, i32, i32) #1

declare dso_local i32 @dma_sync_single_for_cpu(i32, i8*, i32, i32) #1

declare dso_local i32 @cpm_muram_free(i32) #1

declare dso_local i32 @cpm_muram_offset(i32) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @free_irq(i32, %struct.qe_udc*) #1

declare dso_local i32 @irq_dispose_mapping(i32) #1

declare dso_local i32 @tasklet_kill(i32*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @wait_for_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
