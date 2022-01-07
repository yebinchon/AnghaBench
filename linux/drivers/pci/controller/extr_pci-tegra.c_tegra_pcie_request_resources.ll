; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-tegra.c_tegra_pcie_request_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-tegra.c_tegra_pcie_request_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_pcie = type { %struct.TYPE_4__, i32, i32, %struct.TYPE_3__, i32, i32, %struct.device* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.device = type { i32 }
%struct.pci_host_bridge = type { %struct.list_head }
%struct.list_head = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_pcie*)* @tegra_pcie_request_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_pcie_request_resources(%struct.tegra_pcie* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tegra_pcie*, align 8
  %4 = alloca %struct.pci_host_bridge*, align 8
  %5 = alloca %struct.list_head*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  store %struct.tegra_pcie* %0, %struct.tegra_pcie** %3, align 8
  %8 = load %struct.tegra_pcie*, %struct.tegra_pcie** %3, align 8
  %9 = call %struct.pci_host_bridge* @pci_host_bridge_from_priv(%struct.tegra_pcie* %8)
  store %struct.pci_host_bridge* %9, %struct.pci_host_bridge** %4, align 8
  %10 = load %struct.pci_host_bridge*, %struct.pci_host_bridge** %4, align 8
  %11 = getelementptr inbounds %struct.pci_host_bridge, %struct.pci_host_bridge* %10, i32 0, i32 0
  store %struct.list_head* %11, %struct.list_head** %5, align 8
  %12 = load %struct.tegra_pcie*, %struct.tegra_pcie** %3, align 8
  %13 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %12, i32 0, i32 6
  %14 = load %struct.device*, %struct.device** %13, align 8
  store %struct.device* %14, %struct.device** %6, align 8
  %15 = load %struct.list_head*, %struct.list_head** %5, align 8
  %16 = load %struct.tegra_pcie*, %struct.tegra_pcie** %3, align 8
  %17 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %16, i32 0, i32 1
  %18 = load %struct.tegra_pcie*, %struct.tegra_pcie** %3, align 8
  %19 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @pci_add_resource_offset(%struct.list_head* %15, i32* %17, i32 %21)
  %23 = load %struct.list_head*, %struct.list_head** %5, align 8
  %24 = load %struct.tegra_pcie*, %struct.tegra_pcie** %3, align 8
  %25 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %24, i32 0, i32 5
  %26 = load %struct.tegra_pcie*, %struct.tegra_pcie** %3, align 8
  %27 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @pci_add_resource_offset(%struct.list_head* %23, i32* %25, i32 %29)
  %31 = load %struct.list_head*, %struct.list_head** %5, align 8
  %32 = load %struct.tegra_pcie*, %struct.tegra_pcie** %3, align 8
  %33 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %32, i32 0, i32 4
  %34 = load %struct.tegra_pcie*, %struct.tegra_pcie** %3, align 8
  %35 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @pci_add_resource_offset(%struct.list_head* %31, i32* %33, i32 %37)
  %39 = load %struct.list_head*, %struct.list_head** %5, align 8
  %40 = load %struct.tegra_pcie*, %struct.tegra_pcie** %3, align 8
  %41 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %40, i32 0, i32 2
  %42 = call i32 @pci_add_resource(%struct.list_head* %39, i32* %41)
  %43 = load %struct.device*, %struct.device** %6, align 8
  %44 = load %struct.list_head*, %struct.list_head** %5, align 8
  %45 = call i32 @devm_request_pci_bus_resources(%struct.device* %43, %struct.list_head* %44)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %1
  %49 = load %struct.list_head*, %struct.list_head** %5, align 8
  %50 = call i32 @pci_free_resource_list(%struct.list_head* %49)
  %51 = load i32, i32* %7, align 4
  store i32 %51, i32* %2, align 4
  br label %60

52:                                               ; preds = %1
  %53 = load %struct.tegra_pcie*, %struct.tegra_pcie** %3, align 8
  %54 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %53, i32 0, i32 1
  %55 = load %struct.tegra_pcie*, %struct.tegra_pcie** %3, align 8
  %56 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @pci_remap_iospace(i32* %54, i32 %58)
  store i32 0, i32* %2, align 4
  br label %60

60:                                               ; preds = %52, %48
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local %struct.pci_host_bridge* @pci_host_bridge_from_priv(%struct.tegra_pcie*) #1

declare dso_local i32 @pci_add_resource_offset(%struct.list_head*, i32*, i32) #1

declare dso_local i32 @pci_add_resource(%struct.list_head*, i32*) #1

declare dso_local i32 @devm_request_pci_bus_resources(%struct.device*, %struct.list_head*) #1

declare dso_local i32 @pci_free_resource_list(%struct.list_head*) #1

declare dso_local i32 @pci_remap_iospace(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
