; ModuleID = '/home/carl/AnghaBench/linux/drivers/vfio/extr_vfio_iommu_spapr_tce.c_tce_iommu_prereg_ua_to_hpa.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vfio/extr_vfio_iommu_spapr_tce.c_tce_iommu_prereg_ua_to_hpa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tce_container = type { i32 }
%struct.mm_iommu_table_group_mem_t = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tce_container*, i64, i64, i64*, %struct.mm_iommu_table_group_mem_t**)* @tce_iommu_prereg_ua_to_hpa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tce_iommu_prereg_ua_to_hpa(%struct.tce_container* %0, i64 %1, i64 %2, i64* %3, %struct.mm_iommu_table_group_mem_t** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.tce_container*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca %struct.mm_iommu_table_group_mem_t**, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.mm_iommu_table_group_mem_t*, align 8
  store %struct.tce_container* %0, %struct.tce_container** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64* %3, i64** %10, align 8
  store %struct.mm_iommu_table_group_mem_t** %4, %struct.mm_iommu_table_group_mem_t*** %11, align 8
  store i64 0, i64* %12, align 8
  %14 = load %struct.tce_container*, %struct.tce_container** %7, align 8
  %15 = getelementptr inbounds %struct.tce_container, %struct.tce_container* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i64, i64* %8, align 8
  %18 = load i64, i64* %9, align 8
  %19 = shl i64 1, %18
  %20 = call %struct.mm_iommu_table_group_mem_t* @mm_iommu_lookup(i32 %16, i64 %17, i64 %19)
  store %struct.mm_iommu_table_group_mem_t* %20, %struct.mm_iommu_table_group_mem_t** %13, align 8
  %21 = load %struct.mm_iommu_table_group_mem_t*, %struct.mm_iommu_table_group_mem_t** %13, align 8
  %22 = icmp ne %struct.mm_iommu_table_group_mem_t* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %5
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %6, align 4
  br label %40

26:                                               ; preds = %5
  %27 = load %struct.mm_iommu_table_group_mem_t*, %struct.mm_iommu_table_group_mem_t** %13, align 8
  %28 = load i64, i64* %8, align 8
  %29 = load i64, i64* %9, align 8
  %30 = load i64*, i64** %10, align 8
  %31 = call i64 @mm_iommu_ua_to_hpa(%struct.mm_iommu_table_group_mem_t* %27, i64 %28, i64 %29, i64* %30)
  store i64 %31, i64* %12, align 8
  %32 = load i64, i64* %12, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %26
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %6, align 4
  br label %40

37:                                               ; preds = %26
  %38 = load %struct.mm_iommu_table_group_mem_t*, %struct.mm_iommu_table_group_mem_t** %13, align 8
  %39 = load %struct.mm_iommu_table_group_mem_t**, %struct.mm_iommu_table_group_mem_t*** %11, align 8
  store %struct.mm_iommu_table_group_mem_t* %38, %struct.mm_iommu_table_group_mem_t** %39, align 8
  store i32 0, i32* %6, align 4
  br label %40

40:                                               ; preds = %37, %34, %23
  %41 = load i32, i32* %6, align 4
  ret i32 %41
}

declare dso_local %struct.mm_iommu_table_group_mem_t* @mm_iommu_lookup(i32, i64, i64) #1

declare dso_local i64 @mm_iommu_ua_to_hpa(%struct.mm_iommu_table_group_mem_t*, i64, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
