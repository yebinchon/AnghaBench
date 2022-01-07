; ModuleID = '/home/carl/AnghaBench/linux/drivers/vfio/extr_vfio_iommu_type1.c_unmap_unpin_fast.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vfio/extr_vfio_iommu_type1.c_unmap_unpin_fast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfio_domain = type { i32 }
%struct.vfio_dma = type { i32 }
%struct.list_head = type { i32 }
%struct.iommu_iotlb_gather = type { i32 }
%struct.vfio_regions = type { i64, i64, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@VFIO_IOMMU_TLB_SYNC_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.vfio_domain*, %struct.vfio_dma*, i64*, i64, i32, i64*, %struct.list_head*, i32*, %struct.iommu_iotlb_gather*)* @unmap_unpin_fast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @unmap_unpin_fast(%struct.vfio_domain* %0, %struct.vfio_dma* %1, i64* %2, i64 %3, i32 %4, i64* %5, %struct.list_head* %6, i32* %7, %struct.iommu_iotlb_gather* %8) #0 {
  %10 = alloca %struct.vfio_domain*, align 8
  %11 = alloca %struct.vfio_dma*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64*, align 8
  %16 = alloca %struct.list_head*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.iommu_iotlb_gather*, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.vfio_regions*, align 8
  store %struct.vfio_domain* %0, %struct.vfio_domain** %10, align 8
  store %struct.vfio_dma* %1, %struct.vfio_dma** %11, align 8
  store i64* %2, i64** %12, align 8
  store i64 %3, i64* %13, align 8
  store i32 %4, i32* %14, align 4
  store i64* %5, i64** %15, align 8
  store %struct.list_head* %6, %struct.list_head** %16, align 8
  store i32* %7, i32** %17, align 8
  store %struct.iommu_iotlb_gather* %8, %struct.iommu_iotlb_gather** %18, align 8
  store i64 0, i64* %19, align 8
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.vfio_regions* @kzalloc(i32 24, i32 %21)
  store %struct.vfio_regions* %22, %struct.vfio_regions** %20, align 8
  %23 = load %struct.vfio_regions*, %struct.vfio_regions** %20, align 8
  %24 = icmp ne %struct.vfio_regions* %23, null
  br i1 %24, label %25, label %62

25:                                               ; preds = %9
  %26 = load %struct.vfio_domain*, %struct.vfio_domain** %10, align 8
  %27 = getelementptr inbounds %struct.vfio_domain, %struct.vfio_domain* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i64*, i64** %12, align 8
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %13, align 8
  %32 = load %struct.iommu_iotlb_gather*, %struct.iommu_iotlb_gather** %18, align 8
  %33 = call i64 @iommu_unmap_fast(i32 %28, i64 %30, i64 %31, %struct.iommu_iotlb_gather* %32)
  store i64 %33, i64* %19, align 8
  %34 = load i64, i64* %19, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %25
  %37 = load %struct.vfio_regions*, %struct.vfio_regions** %20, align 8
  %38 = call i32 @kfree(%struct.vfio_regions* %37)
  br label %61

39:                                               ; preds = %25
  %40 = load i64*, i64** %12, align 8
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.vfio_regions*, %struct.vfio_regions** %20, align 8
  %43 = getelementptr inbounds %struct.vfio_regions, %struct.vfio_regions* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  %44 = load i32, i32* %14, align 4
  %45 = load %struct.vfio_regions*, %struct.vfio_regions** %20, align 8
  %46 = getelementptr inbounds %struct.vfio_regions, %struct.vfio_regions* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 4
  %47 = load i64, i64* %19, align 8
  %48 = load %struct.vfio_regions*, %struct.vfio_regions** %20, align 8
  %49 = getelementptr inbounds %struct.vfio_regions, %struct.vfio_regions* %48, i32 0, i32 1
  store i64 %47, i64* %49, align 8
  %50 = load %struct.vfio_regions*, %struct.vfio_regions** %20, align 8
  %51 = getelementptr inbounds %struct.vfio_regions, %struct.vfio_regions* %50, i32 0, i32 2
  %52 = load %struct.list_head*, %struct.list_head** %16, align 8
  %53 = call i32 @list_add_tail(i32* %51, %struct.list_head* %52)
  %54 = load i64, i64* %19, align 8
  %55 = load i64*, i64** %12, align 8
  %56 = load i64, i64* %55, align 8
  %57 = add i64 %56, %54
  store i64 %57, i64* %55, align 8
  %58 = load i32*, i32** %17, align 8
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 4
  br label %61

61:                                               ; preds = %39, %36
  br label %62

62:                                               ; preds = %61, %9
  %63 = load i32*, i32** %17, align 8
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @VFIO_IOMMU_TLB_SYNC_MAX, align 4
  %66 = icmp sge i32 %64, %65
  br i1 %66, label %70, label %67

67:                                               ; preds = %62
  %68 = load i64, i64* %19, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %80, label %70

70:                                               ; preds = %67, %62
  %71 = load %struct.vfio_dma*, %struct.vfio_dma** %11, align 8
  %72 = load %struct.vfio_domain*, %struct.vfio_domain** %10, align 8
  %73 = load %struct.list_head*, %struct.list_head** %16, align 8
  %74 = load %struct.iommu_iotlb_gather*, %struct.iommu_iotlb_gather** %18, align 8
  %75 = call i64 @vfio_sync_unpin(%struct.vfio_dma* %71, %struct.vfio_domain* %72, %struct.list_head* %73, %struct.iommu_iotlb_gather* %74)
  %76 = load i64*, i64** %15, align 8
  %77 = load i64, i64* %76, align 8
  %78 = add nsw i64 %77, %75
  store i64 %78, i64* %76, align 8
  %79 = load i32*, i32** %17, align 8
  store i32 0, i32* %79, align 4
  br label %80

80:                                               ; preds = %70, %67
  %81 = load i64, i64* %19, align 8
  ret i64 %81
}

declare dso_local %struct.vfio_regions* @kzalloc(i32, i32) #1

declare dso_local i64 @iommu_unmap_fast(i32, i64, i64, %struct.iommu_iotlb_gather*) #1

declare dso_local i32 @kfree(%struct.vfio_regions*) #1

declare dso_local i32 @list_add_tail(i32*, %struct.list_head*) #1

declare dso_local i64 @vfio_sync_unpin(%struct.vfio_dma*, %struct.vfio_domain*, %struct.list_head*, %struct.iommu_iotlb_gather*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
