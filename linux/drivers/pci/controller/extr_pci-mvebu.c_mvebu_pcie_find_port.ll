; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-mvebu.c_mvebu_pcie_find_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-mvebu.c_mvebu_pcie_find_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvebu_pcie_port = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64 }
%struct.mvebu_pcie = type { i32, %struct.mvebu_pcie_port* }
%struct.pci_bus = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mvebu_pcie_port* (%struct.mvebu_pcie*, %struct.pci_bus*, i32)* @mvebu_pcie_find_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mvebu_pcie_port* @mvebu_pcie_find_port(%struct.mvebu_pcie* %0, %struct.pci_bus* %1, i32 %2) #0 {
  %4 = alloca %struct.mvebu_pcie_port*, align 8
  %5 = alloca %struct.mvebu_pcie*, align 8
  %6 = alloca %struct.pci_bus*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mvebu_pcie_port*, align 8
  store %struct.mvebu_pcie* %0, %struct.mvebu_pcie** %5, align 8
  store %struct.pci_bus* %1, %struct.pci_bus** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %10

10:                                               ; preds = %63, %3
  %11 = load i32, i32* %8, align 4
  %12 = load %struct.mvebu_pcie*, %struct.mvebu_pcie** %5, align 8
  %13 = getelementptr inbounds %struct.mvebu_pcie, %struct.mvebu_pcie* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %66

16:                                               ; preds = %10
  %17 = load %struct.mvebu_pcie*, %struct.mvebu_pcie** %5, align 8
  %18 = getelementptr inbounds %struct.mvebu_pcie, %struct.mvebu_pcie* %17, i32 0, i32 1
  %19 = load %struct.mvebu_pcie_port*, %struct.mvebu_pcie_port** %18, align 8
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.mvebu_pcie_port, %struct.mvebu_pcie_port* %19, i64 %21
  store %struct.mvebu_pcie_port* %22, %struct.mvebu_pcie_port** %9, align 8
  %23 = load %struct.pci_bus*, %struct.pci_bus** %6, align 8
  %24 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %16
  %28 = load %struct.mvebu_pcie_port*, %struct.mvebu_pcie_port** %9, align 8
  %29 = getelementptr inbounds %struct.mvebu_pcie_port, %struct.mvebu_pcie_port* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load %struct.mvebu_pcie_port*, %struct.mvebu_pcie_port** %9, align 8
  store %struct.mvebu_pcie_port* %34, %struct.mvebu_pcie_port** %4, align 8
  br label %67

35:                                               ; preds = %27, %16
  %36 = load %struct.pci_bus*, %struct.pci_bus** %6, align 8
  %37 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %62

40:                                               ; preds = %35
  %41 = load %struct.pci_bus*, %struct.pci_bus** %6, align 8
  %42 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.mvebu_pcie_port*, %struct.mvebu_pcie_port** %9, align 8
  %45 = getelementptr inbounds %struct.mvebu_pcie_port, %struct.mvebu_pcie_port* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp sge i64 %43, %48
  br i1 %49, label %50, label %62

50:                                               ; preds = %40
  %51 = load %struct.pci_bus*, %struct.pci_bus** %6, align 8
  %52 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.mvebu_pcie_port*, %struct.mvebu_pcie_port** %9, align 8
  %55 = getelementptr inbounds %struct.mvebu_pcie_port, %struct.mvebu_pcie_port* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp sle i64 %53, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %50
  %61 = load %struct.mvebu_pcie_port*, %struct.mvebu_pcie_port** %9, align 8
  store %struct.mvebu_pcie_port* %61, %struct.mvebu_pcie_port** %4, align 8
  br label %67

62:                                               ; preds = %50, %40, %35
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %8, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %8, align 4
  br label %10

66:                                               ; preds = %10
  store %struct.mvebu_pcie_port* null, %struct.mvebu_pcie_port** %4, align 8
  br label %67

67:                                               ; preds = %66, %60, %33
  %68 = load %struct.mvebu_pcie_port*, %struct.mvebu_pcie_port** %4, align 8
  ret %struct.mvebu_pcie_port* %68
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
