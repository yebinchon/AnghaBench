; ModuleID = '/home/carl/AnghaBench/linux/drivers/vfio/extr_vfio_iommu_type1.c_unmap_unpin_slow.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vfio/extr_vfio_iommu_type1.c_unmap_unpin_slow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfio_domain = type { i32 }
%struct.vfio_dma = type { i32 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.vfio_domain*, %struct.vfio_dma*, i64*, i64, i64, i64*)* @unmap_unpin_slow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @unmap_unpin_slow(%struct.vfio_domain* %0, %struct.vfio_dma* %1, i64* %2, i64 %3, i64 %4, i64* %5) #0 {
  %7 = alloca %struct.vfio_domain*, align 8
  %8 = alloca %struct.vfio_dma*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64, align 8
  store %struct.vfio_domain* %0, %struct.vfio_domain** %7, align 8
  store %struct.vfio_dma* %1, %struct.vfio_dma** %8, align 8
  store i64* %2, i64** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i64* %5, i64** %12, align 8
  %14 = load %struct.vfio_domain*, %struct.vfio_domain** %7, align 8
  %15 = getelementptr inbounds %struct.vfio_domain, %struct.vfio_domain* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i64*, i64** %9, align 8
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* %10, align 8
  %20 = call i64 @iommu_unmap(i32 %16, i64 %18, i64 %19)
  store i64 %20, i64* %13, align 8
  %21 = load i64, i64* %13, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %42

23:                                               ; preds = %6
  %24 = load %struct.vfio_dma*, %struct.vfio_dma** %8, align 8
  %25 = load i64*, i64** %9, align 8
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %11, align 8
  %28 = load i64, i64* @PAGE_SHIFT, align 8
  %29 = lshr i64 %27, %28
  %30 = load i64, i64* %13, align 8
  %31 = load i64, i64* @PAGE_SHIFT, align 8
  %32 = lshr i64 %30, %31
  %33 = call i64 @vfio_unpin_pages_remote(%struct.vfio_dma* %24, i64 %26, i64 %29, i64 %32, i32 0)
  %34 = load i64*, i64** %12, align 8
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %35, %33
  store i64 %36, i64* %34, align 8
  %37 = load i64, i64* %13, align 8
  %38 = load i64*, i64** %9, align 8
  %39 = load i64, i64* %38, align 8
  %40 = add i64 %39, %37
  store i64 %40, i64* %38, align 8
  %41 = call i32 (...) @cond_resched()
  br label %42

42:                                               ; preds = %23, %6
  %43 = load i64, i64* %13, align 8
  ret i64 %43
}

declare dso_local i64 @iommu_unmap(i32, i64, i64) #1

declare dso_local i64 @vfio_unpin_pages_remote(%struct.vfio_dma*, i64, i64, i64, i32) #1

declare dso_local i32 @cond_resched(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
