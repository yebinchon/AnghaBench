; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_quirks.c_pci_quirk_xgene_acs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_quirks.c_pci_quirk_xgene_acs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

@PCI_ACS_SV = common dso_local global i32 0, align 4
@PCI_ACS_RR = common dso_local global i32 0, align 4
@PCI_ACS_CR = common dso_local global i32 0, align 4
@PCI_ACS_UF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i32)* @pci_quirk_xgene_acs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_quirk_xgene_acs(%struct.pci_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @PCI_ACS_SV, align 4
  %6 = load i32, i32* @PCI_ACS_RR, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @PCI_ACS_CR, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @PCI_ACS_UF, align 4
  %11 = or i32 %9, %10
  %12 = xor i32 %11, -1
  %13 = load i32, i32* %4, align 4
  %14 = and i32 %13, %12
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i32 0, i32 1
  ret i32 %18
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
