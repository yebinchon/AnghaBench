; ModuleID = '/home/carl/AnghaBench/linux/drivers/vfio/extr_vfio_iommu_spapr_tce.c_tce_iommu_create_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vfio/extr_vfio_iommu_spapr_tce.c_tce_iommu_create_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tce_container = type { i32 }
%struct.iommu_table_group = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 (i32, i32, i32)*, i64 (%struct.iommu_table_group*, i32, i32, i32, i32, %struct.iommu_table**)* }
%struct.iommu_table = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@EINVAL = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.tce_container*, %struct.iommu_table_group*, i32, i32, i32, i32, %struct.iommu_table**)* @tce_iommu_create_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @tce_iommu_create_table(%struct.tce_container* %0, %struct.iommu_table_group* %1, i32 %2, i32 %3, i32 %4, i32 %5, %struct.iommu_table** %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca %struct.tce_container*, align 8
  %10 = alloca %struct.iommu_table_group*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.iommu_table**, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.tce_container* %0, %struct.tce_container** %9, align 8
  store %struct.iommu_table_group* %1, %struct.iommu_table_group** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store %struct.iommu_table** %6, %struct.iommu_table*** %15, align 8
  %18 = load %struct.iommu_table_group*, %struct.iommu_table_group** %10, align 8
  %19 = getelementptr inbounds %struct.iommu_table_group, %struct.iommu_table_group* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64 (i32, i32, i32)*, i64 (i32, i32, i32)** %21, align 8
  %23 = load i32, i32* %12, align 4
  %24 = load i32, i32* %13, align 4
  %25 = load i32, i32* %14, align 4
  %26 = call i64 %22(i32 %23, i32 %24, i32 %25)
  store i64 %26, i64* %17, align 8
  %27 = load i64, i64* %17, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %7
  %30 = load i64, i64* @EINVAL, align 8
  %31 = sub nsw i64 0, %30
  store i64 %31, i64* %8, align 8
  br label %86

32:                                               ; preds = %7
  %33 = load %struct.tce_container*, %struct.tce_container** %9, align 8
  %34 = getelementptr inbounds %struct.tce_container, %struct.tce_container* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i64, i64* %17, align 8
  %37 = load i64, i64* @PAGE_SHIFT, align 8
  %38 = ashr i64 %36, %37
  %39 = call i64 @account_locked_vm(i32 %35, i64 %38, i32 1)
  store i64 %39, i64* %16, align 8
  %40 = load i64, i64* %16, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %32
  %43 = load i64, i64* %16, align 8
  store i64 %43, i64* %8, align 8
  br label %86

44:                                               ; preds = %32
  %45 = load %struct.iommu_table_group*, %struct.iommu_table_group** %10, align 8
  %46 = getelementptr inbounds %struct.iommu_table_group, %struct.iommu_table_group* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i64 (%struct.iommu_table_group*, i32, i32, i32, i32, %struct.iommu_table**)*, i64 (%struct.iommu_table_group*, i32, i32, i32, i32, %struct.iommu_table**)** %48, align 8
  %50 = load %struct.iommu_table_group*, %struct.iommu_table_group** %10, align 8
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* %13, align 4
  %54 = load i32, i32* %14, align 4
  %55 = load %struct.iommu_table**, %struct.iommu_table*** %15, align 8
  %56 = call i64 %49(%struct.iommu_table_group* %50, i32 %51, i32 %52, i32 %53, i32 %54, %struct.iommu_table** %55)
  store i64 %56, i64* %16, align 8
  %57 = load i64, i64* %16, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %68, label %59

59:                                               ; preds = %44
  %60 = load %struct.iommu_table**, %struct.iommu_table*** %15, align 8
  %61 = load %struct.iommu_table*, %struct.iommu_table** %60, align 8
  %62 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %61, i32 0, i32 1
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  %67 = xor i1 %66, true
  br label %68

68:                                               ; preds = %59, %44
  %69 = phi i1 [ false, %44 ], [ %67, %59 ]
  %70 = zext i1 %69 to i32
  %71 = call i32 @WARN_ON(i32 %70)
  %72 = load i64, i64* %16, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %81, label %74

74:                                               ; preds = %68
  %75 = load %struct.iommu_table**, %struct.iommu_table*** %15, align 8
  %76 = load %struct.iommu_table*, %struct.iommu_table** %75, align 8
  %77 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* %17, align 8
  %80 = icmp sgt i64 %78, %79
  br label %81

81:                                               ; preds = %74, %68
  %82 = phi i1 [ false, %68 ], [ %80, %74 ]
  %83 = zext i1 %82 to i32
  %84 = call i32 @WARN_ON(i32 %83)
  %85 = load i64, i64* %16, align 8
  store i64 %85, i64* %8, align 8
  br label %86

86:                                               ; preds = %81, %42, %29
  %87 = load i64, i64* %8, align 8
  ret i64 %87
}

declare dso_local i64 @account_locked_vm(i32, i64, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
