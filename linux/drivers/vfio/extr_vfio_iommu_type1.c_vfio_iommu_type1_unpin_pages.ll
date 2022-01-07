; ModuleID = '/home/carl/AnghaBench/linux/drivers/vfio/extr_vfio_iommu_type1.c_vfio_iommu_type1_unpin_pages.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vfio/extr_vfio_iommu_type1.c_vfio_iommu_type1_unpin_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfio_iommu = type { i32, i32 }
%struct.vfio_dma = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64*, i32)* @vfio_iommu_type1_unpin_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfio_iommu_type1_unpin_pages(i8* %0, i64* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.vfio_iommu*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.vfio_dma*, align 8
  %12 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.vfio_iommu*
  store %struct.vfio_iommu* %14, %struct.vfio_iommu** %8, align 8
  %15 = load %struct.vfio_iommu*, %struct.vfio_iommu** %8, align 8
  %16 = icmp ne %struct.vfio_iommu* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i64*, i64** %6, align 8
  %19 = icmp ne i64* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %17, %3
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %89

23:                                               ; preds = %17
  %24 = load %struct.vfio_iommu*, %struct.vfio_iommu** %8, align 8
  %25 = getelementptr inbounds %struct.vfio_iommu, %struct.vfio_iommu* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* @EACCES, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %89

31:                                               ; preds = %23
  %32 = load %struct.vfio_iommu*, %struct.vfio_iommu** %8, align 8
  %33 = getelementptr inbounds %struct.vfio_iommu, %struct.vfio_iommu* %32, i32 0, i32 0
  %34 = call i32 @mutex_lock(i32* %33)
  %35 = load %struct.vfio_iommu*, %struct.vfio_iommu** %8, align 8
  %36 = call i32 @IS_IOMMU_CAP_DOMAIN_IN_CONTAINER(%struct.vfio_iommu* %35)
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  store i32 %39, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %40

40:                                               ; preds = %64, %31
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %67

44:                                               ; preds = %40
  %45 = load i64*, i64** %6, align 8
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i64, i64* %45, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @PAGE_SHIFT, align 8
  %51 = shl i64 %49, %50
  store i64 %51, i64* %12, align 8
  %52 = load %struct.vfio_iommu*, %struct.vfio_iommu** %8, align 8
  %53 = load i64, i64* %12, align 8
  %54 = load i32, i32* @PAGE_SIZE, align 4
  %55 = call %struct.vfio_dma* @vfio_find_dma(%struct.vfio_iommu* %52, i64 %53, i32 %54)
  store %struct.vfio_dma* %55, %struct.vfio_dma** %11, align 8
  %56 = load %struct.vfio_dma*, %struct.vfio_dma** %11, align 8
  %57 = icmp ne %struct.vfio_dma* %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %44
  br label %68

59:                                               ; preds = %44
  %60 = load %struct.vfio_dma*, %struct.vfio_dma** %11, align 8
  %61 = load i64, i64* %12, align 8
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @vfio_unpin_page_external(%struct.vfio_dma* %60, i64 %61, i32 %62)
  br label %64

64:                                               ; preds = %59
  %65 = load i32, i32* %10, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %10, align 4
  br label %40

67:                                               ; preds = %40
  br label %68

68:                                               ; preds = %67, %58
  %69 = load %struct.vfio_iommu*, %struct.vfio_iommu** %8, align 8
  %70 = getelementptr inbounds %struct.vfio_iommu, %struct.vfio_iommu* %69, i32 0, i32 0
  %71 = call i32 @mutex_unlock(i32* %70)
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* %7, align 4
  %74 = icmp sgt i32 %72, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %68
  %76 = load i32, i32* %7, align 4
  br label %87

77:                                               ; preds = %68
  %78 = load i32, i32* %10, align 4
  %79 = icmp sgt i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %77
  %81 = load i32, i32* %10, align 4
  br label %85

82:                                               ; preds = %77
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  br label %85

85:                                               ; preds = %82, %80
  %86 = phi i32 [ %81, %80 ], [ %84, %82 ]
  br label %87

87:                                               ; preds = %85, %75
  %88 = phi i32 [ %76, %75 ], [ %86, %85 ]
  store i32 %88, i32* %4, align 4
  br label %89

89:                                               ; preds = %87, %28, %20
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @IS_IOMMU_CAP_DOMAIN_IN_CONTAINER(%struct.vfio_iommu*) #1

declare dso_local %struct.vfio_dma* @vfio_find_dma(%struct.vfio_iommu*, i64, i32) #1

declare dso_local i32 @vfio_unpin_page_external(%struct.vfio_dma*, i64, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
