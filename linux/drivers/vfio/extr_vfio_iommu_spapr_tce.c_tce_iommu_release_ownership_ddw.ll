; ModuleID = '/home/carl/AnghaBench/linux/drivers/vfio/extr_vfio_iommu_spapr_tce.c_tce_iommu_release_ownership_ddw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vfio/extr_vfio_iommu_spapr_tce.c_tce_iommu_release_ownership_ddw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tce_container = type { i64* }
%struct.iommu_table_group = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.iommu_table_group*)*, i32 (%struct.iommu_table_group*, i64)* }

@IOMMU_TABLE_GROUP_MAX_TABLES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tce_container*, %struct.iommu_table_group*)* @tce_iommu_release_ownership_ddw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tce_iommu_release_ownership_ddw(%struct.tce_container* %0, %struct.iommu_table_group* %1) #0 {
  %3 = alloca %struct.tce_container*, align 8
  %4 = alloca %struct.iommu_table_group*, align 8
  %5 = alloca i64, align 8
  store %struct.tce_container* %0, %struct.tce_container** %3, align 8
  store %struct.iommu_table_group* %1, %struct.iommu_table_group** %4, align 8
  %6 = load %struct.iommu_table_group*, %struct.iommu_table_group** %4, align 8
  %7 = getelementptr inbounds %struct.iommu_table_group, %struct.iommu_table_group* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = load i32 (%struct.iommu_table_group*, i64)*, i32 (%struct.iommu_table_group*, i64)** %9, align 8
  %11 = icmp ne i32 (%struct.iommu_table_group*, i64)* %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = call i32 @WARN_ON_ONCE(i32 1)
  br label %48

14:                                               ; preds = %2
  store i64 0, i64* %5, align 8
  br label %15

15:                                               ; preds = %37, %14
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* @IOMMU_TABLE_GROUP_MAX_TABLES, align 8
  %18 = icmp slt i64 %16, %17
  br i1 %18, label %19, label %40

19:                                               ; preds = %15
  %20 = load %struct.tce_container*, %struct.tce_container** %3, align 8
  %21 = getelementptr inbounds %struct.tce_container, %struct.tce_container* %20, i32 0, i32 0
  %22 = load i64*, i64** %21, align 8
  %23 = load i64, i64* %5, align 8
  %24 = getelementptr inbounds i64, i64* %22, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %19
  %28 = load %struct.iommu_table_group*, %struct.iommu_table_group** %4, align 8
  %29 = getelementptr inbounds %struct.iommu_table_group, %struct.iommu_table_group* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32 (%struct.iommu_table_group*, i64)*, i32 (%struct.iommu_table_group*, i64)** %31, align 8
  %33 = load %struct.iommu_table_group*, %struct.iommu_table_group** %4, align 8
  %34 = load i64, i64* %5, align 8
  %35 = call i32 %32(%struct.iommu_table_group* %33, i64 %34)
  br label %36

36:                                               ; preds = %27, %19
  br label %37

37:                                               ; preds = %36
  %38 = load i64, i64* %5, align 8
  %39 = add nsw i64 %38, 1
  store i64 %39, i64* %5, align 8
  br label %15

40:                                               ; preds = %15
  %41 = load %struct.iommu_table_group*, %struct.iommu_table_group** %4, align 8
  %42 = getelementptr inbounds %struct.iommu_table_group, %struct.iommu_table_group* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32 (%struct.iommu_table_group*)*, i32 (%struct.iommu_table_group*)** %44, align 8
  %46 = load %struct.iommu_table_group*, %struct.iommu_table_group** %4, align 8
  %47 = call i32 %45(%struct.iommu_table_group* %46)
  br label %48

48:                                               ; preds = %40, %12
  ret void
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
