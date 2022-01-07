; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/pcie/extr_aspm.c_pcie_get_aspm_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/pcie/extr_aspm.c_pcie_get_aspm_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.aspm_register_info = type { i32, i32, i32, i32, i32, i32, i32, i64 }

@PCI_EXP_LNKCAP = common dso_local global i32 0, align 4
@PCI_EXP_LNKCAP_ASPMS = common dso_local global i32 0, align 4
@PCI_EXP_LNKCAP_L0SEL = common dso_local global i32 0, align 4
@PCI_EXP_LNKCAP_L1EL = common dso_local global i32 0, align 4
@PCI_EXP_LNKCTL = common dso_local global i32 0, align 4
@PCI_EXP_LNKCTL_ASPMC = common dso_local global i32 0, align 4
@PCI_EXT_CAP_ID_L1SS = common dso_local global i32 0, align 4
@PCI_L1SS_CAP = common dso_local global i64 0, align 8
@PCI_L1SS_CAP_L1_PM_SS = common dso_local global i32 0, align 4
@PCI_L1SS_CAP_ASPM_L1_2 = common dso_local global i32 0, align 4
@PCI_L1SS_CTL1 = common dso_local global i64 0, align 8
@PCI_L1SS_CTL2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*, %struct.aspm_register_info*)* @pcie_get_aspm_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcie_get_aspm_reg(%struct.pci_dev* %0, %struct.aspm_register_info* %1) #0 {
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.aspm_register_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store %struct.aspm_register_info* %1, %struct.aspm_register_info** %4, align 8
  %7 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %8 = load i32, i32* @PCI_EXP_LNKCAP, align 4
  %9 = call i32 @pcie_capability_read_dword(%struct.pci_dev* %7, i32 %8, i32* %6)
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @PCI_EXP_LNKCAP_ASPMS, align 4
  %12 = and i32 %10, %11
  %13 = ashr i32 %12, 10
  %14 = load %struct.aspm_register_info*, %struct.aspm_register_info** %4, align 8
  %15 = getelementptr inbounds %struct.aspm_register_info, %struct.aspm_register_info* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @PCI_EXP_LNKCAP_L0SEL, align 4
  %18 = and i32 %16, %17
  %19 = ashr i32 %18, 12
  %20 = load %struct.aspm_register_info*, %struct.aspm_register_info** %4, align 8
  %21 = getelementptr inbounds %struct.aspm_register_info, %struct.aspm_register_info* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @PCI_EXP_LNKCAP_L1EL, align 4
  %24 = and i32 %22, %23
  %25 = ashr i32 %24, 15
  %26 = load %struct.aspm_register_info*, %struct.aspm_register_info** %4, align 8
  %27 = getelementptr inbounds %struct.aspm_register_info, %struct.aspm_register_info* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 8
  %28 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %29 = load i32, i32* @PCI_EXP_LNKCTL, align 4
  %30 = call i32 @pcie_capability_read_word(%struct.pci_dev* %28, i32 %29, i32* %5)
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @PCI_EXP_LNKCTL_ASPMC, align 4
  %33 = and i32 %31, %32
  %34 = load %struct.aspm_register_info*, %struct.aspm_register_info** %4, align 8
  %35 = getelementptr inbounds %struct.aspm_register_info, %struct.aspm_register_info* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 4
  %36 = load %struct.aspm_register_info*, %struct.aspm_register_info** %4, align 8
  %37 = getelementptr inbounds %struct.aspm_register_info, %struct.aspm_register_info* %36, i32 0, i32 6
  store i32 0, i32* %37, align 8
  %38 = load %struct.aspm_register_info*, %struct.aspm_register_info** %4, align 8
  %39 = getelementptr inbounds %struct.aspm_register_info, %struct.aspm_register_info* %38, i32 0, i32 5
  store i32 0, i32* %39, align 4
  %40 = load %struct.aspm_register_info*, %struct.aspm_register_info** %4, align 8
  %41 = getelementptr inbounds %struct.aspm_register_info, %struct.aspm_register_info* %40, i32 0, i32 4
  store i32 0, i32* %41, align 8
  %42 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %43 = load i32, i32* @PCI_EXT_CAP_ID_L1SS, align 4
  %44 = call i64 @pci_find_ext_capability(%struct.pci_dev* %42, i32 %43)
  %45 = load %struct.aspm_register_info*, %struct.aspm_register_info** %4, align 8
  %46 = getelementptr inbounds %struct.aspm_register_info, %struct.aspm_register_info* %45, i32 0, i32 7
  store i64 %44, i64* %46, align 8
  %47 = load %struct.aspm_register_info*, %struct.aspm_register_info** %4, align 8
  %48 = getelementptr inbounds %struct.aspm_register_info, %struct.aspm_register_info* %47, i32 0, i32 7
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %2
  br label %102

