; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_access.c_pcie_cap_has_lnkctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_access.c_pcie_cap_has_lnkctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

@PCI_EXP_TYPE_ENDPOINT = common dso_local global i32 0, align 4
@PCI_EXP_TYPE_LEG_END = common dso_local global i32 0, align 4
@PCI_EXP_TYPE_ROOT_PORT = common dso_local global i32 0, align 4
@PCI_EXP_TYPE_UPSTREAM = common dso_local global i32 0, align 4
@PCI_EXP_TYPE_DOWNSTREAM = common dso_local global i32 0, align 4
@PCI_EXP_TYPE_PCI_BRIDGE = common dso_local global i32 0, align 4
@PCI_EXP_TYPE_PCIE_BRIDGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pcie_cap_has_lnkctl(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %4 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %5 = call i32 @pci_pcie_type(%struct.pci_dev* %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @PCI_EXP_TYPE_ENDPOINT, align 4
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %33, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @PCI_EXP_TYPE_LEG_END, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %33, label %13

13:                                               ; preds = %9
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @PCI_EXP_TYPE_ROOT_PORT, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %33, label %17

17:                                               ; preds = %13
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @PCI_EXP_TYPE_UPSTREAM, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %33, label %21

21:                                               ; preds = %17
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @PCI_EXP_TYPE_DOWNSTREAM, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %33, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @PCI_EXP_TYPE_PCI_BRIDGE, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* @PCI_EXP_TYPE_PCIE_BRIDGE, align 4
  %32 = icmp eq i32 %30, %31
  br label %33

33:                                               ; preds = %29, %25, %21, %17, %13, %9, %1
  %34 = phi i1 [ true, %25 ], [ true, %21 ], [ true, %17 ], [ true, %13 ], [ true, %9 ], [ true, %1 ], [ %32, %29 ]
  %35 = zext i1 %34 to i32
  ret i32 %35
}

declare dso_local i32 @pci_pcie_type(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
