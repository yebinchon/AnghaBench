; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-xilinx-nwl.c_nwl_pcie_msi_handler_low.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-xilinx-nwl.c_nwl_pcie_msi_handler_low.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { i32 }
%struct.irq_chip = type { i32 }
%struct.nwl_pcie = type { i32 }

@MSGF_MSI_STATUS_LO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_desc*)* @nwl_pcie_msi_handler_low to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nwl_pcie_msi_handler_low(%struct.irq_desc* %0) #0 {
  %2 = alloca %struct.irq_desc*, align 8
  %3 = alloca %struct.irq_chip*, align 8
  %4 = alloca %struct.nwl_pcie*, align 8
  store %struct.irq_desc* %0, %struct.irq_desc** %2, align 8
  %5 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %6 = call %struct.irq_chip* @irq_desc_get_chip(%struct.irq_desc* %5)
  store %struct.irq_chip* %6, %struct.irq_chip** %3, align 8
  %7 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %8 = call %struct.nwl_pcie* @irq_desc_get_handler_data(%struct.irq_desc* %7)
  store %struct.nwl_pcie* %8, %struct.nwl_pcie** %4, align 8
  %9 = load %struct.irq_chip*, %struct.irq_chip** %3, align 8
  %10 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %11 = call i32 @chained_irq_enter(%struct.irq_chip* %9, %struct.irq_desc* %10)
  %12 = load %struct.nwl_pcie*, %struct.nwl_pcie** %4, align 8
  %13 = load i32, i32* @MSGF_MSI_STATUS_LO, align 4
  %14 = call i32 @nwl_pcie_handle_msi_irq(%struct.nwl_pcie* %12, i32 %13)
  %15 = load %struct.irq_chip*, %struct.irq_chip** %3, align 8
  %16 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %17 = call i32 @chained_irq_exit(%struct.irq_chip* %15, %struct.irq_desc* %16)
  ret void
}

declare dso_local %struct.irq_chip* @irq_desc_get_chip(%struct.irq_desc*) #1

declare dso_local %struct.nwl_pcie* @irq_desc_get_handler_data(%struct.irq_desc*) #1

declare dso_local i32 @chained_irq_enter(%struct.irq_chip*, %struct.irq_desc*) #1

declare dso_local i32 @nwl_pcie_handle_msi_irq(%struct.nwl_pcie*, i32) #1

declare dso_local i32 @chained_irq_exit(%struct.irq_chip*, %struct.irq_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
