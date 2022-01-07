; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_pci.c_pcie_get_speed_cap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_pci.c_pcie_get_speed_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

@PCI_EXP_LNKCAP2 = common dso_local global i32 0, align 4
@PCI_EXP_LNKCAP2_SLS_32_0GB = common dso_local global i32 0, align 4
@PCIE_SPEED_32_0GT = common dso_local global i32 0, align 4
@PCI_EXP_LNKCAP2_SLS_16_0GB = common dso_local global i32 0, align 4
@PCIE_SPEED_16_0GT = common dso_local global i32 0, align 4
@PCI_EXP_LNKCAP2_SLS_8_0GB = common dso_local global i32 0, align 4
@PCIE_SPEED_8_0GT = common dso_local global i32 0, align 4
@PCI_EXP_LNKCAP2_SLS_5_0GB = common dso_local global i32 0, align 4
@PCIE_SPEED_5_0GT = common dso_local global i32 0, align 4
@PCI_EXP_LNKCAP2_SLS_2_5GB = common dso_local global i32 0, align 4
@PCIE_SPEED_2_5GT = common dso_local global i32 0, align 4
@PCI_SPEED_UNKNOWN = common dso_local global i32 0, align 4
@PCI_EXP_LNKCAP = common dso_local global i32 0, align 4
@PCI_EXP_LNKCAP_SLS = common dso_local global i32 0, align 4
@PCI_EXP_LNKCAP_SLS_5_0GB = common dso_local global i32 0, align 4
@PCI_EXP_LNKCAP_SLS_2_5GB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pcie_get_speed_cap(%struct.pci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  %6 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %7 = load i32, i32* @PCI_EXP_LNKCAP2, align 4
  %8 = call i32 @pcie_capability_read_dword(%struct.pci_dev* %6, i32 %7, i32* %4)
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %52

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @PCI_EXP_LNKCAP2_SLS_32_0GB, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = load i32, i32* @PCIE_SPEED_32_0GT, align 4
  store i32 %17, i32* %2, align 4
  br label %74

18:                                               ; preds = %11
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @PCI_EXP_LNKCAP2_SLS_16_0GB, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* @PCIE_SPEED_16_0GT, align 4
  store i32 %24, i32* %2, align 4
  br label %74

25:                                               ; preds = %18
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @PCI_EXP_LNKCAP2_SLS_8_0GB, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* @PCIE_SPEED_8_0GT, align 4
  store i32 %31, i32* %2, align 4
  br label %74

32:                                               ; preds = %25
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @PCI_EXP_LNKCAP2_SLS_5_0GB, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i32, i32* @PCIE_SPEED_5_0GT, align 4
  store i32 %38, i32* %2, align 4
  br label %74

39:                                               ; preds = %32
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @PCI_EXP_LNKCAP2_SLS_2_5GB, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = load i32, i32* @PCIE_SPEED_2_5GT, align 4
  store i32 %45, i32* %2, align 4
  br label %74

46:                                               ; preds = %39
  br label %47

47:                                               ; preds = %46
  br label %48

48:                                               ; preds = %47
  br label %49

49:                                               ; preds = %48
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* @PCI_SPEED_UNKNOWN, align 4
  store i32 %51, i32* %2, align 4
  br label %74

52:                                               ; preds = %1
  %53 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %54 = load i32, i32* @PCI_EXP_LNKCAP, align 4
  %55 = call i32 @pcie_capability_read_dword(%struct.pci_dev* %53, i32 %54, i32* %5)
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @PCI_EXP_LNKCAP_SLS, align 4
  %58 = and i32 %56, %57
  %59 = load i32, i32* @PCI_EXP_LNKCAP_SLS_5_0GB, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %52
  %62 = load i32, i32* @PCIE_SPEED_5_0GT, align 4
  store i32 %62, i32* %2, align 4
  br label %74

63:                                               ; preds = %52
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* @PCI_EXP_LNKCAP_SLS, align 4
  %66 = and i32 %64, %65
  %67 = load i32, i32* @PCI_EXP_LNKCAP_SLS_2_5GB, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %63
  %70 = load i32, i32* @PCIE_SPEED_2_5GT, align 4
  store i32 %70, i32* %2, align 4
  br label %74

71:                                               ; preds = %63
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* @PCI_SPEED_UNKNOWN, align 4
  store i32 %73, i32* %2, align 4
  br label %74

74:                                               ; preds = %72, %69, %61, %50, %44, %37, %30, %23, %16
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i32 @pcie_capability_read_dword(%struct.pci_dev*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
