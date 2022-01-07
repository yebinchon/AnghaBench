; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-rcar.c_rcar_pcie_hw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-rcar.c_rcar_pcie_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcar_pcie = type { i32 }

@PCIETCTLR = common dso_local global i32 0, align 4
@PCIEMSR = common dso_local global i32 0, align 4
@PCI_CLASS_BRIDGE_PCI = common dso_local global i32 0, align 4
@IDSETR1 = common dso_local global i32 0, align 4
@PCI_SECONDARY_BUS = common dso_local global i32 0, align 4
@PCI_SUBORDINATE_BUS = common dso_local global i32 0, align 4
@PCI_CAP_ID_EXP = common dso_local global i32 0, align 4
@PCI_EXP_FLAGS = common dso_local global i32 0, align 4
@PCI_EXP_FLAGS_TYPE = common dso_local global i32 0, align 4
@PCI_EXP_TYPE_ROOT_PORT = common dso_local global i32 0, align 4
@PCI_HEADER_TYPE = common dso_local global i32 0, align 4
@PCI_HEADER_TYPE_BRIDGE = common dso_local global i32 0, align 4
@PCI_EXP_LNKCAP = common dso_local global i32 0, align 4
@PCI_EXP_LNKCAP_DLLLARC = common dso_local global i32 0, align 4
@PCI_EXP_SLTCAP = common dso_local global i32 0, align 4
@PCI_EXP_SLTCAP_PSN = common dso_local global i32 0, align 4
@TLCTLR = common dso_local global i64 0, align 8
@CONFIG_PCI_MSI = common dso_local global i32 0, align 4
@PCIEMSITXR = common dso_local global i32 0, align 4
@CFINIT = common dso_local global i32 0, align 4
@PCIEINTXR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rcar_pcie*)* @rcar_pcie_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rcar_pcie_hw_init(%struct.rcar_pcie* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rcar_pcie*, align 8
  %4 = alloca i32, align 4
  store %struct.rcar_pcie* %0, %struct.rcar_pcie** %3, align 8
  %5 = load %struct.rcar_pcie*, %struct.rcar_pcie** %3, align 8
  %6 = load i32, i32* @PCIETCTLR, align 4
  %7 = call i32 @rcar_pci_write_reg(%struct.rcar_pcie* %5, i32 0, i32 %6)
  %8 = load %struct.rcar_pcie*, %struct.rcar_pcie** %3, align 8
  %9 = load i32, i32* @PCIEMSR, align 4
  %10 = call i32 @rcar_pci_write_reg(%struct.rcar_pcie* %8, i32 1, i32 %9)
  %11 = load %struct.rcar_pcie*, %struct.rcar_pcie** %3, align 8
  %12 = call i32 @rcar_pcie_wait_for_phyrdy(%struct.rcar_pcie* %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %4, align 4
  store i32 %16, i32* %2, align 4
  br label %88

17:                                               ; preds = %1
  %18 = load %struct.rcar_pcie*, %struct.rcar_pcie** %3, align 8
  %19 = load i32, i32* @PCI_CLASS_BRIDGE_PCI, align 4
  %20 = shl i32 %19, 16
  %21 = load i32, i32* @IDSETR1, align 4
  %22 = call i32 @rcar_pci_write_reg(%struct.rcar_pcie* %18, i32 %20, i32 %21)
  %23 = load %struct.rcar_pcie*, %struct.rcar_pcie** %3, align 8
  %24 = load i32, i32* @PCI_SECONDARY_BUS, align 4
  %25 = call i64 @RCONF(i32 %24)
  %26 = call i32 @rcar_rmw32(%struct.rcar_pcie* %23, i64 %25, i32 255, i32 1)
  %27 = load %struct.rcar_pcie*, %struct.rcar_pcie** %3, align 8
  %28 = load i32, i32* @PCI_SUBORDINATE_BUS, align 4
  %29 = call i64 @RCONF(i32 %28)
  %30 = call i32 @rcar_rmw32(%struct.rcar_pcie* %27, i64 %29, i32 255, i32 1)
  %31 = load %struct.rcar_pcie*, %struct.rcar_pcie** %3, align 8
  %32 = call i64 @REXPCAP(i32 0)
  %33 = load i32, i32* @PCI_CAP_ID_EXP, align 4
  %34 = call i32 @rcar_rmw32(%struct.rcar_pcie* %31, i64 %32, i32 255, i32 %33)
  %35 = load %struct.rcar_pcie*, %struct.rcar_pcie** %3, align 8
  %36 = load i32, i32* @PCI_EXP_FLAGS, align 4
  %37 = call i64 @REXPCAP(i32 %36)
  %38 = load i32, i32* @PCI_EXP_FLAGS_TYPE, align 4
  %39 = load i32, i32* @PCI_EXP_TYPE_ROOT_PORT, align 4
  %40 = shl i32 %39, 4
  %41 = call i32 @rcar_rmw32(%struct.rcar_pcie* %35, i64 %37, i32 %38, i32 %40)
  %42 = load %struct.rcar_pcie*, %struct.rcar_pcie** %3, align 8
  %43 = load i32, i32* @PCI_HEADER_TYPE, align 4
  %44 = call i64 @RCONF(i32 %43)
  %45 = load i32, i32* @PCI_HEADER_TYPE_BRIDGE, align 4
  %46 = call i32 @rcar_rmw32(%struct.rcar_pcie* %42, i64 %44, i32 127, i32 %45)
  %47 = load %struct.rcar_pcie*, %struct.rcar_pcie** %3, align 8
  %48 = load i32, i32* @PCI_EXP_LNKCAP, align 4
  %49 = call i64 @REXPCAP(i32 %48)
  %50 = load i32, i32* @PCI_EXP_LNKCAP_DLLLARC, align 4
  %51 = load i32, i32* @PCI_EXP_LNKCAP_DLLLARC, align 4
  %52 = call i32 @rcar_rmw32(%struct.rcar_pcie* %47, i64 %49, i32 %50, i32 %51)
  %53 = load %struct.rcar_pcie*, %struct.rcar_pcie** %3, align 8
  %54 = load i32, i32* @PCI_EXP_SLTCAP, align 4
  %55 = call i64 @REXPCAP(i32 %54)
  %56 = load i32, i32* @PCI_EXP_SLTCAP_PSN, align 4
  %57 = call i32 @rcar_rmw32(%struct.rcar_pcie* %53, i64 %55, i32 %56, i32 0)
  %58 = load %struct.rcar_pcie*, %struct.rcar_pcie** %3, align 8
  %59 = load i64, i64* @TLCTLR, align 8
  %60 = add nsw i64 %59, 1
  %61 = call i32 @rcar_rmw32(%struct.rcar_pcie* %58, i64 %60, i32 63, i32 50)
  %62 = load %struct.rcar_pcie*, %struct.rcar_pcie** %3, align 8
  %63 = call i64 @RVCCAP(i32 0)
  %64 = call i32 @rcar_rmw32(%struct.rcar_pcie* %62, i64 %63, i32 -1048576, i32 0)
  %65 = load i32, i32* @CONFIG_PCI_MSI, align 4
  %66 = call i64 @IS_ENABLED(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %17
  %69 = load %struct.rcar_pcie*, %struct.rcar_pcie** %3, align 8
  %70 = load i32, i32* @PCIEMSITXR, align 4
  %71 = call i32 @rcar_pci_write_reg(%struct.rcar_pcie* %69, i32 -2145452032, i32 %70)
  br label %72

72:                                               ; preds = %68, %17
  %73 = load %struct.rcar_pcie*, %struct.rcar_pcie** %3, align 8
  %74 = load i32, i32* @CFINIT, align 4
  %75 = load i32, i32* @PCIETCTLR, align 4
  %76 = call i32 @rcar_pci_write_reg(%struct.rcar_pcie* %73, i32 %74, i32 %75)
  %77 = load %struct.rcar_pcie*, %struct.rcar_pcie** %3, align 8
  %78 = call i32 @rcar_pcie_wait_for_dl(%struct.rcar_pcie* %77)
  store i32 %78, i32* %4, align 4
  %79 = load i32, i32* %4, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %72
  %82 = load i32, i32* %4, align 4
  store i32 %82, i32* %2, align 4
  br label %88

83:                                               ; preds = %72
  %84 = load %struct.rcar_pcie*, %struct.rcar_pcie** %3, align 8
  %85 = load i64, i64* @PCIEINTXR, align 8
  %86 = call i32 @rcar_rmw32(%struct.rcar_pcie* %84, i64 %85, i32 0, i32 3840)
  %87 = call i32 (...) @wmb()
  store i32 0, i32* %2, align 4
  br label %88

88:                                               ; preds = %83, %81, %15
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local i32 @rcar_pci_write_reg(%struct.rcar_pcie*, i32, i32) #1

declare dso_local i32 @rcar_pcie_wait_for_phyrdy(%struct.rcar_pcie*) #1

declare dso_local i32 @rcar_rmw32(%struct.rcar_pcie*, i64, i32, i32) #1

declare dso_local i64 @RCONF(i32) #1

declare dso_local i64 @REXPCAP(i32) #1

declare dso_local i64 @RVCCAP(i32) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @rcar_pcie_wait_for_dl(%struct.rcar_pcie*) #1

declare dso_local i32 @wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
