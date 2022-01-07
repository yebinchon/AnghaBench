; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-mobiveil.c_mobiveil_pcie_valid_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-mobiveil.c_mobiveil_pcie_valid_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i64, i64, %struct.mobiveil_pcie* }
%struct.mobiveil_pcie = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_bus*, i32)* @mobiveil_pcie_valid_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mobiveil_pcie_valid_device(%struct.pci_bus* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_bus*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mobiveil_pcie*, align 8
  store %struct.pci_bus* %0, %struct.pci_bus** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %8 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %7, i32 0, i32 2
  %9 = load %struct.mobiveil_pcie*, %struct.mobiveil_pcie** %8, align 8
  store %struct.mobiveil_pcie* %9, %struct.mobiveil_pcie** %6, align 8
  %10 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %11 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.mobiveil_pcie*, %struct.mobiveil_pcie** %6, align 8
  %14 = getelementptr inbounds %struct.mobiveil_pcie, %struct.mobiveil_pcie* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %12, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = icmp ugt i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %35

21:                                               ; preds = %17, %2
  %22 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %23 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.mobiveil_pcie*, %struct.mobiveil_pcie** %6, align 8
  %26 = getelementptr inbounds %struct.mobiveil_pcie, %struct.mobiveil_pcie* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %24, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %21
  %30 = load i32, i32* %5, align 4
  %31 = call i64 @PCI_SLOT(i32 %30)
  %32 = icmp sgt i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %35

34:                                               ; preds = %29, %21
  store i32 1, i32* %3, align 4
  br label %35

35:                                               ; preds = %34, %33, %20
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i64 @PCI_SLOT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
