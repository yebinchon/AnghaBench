; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_pci.c_pcie_bandwidth_available.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_pci.c_pcie_bandwidth_available.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

@PCI_SPEED_UNKNOWN = common dso_local global i32 0, align 4
@PCIE_LNK_WIDTH_UNKNOWN = common dso_local global i32 0, align 4
@PCI_EXP_LNKSTA = common dso_local global i32 0, align 4
@pcie_link_speed = common dso_local global i32* null, align 8
@PCI_EXP_LNKSTA_CLS = common dso_local global i64 0, align 8
@PCI_EXP_LNKSTA_NLW = common dso_local global i64 0, align 8
@PCI_EXP_LNKSTA_NLW_SHIFT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pcie_bandwidth_available(%struct.pci_dev* %0, %struct.pci_dev** %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca %struct.pci_dev**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %5, align 8
  store %struct.pci_dev** %1, %struct.pci_dev*** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load i32, i32* @PCI_SPEED_UNKNOWN, align 4
  %18 = load i32*, i32** %7, align 8
  store i32 %17, i32* %18, align 4
  br label %19

19:                                               ; preds = %16, %4
  %20 = load i32*, i32** %8, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i32, i32* @PCIE_LNK_WIDTH_UNKNOWN, align 4
  %24 = load i32*, i32** %8, align 8
  store i32 %23, i32* %24, align 4
  br label %25

25:                                               ; preds = %22, %19
  store i32 0, i32* %12, align 4
  br label %26

26:                                               ; preds = %75, %25
  %27 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %28 = icmp ne %struct.pci_dev* %27, null
  br i1 %28, label %29, label %78

29:                                               ; preds = %26
  %30 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %31 = load i32, i32* @PCI_EXP_LNKSTA, align 4
  %32 = call i32 @pcie_capability_read_word(%struct.pci_dev* %30, i32 %31, i64* %9)
  %33 = load i32*, i32** @pcie_link_speed, align 8
  %34 = load i64, i64* %9, align 8
  %35 = load i64, i64* @PCI_EXP_LNKSTA_CLS, align 8
  %36 = and i64 %34, %35
  %37 = getelementptr inbounds i32, i32* %33, i64 %36
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %10, align 4
  %39 = load i64, i64* %9, align 8
  %40 = load i64, i64* @PCI_EXP_LNKSTA_NLW, align 8
  %41 = and i64 %39, %40
  %42 = load i64, i64* @PCI_EXP_LNKSTA_NLW_SHIFT, align 8
  %43 = lshr i64 %41, %42
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* %10, align 4
  %47 = call i32 @PCIE_SPEED2MBS_ENC(i32 %46)
  %48 = mul i32 %45, %47
  store i32 %48, i32* %13, align 4
  %49 = load i32, i32* %12, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %29
  %52 = load i32, i32* %13, align 4
  %53 = load i32, i32* %12, align 4
  %54 = icmp sle i32 %52, %53
  br i1 %54, label %55, label %75

55:                                               ; preds = %51, %29
  %56 = load i32, i32* %13, align 4
  store i32 %56, i32* %12, align 4
  %57 = load %struct.pci_dev**, %struct.pci_dev*** %6, align 8
  %58 = icmp ne %struct.pci_dev** %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %61 = load %struct.pci_dev**, %struct.pci_dev*** %6, align 8
  store %struct.pci_dev* %60, %struct.pci_dev** %61, align 8
  br label %62

62:                                               ; preds = %59, %55
  %63 = load i32*, i32** %7, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = load i32, i32* %10, align 4
  %67 = load i32*, i32** %7, align 8
  store i32 %66, i32* %67, align 4
  br label %68

68:                                               ; preds = %65, %62
  %69 = load i32*, i32** %8, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = load i32, i32* %11, align 4
  %73 = load i32*, i32** %8, align 8
  store i32 %72, i32* %73, align 4
  br label %74

74:                                               ; preds = %71, %68
  br label %75

75:                                               ; preds = %74, %51
  %76 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %77 = call %struct.pci_dev* @pci_upstream_bridge(%struct.pci_dev* %76)
  store %struct.pci_dev* %77, %struct.pci_dev** %5, align 8
  br label %26

78:                                               ; preds = %26
  %79 = load i32, i32* %12, align 4
  ret i32 %79
}

declare dso_local i32 @pcie_capability_read_word(%struct.pci_dev*, i32, i64*) #1

declare dso_local i32 @PCIE_SPEED2MBS_ENC(i32) #1

declare dso_local %struct.pci_dev* @pci_upstream_bridge(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
