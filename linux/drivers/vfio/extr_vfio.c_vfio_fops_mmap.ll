; ModuleID = '/home/carl/AnghaBench/linux/drivers/vfio/extr_vfio.c_vfio_fops_mmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vfio/extr_vfio.c_vfio_fops_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.vfio_container* }
%struct.vfio_container = type { i32, %struct.vfio_iommu_driver* }
%struct.vfio_iommu_driver = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, %struct.vm_area_struct*)* }
%struct.vm_area_struct = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.vm_area_struct*)* @vfio_fops_mmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfio_fops_mmap(%struct.file* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca %struct.vfio_container*, align 8
  %6 = alloca %struct.vfio_iommu_driver*, align 8
  %7 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %4, align 8
  %8 = load %struct.file*, %struct.file** %3, align 8
  %9 = getelementptr inbounds %struct.file, %struct.file* %8, i32 0, i32 0
  %10 = load %struct.vfio_container*, %struct.vfio_container** %9, align 8
  store %struct.vfio_container* %10, %struct.vfio_container** %5, align 8
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %7, align 4
  %13 = load %struct.vfio_container*, %struct.vfio_container** %5, align 8
  %14 = getelementptr inbounds %struct.vfio_container, %struct.vfio_container* %13, i32 0, i32 1
  %15 = load %struct.vfio_iommu_driver*, %struct.vfio_iommu_driver** %14, align 8
  store %struct.vfio_iommu_driver* %15, %struct.vfio_iommu_driver** %6, align 8
  %16 = load %struct.vfio_iommu_driver*, %struct.vfio_iommu_driver** %6, align 8
  %17 = icmp ne %struct.vfio_iommu_driver* %16, null
  br i1 %17, label %18, label %25

18:                                               ; preds = %2
  %19 = load %struct.vfio_iommu_driver*, %struct.vfio_iommu_driver** %6, align 8
  %20 = getelementptr inbounds %struct.vfio_iommu_driver, %struct.vfio_iommu_driver* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32 (i32, %struct.vm_area_struct*)*, i32 (i32, %struct.vm_area_struct*)** %22, align 8
  %24 = icmp ne i32 (i32, %struct.vm_area_struct*)* %23, null
  br label %25

25:                                               ; preds = %18, %2
  %26 = phi i1 [ false, %2 ], [ %24, %18 ]
  %27 = zext i1 %26 to i32
  %28 = call i64 @likely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %25
  %31 = load %struct.vfio_iommu_driver*, %struct.vfio_iommu_driver** %6, align 8
  %32 = getelementptr inbounds %struct.vfio_iommu_driver, %struct.vfio_iommu_driver* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32 (i32, %struct.vm_area_struct*)*, i32 (i32, %struct.vm_area_struct*)** %34, align 8
  %36 = load %struct.vfio_container*, %struct.vfio_container** %5, align 8
  %37 = getelementptr inbounds %struct.vfio_container, %struct.vfio_container* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %40 = call i32 %35(i32 %38, %struct.vm_area_struct* %39)
  store i32 %40, i32* %7, align 4
  br label %41

41:                                               ; preds = %30, %25
  %42 = load i32, i32* %7, align 4
  ret i32 %42
}

declare dso_local i64 @likely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
