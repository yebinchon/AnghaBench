; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd_ddma.c_dwc2_desc_list_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd_ddma.c_dwc2_desc_list_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc2_hsotg = type { i32, %struct.kmem_cache*, %struct.kmem_cache* }
%struct.kmem_cache = type { i32 }
%struct.dwc2_qh = type { i64, i64, i32*, i32*, i32, i32 }

@USB_ENDPOINT_XFER_ISOC = common dso_local global i64 0, align 8
@USB_SPEED_HIGH = common dso_local global i64 0, align 8
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dwc2_hsotg*, %struct.dwc2_qh*)* @dwc2_desc_list_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwc2_desc_list_free(%struct.dwc2_hsotg* %0, %struct.dwc2_qh* %1) #0 {
  %3 = alloca %struct.dwc2_hsotg*, align 8
  %4 = alloca %struct.dwc2_qh*, align 8
  %5 = alloca %struct.kmem_cache*, align 8
  store %struct.dwc2_hsotg* %0, %struct.dwc2_hsotg** %3, align 8
  store %struct.dwc2_qh* %1, %struct.dwc2_qh** %4, align 8
  %6 = load %struct.dwc2_qh*, %struct.dwc2_qh** %4, align 8
  %7 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @USB_ENDPOINT_XFER_ISOC, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %21

11:                                               ; preds = %2
  %12 = load %struct.dwc2_qh*, %struct.dwc2_qh** %4, align 8
  %13 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @USB_SPEED_HIGH, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %11
  %18 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %19 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %18, i32 0, i32 2
  %20 = load %struct.kmem_cache*, %struct.kmem_cache** %19, align 8
  store %struct.kmem_cache* %20, %struct.kmem_cache** %5, align 8
  br label %25

21:                                               ; preds = %11, %2
  %22 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %23 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %22, i32 0, i32 1
  %24 = load %struct.kmem_cache*, %struct.kmem_cache** %23, align 8
  store %struct.kmem_cache* %24, %struct.kmem_cache** %5, align 8
  br label %25

25:                                               ; preds = %21, %17
  %26 = load %struct.dwc2_qh*, %struct.dwc2_qh** %4, align 8
  %27 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %26, i32 0, i32 3
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %49

30:                                               ; preds = %25
  %31 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %32 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.dwc2_qh*, %struct.dwc2_qh** %4, align 8
  %35 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.dwc2_qh*, %struct.dwc2_qh** %4, align 8
  %38 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %41 = call i32 @dma_unmap_single(i32 %33, i32 %36, i32 %39, i32 %40)
  %42 = load %struct.kmem_cache*, %struct.kmem_cache** %5, align 8
  %43 = load %struct.dwc2_qh*, %struct.dwc2_qh** %4, align 8
  %44 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %43, i32 0, i32 3
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @kmem_cache_free(%struct.kmem_cache* %42, i32* %45)
  %47 = load %struct.dwc2_qh*, %struct.dwc2_qh** %4, align 8
  %48 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %47, i32 0, i32 3
  store i32* null, i32** %48, align 8
  br label %49

49:                                               ; preds = %30, %25
  %50 = load %struct.dwc2_qh*, %struct.dwc2_qh** %4, align 8
  %51 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  %53 = call i32 @kfree(i32* %52)
  %54 = load %struct.dwc2_qh*, %struct.dwc2_qh** %4, align 8
  %55 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %54, i32 0, i32 2
  store i32* null, i32** %55, align 8
  ret void
}

declare dso_local i32 @dma_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @kmem_cache_free(%struct.kmem_cache*, i32*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
