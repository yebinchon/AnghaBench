; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_quirks.c_pci_quirk_al_acs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_quirks.c_pci_quirk_al_acs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

@PCI_EXP_TYPE_ROOT_PORT = common dso_local global i64 0, align 8
@ENOTTY = common dso_local global i32 0, align 4
@PCI_ACS_SV = common dso_local global i32 0, align 4
@PCI_ACS_RR = common dso_local global i32 0, align 4
@PCI_ACS_CR = common dso_local global i32 0, align 4
@PCI_ACS_UF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i32)* @pci_quirk_al_acs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_quirk_al_acs(%struct.pci_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %7 = call i64 @pci_pcie_type(%struct.pci_dev* %6)
  %8 = load i64, i64* @PCI_EXP_TYPE_ROOT_PORT, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i32, i32* @ENOTTY, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %3, align 4
  br label %28

13:                                               ; preds = %2
  %14 = load i32, i32* @PCI_ACS_SV, align 4
  %15 = load i32, i32* @PCI_ACS_RR, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @PCI_ACS_CR, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @PCI_ACS_UF, align 4
  %20 = or i32 %18, %19
  %21 = xor i32 %20, -1
  %22 = load i32, i32* %5, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i32 0, i32 1
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %13, %10
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i64 @pci_pcie_type(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
