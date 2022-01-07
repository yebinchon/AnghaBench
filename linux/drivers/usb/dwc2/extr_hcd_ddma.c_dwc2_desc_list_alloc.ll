; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd_ddma.c_dwc2_desc_list_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd_ddma.c_dwc2_desc_list_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc2_hsotg = type { i32, %struct.kmem_cache*, %struct.kmem_cache* }
%struct.kmem_cache = type { i32 }
%struct.dwc2_qh = type { i64, i64, i32, i32*, i32, i32 }

@USB_ENDPOINT_XFER_ISOC = common dso_local global i64 0, align 8
@USB_SPEED_HIGH = common dso_local global i64 0, align 8
@GFP_DMA = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dwc2_hsotg*, %struct.dwc2_qh*, i32)* @dwc2_desc_list_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwc2_desc_list_alloc(%struct.dwc2_hsotg* %0, %struct.dwc2_qh* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dwc2_hsotg*, align 8
  %6 = alloca %struct.dwc2_qh*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.kmem_cache*, align 8
  store %struct.dwc2_hsotg* %0, %struct.dwc2_hsotg** %5, align 8
  store %struct.dwc2_qh* %1, %struct.dwc2_qh** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.dwc2_qh*, %struct.dwc2_qh** %6, align 8
  %10 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @USB_ENDPOINT_XFER_ISOC, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %24

14:                                               ; preds = %3
  %15 = load %struct.dwc2_qh*, %struct.dwc2_qh** %6, align 8
  %16 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @USB_SPEED_HIGH, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %14
  %21 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %5, align 8
  %22 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %21, i32 0, i32 2
  %23 = load %struct.kmem_cache*, %struct.kmem_cache** %22, align 8
  store %struct.kmem_cache* %23, %struct.kmem_cache** %8, align 8
  br label %28

24:                                               ; preds = %14, %3
  %25 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %5, align 8
  %26 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %25, i32 0, i32 1
  %27 = load %struct.kmem_cache*, %struct.kmem_cache** %26, align 8
  store %struct.kmem_cache* %27, %struct.kmem_cache** %8, align 8
  br label %28

28:                                               ; preds = %24, %20
  %29 = load %struct.dwc2_qh*, %struct.dwc2_qh** %6, align 8
  %30 = call i32 @dwc2_max_desc_num(%struct.dwc2_qh* %29)
  %31 = sext i32 %30 to i64
  %32 = mul i64 4, %31
  %33 = trunc i64 %32 to i32
  %34 = load %struct.dwc2_qh*, %struct.dwc2_qh** %6, align 8
  %35 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 8
  %36 = load %struct.kmem_cache*, %struct.kmem_cache** %8, align 8
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @GFP_DMA, align 4
  %39 = or i32 %37, %38
  %40 = call i32* @kmem_cache_zalloc(%struct.kmem_cache* %36, i32 %39)
  %41 = load %struct.dwc2_qh*, %struct.dwc2_qh** %6, align 8
  %42 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %41, i32 0, i32 3
  store i32* %40, i32** %42, align 8
  %43 = load %struct.dwc2_qh*, %struct.dwc2_qh** %6, align 8
  %44 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %43, i32 0, i32 3
  %45 = load i32*, i32** %44, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %28
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %96

50:                                               ; preds = %28
  %51 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %5, align 8
  %52 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.dwc2_qh*, %struct.dwc2_qh** %6, align 8
  %55 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %54, i32 0, i32 3
  %56 = load i32*, i32** %55, align 8
  %57 = load %struct.dwc2_qh*, %struct.dwc2_qh** %6, align 8
  %58 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @DMA_TO_DEVICE, align 4
  %61 = call i32 @dma_map_single(i32 %53, i32* %56, i32 %59, i32 %60)
  %62 = load %struct.dwc2_qh*, %struct.dwc2_qh** %6, align 8
  %63 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %62, i32 0, i32 4
  store i32 %61, i32* %63, align 8
  %64 = load %struct.dwc2_qh*, %struct.dwc2_qh** %6, align 8
  %65 = call i32 @dwc2_max_desc_num(%struct.dwc2_qh* %64)
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @kcalloc(i32 %65, i32 4, i32 %66)
  %68 = load %struct.dwc2_qh*, %struct.dwc2_qh** %6, align 8
  %69 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %68, i32 0, i32 5
  store i32 %67, i32* %69, align 4
  %70 = load %struct.dwc2_qh*, %struct.dwc2_qh** %6, align 8
  %71 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %70, i32 0, i32 5
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %95, label %74

74:                                               ; preds = %50
  %75 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %5, align 8
  %76 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.dwc2_qh*, %struct.dwc2_qh** %6, align 8
  %79 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.dwc2_qh*, %struct.dwc2_qh** %6, align 8
  %82 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %85 = call i32 @dma_unmap_single(i32 %77, i32 %80, i32 %83, i32 %84)
  %86 = load %struct.kmem_cache*, %struct.kmem_cache** %8, align 8
  %87 = load %struct.dwc2_qh*, %struct.dwc2_qh** %6, align 8
  %88 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %87, i32 0, i32 3
  %89 = load i32*, i32** %88, align 8
  %90 = call i32 @kmem_cache_free(%struct.kmem_cache* %86, i32* %89)
  %91 = load %struct.dwc2_qh*, %struct.dwc2_qh** %6, align 8
  %92 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %91, i32 0, i32 3
  store i32* null, i32** %92, align 8
  %93 = load i32, i32* @ENOMEM, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %4, align 4
  br label %96

95:                                               ; preds = %50
  store i32 0, i32* %4, align 4
  br label %96

96:                                               ; preds = %95, %74, %47
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

declare dso_local i32 @dwc2_max_desc_num(%struct.dwc2_qh*) #1

declare dso_local i32* @kmem_cache_zalloc(%struct.kmem_cache*, i32) #1

declare dso_local i32 @dma_map_single(i32, i32*, i32, i32) #1

declare dso_local i32 @kcalloc(i32, i32, i32) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @kmem_cache_free(%struct.kmem_cache*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
