; ModuleID = '/home/carl/AnghaBench/linux/drivers/vfio/extr_vfio_iommu_type1.c_vfio_pin_map_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vfio/extr_vfio_iommu_type1.c_vfio_pin_map_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfio_iommu = type { i32 }
%struct.vfio_dma = type { i64, i32, i64, i32, i64 }

@RLIMIT_MEMLOCK = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vfio_iommu*, %struct.vfio_dma*, i64)* @vfio_pin_map_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfio_pin_map_dma(%struct.vfio_iommu* %0, %struct.vfio_dma* %1, i64 %2) #0 {
  %4 = alloca %struct.vfio_iommu*, align 8
  %5 = alloca %struct.vfio_dma*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.vfio_iommu* %0, %struct.vfio_iommu** %4, align 8
  store %struct.vfio_dma* %1, %struct.vfio_dma** %5, align 8
  store i64 %2, i64* %6, align 8
  %14 = load %struct.vfio_dma*, %struct.vfio_dma** %5, align 8
  %15 = getelementptr inbounds %struct.vfio_dma, %struct.vfio_dma* %14, i32 0, i32 4
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %7, align 8
  %17 = load %struct.vfio_dma*, %struct.vfio_dma** %5, align 8
  %18 = getelementptr inbounds %struct.vfio_dma, %struct.vfio_dma* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %8, align 8
  %20 = load i64, i64* %6, align 8
  store i64 %20, i64* %9, align 8
  %21 = load i32, i32* @RLIMIT_MEMLOCK, align 4
  %22 = call i64 @rlimit(i32 %21)
  %23 = load i64, i64* @PAGE_SHIFT, align 8
  %24 = lshr i64 %22, %23
  store i64 %24, i64* %12, align 8
  store i32 0, i32* %13, align 4
  br label %25

25:                                               ; preds = %75, %3
  %26 = load i64, i64* %9, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %88

28:                                               ; preds = %25
  %29 = load %struct.vfio_dma*, %struct.vfio_dma** %5, align 8
  %30 = load i64, i64* %8, align 8
  %31 = load %struct.vfio_dma*, %struct.vfio_dma** %5, align 8
  %32 = getelementptr inbounds %struct.vfio_dma, %struct.vfio_dma* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = add i64 %30, %33
  %35 = load i64, i64* %9, align 8
  %36 = load i64, i64* @PAGE_SHIFT, align 8
  %37 = lshr i64 %35, %36
  %38 = load i64, i64* %12, align 8
  %39 = call i64 @vfio_pin_pages_remote(%struct.vfio_dma* %29, i64 %34, i64 %37, i64* %11, i64 %38)
  store i64 %39, i64* %10, align 8
  %40 = load i64, i64* %10, align 8
  %41 = icmp sle i64 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %28
  %43 = load i64, i64* %10, align 8
  %44 = icmp ne i64 %43, 0
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = call i32 @WARN_ON(i32 %46)
  %48 = load i64, i64* %10, align 8
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %13, align 4
  br label %88

50:                                               ; preds = %28
  %51 = load %struct.vfio_iommu*, %struct.vfio_iommu** %4, align 8
  %52 = load i64, i64* %7, align 8
  %53 = load %struct.vfio_dma*, %struct.vfio_dma** %5, align 8
  %54 = getelementptr inbounds %struct.vfio_dma, %struct.vfio_dma* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %52, %55
  %57 = load i64, i64* %11, align 8
  %58 = load i64, i64* %10, align 8
  %59 = load %struct.vfio_dma*, %struct.vfio_dma** %5, align 8
  %60 = getelementptr inbounds %struct.vfio_dma, %struct.vfio_dma* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @vfio_iommu_map(%struct.vfio_iommu* %51, i64 %56, i64 %57, i64 %58, i32 %61)
  store i32 %62, i32* %13, align 4
  %63 = load i32, i32* %13, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %75

65:                                               ; preds = %50
  %66 = load %struct.vfio_dma*, %struct.vfio_dma** %5, align 8
  %67 = load i64, i64* %7, align 8
  %68 = load %struct.vfio_dma*, %struct.vfio_dma** %5, align 8
  %69 = getelementptr inbounds %struct.vfio_dma, %struct.vfio_dma* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = add nsw i64 %67, %70
  %72 = load i64, i64* %11, align 8
  %73 = load i64, i64* %10, align 8
  %74 = call i32 @vfio_unpin_pages_remote(%struct.vfio_dma* %66, i64 %71, i64 %72, i64 %73, i32 1)
  br label %88

75:                                               ; preds = %50
  %76 = load i64, i64* %10, align 8
  %77 = load i64, i64* @PAGE_SHIFT, align 8
  %78 = shl i64 %76, %77
  %79 = load i64, i64* %9, align 8
  %80 = sub i64 %79, %78
  store i64 %80, i64* %9, align 8
  %81 = load i64, i64* %10, align 8
  %82 = load i64, i64* @PAGE_SHIFT, align 8
  %83 = shl i64 %81, %82
  %84 = load %struct.vfio_dma*, %struct.vfio_dma** %5, align 8
  %85 = getelementptr inbounds %struct.vfio_dma, %struct.vfio_dma* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = add nsw i64 %86, %83
  store i64 %87, i64* %85, align 8
  br label %25

88:                                               ; preds = %65, %42, %25
  %89 = load %struct.vfio_dma*, %struct.vfio_dma** %5, align 8
  %90 = getelementptr inbounds %struct.vfio_dma, %struct.vfio_dma* %89, i32 0, i32 1
  store i32 1, i32* %90, align 8
  %91 = load i32, i32* %13, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %88
  %94 = load %struct.vfio_iommu*, %struct.vfio_iommu** %4, align 8
  %95 = load %struct.vfio_dma*, %struct.vfio_dma** %5, align 8
  %96 = call i32 @vfio_remove_dma(%struct.vfio_iommu* %94, %struct.vfio_dma* %95)
  br label %97

97:                                               ; preds = %93, %88
  %98 = load i32, i32* %13, align 4
  ret i32 %98
}

declare dso_local i64 @rlimit(i32) #1

declare dso_local i64 @vfio_pin_pages_remote(%struct.vfio_dma*, i64, i64, i64*, i64) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @vfio_iommu_map(%struct.vfio_iommu*, i64, i64, i64, i32) #1

declare dso_local i32 @vfio_unpin_pages_remote(%struct.vfio_dma*, i64, i64, i64, i32) #1

declare dso_local i32 @vfio_remove_dma(%struct.vfio_iommu*, %struct.vfio_dma*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
