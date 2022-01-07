; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_p2pdma.c_pci_bridge_has_acs_redir.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_p2pdma.c_pci_bridge_has_acs_redir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

@PCI_EXT_CAP_ID_ACS = common dso_local global i32 0, align 4
@PCI_ACS_CTRL = common dso_local global i64 0, align 8
@PCI_ACS_RR = common dso_local global i32 0, align 4
@PCI_ACS_CR = common dso_local global i32 0, align 4
@PCI_ACS_EC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*)* @pci_bridge_has_acs_redir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_bridge_has_acs_redir(%struct.pci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  %6 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %7 = load i32, i32* @PCI_EXT_CAP_ID_ACS, align 4
  %8 = call i32 @pci_find_ext_capability(%struct.pci_dev* %6, i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %29

12:                                               ; preds = %1
  %13 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = load i64, i64* @PCI_ACS_CTRL, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @pci_read_config_word(%struct.pci_dev* %13, i64 %17, i32* %5)
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @PCI_ACS_RR, align 4
  %21 = load i32, i32* @PCI_ACS_CR, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @PCI_ACS_EC, align 4
  %24 = or i32 %22, %23
  %25 = and i32 %19, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %12
  store i32 1, i32* %2, align 4
  br label %29

28:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %28, %27, %11
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @pci_find_ext_capability(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
