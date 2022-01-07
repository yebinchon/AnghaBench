; ModuleID = '/home/carl/AnghaBench/linux/drivers/vfio/extr_vfio_iommu_spapr_tce.c_tce_iommu_release_ownership.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vfio/extr_vfio_iommu_spapr_tce.c_tce_iommu_release_ownership.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tce_container = type { %struct.iommu_table** }
%struct.iommu_table = type { i64, i32, i32 }
%struct.iommu_table_group = type { i32 }

@IOMMU_TABLE_GROUP_MAX_TABLES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tce_container*, %struct.iommu_table_group*)* @tce_iommu_release_ownership to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tce_iommu_release_ownership(%struct.tce_container* %0, %struct.iommu_table_group* %1) #0 {
  %3 = alloca %struct.tce_container*, align 8
  %4 = alloca %struct.iommu_table_group*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.iommu_table*, align 8
  store %struct.tce_container* %0, %struct.tce_container** %3, align 8
  store %struct.iommu_table_group* %1, %struct.iommu_table_group** %4, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %46, %2
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @IOMMU_TABLE_GROUP_MAX_TABLES, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %49

11:                                               ; preds = %7
  %12 = load %struct.tce_container*, %struct.tce_container** %3, align 8
  %13 = getelementptr inbounds %struct.tce_container, %struct.tce_container* %12, i32 0, i32 0
  %14 = load %struct.iommu_table**, %struct.iommu_table*** %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.iommu_table*, %struct.iommu_table** %14, i64 %16
  %18 = load %struct.iommu_table*, %struct.iommu_table** %17, align 8
  store %struct.iommu_table* %18, %struct.iommu_table** %6, align 8
  %19 = load %struct.iommu_table*, %struct.iommu_table** %6, align 8
  %20 = icmp ne %struct.iommu_table* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %11
  br label %46

22:                                               ; preds = %11
  %23 = load %struct.tce_container*, %struct.tce_container** %3, align 8
  %24 = load %struct.iommu_table*, %struct.iommu_table** %6, align 8
  %25 = load %struct.iommu_table*, %struct.iommu_table** %6, align 8
  %26 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.iommu_table*, %struct.iommu_table** %6, align 8
  %29 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @tce_iommu_clear(%struct.tce_container* %23, %struct.iommu_table* %24, i32 %27, i32 %30)
  %32 = load %struct.iommu_table*, %struct.iommu_table** %6, align 8
  %33 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %22
  %37 = load %struct.iommu_table*, %struct.iommu_table** %6, align 8
  %38 = call i32 @iommu_release_ownership(%struct.iommu_table* %37)
  br label %39

39:                                               ; preds = %36, %22
  %40 = load %struct.tce_container*, %struct.tce_container** %3, align 8
  %41 = getelementptr inbounds %struct.tce_container, %struct.tce_container* %40, i32 0, i32 0
  %42 = load %struct.iommu_table**, %struct.iommu_table*** %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.iommu_table*, %struct.iommu_table** %42, i64 %44
  store %struct.iommu_table* null, %struct.iommu_table** %45, align 8
  br label %46

46:                                               ; preds = %39, %21
  %47 = load i32, i32* %5, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %5, align 4
  br label %7

49:                                               ; preds = %7
  ret void
}

declare dso_local i32 @tce_iommu_clear(%struct.tce_container*, %struct.iommu_table*, i32, i32) #1

declare dso_local i32 @iommu_release_ownership(%struct.iommu_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
