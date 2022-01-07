; ModuleID = '/home/carl/AnghaBench/linux/drivers/vfio/extr_vfio_iommu_type1.c_vfio_remove_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vfio/extr_vfio_iommu_type1.c_vfio_remove_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfio_iommu = type { i32 }
%struct.vfio_dma = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vfio_iommu*, %struct.vfio_dma*)* @vfio_remove_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vfio_remove_dma(%struct.vfio_iommu* %0, %struct.vfio_dma* %1) #0 {
  %3 = alloca %struct.vfio_iommu*, align 8
  %4 = alloca %struct.vfio_dma*, align 8
  store %struct.vfio_iommu* %0, %struct.vfio_iommu** %3, align 8
  store %struct.vfio_dma* %1, %struct.vfio_dma** %4, align 8
  %5 = load %struct.vfio_iommu*, %struct.vfio_iommu** %3, align 8
  %6 = load %struct.vfio_dma*, %struct.vfio_dma** %4, align 8
  %7 = call i32 @vfio_unmap_unpin(%struct.vfio_iommu* %5, %struct.vfio_dma* %6, i32 1)
  %8 = load %struct.vfio_iommu*, %struct.vfio_iommu** %3, align 8
  %9 = load %struct.vfio_dma*, %struct.vfio_dma** %4, align 8
  %10 = call i32 @vfio_unlink_dma(%struct.vfio_iommu* %8, %struct.vfio_dma* %9)
  %11 = load %struct.vfio_dma*, %struct.vfio_dma** %4, align 8
  %12 = getelementptr inbounds %struct.vfio_dma, %struct.vfio_dma* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @put_task_struct(i32 %13)
  %15 = load %struct.vfio_dma*, %struct.vfio_dma** %4, align 8
  %16 = call i32 @kfree(%struct.vfio_dma* %15)
  %17 = load %struct.vfio_iommu*, %struct.vfio_iommu** %3, align 8
  %18 = getelementptr inbounds %struct.vfio_iommu, %struct.vfio_iommu* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %18, align 4
  ret void
}

declare dso_local i32 @vfio_unmap_unpin(%struct.vfio_iommu*, %struct.vfio_dma*, i32) #1

declare dso_local i32 @vfio_unlink_dma(%struct.vfio_iommu*, %struct.vfio_dma*) #1

declare dso_local i32 @put_task_struct(i32) #1

declare dso_local i32 @kfree(%struct.vfio_dma*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
