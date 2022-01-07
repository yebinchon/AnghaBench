; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_pci.c_pci_enable_atomic_ops_to_root.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_pci.c_pci_enable_atomic_ops_to_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { %struct.pci_bus* }
%struct.pci_bus = type { %struct.pci_bus*, %struct.pci_dev* }

@EINVAL = common dso_local global i32 0, align 4
@PCI_EXP_DEVCAP2 = common dso_local global i32 0, align 4
@PCI_EXP_DEVCAP2_ATOMIC_ROUTE = common dso_local global i32 0, align 4
@PCI_EXP_DEVCTL2 = common dso_local global i32 0, align 4
@PCI_EXP_DEVCTL2_ATOMIC_EGRESS_BLOCK = common dso_local global i32 0, align 4
@PCI_EXP_DEVCTL2_ATOMIC_REQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pci_enable_atomic_ops_to_root(%struct.pci_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pci_bus*, align 8
  %7 = alloca %struct.pci_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %11 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %10, i32 0, i32 0
  %12 = load %struct.pci_bus*, %struct.pci_bus** %11, align 8
  store %struct.pci_bus* %12, %struct.pci_bus** %6, align 8
  %13 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %14 = call i32 @pci_is_pcie(%struct.pci_dev* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %85

19:                                               ; preds = %2
  %20 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %21 = call i32 @pci_pcie_type(%struct.pci_dev* %20)
  switch i32 %21, label %23 [
    i32 132, label %22
    i32 131, label %22
    i32 130, label %22
  ]

22:                                               ; preds = %19, %19, %19
  br label %26

23:                                               ; preds = %19
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %85

26:                                               ; preds = %22
  br label %27

27:                                               ; preds = %76, %26
  %28 = load %struct.pci_bus*, %struct.pci_bus** %6, align 8
  %29 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %28, i32 0, i32 0
  %30 = load %struct.pci_bus*, %struct.pci_bus** %29, align 8
  %31 = icmp ne %struct.pci_bus* %30, null
  br i1 %31, label %32, label %80

32:                                               ; preds = %27
  %33 = load %struct.pci_bus*, %struct.pci_bus** %6, align 8
  %34 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %33, i32 0, i32 1
  %35 = load %struct.pci_dev*, %struct.pci_dev** %34, align 8
  store %struct.pci_dev* %35, %struct.pci_dev** %7, align 8
  %36 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %37 = load i32, i32* @PCI_EXP_DEVCAP2, align 4
  %38 = call i32 @pcie_capability_read_dword(%struct.pci_dev* %36, i32 %37, i32* %8)
  %39 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %40 = call i32 @pci_pcie_type(%struct.pci_dev* %39)
  switch i32 %40, label %60 [
    i32 128, label %41
    i32 133, label %41
    i32 129, label %50
  ]

41:                                               ; preds = %32, %32
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @PCI_EXP_DEVCAP2_ATOMIC_ROUTE, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %41
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %85

49:                                               ; preds = %41
  br label %60

50:                                               ; preds = %32
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %5, align 4
  %53 = and i32 %51, %52
  %54 = load i32, i32* %5, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %50
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %85

59:                                               ; preds = %50
  br label %60

60:                                               ; preds = %32, %59, %49
  %61 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %62 = call i32 @pci_pcie_type(%struct.pci_dev* %61)
  %63 = icmp eq i32 %62, 128
  br i1 %63, label %64, label %76

64:                                               ; preds = %60
  %65 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %66 = load i32, i32* @PCI_EXP_DEVCTL2, align 4
  %67 = call i32 @pcie_capability_read_dword(%struct.pci_dev* %65, i32 %66, i32* %9)
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* @PCI_EXP_DEVCTL2_ATOMIC_EGRESS_BLOCK, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %64
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %3, align 4
  br label %85

75:                                               ; preds = %64
  br label %76

76:                                               ; preds = %75, %60
  %77 = load %struct.pci_bus*, %struct.pci_bus** %6, align 8
  %78 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %77, i32 0, i32 0
  %79 = load %struct.pci_bus*, %struct.pci_bus** %78, align 8
  store %struct.pci_bus* %79, %struct.pci_bus** %6, align 8
  br label %27

80:                                               ; preds = %27
  %81 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %82 = load i32, i32* @PCI_EXP_DEVCTL2, align 4
  %83 = load i32, i32* @PCI_EXP_DEVCTL2_ATOMIC_REQ, align 4
  %84 = call i32 @pcie_capability_set_word(%struct.pci_dev* %81, i32 %82, i32 %83)
  store i32 0, i32* %3, align 4
  br label %85

85:                                               ; preds = %80, %72, %56, %46, %23, %16
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i32 @pci_is_pcie(%struct.pci_dev*) #1

declare dso_local i32 @pci_pcie_type(%struct.pci_dev*) #1

declare dso_local i32 @pcie_capability_read_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pcie_capability_set_word(%struct.pci_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
