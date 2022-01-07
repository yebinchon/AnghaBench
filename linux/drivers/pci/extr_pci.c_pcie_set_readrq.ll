; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_pci.c_pcie_set_readrq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_pci.c_pcie_set_readrq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@pcie_bus_config = common dso_local global i64 0, align 8
@PCIE_BUS_PERFORMANCE = common dso_local global i64 0, align 8
@PCI_EXP_DEVCTL = common dso_local global i32 0, align 4
@PCI_EXP_DEVCTL_READRQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pcie_set_readrq(%struct.pci_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %8, 128
  br i1 %9, label %17, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = icmp sgt i32 %11, 4096
  br i1 %12, label %17, label %13

13:                                               ; preds = %10
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @is_power_of_2(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %13, %10, %2
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %43

20:                                               ; preds = %13
  %21 = load i64, i64* @pcie_bus_config, align 8
  %22 = load i64, i64* @PCIE_BUS_PERFORMANCE, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %33

24:                                               ; preds = %20
  %25 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %26 = call i32 @pcie_get_mps(%struct.pci_dev* %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i32, i32* %7, align 4
  store i32 %31, i32* %5, align 4
  br label %32

32:                                               ; preds = %30, %24
  br label %33

33:                                               ; preds = %32, %20
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @ffs(i32 %34)
  %36 = sub nsw i32 %35, 8
  %37 = shl i32 %36, 12
  store i32 %37, i32* %6, align 4
  %38 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %39 = load i32, i32* @PCI_EXP_DEVCTL, align 4
  %40 = load i32, i32* @PCI_EXP_DEVCTL_READRQ, align 4
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @pcie_capability_clear_and_set_word(%struct.pci_dev* %38, i32 %39, i32 %40, i32 %41)
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %33, %17
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @is_power_of_2(i32) #1

declare dso_local i32 @pcie_get_mps(%struct.pci_dev*) #1

declare dso_local i32 @ffs(i32) #1

declare dso_local i32 @pcie_capability_clear_and_set_word(%struct.pci_dev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
