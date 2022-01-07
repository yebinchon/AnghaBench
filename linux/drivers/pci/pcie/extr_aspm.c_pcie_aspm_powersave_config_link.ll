; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/pcie/extr_aspm.c_pcie_aspm_powersave_config_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/pcie/extr_aspm.c_pcie_aspm_powersave_config_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { %struct.pcie_link_state* }
%struct.pcie_link_state = type { i32 }

@aspm_disabled = common dso_local global i64 0, align 8
@aspm_policy = common dso_local global i64 0, align 8
@POLICY_POWERSAVE = common dso_local global i64 0, align 8
@POLICY_POWER_SUPERSAVE = common dso_local global i64 0, align 8
@pci_bus_sem = common dso_local global i32 0, align 4
@aspm_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pcie_aspm_powersave_config_link(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.pcie_link_state*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %4 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %5 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %4, i32 0, i32 0
  %6 = load %struct.pcie_link_state*, %struct.pcie_link_state** %5, align 8
  store %struct.pcie_link_state* %6, %struct.pcie_link_state** %3, align 8
  %7 = load i64, i64* @aspm_disabled, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load %struct.pcie_link_state*, %struct.pcie_link_state** %3, align 8
  %11 = icmp ne %struct.pcie_link_state* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %9, %1
  br label %33

13:                                               ; preds = %9
  %14 = load i64, i64* @aspm_policy, align 8
  %15 = load i64, i64* @POLICY_POWERSAVE, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %13
  %18 = load i64, i64* @aspm_policy, align 8
  %19 = load i64, i64* @POLICY_POWER_SUPERSAVE, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  br label %33

22:                                               ; preds = %17, %13
  %23 = call i32 @down_read(i32* @pci_bus_sem)
  %24 = call i32 @mutex_lock(i32* @aspm_lock)
  %25 = load %struct.pcie_link_state*, %struct.pcie_link_state** %3, align 8
  %26 = call i32 @pcie_config_aspm_path(%struct.pcie_link_state* %25)
  %27 = load %struct.pcie_link_state*, %struct.pcie_link_state** %3, align 8
  %28 = load %struct.pcie_link_state*, %struct.pcie_link_state** %3, align 8
  %29 = call i32 @policy_to_clkpm_state(%struct.pcie_link_state* %28)
  %30 = call i32 @pcie_set_clkpm(%struct.pcie_link_state* %27, i32 %29)
  %31 = call i32 @mutex_unlock(i32* @aspm_lock)
  %32 = call i32 @up_read(i32* @pci_bus_sem)
  br label %33

33:                                               ; preds = %22, %21, %12
  ret void
}

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @pcie_config_aspm_path(%struct.pcie_link_state*) #1

declare dso_local i32 @pcie_set_clkpm(%struct.pcie_link_state*, i32) #1

declare dso_local i32 @policy_to_clkpm_state(%struct.pcie_link_state*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
