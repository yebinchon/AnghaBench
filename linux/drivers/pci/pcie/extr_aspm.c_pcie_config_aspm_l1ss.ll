; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/pcie/extr_aspm.c_pcie_config_aspm_l1ss.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/pcie/extr_aspm.c_pcie_config_aspm_l1ss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcie_link_state = type { i32, %struct.TYPE_2__, %struct.pci_dev*, %struct.pci_dev* }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.pci_dev = type { i32 }

@PCI_L1SS_CTL1 = common dso_local global i32 0, align 4
@PCI_L1SS_CTL1_L1SS_MASK = common dso_local global i32 0, align 4
@ASPM_STATE_L1_1 = common dso_local global i32 0, align 4
@ASPM_STATE_L1_2 = common dso_local global i32 0, align 4
@PCI_EXP_LNKCTL = common dso_local global i32 0, align 4
@PCI_EXP_LNKCTL_ASPM_L1 = common dso_local global i32 0, align 4
@ASPM_STATE_L1_2_MASK = common dso_local global i32 0, align 4
@PCI_L1SS_CTL2 = common dso_local global i32 0, align 4
@PCI_L1SS_CTL1_CM_RESTORE_TIME = common dso_local global i32 0, align 4
@PCI_L1SS_CTL1_LTR_L12_TH_VALUE = common dso_local global i32 0, align 4
@PCI_L1SS_CTL1_LTR_L12_TH_SCALE = common dso_local global i32 0, align 4
@PCI_L1SS_CTL1_ASPM_L1_1 = common dso_local global i32 0, align 4
@PCI_L1SS_CTL1_ASPM_L1_2 = common dso_local global i32 0, align 4
@ASPM_STATE_L1_1_PCIPM = common dso_local global i32 0, align 4
@PCI_L1SS_CTL1_PCIPM_L1_1 = common dso_local global i32 0, align 4
@ASPM_STATE_L1_2_PCIPM = common dso_local global i32 0, align 4
@PCI_L1SS_CTL1_PCIPM_L1_2 = common dso_local global i32 0, align 4
@PCI_L1SS_CAP_L1_PM_SS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pcie_link_state*, i32)* @pcie_config_aspm_l1ss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcie_config_aspm_l1ss(%struct.pcie_link_state* %0, i32 %1) #0 {
  %3 = alloca %struct.pcie_link_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_dev*, align 8
  %8 = alloca %struct.pci_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.pcie_link_state* %0, %struct.pcie_link_state** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.pcie_link_state*, %struct.pcie_link_state** %3, align 8
  %12 = getelementptr inbounds %struct.pcie_link_state, %struct.pcie_link_state* %11, i32 0, i32 3
  %13 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  store %struct.pci_dev* %13, %struct.pci_dev** %7, align 8
  %14 = load %struct.pcie_link_state*, %struct.pcie_link_state** %3, align 8
  %15 = getelementptr inbounds %struct.pcie_link_state, %struct.pcie_link_state* %14, i32 0, i32 2
  %16 = load %struct.pci_dev*, %struct.pci_dev** %15, align 8
  store %struct.pci_dev* %16, %struct.pci_dev** %8, align 8
  %17 = load %struct.pcie_link_state*, %struct.pcie_link_state** %3, align 8
  %18 = getelementptr inbounds %struct.pcie_link_state, %struct.pcie_link_state* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %9, align 4
  %21 = load %struct.pcie_link_state*, %struct.pcie_link_state** %3, align 8
  %22 = getelementptr inbounds %struct.pcie_link_state, %struct.pcie_link_state* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %10, align 4
  %25 = load %struct.pcie_link_state*, %struct.pcie_link_state** %3, align 8
  %26 = getelementptr inbounds %struct.pcie_link_state, %struct.pcie_link_state* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = xor i32 %27, %28
  %30 = load i32, i32* %4, align 4
  %31 = and i32 %29, %30
  store i32 %31, i32* %6, align 4
  %32 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* @PCI_L1SS_CTL1, align 4
  %35 = add nsw i32 %33, %34
  %36 = load i32, i32* @PCI_L1SS_CTL1_L1SS_MASK, align 4
  %37 = call i32 @pci_clear_and_set_dword(%struct.pci_dev* %32, i32 %35, i32 %36, i32 0)
  %38 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @PCI_L1SS_CTL1, align 4
  %41 = add nsw i32 %39, %40
  %42 = load i32, i32* @PCI_L1SS_CTL1_L1SS_MASK, align 4
  %43 = call i32 @pci_clear_and_set_dword(%struct.pci_dev* %38, i32 %41, i32 %42, i32 0)
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @ASPM_STATE_L1_1, align 4
  %46 = load i32, i32* @ASPM_STATE_L1_2, align 4
  %47 = or i32 %45, %46
  %48 = and i32 %44, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %2
  %51 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %52 = load i32, i32* @PCI_EXP_LNKCTL, align 4
  %53 = load i32, i32* @PCI_EXP_LNKCTL_ASPM_L1, align 4
  %54 = call i32 @pcie_capability_clear_and_set_word(%struct.pci_dev* %51, i32 %52, i32 %53, i32 0)
  %55 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %56 = load i32, i32* @PCI_EXP_LNKCTL, align 4
  %57 = load i32, i32* @PCI_EXP_LNKCTL_ASPM_L1, align 4
  %58 = call i32 @pcie_capability_clear_and_set_word(%struct.pci_dev* %55, i32 %56, i32 %57, i32 0)
  br label %59

59:                                               ; preds = %50, %2
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* @ASPM_STATE_L1_2_MASK, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %117

