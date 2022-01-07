; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/pcie/extr_pearl_pcie.c_qtnf_pcie_pearl_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/pcie/extr_pearl_pcie.c_qtnf_pcie_pearl_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qtnf_bus = type { i32 }
%struct.pci_dev = type { i32 }
%struct.qtnf_pcie_pearl_state = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@qtnf_pcie_pearl_probe = common dso_local global i32 0, align 4
@qtnf_pcie_pearl_remove = common dso_local global i32 0, align 4
@qtnf_pearl_dma_mask_get = common dso_local global i32 0, align 4
@qtnf_pcie_pearl_resume = common dso_local global i32 0, align 4
@qtnf_pcie_pearl_suspend = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.qtnf_bus* @qtnf_pcie_pearl_alloc(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.qtnf_bus*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.qtnf_bus*, align 8
  %5 = alloca %struct.qtnf_pcie_pearl_state*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  %6 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %7 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %6, i32 0, i32 0
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.qtnf_bus* @devm_kzalloc(i32* %7, i32 24, i32 %8)
  store %struct.qtnf_bus* %9, %struct.qtnf_bus** %4, align 8
  %10 = load %struct.qtnf_bus*, %struct.qtnf_bus** %4, align 8
  %11 = icmp ne %struct.qtnf_bus* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store %struct.qtnf_bus* null, %struct.qtnf_bus** %2, align 8
  br label %29

13:                                               ; preds = %1
  %14 = load %struct.qtnf_bus*, %struct.qtnf_bus** %4, align 8
  %15 = call %struct.qtnf_pcie_pearl_state* @get_bus_priv(%struct.qtnf_bus* %14)
  store %struct.qtnf_pcie_pearl_state* %15, %struct.qtnf_pcie_pearl_state** %5, align 8
  %16 = load i32, i32* @qtnf_pcie_pearl_probe, align 4
  %17 = load %struct.qtnf_pcie_pearl_state*, %struct.qtnf_pcie_pearl_state** %5, align 8
  %18 = getelementptr inbounds %struct.qtnf_pcie_pearl_state, %struct.qtnf_pcie_pearl_state* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 4
  store i32 %16, i32* %19, align 4
  %20 = load i32, i32* @qtnf_pcie_pearl_remove, align 4
  %21 = load %struct.qtnf_pcie_pearl_state*, %struct.qtnf_pcie_pearl_state** %5, align 8
  %22 = getelementptr inbounds %struct.qtnf_pcie_pearl_state, %struct.qtnf_pcie_pearl_state* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 3
  store i32 %20, i32* %23, align 4
  %24 = load i32, i32* @qtnf_pearl_dma_mask_get, align 4
  %25 = load %struct.qtnf_pcie_pearl_state*, %struct.qtnf_pcie_pearl_state** %5, align 8
  %26 = getelementptr inbounds %struct.qtnf_pcie_pearl_state, %struct.qtnf_pcie_pearl_state* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  store i32 %24, i32* %27, align 4
  %28 = load %struct.qtnf_bus*, %struct.qtnf_bus** %4, align 8
  store %struct.qtnf_bus* %28, %struct.qtnf_bus** %2, align 8
  br label %29

29:                                               ; preds = %13, %12
  %30 = load %struct.qtnf_bus*, %struct.qtnf_bus** %2, align 8
  ret %struct.qtnf_bus* %30
}

declare dso_local %struct.qtnf_bus* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local %struct.qtnf_pcie_pearl_state* @get_bus_priv(%struct.qtnf_bus*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
