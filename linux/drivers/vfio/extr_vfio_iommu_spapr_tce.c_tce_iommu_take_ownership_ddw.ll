; ModuleID = '/home/carl/AnghaBench/linux/drivers/vfio/extr_vfio_iommu_spapr_tce.c_tce_iommu_take_ownership_ddw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vfio/extr_vfio_iommu_spapr_tce.c_tce_iommu_take_ownership_ddw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tce_container = type { %struct.iommu_table** }
%struct.iommu_table = type { i32 }
%struct.iommu_table_group = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 (%struct.iommu_table_group*, i64, %struct.iommu_table*)*, i32 (%struct.iommu_table_group*)*, i32 (%struct.iommu_table_group*, i64)*, i32 (%struct.iommu_table_group*)*, i32 }

@EFAULT = common dso_local global i64 0, align 8
@IOMMU_TABLE_GROUP_MAX_TABLES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.tce_container*, %struct.iommu_table_group*)* @tce_iommu_take_ownership_ddw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @tce_iommu_take_ownership_ddw(%struct.tce_container* %0, %struct.iommu_table_group* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.tce_container*, align 8
  %5 = alloca %struct.iommu_table_group*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.iommu_table*, align 8
  store %struct.tce_container* %0, %struct.tce_container** %4, align 8
  store %struct.iommu_table_group* %1, %struct.iommu_table_group** %5, align 8
  store i64 0, i64* %7, align 8
  %9 = load %struct.iommu_table_group*, %struct.iommu_table_group** %5, align 8
  %10 = getelementptr inbounds %struct.iommu_table_group, %struct.iommu_table_group* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %29

15:                                               ; preds = %2
  %16 = load %struct.iommu_table_group*, %struct.iommu_table_group** %5, align 8
  %17 = getelementptr inbounds %struct.iommu_table_group, %struct.iommu_table_group* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64 (%struct.iommu_table_group*, i64, %struct.iommu_table*)*, i64 (%struct.iommu_table_group*, i64, %struct.iommu_table*)** %19, align 8
  %21 = icmp ne i64 (%struct.iommu_table_group*, i64, %struct.iommu_table*)* %20, null
  br i1 %21, label %22, label %29

22:                                               ; preds = %15
  %23 = load %struct.iommu_table_group*, %struct.iommu_table_group** %5, align 8
  %24 = getelementptr inbounds %struct.iommu_table_group, %struct.iommu_table_group* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32 (%struct.iommu_table_group*)*, i32 (%struct.iommu_table_group*)** %26, align 8
  %28 = icmp ne i32 (%struct.iommu_table_group*)* %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %22, %15, %2
  %30 = call i32 @WARN_ON_ONCE(i32 1)
  %31 = load i64, i64* @EFAULT, align 8
  %32 = sub nsw i64 0, %31
  store i64 %32, i64* %3, align 8
  br label %99

33:                                               ; preds = %22
  %34 = load %struct.iommu_table_group*, %struct.iommu_table_group** %5, align 8
  %35 = getelementptr inbounds %struct.iommu_table_group, %struct.iommu_table_group* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 3
  %38 = load i32 (%struct.iommu_table_group*)*, i32 (%struct.iommu_table_group*)** %37, align 8
  %39 = load %struct.iommu_table_group*, %struct.iommu_table_group** %5, align 8
  %40 = call i32 %38(%struct.iommu_table_group* %39)
  store i64 0, i64* %6, align 8
  br label %41

41:                                               ; preds = %69, %33
  %42 = load i64, i64* %6, align 8
  %43 = load i64, i64* @IOMMU_TABLE_GROUP_MAX_TABLES, align 8
  %44 = icmp slt i64 %42, %43
  br i1 %44, label %45, label %72

45:                                               ; preds = %41
  %46 = load %struct.tce_container*, %struct.tce_container** %4, align 8
  %47 = getelementptr inbounds %struct.tce_container, %struct.tce_container* %46, i32 0, i32 0
  %48 = load %struct.iommu_table**, %struct.iommu_table*** %47, align 8
  %49 = load i64, i64* %6, align 8
  %50 = getelementptr inbounds %struct.iommu_table*, %struct.iommu_table** %48, i64 %49
  %51 = load %struct.iommu_table*, %struct.iommu_table** %50, align 8
  store %struct.iommu_table* %51, %struct.iommu_table** %8, align 8
  %52 = load %struct.iommu_table*, %struct.iommu_table** %8, align 8
  %53 = icmp ne %struct.iommu_table* %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %45
  br label %69

55:                                               ; preds = %45
  %56 = load %struct.iommu_table_group*, %struct.iommu_table_group** %5, align 8
  %57 = getelementptr inbounds %struct.iommu_table_group, %struct.iommu_table_group* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i64 (%struct.iommu_table_group*, i64, %struct.iommu_table*)*, i64 (%struct.iommu_table_group*, i64, %struct.iommu_table*)** %59, align 8
  %61 = load %struct.iommu_table_group*, %struct.iommu_table_group** %5, align 8
  %62 = load i64, i64* %6, align 8
  %63 = load %struct.iommu_table*, %struct.iommu_table** %8, align 8
  %64 = call i64 %60(%struct.iommu_table_group* %61, i64 %62, %struct.iommu_table* %63)
  store i64 %64, i64* %7, align 8
  %65 = load i64, i64* %7, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %55
  br label %73

68:                                               ; preds = %55
  br label %69

69:                                               ; preds = %68, %54
  %70 = load i64, i64* %6, align 8
  %71 = add nsw i64 %70, 1
  store i64 %71, i64* %6, align 8
  br label %41

72:                                               ; preds = %41
  store i64 0, i64* %3, align 8
  br label %99

73:                                               ; preds = %67
  store i64 0, i64* %6, align 8
  br label %74

74:                                               ; preds = %87, %73
  %75 = load i64, i64* %6, align 8
  %76 = load i64, i64* @IOMMU_TABLE_GROUP_MAX_TABLES, align 8
  %77 = icmp slt i64 %75, %76
  br i1 %77, label %78, label %90

78:                                               ; preds = %74
  %79 = load %struct.iommu_table_group*, %struct.iommu_table_group** %5, align 8
  %80 = getelementptr inbounds %struct.iommu_table_group, %struct.iommu_table_group* %79, i32 0, i32 0
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 2
  %83 = load i32 (%struct.iommu_table_group*, i64)*, i32 (%struct.iommu_table_group*, i64)** %82, align 8
  %84 = load %struct.iommu_table_group*, %struct.iommu_table_group** %5, align 8
  %85 = load i64, i64* %6, align 8
  %86 = call i32 %83(%struct.iommu_table_group* %84, i64 %85)
  br label %87

87:                                               ; preds = %78
  %88 = load i64, i64* %6, align 8
  %89 = add nsw i64 %88, 1
  store i64 %89, i64* %6, align 8
  br label %74

90:                                               ; preds = %74
  %91 = load %struct.iommu_table_group*, %struct.iommu_table_group** %5, align 8
  %92 = getelementptr inbounds %struct.iommu_table_group, %struct.iommu_table_group* %91, i32 0, i32 0
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 1
  %95 = load i32 (%struct.iommu_table_group*)*, i32 (%struct.iommu_table_group*)** %94, align 8
  %96 = load %struct.iommu_table_group*, %struct.iommu_table_group** %5, align 8
  %97 = call i32 %95(%struct.iommu_table_group* %96)
  %98 = load i64, i64* %7, align 8
  store i64 %98, i64* %3, align 8
  br label %99

99:                                               ; preds = %90, %72, %29
  %100 = load i64, i64* %3, align 8
  ret i64 %100
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
