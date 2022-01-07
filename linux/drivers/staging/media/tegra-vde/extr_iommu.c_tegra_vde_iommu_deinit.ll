; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/tegra-vde/extr_iommu.c_tegra_vde_iommu_deinit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/tegra-vde/extr_iommu.c_tegra_vde_iommu_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_vde = type { i32*, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tegra_vde_iommu_deinit(%struct.tegra_vde* %0) #0 {
  %2 = alloca %struct.tegra_vde*, align 8
  store %struct.tegra_vde* %0, %struct.tegra_vde** %2, align 8
  %3 = load %struct.tegra_vde*, %struct.tegra_vde** %2, align 8
  %4 = getelementptr inbounds %struct.tegra_vde, %struct.tegra_vde* %3, i32 0, i32 0
  %5 = load i32*, i32** %4, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %7, label %41

7:                                                ; preds = %1
  %8 = load %struct.tegra_vde*, %struct.tegra_vde** %2, align 8
  %9 = getelementptr inbounds %struct.tegra_vde, %struct.tegra_vde* %8, i32 0, i32 2
  %10 = load %struct.tegra_vde*, %struct.tegra_vde** %2, align 8
  %11 = getelementptr inbounds %struct.tegra_vde, %struct.tegra_vde* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @__free_iova(i32* %9, i32 %12)
  %14 = load %struct.tegra_vde*, %struct.tegra_vde** %2, align 8
  %15 = getelementptr inbounds %struct.tegra_vde, %struct.tegra_vde* %14, i32 0, i32 2
  %16 = load %struct.tegra_vde*, %struct.tegra_vde** %2, align 8
  %17 = getelementptr inbounds %struct.tegra_vde, %struct.tegra_vde* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @__free_iova(i32* %15, i32 %18)
  %20 = load %struct.tegra_vde*, %struct.tegra_vde** %2, align 8
  %21 = getelementptr inbounds %struct.tegra_vde, %struct.tegra_vde* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load %struct.tegra_vde*, %struct.tegra_vde** %2, align 8
  %24 = getelementptr inbounds %struct.tegra_vde, %struct.tegra_vde* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @iommu_detach_group(i32* %22, i32 %25)
  %27 = load %struct.tegra_vde*, %struct.tegra_vde** %2, align 8
  %28 = getelementptr inbounds %struct.tegra_vde, %struct.tegra_vde* %27, i32 0, i32 2
  %29 = call i32 @put_iova_domain(i32* %28)
  %30 = call i32 (...) @iova_cache_put()
  %31 = load %struct.tegra_vde*, %struct.tegra_vde** %2, align 8
  %32 = getelementptr inbounds %struct.tegra_vde, %struct.tegra_vde* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @iommu_domain_free(i32* %33)
  %35 = load %struct.tegra_vde*, %struct.tegra_vde** %2, align 8
  %36 = getelementptr inbounds %struct.tegra_vde, %struct.tegra_vde* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @iommu_group_put(i32 %37)
  %39 = load %struct.tegra_vde*, %struct.tegra_vde** %2, align 8
  %40 = getelementptr inbounds %struct.tegra_vde, %struct.tegra_vde* %39, i32 0, i32 0
  store i32* null, i32** %40, align 8
  br label %41

41:                                               ; preds = %7, %1
  ret void
}

declare dso_local i32 @__free_iova(i32*, i32) #1

declare dso_local i32 @iommu_detach_group(i32*, i32) #1

declare dso_local i32 @put_iova_domain(i32*) #1

declare dso_local i32 @iova_cache_put(...) #1

declare dso_local i32 @iommu_domain_free(i32*) #1

declare dso_local i32 @iommu_group_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
