; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_probe.c_pci_host_bridge_msi_domain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_probe.c_pci_host_bridge_msi_domain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_domain = type { i32 }
%struct.pci_bus = type { i32 }

@DOMAIN_BUS_PCI_MSI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.irq_domain* (%struct.pci_bus*)* @pci_host_bridge_msi_domain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.irq_domain* @pci_host_bridge_msi_domain(%struct.pci_bus* %0) #0 {
  %2 = alloca %struct.pci_bus*, align 8
  %3 = alloca %struct.irq_domain*, align 8
  store %struct.pci_bus* %0, %struct.pci_bus** %2, align 8
  %4 = load %struct.pci_bus*, %struct.pci_bus** %2, align 8
  %5 = call %struct.irq_domain* @pci_host_bridge_of_msi_domain(%struct.pci_bus* %4)
  store %struct.irq_domain* %5, %struct.irq_domain** %3, align 8
  %6 = load %struct.irq_domain*, %struct.irq_domain** %3, align 8
  %7 = icmp ne %struct.irq_domain* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load %struct.pci_bus*, %struct.pci_bus** %2, align 8
  %10 = call %struct.irq_domain* @pci_host_bridge_acpi_msi_domain(%struct.pci_bus* %9)
  store %struct.irq_domain* %10, %struct.irq_domain** %3, align 8
  br label %11

11:                                               ; preds = %8, %1
  %12 = load %struct.irq_domain*, %struct.irq_domain** %3, align 8
  ret %struct.irq_domain* %12
}

declare dso_local %struct.irq_domain* @pci_host_bridge_of_msi_domain(%struct.pci_bus*) #1

declare dso_local %struct.irq_domain* @pci_host_bridge_acpi_msi_domain(%struct.pci_bus*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
