; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-iproc.c_iproc_pcie_paxb_v2_msi_steer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-iproc.c_iproc_pcie_paxb_v2_msi_steer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iproc_pcie = type { i32 }
%struct.of_pci_range = type { i32, i32, i32 }

@SZ_32K = common dso_local global i32 0, align 4
@IPROC_PCIE_IB_MAP_IO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iproc_pcie*, i32)* @iproc_pcie_paxb_v2_msi_steer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iproc_pcie_paxb_v2_msi_steer(%struct.iproc_pcie* %0, i32 %1) #0 {
  %3 = alloca %struct.iproc_pcie*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.of_pci_range, align 4
  store %struct.iproc_pcie* %0, %struct.iproc_pcie** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = call i32 @memset(%struct.of_pci_range* %6, i32 0, i32 12)
  %8 = load i32, i32* @SZ_32K, align 4
  %9 = getelementptr inbounds %struct.of_pci_range, %struct.of_pci_range* %6, i32 0, i32 0
  store i32 %8, i32* %9, align 4
  %10 = load i32, i32* %4, align 4
  %11 = getelementptr inbounds %struct.of_pci_range, %struct.of_pci_range* %6, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = sub nsw i32 %12, 1
  %14 = xor i32 %13, -1
  %15 = and i32 %10, %14
  %16 = getelementptr inbounds %struct.of_pci_range, %struct.of_pci_range* %6, i32 0, i32 2
  store i32 %15, i32* %16, align 4
  %17 = getelementptr inbounds %struct.of_pci_range, %struct.of_pci_range* %6, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  %18 = load %struct.iproc_pcie*, %struct.iproc_pcie** %3, align 8
  %19 = load i32, i32* @IPROC_PCIE_IB_MAP_IO, align 4
  %20 = call i32 @iproc_pcie_setup_ib(%struct.iproc_pcie* %18, %struct.of_pci_range* %6, i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  ret i32 %21
}

declare dso_local i32 @memset(%struct.of_pci_range*, i32, i32) #1

declare dso_local i32 @iproc_pcie_setup_ib(%struct.iproc_pcie*, %struct.of_pci_range*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
