; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_probe.c_only_one_child.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_probe.c_only_one_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@PCI_SCAN_ALL_PCIE_DEVS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_bus*)* @only_one_child to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @only_one_child(%struct.pci_bus* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_bus*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  store %struct.pci_bus* %0, %struct.pci_bus** %3, align 8
  %5 = load %struct.pci_bus*, %struct.pci_bus** %3, align 8
  %6 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %5, i32 0, i32 0
  %7 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  store %struct.pci_dev* %7, %struct.pci_dev** %4, align 8
  %8 = load i32, i32* @PCI_SCAN_ALL_PCIE_DEVS, align 4
  %9 = call i64 @pci_has_flag(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %25

12:                                               ; preds = %1
  %13 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %14 = icmp ne %struct.pci_dev* %13, null
  br i1 %14, label %15, label %24

15:                                               ; preds = %12
  %16 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %17 = call i64 @pci_is_pcie(%struct.pci_dev* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %15
  %20 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %21 = call i64 @pcie_downstream_port(%struct.pci_dev* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  store i32 1, i32* %2, align 4
  br label %25

24:                                               ; preds = %19, %15, %12
  store i32 0, i32* %2, align 4
  br label %25

25:                                               ; preds = %24, %23, %11
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i64 @pci_has_flag(i32) #1

declare dso_local i64 @pci_is_pcie(%struct.pci_dev*) #1

declare dso_local i64 @pcie_downstream_port(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