52:                                               ; preds = %2
  %53 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %54 = load %struct.aspm_register_info*, %struct.aspm_register_info** %4, align 8
  %55 = getelementptr inbounds %struct.aspm_register_info, %struct.aspm_register_info* %54, i32 0, i32 7
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @PCI_L1SS_CAP, align 8
  %58 = add nsw i64 %56, %57
  %59 = load %struct.aspm_register_info*, %struct.aspm_register_info** %4, align 8
  %60 = getelementptr inbounds %struct.aspm_register_info, %struct.aspm_register_info* %59, i32 0, i32 4
  %61 = call i32 @pci_read_config_dword(%struct.pci_dev* %53, i64 %58, i32* %60)
  %62 = load %struct.aspm_register_info*, %struct.aspm_register_info** %4, align 8
  %63 = getelementptr inbounds %struct.aspm_register_info, %struct.aspm_register_info* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @PCI_L1SS_CAP_L1_PM_SS, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %52
  %69 = load %struct.aspm_register_info*, %struct.aspm_register_info** %4, align 8
  %70 = getelementptr inbounds %struct.aspm_register_info, %struct.aspm_register_info* %69, i32 0, i32 4
  store i32 0, i32* %70, align 8
  br label %102

71:                                               ; preds = %52
  %72 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %73 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %83, label %76

76:                                               ; preds = %71
  %77 = load i32, i32* @PCI_L1SS_CAP_ASPM_L1_2, align 4
  %78 = xor i32 %77, -1
  %79 = load %struct.aspm_register_info*, %struct.aspm_register_info** %4, align 8
  %80 = getelementptr inbounds %struct.aspm_register_info, %struct.aspm_register_info* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 8
  %82 = and i32 %81, %78
  store i32 %82, i32* %80, align 8
  br label %83

83:                                               ; preds = %76, %71
  %84 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %85 = load %struct.aspm_register_info*, %struct.aspm_register_info** %4, align 8
  %86 = getelementptr inbounds %struct.aspm_register_info, %struct.aspm_register_info* %85, i32 0, i32 7
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @PCI_L1SS_CTL1, align 8
  %89 = add nsw i64 %87, %88
  %90 = load %struct.aspm_register_info*, %struct.aspm_register_info** %4, align 8
  %91 = getelementptr inbounds %struct.aspm_register_info, %struct.aspm_register_info* %90, i32 0, i32 5
  %92 = call i32 @pci_read_config_dword(%struct.pci_dev* %84, i64 %89, i32* %91)
  %93 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %94 = load %struct.aspm_register_info*, %struct.aspm_register_info** %4, align 8
  %95 = getelementptr inbounds %struct.aspm_register_info, %struct.aspm_register_info* %94, i32 0, i32 7
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @PCI_L1SS_CTL2, align 8
  %98 = add nsw i64 %96, %97
  %99 = load %struct.aspm_register_info*, %struct.aspm_register_info** %4, align 8
  %100 = getelementptr inbounds %struct.aspm_register_info, %struct.aspm_register_info* %99, i32 0, i32 6
  %101 = call i32 @pci_read_config_dword(%struct.pci_dev* %93, i64 %98, i32* %100)
  br label %102

102:                                              ; preds = %83, %68, %51
  ret void
}

declare dso_local i32 @pcie_capability_read_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pcie_capability_read_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i64 @pci_find_ext_capability(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
