; ModuleID = '/home/carl/AnghaBench/linux/drivers/vfio/extr_vfio_iommu_type1.c_vfio_iova_get_vfio_pfn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vfio/extr_vfio_iommu_type1.c_vfio_iova_get_vfio_pfn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfio_pfn = type { i32 }
%struct.vfio_dma = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vfio_pfn* (%struct.vfio_dma*, i64)* @vfio_iova_get_vfio_pfn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vfio_pfn* @vfio_iova_get_vfio_pfn(%struct.vfio_dma* %0, i64 %1) #0 {
  %3 = alloca %struct.vfio_dma*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.vfio_pfn*, align 8
  store %struct.vfio_dma* %0, %struct.vfio_dma** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.vfio_dma*, %struct.vfio_dma** %3, align 8
  %7 = load i64, i64* %4, align 8
  %8 = call %struct.vfio_pfn* @vfio_find_vpfn(%struct.vfio_dma* %6, i64 %7)
  store %struct.vfio_pfn* %8, %struct.vfio_pfn** %5, align 8
  %9 = load %struct.vfio_pfn*, %struct.vfio_pfn** %5, align 8
  %10 = icmp ne %struct.vfio_pfn* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load %struct.vfio_pfn*, %struct.vfio_pfn** %5, align 8
  %13 = getelementptr inbounds %struct.vfio_pfn, %struct.vfio_pfn* %12, i32 0, i32 0
  %14 = call i32 @atomic_inc(i32* %13)
  br label %15

15:                                               ; preds = %11, %2
  %16 = load %struct.vfio_pfn*, %struct.vfio_pfn** %5, align 8
  ret %struct.vfio_pfn* %16
}

declare dso_local %struct.vfio_pfn* @vfio_find_vpfn(%struct.vfio_dma*, i64) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
