; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-designware-host.c_dw_chained_msi_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-designware-host.c_dw_chained_msi_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { i32 }
%struct.irq_chip = type { i32 }
%struct.pcie_port = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_desc*)* @dw_chained_msi_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dw_chained_msi_isr(%struct.irq_desc* %0) #0 {
  %2 = alloca %struct.irq_desc*, align 8
  %3 = alloca %struct.irq_chip*, align 8
  %4 = alloca %struct.pcie_port*, align 8
  store %struct.irq_desc* %0, %struct.irq_desc** %2, align 8
  %5 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %6 = call %struct.irq_chip* @irq_desc_get_chip(%struct.irq_desc* %5)
  store %struct.irq_chip* %6, %struct.irq_chip** %3, align 8
  %7 = load %struct.irq_chip*, %struct.irq_chip** %3, align 8
  %8 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %9 = call i32 @chained_irq_enter(%struct.irq_chip* %7, %struct.irq_desc* %8)
  %10 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %11 = call %struct.pcie_port* @irq_desc_get_handler_data(%struct.irq_desc* %10)
  store %struct.pcie_port* %11, %struct.pcie_port** %4, align 8
  %12 = load %struct.pcie_port*, %struct.pcie_port** %4, align 8
  %13 = call i32 @dw_handle_msi_irq(%struct.pcie_port* %12)
  %14 = load %struct.irq_chip*, %struct.irq_chip** %3, align 8
  %15 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %16 = call i32 @chained_irq_exit(%struct.irq_chip* %14, %struct.irq_desc* %15)
  ret void
}

declare dso_local %struct.irq_chip* @irq_desc_get_chip(%struct.irq_desc*) #1

declare dso_local i32 @chained_irq_enter(%struct.irq_chip*, %struct.irq_desc*) #1

declare dso_local %struct.pcie_port* @irq_desc_get_handler_data(%struct.irq_desc*) #1

declare dso_local i32 @dw_handle_msi_irq(%struct.pcie_port*) #1

declare dso_local i32 @chained_irq_exit(%struct.irq_chip*, %struct.irq_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
