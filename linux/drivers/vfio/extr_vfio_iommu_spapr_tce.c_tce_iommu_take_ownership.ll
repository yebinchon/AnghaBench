; ModuleID = '/home/carl/AnghaBench/linux/drivers/vfio/extr_vfio_iommu_spapr_tce.c_tce_iommu_take_ownership.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vfio/extr_vfio_iommu_spapr_tce.c_tce_iommu_take_ownership.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tce_container = type { %struct.iommu_table** }
%struct.iommu_table = type { i32 }
%struct.iommu_table_group = type { %struct.iommu_table** }

@IOMMU_TABLE_GROUP_MAX_TABLES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tce_container*, %struct.iommu_table_group*)* @tce_iommu_take_ownership to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tce_iommu_take_ownership(%struct.tce_container* %0, %struct.iommu_table_group* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tce_container*, align 8
  %5 = alloca %struct.iommu_table_group*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.iommu_table*, align 8
  store %struct.tce_container* %0, %struct.tce_container** %4, align 8
  store %struct.iommu_table_group* %1, %struct.iommu_table_group** %5, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %55, %2
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @IOMMU_TABLE_GROUP_MAX_TABLES, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %58

14:                                               ; preds = %10
  %15 = load %struct.iommu_table_group*, %struct.iommu_table_group** %5, align 8
  %16 = getelementptr inbounds %struct.iommu_table_group, %struct.iommu_table_group* %15, i32 0, i32 0
  %17 = load %struct.iommu_table**, %struct.iommu_table*** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.iommu_table*, %struct.iommu_table** %17, i64 %19
  %21 = load %struct.iommu_table*, %struct.iommu_table** %20, align 8
  store %struct.iommu_table* %21, %struct.iommu_table** %9, align 8
  %22 = load %struct.iommu_table*, %struct.iommu_table** %9, align 8
  %23 = icmp ne %struct.iommu_table* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %14
  %25 = load %struct.iommu_table*, %struct.iommu_table** %9, align 8
  %26 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %24, %14
  br label %55

30:                                               ; preds = %24
  %31 = load %struct.iommu_table*, %struct.iommu_table** %9, align 8
  %32 = call i32 @iommu_take_ownership(%struct.iommu_table* %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %54

35:                                               ; preds = %30
  store i32 0, i32* %7, align 4
  br label %36

36:                                               ; preds = %49, %35
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %52

40:                                               ; preds = %36
  %41 = load %struct.iommu_table_group*, %struct.iommu_table_group** %5, align 8
  %42 = getelementptr inbounds %struct.iommu_table_group, %struct.iommu_table_group* %41, i32 0, i32 0
  %43 = load %struct.iommu_table**, %struct.iommu_table*** %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.iommu_table*, %struct.iommu_table** %43, i64 %45
  %47 = load %struct.iommu_table*, %struct.iommu_table** %46, align 8
  %48 = call i32 @iommu_release_ownership(%struct.iommu_table* %47)
  br label %49

49:                                               ; preds = %40
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %7, align 4
  br label %36

52:                                               ; preds = %36
  %53 = load i32, i32* %8, align 4
  store i32 %53, i32* %3, align 4
  br label %81

54:                                               ; preds = %30
  br label %55

55:                                               ; preds = %54, %29
  %56 = load i32, i32* %6, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %6, align 4
  br label %10

58:                                               ; preds = %10
  store i32 0, i32* %6, align 4
  br label %59

59:                                               ; preds = %77, %58
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* @IOMMU_TABLE_GROUP_MAX_TABLES, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %80

63:                                               ; preds = %59
  %64 = load %struct.iommu_table_group*, %struct.iommu_table_group** %5, align 8
  %65 = getelementptr inbounds %struct.iommu_table_group, %struct.iommu_table_group* %64, i32 0, i32 0
  %66 = load %struct.iommu_table**, %struct.iommu_table*** %65, align 8
  %67 = load i32, i32* %6, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.iommu_table*, %struct.iommu_table** %66, i64 %68
  %70 = load %struct.iommu_table*, %struct.iommu_table** %69, align 8
  %71 = load %struct.tce_container*, %struct.tce_container** %4, align 8
  %72 = getelementptr inbounds %struct.tce_container, %struct.tce_container* %71, i32 0, i32 0
  %73 = load %struct.iommu_table**, %struct.iommu_table*** %72, align 8
  %74 = load i32, i32* %6, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.iommu_table*, %struct.iommu_table** %73, i64 %75
  store %struct.iommu_table* %70, %struct.iommu_table** %76, align 8
  br label %77

77:                                               ; preds = %63
  %78 = load i32, i32* %6, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %6, align 4
  br label %59

80:                                               ; preds = %59
  store i32 0, i32* %3, align 4
  br label %81

81:                                               ; preds = %80, %52
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i32 @iommu_take_ownership(%struct.iommu_table*) #1

declare dso_local i32 @iommu_release_ownership(%struct.iommu_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
