; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/pcie/extr_aspm.c_pcie_retrain_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/pcie/extr_aspm.c_pcie_retrain_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcie_link_state = type { %struct.pci_dev* }
%struct.pci_dev = type { i64 }

@PCI_EXP_LNKCTL = common dso_local global i32 0, align 4
@PCI_EXP_LNKCTL_RL = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@LINK_RETRAIN_TIMEOUT = common dso_local global i64 0, align 8
@PCI_EXP_LNKSTA = common dso_local global i32 0, align 4
@PCI_EXP_LNKSTA_LT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcie_link_state*)* @pcie_retrain_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcie_retrain_link(%struct.pcie_link_state* %0) #0 {
  %2 = alloca %struct.pcie_link_state*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.pcie_link_state* %0, %struct.pcie_link_state** %2, align 8
  %6 = load %struct.pcie_link_state*, %struct.pcie_link_state** %2, align 8
  %7 = getelementptr inbounds %struct.pcie_link_state, %struct.pcie_link_state* %6, i32 0, i32 0
  %8 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  store %struct.pci_dev* %8, %struct.pci_dev** %3, align 8
  %9 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %10 = load i32, i32* @PCI_EXP_LNKCTL, align 4
  %11 = call i32 @pcie_capability_read_word(%struct.pci_dev* %9, i32 %10, i32* %5)
  %12 = load i32, i32* @PCI_EXP_LNKCTL_RL, align 4
  %13 = load i32, i32* %5, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* %5, align 4
  %15 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %16 = load i32, i32* @PCI_EXP_LNKCTL, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @pcie_capability_write_word(%struct.pci_dev* %15, i32 %16, i32 %17)
  %19 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %20 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %1
  %24 = load i32, i32* @PCI_EXP_LNKCTL_RL, align 4
  %25 = xor i32 %24, -1
  %26 = load i32, i32* %5, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %5, align 4
  %28 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %29 = load i32, i32* @PCI_EXP_LNKCTL, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @pcie_capability_write_word(%struct.pci_dev* %28, i32 %29, i32 %30)
  br label %32

32:                                               ; preds = %23, %1
  %33 = load i64, i64* @jiffies, align 8
  %34 = load i64, i64* @LINK_RETRAIN_TIMEOUT, align 8
  %35 = add i64 %33, %34
  store i64 %35, i64* %4, align 8
  br label %36

36:                                               ; preds = %47, %32
  %37 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %38 = load i32, i32* @PCI_EXP_LNKSTA, align 4
  %39 = call i32 @pcie_capability_read_word(%struct.pci_dev* %37, i32 %38, i32* %5)
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @PCI_EXP_LNKSTA_LT, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %36
  br label %52

45:                                               ; preds = %36
  %46 = call i32 @msleep(i32 1)
  br label %47

47:                                               ; preds = %45
  %48 = load i64, i64* @jiffies, align 8
  %49 = load i64, i64* %4, align 8
  %50 = call i64 @time_before(i64 %48, i64 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %36, label %52

52:                                               ; preds = %47, %44
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @PCI_EXP_LNKSTA_LT, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  ret i32 %58
}

declare dso_local i32 @pcie_capability_read_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pcie_capability_write_word(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @time_before(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
