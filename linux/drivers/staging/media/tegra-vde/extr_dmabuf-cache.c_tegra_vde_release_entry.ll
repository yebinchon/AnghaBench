; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/tegra-vde/extr_dmabuf-cache.c_tegra_vde_release_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/tegra-vde/extr_dmabuf-cache.c_tegra_vde_release_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_vde_cache_entry = type { i32, %struct.TYPE_5__*, i32, i32, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_5__ = type { %struct.dma_buf* }
%struct.dma_buf = type { i32 }
%struct.TYPE_4__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra_vde_cache_entry*)* @tegra_vde_release_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_vde_release_entry(%struct.tegra_vde_cache_entry* %0) #0 {
  %2 = alloca %struct.tegra_vde_cache_entry*, align 8
  %3 = alloca %struct.dma_buf*, align 8
  store %struct.tegra_vde_cache_entry* %0, %struct.tegra_vde_cache_entry** %2, align 8
  %4 = load %struct.tegra_vde_cache_entry*, %struct.tegra_vde_cache_entry** %2, align 8
  %5 = getelementptr inbounds %struct.tegra_vde_cache_entry, %struct.tegra_vde_cache_entry* %4, i32 0, i32 1
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = load %struct.dma_buf*, %struct.dma_buf** %7, align 8
  store %struct.dma_buf* %8, %struct.dma_buf** %3, align 8
  %9 = load %struct.tegra_vde_cache_entry*, %struct.tegra_vde_cache_entry** %2, align 8
  %10 = getelementptr inbounds %struct.tegra_vde_cache_entry, %struct.tegra_vde_cache_entry* %9, i32 0, i32 6
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @WARN_ON_ONCE(i32 %11)
  %13 = load %struct.tegra_vde_cache_entry*, %struct.tegra_vde_cache_entry** %2, align 8
  %14 = getelementptr inbounds %struct.tegra_vde_cache_entry, %struct.tegra_vde_cache_entry* %13, i32 0, i32 5
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %1
  %20 = load %struct.tegra_vde_cache_entry*, %struct.tegra_vde_cache_entry** %2, align 8
  %21 = getelementptr inbounds %struct.tegra_vde_cache_entry, %struct.tegra_vde_cache_entry* %20, i32 0, i32 5
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = load %struct.tegra_vde_cache_entry*, %struct.tegra_vde_cache_entry** %2, align 8
  %24 = getelementptr inbounds %struct.tegra_vde_cache_entry, %struct.tegra_vde_cache_entry* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @tegra_vde_iommu_unmap(%struct.TYPE_4__* %22, i32 %25)
  br label %27

27:                                               ; preds = %19, %1
  %28 = load %struct.tegra_vde_cache_entry*, %struct.tegra_vde_cache_entry** %2, align 8
  %29 = getelementptr inbounds %struct.tegra_vde_cache_entry, %struct.tegra_vde_cache_entry* %28, i32 0, i32 1
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = load %struct.tegra_vde_cache_entry*, %struct.tegra_vde_cache_entry** %2, align 8
  %32 = getelementptr inbounds %struct.tegra_vde_cache_entry, %struct.tegra_vde_cache_entry* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.tegra_vde_cache_entry*, %struct.tegra_vde_cache_entry** %2, align 8
  %35 = getelementptr inbounds %struct.tegra_vde_cache_entry, %struct.tegra_vde_cache_entry* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @dma_buf_unmap_attachment(%struct.TYPE_5__* %30, i32 %33, i32 %36)
  %38 = load %struct.dma_buf*, %struct.dma_buf** %3, align 8
  %39 = load %struct.tegra_vde_cache_entry*, %struct.tegra_vde_cache_entry** %2, align 8
  %40 = getelementptr inbounds %struct.tegra_vde_cache_entry, %struct.tegra_vde_cache_entry* %39, i32 0, i32 1
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = call i32 @dma_buf_detach(%struct.dma_buf* %38, %struct.TYPE_5__* %41)
  %43 = load %struct.dma_buf*, %struct.dma_buf** %3, align 8
  %44 = call i32 @dma_buf_put(%struct.dma_buf* %43)
  %45 = load %struct.tegra_vde_cache_entry*, %struct.tegra_vde_cache_entry** %2, align 8
  %46 = getelementptr inbounds %struct.tegra_vde_cache_entry, %struct.tegra_vde_cache_entry* %45, i32 0, i32 0
  %47 = call i32 @list_del(i32* %46)
  %48 = load %struct.tegra_vde_cache_entry*, %struct.tegra_vde_cache_entry** %2, align 8
  %49 = call i32 @kfree(%struct.tegra_vde_cache_entry* %48)
  ret void
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @tegra_vde_iommu_unmap(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @dma_buf_unmap_attachment(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @dma_buf_detach(%struct.dma_buf*, %struct.TYPE_5__*) #1

declare dso_local i32 @dma_buf_put(%struct.dma_buf*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.tegra_vde_cache_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
