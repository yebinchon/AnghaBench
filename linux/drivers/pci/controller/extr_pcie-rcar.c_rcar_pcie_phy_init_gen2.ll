; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-rcar.c_rcar_pcie_phy_init_gen2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-rcar.c_rcar_pcie_phy_init_gen2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcar_pcie = type { i32 }

@GEN2_PCIEPHYADDR = common dso_local global i32 0, align 4
@GEN2_PCIEPHYDATA = common dso_local global i32 0, align 4
@GEN2_PCIEPHYCTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rcar_pcie*)* @rcar_pcie_phy_init_gen2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rcar_pcie_phy_init_gen2(%struct.rcar_pcie* %0) #0 {
  %2 = alloca %struct.rcar_pcie*, align 8
  store %struct.rcar_pcie* %0, %struct.rcar_pcie** %2, align 8
  %3 = load %struct.rcar_pcie*, %struct.rcar_pcie** %2, align 8
  %4 = load i32, i32* @GEN2_PCIEPHYADDR, align 4
  %5 = call i32 @rcar_pci_write_reg(%struct.rcar_pcie* %3, i32 983088, i32 %4)
  %6 = load %struct.rcar_pcie*, %struct.rcar_pcie** %2, align 8
  %7 = load i32, i32* @GEN2_PCIEPHYDATA, align 4
  %8 = call i32 @rcar_pci_write_reg(%struct.rcar_pcie* %6, i32 3674627, i32 %7)
  %9 = load %struct.rcar_pcie*, %struct.rcar_pcie** %2, align 8
  %10 = load i32, i32* @GEN2_PCIEPHYCTRL, align 4
  %11 = call i32 @rcar_pci_write_reg(%struct.rcar_pcie* %9, i32 1, i32 %10)
  %12 = load %struct.rcar_pcie*, %struct.rcar_pcie** %2, align 8
  %13 = load i32, i32* @GEN2_PCIEPHYCTRL, align 4
  %14 = call i32 @rcar_pci_write_reg(%struct.rcar_pcie* %12, i32 6, i32 %13)
  %15 = load %struct.rcar_pcie*, %struct.rcar_pcie** %2, align 8
  %16 = load i32, i32* @GEN2_PCIEPHYADDR, align 4
  %17 = call i32 @rcar_pci_write_reg(%struct.rcar_pcie* %15, i32 983124, i32 %16)
  %18 = load %struct.rcar_pcie*, %struct.rcar_pcie** %2, align 8
  %19 = load i32, i32* @GEN2_PCIEPHYDATA, align 4
  %20 = call i32 @rcar_pci_write_reg(%struct.rcar_pcie* %18, i32 327163911, i32 %19)
  %21 = load %struct.rcar_pcie*, %struct.rcar_pcie** %2, align 8
  %22 = load i32, i32* @GEN2_PCIEPHYCTRL, align 4
  %23 = call i32 @rcar_pci_write_reg(%struct.rcar_pcie* %21, i32 1, i32 %22)
  %24 = load %struct.rcar_pcie*, %struct.rcar_pcie** %2, align 8
  %25 = load i32, i32* @GEN2_PCIEPHYCTRL, align 4
  %26 = call i32 @rcar_pci_write_reg(%struct.rcar_pcie* %24, i32 6, i32 %25)
  ret i32 0
}

declare dso_local i32 @rcar_pci_write_reg(%struct.rcar_pcie*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
