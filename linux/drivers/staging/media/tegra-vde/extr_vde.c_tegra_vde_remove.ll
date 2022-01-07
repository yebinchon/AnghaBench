; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/tegra-vde/extr_vde.c_tegra_vde_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/tegra-vde/extr_vde.c_tegra_vde_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.tegra_vde = type { i32, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @tegra_vde_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_vde_remove(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.tegra_vde*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = call %struct.tegra_vde* @platform_get_drvdata(%struct.platform_device* %7)
  store %struct.tegra_vde* %8, %struct.tegra_vde** %4, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %5, align 8
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = call i32 @pm_runtime_enabled(%struct.device* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %22, label %14

14:                                               ; preds = %1
  %15 = load %struct.device*, %struct.device** %5, align 8
  %16 = call i32 @tegra_vde_runtime_suspend(%struct.device* %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %2, align 4
  br label %45

21:                                               ; preds = %14
  br label %22

22:                                               ; preds = %21, %1
  %23 = load %struct.device*, %struct.device** %5, align 8
  %24 = call i32 @pm_runtime_dont_use_autosuspend(%struct.device* %23)
  %25 = load %struct.device*, %struct.device** %5, align 8
  %26 = call i32 @pm_runtime_disable(%struct.device* %25)
  %27 = load %struct.tegra_vde*, %struct.tegra_vde** %4, align 8
  %28 = getelementptr inbounds %struct.tegra_vde, %struct.tegra_vde* %27, i32 0, i32 2
  %29 = call i32 @misc_deregister(i32* %28)
  %30 = load %struct.tegra_vde*, %struct.tegra_vde** %4, align 8
  %31 = call i32 @tegra_vde_dmabuf_cache_unmap_all(%struct.tegra_vde* %30)
  %32 = load %struct.tegra_vde*, %struct.tegra_vde** %4, align 8
  %33 = call i32 @tegra_vde_iommu_deinit(%struct.tegra_vde* %32)
  %34 = load %struct.tegra_vde*, %struct.tegra_vde** %4, align 8
  %35 = getelementptr inbounds %struct.tegra_vde, %struct.tegra_vde* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.tegra_vde*, %struct.tegra_vde** %4, align 8
  %38 = getelementptr inbounds %struct.tegra_vde, %struct.tegra_vde* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.tegra_vde*, %struct.tegra_vde** %4, align 8
  %41 = getelementptr inbounds %struct.tegra_vde, %struct.tegra_vde* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @gen_pool_size(i32 %42)
  %44 = call i32 @gen_pool_free(i32 %36, i64 %39, i32 %43)
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %22, %19
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local %struct.tegra_vde* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @pm_runtime_enabled(%struct.device*) #1

declare dso_local i32 @tegra_vde_runtime_suspend(%struct.device*) #1

declare dso_local i32 @pm_runtime_dont_use_autosuspend(%struct.device*) #1

declare dso_local i32 @pm_runtime_disable(%struct.device*) #1

declare dso_local i32 @misc_deregister(i32*) #1

declare dso_local i32 @tegra_vde_dmabuf_cache_unmap_all(%struct.tegra_vde*) #1

declare dso_local i32 @tegra_vde_iommu_deinit(%struct.tegra_vde*) #1

declare dso_local i32 @gen_pool_free(i32, i64, i32) #1

declare dso_local i32 @gen_pool_size(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
