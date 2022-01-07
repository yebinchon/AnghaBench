; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/pcie/extr_pme.c_pcie_pme_from_pci_bridge.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/pcie/extr_pme.c_pcie_pme_from_pci_bridge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i32 }
%struct.pci_dev = type { i32 }

@PCI_EXP_TYPE_PCI_BRIDGE = common dso_local global i64 0, align 8
@pci_bus_sem = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_bus*, i64)* @pcie_pme_from_pci_bridge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcie_pme_from_pci_bridge(%struct.pci_bus* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_bus*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca i32, align 4
  store %struct.pci_bus* %0, %struct.pci_bus** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %7, align 4
  %8 = load i64, i64* %5, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %40

11:                                               ; preds = %2
  %12 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %13 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.pci_dev* @pci_dev_get(i32 %14)
  store %struct.pci_dev* %15, %struct.pci_dev** %6, align 8
  %16 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %17 = icmp ne %struct.pci_dev* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %40

19:                                               ; preds = %11
  %20 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %21 = call i64 @pci_is_pcie(%struct.pci_dev* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %36

23:                                               ; preds = %19
  %24 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %25 = call i64 @pci_pcie_type(%struct.pci_dev* %24)
  %26 = load i64, i64* @PCI_EXP_TYPE_PCI_BRIDGE, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %23
  %29 = call i32 @down_read(i32* @pci_bus_sem)
  %30 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %31 = call i64 @pcie_pme_walk_bus(%struct.pci_bus* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  store i32 1, i32* %7, align 4
  br label %34

34:                                               ; preds = %33, %28
  %35 = call i32 @up_read(i32* @pci_bus_sem)
  br label %36

36:                                               ; preds = %34, %23, %19
  %37 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %38 = call i32 @pci_dev_put(%struct.pci_dev* %37)
  %39 = load i32, i32* %7, align 4
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %36, %18, %10
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local %struct.pci_dev* @pci_dev_get(i32) #1

declare dso_local i64 @pci_is_pcie(%struct.pci_dev*) #1

declare dso_local i64 @pci_pcie_type(%struct.pci_dev*) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i64 @pcie_pme_walk_bus(%struct.pci_bus*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @pci_dev_put(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
