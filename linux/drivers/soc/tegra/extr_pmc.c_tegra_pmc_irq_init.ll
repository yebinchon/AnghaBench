; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/tegra/extr_pmc.c_tegra_pmc_irq_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/tegra/extr_pmc.c_tegra_pmc_irq_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_pmc = type { %struct.TYPE_5__*, i32, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.irq_domain = type { i32 }
%struct.device_node = type { i32 }

@irq_chip_mask_parent = common dso_local global i32 0, align 4
@irq_chip_unmask_parent = common dso_local global i32 0, align 4
@irq_chip_eoi_parent = common dso_local global i32 0, align 4
@irq_chip_set_affinity_parent = common dso_local global i32 0, align 4
@tegra_pmc_irq_set_type = common dso_local global i32 0, align 4
@tegra_pmc_irq_set_wake = common dso_local global i32 0, align 4
@tegra_pmc_irq_domain_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"failed to allocate domain\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_pmc*)* @tegra_pmc_irq_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_pmc_irq_init(%struct.tegra_pmc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tegra_pmc*, align 8
  %4 = alloca %struct.irq_domain*, align 8
  %5 = alloca %struct.device_node*, align 8
  store %struct.tegra_pmc* %0, %struct.tegra_pmc** %3, align 8
  store %struct.irq_domain* null, %struct.irq_domain** %4, align 8
  %6 = load %struct.tegra_pmc*, %struct.tegra_pmc** %3, align 8
  %7 = getelementptr inbounds %struct.tegra_pmc, %struct.tegra_pmc* %6, i32 0, i32 0
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.device_node* @of_irq_find_parent(i32 %10)
  store %struct.device_node* %11, %struct.device_node** %5, align 8
  %12 = load %struct.device_node*, %struct.device_node** %5, align 8
  %13 = icmp ne %struct.device_node* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load %struct.device_node*, %struct.device_node** %5, align 8
  %16 = call %struct.irq_domain* @irq_find_host(%struct.device_node* %15)
  store %struct.irq_domain* %16, %struct.irq_domain** %4, align 8
  %17 = load %struct.device_node*, %struct.device_node** %5, align 8
  %18 = call i32 @of_node_put(%struct.device_node* %17)
  br label %19

19:                                               ; preds = %14, %1
  %20 = load %struct.irq_domain*, %struct.irq_domain** %4, align 8
  %21 = icmp ne %struct.irq_domain* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %77

23:                                               ; preds = %19
  %24 = load %struct.tegra_pmc*, %struct.tegra_pmc** %3, align 8
  %25 = getelementptr inbounds %struct.tegra_pmc, %struct.tegra_pmc* %24, i32 0, i32 0
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = call i32 @dev_name(%struct.TYPE_5__* %26)
  %28 = load %struct.tegra_pmc*, %struct.tegra_pmc** %3, align 8
  %29 = getelementptr inbounds %struct.tegra_pmc, %struct.tegra_pmc* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 6
  store i32 %27, i32* %30, align 4
  %31 = load i32, i32* @irq_chip_mask_parent, align 4
  %32 = load %struct.tegra_pmc*, %struct.tegra_pmc** %3, align 8
  %33 = getelementptr inbounds %struct.tegra_pmc, %struct.tegra_pmc* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 5
  store i32 %31, i32* %34, align 4
  %35 = load i32, i32* @irq_chip_unmask_parent, align 4
  %36 = load %struct.tegra_pmc*, %struct.tegra_pmc** %3, align 8
  %37 = getelementptr inbounds %struct.tegra_pmc, %struct.tegra_pmc* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 4
  store i32 %35, i32* %38, align 4
  %39 = load i32, i32* @irq_chip_eoi_parent, align 4
  %40 = load %struct.tegra_pmc*, %struct.tegra_pmc** %3, align 8
  %41 = getelementptr inbounds %struct.tegra_pmc, %struct.tegra_pmc* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 3
  store i32 %39, i32* %42, align 4
  %43 = load i32, i32* @irq_chip_set_affinity_parent, align 4
  %44 = load %struct.tegra_pmc*, %struct.tegra_pmc** %3, align 8
  %45 = getelementptr inbounds %struct.tegra_pmc, %struct.tegra_pmc* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 2
  store i32 %43, i32* %46, align 4
  %47 = load i32, i32* @tegra_pmc_irq_set_type, align 4
  %48 = load %struct.tegra_pmc*, %struct.tegra_pmc** %3, align 8
  %49 = getelementptr inbounds %struct.tegra_pmc, %struct.tegra_pmc* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  store i32 %47, i32* %50, align 4
  %51 = load i32, i32* @tegra_pmc_irq_set_wake, align 4
  %52 = load %struct.tegra_pmc*, %struct.tegra_pmc** %3, align 8
  %53 = getelementptr inbounds %struct.tegra_pmc, %struct.tegra_pmc* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  store i32 %51, i32* %54, align 4
  %55 = load %struct.irq_domain*, %struct.irq_domain** %4, align 8
  %56 = load %struct.tegra_pmc*, %struct.tegra_pmc** %3, align 8
  %57 = getelementptr inbounds %struct.tegra_pmc, %struct.tegra_pmc* %56, i32 0, i32 0
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.tegra_pmc*, %struct.tegra_pmc** %3, align 8
  %62 = call i32 @irq_domain_add_hierarchy(%struct.irq_domain* %55, i32 0, i32 96, i32 %60, i32* @tegra_pmc_irq_domain_ops, %struct.tegra_pmc* %61)
  %63 = load %struct.tegra_pmc*, %struct.tegra_pmc** %3, align 8
  %64 = getelementptr inbounds %struct.tegra_pmc, %struct.tegra_pmc* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 8
  %65 = load %struct.tegra_pmc*, %struct.tegra_pmc** %3, align 8
  %66 = getelementptr inbounds %struct.tegra_pmc, %struct.tegra_pmc* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %76, label %69

69:                                               ; preds = %23
  %70 = load %struct.tegra_pmc*, %struct.tegra_pmc** %3, align 8
  %71 = getelementptr inbounds %struct.tegra_pmc, %struct.tegra_pmc* %70, i32 0, i32 0
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %71, align 8
  %73 = call i32 @dev_err(%struct.TYPE_5__* %72, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %74 = load i32, i32* @ENOMEM, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %2, align 4
  br label %77

76:                                               ; preds = %23
  store i32 0, i32* %2, align 4
  br label %77

77:                                               ; preds = %76, %69, %22
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local %struct.device_node* @of_irq_find_parent(i32) #1

declare dso_local %struct.irq_domain* @irq_find_host(%struct.device_node*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @dev_name(%struct.TYPE_5__*) #1

declare dso_local i32 @irq_domain_add_hierarchy(%struct.irq_domain*, i32, i32, i32, i32*, %struct.tegra_pmc*) #1

declare dso_local i32 @dev_err(%struct.TYPE_5__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
