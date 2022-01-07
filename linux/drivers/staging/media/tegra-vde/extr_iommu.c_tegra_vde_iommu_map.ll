; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/tegra-vde/extr_iommu.c_tegra_vde_iommu_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/tegra-vde/extr_iommu.c_tegra_vde_iommu_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_vde = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.sg_table = type { i32, i32 }
%struct.iova = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@IOMMU_READ = common dso_local global i32 0, align 4
@IOMMU_WRITE = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tegra_vde_iommu_map(%struct.tegra_vde* %0, %struct.sg_table* %1, %struct.iova** %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tegra_vde*, align 8
  %7 = alloca %struct.sg_table*, align 8
  %8 = alloca %struct.iova**, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.iova*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.tegra_vde* %0, %struct.tegra_vde** %6, align 8
  store %struct.sg_table* %1, %struct.sg_table** %7, align 8
  store %struct.iova** %2, %struct.iova*** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.tegra_vde*, %struct.tegra_vde** %6, align 8
  %15 = getelementptr inbounds %struct.tegra_vde, %struct.tegra_vde* %14, i32 0, i32 1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %12, align 8
  %20 = load %struct.tegra_vde*, %struct.tegra_vde** %6, align 8
  %21 = getelementptr inbounds %struct.tegra_vde, %struct.tegra_vde* %20, i32 0, i32 0
  %22 = load i64, i64* %9, align 8
  %23 = call i64 @iova_align(i32* %21, i64 %22)
  store i64 %23, i64* %9, align 8
  %24 = load %struct.tegra_vde*, %struct.tegra_vde** %6, align 8
  %25 = getelementptr inbounds %struct.tegra_vde, %struct.tegra_vde* %24, i32 0, i32 0
  %26 = call i64 @iova_shift(i32* %25)
  store i64 %26, i64* %11, align 8
  %27 = load %struct.tegra_vde*, %struct.tegra_vde** %6, align 8
  %28 = getelementptr inbounds %struct.tegra_vde, %struct.tegra_vde* %27, i32 0, i32 0
  %29 = load i64, i64* %9, align 8
  %30 = load i64, i64* %11, align 8
  %31 = lshr i64 %29, %30
  %32 = load i64, i64* %12, align 8
  %33 = load i64, i64* %11, align 8
  %34 = lshr i64 %32, %33
  %35 = call %struct.iova* @alloc_iova(i32* %28, i64 %31, i64 %34, i32 1)
  store %struct.iova* %35, %struct.iova** %10, align 8
  %36 = load %struct.iova*, %struct.iova** %10, align 8
  %37 = icmp ne %struct.iova* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %4
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %5, align 4
  br label %72

41:                                               ; preds = %4
  %42 = load %struct.tegra_vde*, %struct.tegra_vde** %6, align 8
  %43 = getelementptr inbounds %struct.tegra_vde, %struct.tegra_vde* %42, i32 0, i32 0
  %44 = load %struct.iova*, %struct.iova** %10, align 8
  %45 = call i32 @iova_dma_addr(i32* %43, %struct.iova* %44)
  store i32 %45, i32* %13, align 4
  %46 = load %struct.tegra_vde*, %struct.tegra_vde** %6, align 8
  %47 = getelementptr inbounds %struct.tegra_vde, %struct.tegra_vde* %46, i32 0, i32 1
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = load i32, i32* %13, align 4
  %50 = load %struct.sg_table*, %struct.sg_table** %7, align 8
  %51 = getelementptr inbounds %struct.sg_table, %struct.sg_table* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.sg_table*, %struct.sg_table** %7, align 8
  %54 = getelementptr inbounds %struct.sg_table, %struct.sg_table* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @IOMMU_READ, align 4
  %57 = load i32, i32* @IOMMU_WRITE, align 4
  %58 = or i32 %56, %57
  %59 = call i64 @iommu_map_sg(%struct.TYPE_4__* %48, i32 %49, i32 %52, i32 %55, i32 %58)
  store i64 %59, i64* %9, align 8
  %60 = load i64, i64* %9, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %69, label %62

62:                                               ; preds = %41
  %63 = load %struct.tegra_vde*, %struct.tegra_vde** %6, align 8
  %64 = getelementptr inbounds %struct.tegra_vde, %struct.tegra_vde* %63, i32 0, i32 0
  %65 = load %struct.iova*, %struct.iova** %10, align 8
  %66 = call i32 @__free_iova(i32* %64, %struct.iova* %65)
  %67 = load i32, i32* @ENXIO, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %5, align 4
  br label %72

69:                                               ; preds = %41
  %70 = load %struct.iova*, %struct.iova** %10, align 8
  %71 = load %struct.iova**, %struct.iova*** %8, align 8
  store %struct.iova* %70, %struct.iova** %71, align 8
  store i32 0, i32* %5, align 4
  br label %72

72:                                               ; preds = %69, %62, %38
  %73 = load i32, i32* %5, align 4
  ret i32 %73
}

declare dso_local i64 @iova_align(i32*, i64) #1

declare dso_local i64 @iova_shift(i32*) #1

declare dso_local %struct.iova* @alloc_iova(i32*, i64, i64, i32) #1

declare dso_local i32 @iova_dma_addr(i32*, %struct.iova*) #1

declare dso_local i64 @iommu_map_sg(%struct.TYPE_4__*, i32, i32, i32, i32) #1

declare dso_local i32 @__free_iova(i32*, %struct.iova*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
