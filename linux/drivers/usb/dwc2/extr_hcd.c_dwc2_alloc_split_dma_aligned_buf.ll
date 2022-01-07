; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd.c_dwc2_alloc_split_dma_aligned_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd.c_dwc2_alloc_split_dma_aligned_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc2_hsotg = type { i32, i32 }
%struct.dwc2_qh = type { i64, i64 }
%struct.dwc2_host_chan = type { i64, i64 }

@DWC2_KMEM_UNALIGNED_BUF_SIZE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"can't map align_buf\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dwc2_hsotg*, %struct.dwc2_qh*, %struct.dwc2_host_chan*)* @dwc2_alloc_split_dma_aligned_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwc2_alloc_split_dma_aligned_buf(%struct.dwc2_hsotg* %0, %struct.dwc2_qh* %1, %struct.dwc2_host_chan* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dwc2_hsotg*, align 8
  %6 = alloca %struct.dwc2_qh*, align 8
  %7 = alloca %struct.dwc2_host_chan*, align 8
  store %struct.dwc2_hsotg* %0, %struct.dwc2_hsotg** %5, align 8
  store %struct.dwc2_qh* %1, %struct.dwc2_qh** %6, align 8
  store %struct.dwc2_host_chan* %2, %struct.dwc2_host_chan** %7, align 8
  %8 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %5, align 8
  %9 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %3
  %13 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %7, align 8
  %14 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @DWC2_KMEM_UNALIGNED_BUF_SIZE, align 8
  %17 = icmp sgt i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %12, %3
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %79

21:                                               ; preds = %12
  %22 = load %struct.dwc2_qh*, %struct.dwc2_qh** %6, align 8
  %23 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %44, label %26

26:                                               ; preds = %21
  %27 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %5, align 8
  %28 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @GFP_ATOMIC, align 4
  %31 = load i32, i32* @GFP_DMA, align 4
  %32 = or i32 %30, %31
  %33 = call i64 @kmem_cache_alloc(i32 %29, i32 %32)
  %34 = load %struct.dwc2_qh*, %struct.dwc2_qh** %6, align 8
  %35 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %34, i32 0, i32 1
  store i64 %33, i64* %35, align 8
  %36 = load %struct.dwc2_qh*, %struct.dwc2_qh** %6, align 8
  %37 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %26
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %79

43:                                               ; preds = %26
  br label %44

44:                                               ; preds = %43, %21
  %45 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %5, align 8
  %46 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.dwc2_qh*, %struct.dwc2_qh** %6, align 8
  %49 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @DWC2_KMEM_UNALIGNED_BUF_SIZE, align 8
  %52 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %53 = call i64 @dma_map_single(i32 %47, i64 %50, i64 %51, i32 %52)
  %54 = load %struct.dwc2_qh*, %struct.dwc2_qh** %6, align 8
  %55 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  %56 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %5, align 8
  %57 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.dwc2_qh*, %struct.dwc2_qh** %6, align 8
  %60 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = call i64 @dma_mapping_error(i32 %58, i64 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %44
  %65 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %5, align 8
  %66 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @dev_err(i32 %67, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %69 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %7, align 8
  %70 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %69, i32 0, i32 1
  store i64 0, i64* %70, align 8
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %4, align 4
  br label %79

73:                                               ; preds = %44
  %74 = load %struct.dwc2_qh*, %struct.dwc2_qh** %6, align 8
  %75 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %7, align 8
  %78 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %77, i32 0, i32 1
  store i64 %76, i64* %78, align 8
  store i32 0, i32* %4, align 4
  br label %79

79:                                               ; preds = %73, %64, %40, %18
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local i64 @kmem_cache_alloc(i32, i32) #1

declare dso_local i64 @dma_map_single(i32, i64, i64, i32) #1

declare dso_local i64 @dma_mapping_error(i32, i64) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
