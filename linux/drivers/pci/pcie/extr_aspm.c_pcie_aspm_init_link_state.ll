; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/pcie/extr_aspm.c_pcie_aspm_init_link_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/pcie/extr_aspm.c_pcie_aspm_init_link_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { %struct.TYPE_4__*, %struct.TYPE_3__*, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }
%struct.pcie_link_state = type { i32 }

@aspm_support_enabled = common dso_local global i32 0, align 4
@PCI_EXP_TYPE_ROOT_PORT = common dso_local global i64 0, align 8
@pci_bus_sem = common dso_local global i32 0, align 4
@aspm_lock = common dso_local global i32 0, align 4
@aspm_policy = common dso_local global i64 0, align 8
@POLICY_POWERSAVE = common dso_local global i64 0, align 8
@POLICY_POWER_SUPERSAVE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pcie_aspm_init_link_state(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.pcie_link_state*, align 8
  %4 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = call i32 @pcie_aspm_sanity_check(%struct.pci_dev* %5)
  %7 = icmp ne i32 %6, 0
  %8 = xor i1 %7, true
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* @aspm_support_enabled, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %80

14:                                               ; preds = %1
  %15 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %16 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  br label %80

20:                                               ; preds = %14
  %21 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %22 = call i32 @pcie_downstream_port(%struct.pci_dev* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  br label %80

25:                                               ; preds = %20
  %26 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %27 = call i64 @pci_pcie_type(%struct.pci_dev* %26)
  %28 = load i64, i64* @PCI_EXP_TYPE_ROOT_PORT, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %25
  %31 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %32 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %31, i32 0, i32 1
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  br label %80

38:                                               ; preds = %30, %25
  %39 = call i32 @down_read(i32* @pci_bus_sem)
  %40 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %41 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = call i64 @list_empty(i32* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %38
  br label %78

47:                                               ; preds = %38
  %48 = call i32 @mutex_lock(i32* @aspm_lock)
  %49 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %50 = call %struct.pcie_link_state* @alloc_pcie_link_state(%struct.pci_dev* %49)
  store %struct.pcie_link_state* %50, %struct.pcie_link_state** %3, align 8
  %51 = load %struct.pcie_link_state*, %struct.pcie_link_state** %3, align 8
  %52 = icmp ne %struct.pcie_link_state* %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %47
  br label %76

54:                                               ; preds = %47
  %55 = load %struct.pcie_link_state*, %struct.pcie_link_state** %3, align 8
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @pcie_aspm_cap_init(%struct.pcie_link_state* %55, i32 %56)
  %58 = load %struct.pcie_link_state*, %struct.pcie_link_state** %3, align 8
  %59 = load i32, i32* %4, align 4
  %60 = call i32 @pcie_clkpm_cap_init(%struct.pcie_link_state* %58, i32 %59)
  %61 = load i64, i64* @aspm_policy, align 8
  %62 = load i64, i64* @POLICY_POWERSAVE, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %75

64:                                               ; preds = %54
  %65 = load i64, i64* @aspm_policy, align 8
  %66 = load i64, i64* @POLICY_POWER_SUPERSAVE, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %75

68:                                               ; preds = %64
  %69 = load %struct.pcie_link_state*, %struct.pcie_link_state** %3, align 8
  %70 = call i32 @pcie_config_aspm_path(%struct.pcie_link_state* %69)
  %71 = load %struct.pcie_link_state*, %struct.pcie_link_state** %3, align 8
  %72 = load %struct.pcie_link_state*, %struct.pcie_link_state** %3, align 8
  %73 = call i32 @policy_to_clkpm_state(%struct.pcie_link_state* %72)
  %74 = call i32 @pcie_set_clkpm(%struct.pcie_link_state* %71, i32 %73)
  br label %75

75:                                               ; preds = %68, %64, %54
  br label %76

76:                                               ; preds = %75, %53
  %77 = call i32 @mutex_unlock(i32* @aspm_lock)
  br label %78

78:                                               ; preds = %76, %46
  %79 = call i32 @up_read(i32* @pci_bus_sem)
  br label %80

80:                                               ; preds = %78, %37, %24, %19, %13
  ret void
}

declare dso_local i32 @pcie_aspm_sanity_check(%struct.pci_dev*) #1

declare dso_local i32 @pcie_downstream_port(%struct.pci_dev*) #1

declare dso_local i64 @pci_pcie_type(%struct.pci_dev*) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.pcie_link_state* @alloc_pcie_link_state(%struct.pci_dev*) #1

declare dso_local i32 @pcie_aspm_cap_init(%struct.pcie_link_state*, i32) #1

declare dso_local i32 @pcie_clkpm_cap_init(%struct.pcie_link_state*, i32) #1

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
