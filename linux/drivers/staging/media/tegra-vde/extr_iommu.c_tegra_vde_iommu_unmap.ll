; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/tegra-vde/extr_iommu.c_tegra_vde_iommu_unmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/tegra-vde/extr_iommu.c_tegra_vde_iommu_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_vde = type { i32, i32 }
%struct.iova = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tegra_vde_iommu_unmap(%struct.tegra_vde* %0, %struct.iova* %1) #0 {
  %3 = alloca %struct.tegra_vde*, align 8
  %4 = alloca %struct.iova*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.tegra_vde* %0, %struct.tegra_vde** %3, align 8
  store %struct.iova* %1, %struct.iova** %4, align 8
  %8 = load %struct.tegra_vde*, %struct.tegra_vde** %3, align 8
  %9 = getelementptr inbounds %struct.tegra_vde, %struct.tegra_vde* %8, i32 0, i32 0
  %10 = call i64 @iova_shift(i32* %9)
  store i64 %10, i64* %5, align 8
  %11 = load %struct.iova*, %struct.iova** %4, align 8
  %12 = call i64 @iova_size(%struct.iova* %11)
  %13 = load i64, i64* %5, align 8
  %14 = shl i64 %12, %13
  store i64 %14, i64* %6, align 8
  %15 = load %struct.tegra_vde*, %struct.tegra_vde** %3, align 8
  %16 = getelementptr inbounds %struct.tegra_vde, %struct.tegra_vde* %15, i32 0, i32 0
  %17 = load %struct.iova*, %struct.iova** %4, align 8
  %18 = call i32 @iova_dma_addr(i32* %16, %struct.iova* %17)
  store i32 %18, i32* %7, align 4
  %19 = load %struct.tegra_vde*, %struct.tegra_vde** %3, align 8
  %20 = getelementptr inbounds %struct.tegra_vde, %struct.tegra_vde* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i64, i64* %6, align 8
  %24 = call i32 @iommu_unmap(i32 %21, i32 %22, i64 %23)
  %25 = load %struct.tegra_vde*, %struct.tegra_vde** %3, align 8
  %26 = getelementptr inbounds %struct.tegra_vde, %struct.tegra_vde* %25, i32 0, i32 0
  %27 = load %struct.iova*, %struct.iova** %4, align 8
  %28 = call i32 @__free_iova(i32* %26, %struct.iova* %27)
  ret void
}

declare dso_local i64 @iova_shift(i32*) #1

declare dso_local i64 @iova_size(%struct.iova*) #1

declare dso_local i32 @iova_dma_addr(i32*, %struct.iova*) #1

declare dso_local i32 @iommu_unmap(i32, i32, i64) #1

declare dso_local i32 @__free_iova(i32*, %struct.iova*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
