; ModuleID = '/home/carl/AnghaBench/linux/drivers/vfio/extr_vfio_iommu_spapr_tce.c_tce_iommu_find_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vfio/extr_vfio_iommu_spapr_tce.c_tce_iommu_find_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tce_container = type { %struct.iommu_table** }
%struct.iommu_table = type { i64, i64, i64 }

@IOMMU_TABLE_GROUP_MAX_TABLES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.tce_container*, i64, %struct.iommu_table**)* @tce_iommu_find_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @tce_iommu_find_table(%struct.tce_container* %0, i64 %1, %struct.iommu_table** %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.tce_container*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.iommu_table**, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.iommu_table*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.tce_container* %0, %struct.tce_container** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.iommu_table** %2, %struct.iommu_table*** %7, align 8
  store i64 0, i64* %8, align 8
  br label %13

13:                                               ; preds = %53, %3
  %14 = load i64, i64* %8, align 8
  %15 = load i64, i64* @IOMMU_TABLE_GROUP_MAX_TABLES, align 8
  %16 = icmp slt i64 %14, %15
  br i1 %16, label %17, label %56

17:                                               ; preds = %13
  %18 = load %struct.tce_container*, %struct.tce_container** %5, align 8
  %19 = getelementptr inbounds %struct.tce_container, %struct.tce_container* %18, i32 0, i32 0
  %20 = load %struct.iommu_table**, %struct.iommu_table*** %19, align 8
  %21 = load i64, i64* %8, align 8
  %22 = getelementptr inbounds %struct.iommu_table*, %struct.iommu_table** %20, i64 %21
  %23 = load %struct.iommu_table*, %struct.iommu_table** %22, align 8
  store %struct.iommu_table* %23, %struct.iommu_table** %9, align 8
  %24 = load %struct.iommu_table*, %struct.iommu_table** %9, align 8
  %25 = icmp ne %struct.iommu_table* %24, null
  br i1 %25, label %26, label %52

26:                                               ; preds = %17
  %27 = load i64, i64* %6, align 8
  %28 = load %struct.iommu_table*, %struct.iommu_table** %9, align 8
  %29 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = lshr i64 %27, %30
  store i64 %31, i64* %10, align 8
  %32 = load %struct.iommu_table*, %struct.iommu_table** %9, align 8
  %33 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %11, align 8
  %35 = load i64, i64* %11, align 8
  %36 = load %struct.iommu_table*, %struct.iommu_table** %9, align 8
  %37 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = add i64 %35, %38
  store i64 %39, i64* %12, align 8
  %40 = load i64, i64* %11, align 8
  %41 = load i64, i64* %10, align 8
  %42 = icmp ule i64 %40, %41
  br i1 %42, label %43, label %51

43:                                               ; preds = %26
  %44 = load i64, i64* %10, align 8
  %45 = load i64, i64* %12, align 8
  %46 = icmp ult i64 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %43
  %48 = load %struct.iommu_table*, %struct.iommu_table** %9, align 8
  %49 = load %struct.iommu_table**, %struct.iommu_table*** %7, align 8
  store %struct.iommu_table* %48, %struct.iommu_table** %49, align 8
  %50 = load i64, i64* %8, align 8
  store i64 %50, i64* %4, align 8
  br label %57

51:                                               ; preds = %43, %26
  br label %52

52:                                               ; preds = %51, %17
  br label %53

53:                                               ; preds = %52
  %54 = load i64, i64* %8, align 8
  %55 = add nsw i64 %54, 1
  store i64 %55, i64* %8, align 8
  br label %13

56:                                               ; preds = %13
  store i64 -1, i64* %4, align 8
  br label %57

57:                                               ; preds = %56, %47
  %58 = load i64, i64* %4, align 8
  ret i64 %58
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
