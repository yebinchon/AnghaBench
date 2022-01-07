; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_pci.c_pci_find_pcie_root_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_pci.c_pci_find_pcie_root_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

@PCI_EXP_TYPE_ROOT_PORT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pci_dev* @pci_find_pcie_root_port(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  %6 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  store %struct.pci_dev* %6, %struct.pci_dev** %5, align 8
  %7 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %8 = call %struct.pci_dev* @pci_upstream_bridge(%struct.pci_dev* %7)
  store %struct.pci_dev* %8, %struct.pci_dev** %4, align 8
  br label %9

9:                                                ; preds = %18, %1
  %10 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %11 = icmp ne %struct.pci_dev* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %9
  %13 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %14 = call i64 @pci_is_pcie(%struct.pci_dev* %13)
  %15 = icmp ne i64 %14, 0
  br label %16

16:                                               ; preds = %12, %9
  %17 = phi i1 [ false, %9 ], [ %15, %12 ]
  br i1 %17, label %18, label %22

18:                                               ; preds = %16
  %19 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  store %struct.pci_dev* %19, %struct.pci_dev** %5, align 8
  %20 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %21 = call %struct.pci_dev* @pci_upstream_bridge(%struct.pci_dev* %20)
  store %struct.pci_dev* %21, %struct.pci_dev** %4, align 8
  br label %9

22:                                               ; preds = %16
  %23 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %24 = call i64 @pci_pcie_type(%struct.pci_dev* %23)
  %25 = load i64, i64* @PCI_EXP_TYPE_ROOT_PORT, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  store %struct.pci_dev* null, %struct.pci_dev** %2, align 8
  br label %30

28:                                               ; preds = %22
  %29 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  store %struct.pci_dev* %29, %struct.pci_dev** %2, align 8
  br label %30

30:                                               ; preds = %28, %27
  %31 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  ret %struct.pci_dev* %31
}

declare dso_local %struct.pci_dev* @pci_upstream_bridge(%struct.pci_dev*) #1

declare dso_local i64 @pci_is_pcie(%struct.pci_dev*) #1

declare dso_local i64 @pci_pcie_type(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
