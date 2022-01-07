; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_pci.c_pci_configure_ari.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_pci.c_pci_configure_ari.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { %struct.pci_dev* }

@pcie_ari_disabled = common dso_local global i64 0, align 8
@PCI_EXP_DEVCAP2 = common dso_local global i32 0, align 4
@PCI_EXP_DEVCAP2_ARI = common dso_local global i32 0, align 4
@PCI_EXT_CAP_ID_ARI = common dso_local global i32 0, align 4
@PCI_EXP_DEVCTL2 = common dso_local global i32 0, align 4
@PCI_EXP_DEVCTL2_ARI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pci_configure_ari(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load i64, i64* @pcie_ari_disabled, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %16, label %7

7:                                                ; preds = %1
  %8 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %9 = call i32 @pci_is_pcie(%struct.pci_dev* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %7
  %12 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %13 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11, %7, %1
  br label %54

17:                                               ; preds = %11
  %18 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %19 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load %struct.pci_dev*, %struct.pci_dev** %21, align 8
  store %struct.pci_dev* %22, %struct.pci_dev** %4, align 8
  %23 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %24 = icmp ne %struct.pci_dev* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %17
  br label %54

26:                                               ; preds = %17
  %27 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %28 = load i32, i32* @PCI_EXP_DEVCAP2, align 4
  %29 = call i32 @pcie_capability_read_dword(%struct.pci_dev* %27, i32 %28, i32* %3)
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* @PCI_EXP_DEVCAP2_ARI, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %26
  br label %54

35:                                               ; preds = %26
  %36 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %37 = load i32, i32* @PCI_EXT_CAP_ID_ARI, align 4
  %38 = call i64 @pci_find_ext_capability(%struct.pci_dev* %36, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %35
  %41 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %42 = load i32, i32* @PCI_EXP_DEVCTL2, align 4
  %43 = load i32, i32* @PCI_EXP_DEVCTL2_ARI, align 4
  %44 = call i32 @pcie_capability_set_word(%struct.pci_dev* %41, i32 %42, i32 %43)
  %45 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %46 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %45, i32 0, i32 0
  store i32 1, i32* %46, align 8
  br label %54

47:                                               ; preds = %35
  %48 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %49 = load i32, i32* @PCI_EXP_DEVCTL2, align 4
  %50 = load i32, i32* @PCI_EXP_DEVCTL2_ARI, align 4
  %51 = call i32 @pcie_capability_clear_word(%struct.pci_dev* %48, i32 %49, i32 %50)
  %52 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %53 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %52, i32 0, i32 0
  store i32 0, i32* %53, align 8
  br label %54

54:                                               ; preds = %16, %25, %34, %47, %40
  ret void
}

declare dso_local i32 @pci_is_pcie(%struct.pci_dev*) #1

declare dso_local i32 @pcie_capability_read_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i64 @pci_find_ext_capability(%struct.pci_dev*, i32) #1

declare dso_local i32 @pcie_capability_set_word(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pcie_capability_clear_word(%struct.pci_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
