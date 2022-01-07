; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-tegra.c_tegra_pcie_port_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-tegra.c_tegra_pcie_port_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_pcie_port = type { i32, %struct.TYPE_2__, i32, %struct.tegra_pcie* }
%struct.TYPE_2__ = type { i32 }
%struct.tegra_pcie = type { %struct.device* }
%struct.device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra_pcie_port*)* @tegra_pcie_port_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_pcie_port_free(%struct.tegra_pcie_port* %0) #0 {
  %2 = alloca %struct.tegra_pcie_port*, align 8
  %3 = alloca %struct.tegra_pcie*, align 8
  %4 = alloca %struct.device*, align 8
  store %struct.tegra_pcie_port* %0, %struct.tegra_pcie_port** %2, align 8
  %5 = load %struct.tegra_pcie_port*, %struct.tegra_pcie_port** %2, align 8
  %6 = getelementptr inbounds %struct.tegra_pcie_port, %struct.tegra_pcie_port* %5, i32 0, i32 3
  %7 = load %struct.tegra_pcie*, %struct.tegra_pcie** %6, align 8
  store %struct.tegra_pcie* %7, %struct.tegra_pcie** %3, align 8
  %8 = load %struct.tegra_pcie*, %struct.tegra_pcie** %3, align 8
  %9 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %8, i32 0, i32 0
  %10 = load %struct.device*, %struct.device** %9, align 8
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = load %struct.tegra_pcie_port*, %struct.tegra_pcie_port** %2, align 8
  %13 = getelementptr inbounds %struct.tegra_pcie_port, %struct.tegra_pcie_port* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @devm_iounmap(%struct.device* %11, i32 %14)
  %16 = load %struct.device*, %struct.device** %4, align 8
  %17 = load %struct.tegra_pcie_port*, %struct.tegra_pcie_port** %2, align 8
  %18 = getelementptr inbounds %struct.tegra_pcie_port, %struct.tegra_pcie_port* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.tegra_pcie_port*, %struct.tegra_pcie_port** %2, align 8
  %22 = getelementptr inbounds %struct.tegra_pcie_port, %struct.tegra_pcie_port* %21, i32 0, i32 1
  %23 = call i32 @resource_size(%struct.TYPE_2__* %22)
  %24 = call i32 @devm_release_mem_region(%struct.device* %16, i32 %20, i32 %23)
  %25 = load %struct.tegra_pcie_port*, %struct.tegra_pcie_port** %2, align 8
  %26 = getelementptr inbounds %struct.tegra_pcie_port, %struct.tegra_pcie_port* %25, i32 0, i32 0
  %27 = call i32 @list_del(i32* %26)
  %28 = load %struct.device*, %struct.device** %4, align 8
  %29 = load %struct.tegra_pcie_port*, %struct.tegra_pcie_port** %2, align 8
  %30 = call i32 @devm_kfree(%struct.device* %28, %struct.tegra_pcie_port* %29)
  ret void
}

declare dso_local i32 @devm_iounmap(%struct.device*, i32) #1

declare dso_local i32 @devm_release_mem_region(%struct.device*, i32, i32) #1

declare dso_local i32 @resource_size(%struct.TYPE_2__*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @devm_kfree(%struct.device*, %struct.tegra_pcie_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
