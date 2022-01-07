; ModuleID = '/home/carl/AnghaBench/linux/drivers/vfio/extr_vfio_iommu_spapr_tce.c_tce_iommu_prereg_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vfio/extr_vfio_iommu_spapr_tce.c_tce_iommu_prereg_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tce_container = type { i32 }
%struct.tce_iommu_prereg = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.tce_container*, %struct.tce_iommu_prereg*)* @tce_iommu_prereg_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @tce_iommu_prereg_free(%struct.tce_container* %0, %struct.tce_iommu_prereg* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.tce_container*, align 8
  %5 = alloca %struct.tce_iommu_prereg*, align 8
  %6 = alloca i64, align 8
  store %struct.tce_container* %0, %struct.tce_container** %4, align 8
  store %struct.tce_iommu_prereg* %1, %struct.tce_iommu_prereg** %5, align 8
  %7 = load %struct.tce_container*, %struct.tce_container** %4, align 8
  %8 = getelementptr inbounds %struct.tce_container, %struct.tce_container* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.tce_iommu_prereg*, %struct.tce_iommu_prereg** %5, align 8
  %11 = getelementptr inbounds %struct.tce_iommu_prereg, %struct.tce_iommu_prereg* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @mm_iommu_put(i32 %9, i32 %12)
  store i64 %13, i64* %6, align 8
  %14 = load i64, i64* %6, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i64, i64* %6, align 8
  store i64 %17, i64* %3, align 8
  br label %24

18:                                               ; preds = %2
  %19 = load %struct.tce_iommu_prereg*, %struct.tce_iommu_prereg** %5, align 8
  %20 = getelementptr inbounds %struct.tce_iommu_prereg, %struct.tce_iommu_prereg* %19, i32 0, i32 0
  %21 = call i32 @list_del(i32* %20)
  %22 = load %struct.tce_iommu_prereg*, %struct.tce_iommu_prereg** %5, align 8
  %23 = call i32 @kfree(%struct.tce_iommu_prereg* %22)
  store i64 0, i64* %3, align 8
  br label %24

24:                                               ; preds = %18, %16
  %25 = load i64, i64* %3, align 8
  ret i64 %25
}

declare dso_local i64 @mm_iommu_put(i32, i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.tce_iommu_prereg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