64:                                               ; preds = %59
  %65 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* @PCI_L1SS_CTL2, align 4
  %68 = add nsw i32 %66, %67
  %69 = load %struct.pcie_link_state*, %struct.pcie_link_state** %3, align 8
  %70 = getelementptr inbounds %struct.pcie_link_state, %struct.pcie_link_state* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @pci_write_config_dword(%struct.pci_dev* %65, i32 %68, i32 %72)
  %74 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* @PCI_L1SS_CTL2, align 4
  %77 = add nsw i32 %75, %76
  %78 = load %struct.pcie_link_state*, %struct.pcie_link_state** %3, align 8
  %79 = getelementptr inbounds %struct.pcie_link_state, %struct.pcie_link_state* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @pci_write_config_dword(%struct.pci_dev* %74, i32 %77, i32 %81)
  %83 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* @PCI_L1SS_CTL1, align 4
  %86 = add nsw i32 %84, %85
  %87 = load i32, i32* @PCI_L1SS_CTL1_CM_RESTORE_TIME, align 4
  %88 = load %struct.pcie_link_state*, %struct.pcie_link_state** %3, align 8
  %89 = getelementptr inbounds %struct.pcie_link_state, %struct.pcie_link_state* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @pci_clear_and_set_dword(%struct.pci_dev* %83, i32 %86, i32 %87, i32 %91)
  %93 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %94 = load i32, i32* %9, align 4
  %95 = load i32, i32* @PCI_L1SS_CTL1, align 4
  %96 = add nsw i32 %94, %95
  %97 = load i32, i32* @PCI_L1SS_CTL1_LTR_L12_TH_VALUE, align 4
  %98 = load i32, i32* @PCI_L1SS_CTL1_LTR_L12_TH_SCALE, align 4
  %99 = or i32 %97, %98
  %100 = load %struct.pcie_link_state*, %struct.pcie_link_state** %3, align 8
  %101 = getelementptr inbounds %struct.pcie_link_state, %struct.pcie_link_state* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @pci_clear_and_set_dword(%struct.pci_dev* %93, i32 %96, i32 %99, i32 %103)
  %105 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %106 = load i32, i32* %10, align 4
  %107 = load i32, i32* @PCI_L1SS_CTL1, align 4
  %108 = add nsw i32 %106, %107
  %109 = load i32, i32* @PCI_L1SS_CTL1_LTR_L12_TH_VALUE, align 4
  %110 = load i32, i32* @PCI_L1SS_CTL1_LTR_L12_TH_SCALE, align 4
  %111 = or i32 %109, %110
  %112 = load %struct.pcie_link_state*, %struct.pcie_link_state** %3, align 8
  %113 = getelementptr inbounds %struct.pcie_link_state, %struct.pcie_link_state* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @pci_clear_and_set_dword(%struct.pci_dev* %105, i32 %108, i32 %111, i32 %115)
  br label %117

117:                                              ; preds = %64, %59
  store i32 0, i32* %5, align 4
  %118 = load i32, i32* %4, align 4
  %119 = load i32, i32* @ASPM_STATE_L1_1, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %117
  %123 = load i32, i32* @PCI_L1SS_CTL1_ASPM_L1_1, align 4
  %124 = load i32, i32* %5, align 4
  %125 = or i32 %124, %123
  store i32 %125, i32* %5, align 4
  br label %126

126:                                              ; preds = %122, %117
  %127 = load i32, i32* %4, align 4
  %128 = load i32, i32* @ASPM_STATE_L1_2, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %126
  %132 = load i32, i32* @PCI_L1SS_CTL1_ASPM_L1_2, align 4
  %133 = load i32, i32* %5, align 4
  %134 = or i32 %133, %132
  store i32 %134, i32* %5, align 4
  br label %135

135:                                              ; preds = %131, %126
  %136 = load i32, i32* %4, align 4
  %137 = load i32, i32* @ASPM_STATE_L1_1_PCIPM, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %135
  %141 = load i32, i32* @PCI_L1SS_CTL1_PCIPM_L1_1, align 4
  %142 = load i32, i32* %5, align 4
  %143 = or i32 %142, %141
  store i32 %143, i32* %5, align 4
  br label %144

144:                                              ; preds = %140, %135
  %145 = load i32, i32* %4, align 4
  %146 = load i32, i32* @ASPM_STATE_L1_2_PCIPM, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %153

149:                                              ; preds = %144
  %150 = load i32, i32* @PCI_L1SS_CTL1_PCIPM_L1_2, align 4
  %151 = load i32, i32* %5, align 4
  %152 = or i32 %151, %150
  store i32 %152, i32* %5, align 4
  br label %153

153:                                              ; preds = %149, %144
  %154 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %155 = load i32, i32* %9, align 4
  %156 = load i32, i32* @PCI_L1SS_CTL1, align 4
  %157 = add nsw i32 %155, %156
  %158 = load i32, i32* @PCI_L1SS_CAP_L1_PM_SS, align 4
  %159 = load i32, i32* %5, align 4
  %160 = call i32 @pci_clear_and_set_dword(%struct.pci_dev* %154, i32 %157, i32 %158, i32 %159)
  %161 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %162 = load i32, i32* %10, align 4
  %163 = load i32, i32* @PCI_L1SS_CTL1, align 4
  %164 = add nsw i32 %162, %163
  %165 = load i32, i32* @PCI_L1SS_CAP_L1_PM_SS, align 4
  %166 = load i32, i32* %5, align 4
  %167 = call i32 @pci_clear_and_set_dword(%struct.pci_dev* %161, i32 %164, i32 %165, i32 %166)
  ret void
}

declare dso_local i32 @pci_clear_and_set_dword(%struct.pci_dev*, i32, i32, i32) #1

declare dso_local i32 @pcie_capability_clear_and_set_word(%struct.pci_dev*, i32, i32, i32) #1

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
