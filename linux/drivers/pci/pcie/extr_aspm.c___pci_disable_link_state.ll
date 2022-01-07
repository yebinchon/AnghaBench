; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/pcie/extr_aspm.c___pci_disable_link_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/pcie/extr_aspm.c___pci_disable_link_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { %struct.pcie_link_state*, %struct.TYPE_2__* }
%struct.pcie_link_state = type { i64, i32 }
%struct.TYPE_2__ = type { %struct.pci_dev* }

@EINVAL = common dso_local global i32 0, align 4
@aspm_disabled = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [50 x i8] c"can't disable ASPM; OS doesn't have ASPM control\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@pci_bus_sem = common dso_local global i32 0, align 4
@aspm_lock = common dso_local global i32 0, align 4
@PCIE_LINK_STATE_L0S = common dso_local global i32 0, align 4
@ASPM_STATE_L0S = common dso_local global i32 0, align 4
@PCIE_LINK_STATE_L1 = common dso_local global i32 0, align 4
@ASPM_STATE_L1 = common dso_local global i32 0, align 4
@PCIE_LINK_STATE_CLKPM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i32, i32)* @__pci_disable_link_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__pci_disable_link_state(%struct.pci_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.pci_dev*, align 8
  %9 = alloca %struct.pcie_link_state*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %11 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  store %struct.pci_dev* %14, %struct.pci_dev** %8, align 8
  %15 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %16 = call i32 @pci_is_pcie(%struct.pci_dev* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %96

19:                                               ; preds = %3
  %20 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %21 = call i64 @pcie_downstream_port(%struct.pci_dev* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  store %struct.pci_dev* %24, %struct.pci_dev** %8, align 8
  br label %25

25:                                               ; preds = %23, %19
  %26 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %27 = icmp ne %struct.pci_dev* %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %25
  %29 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %30 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %29, i32 0, i32 0
  %31 = load %struct.pcie_link_state*, %struct.pcie_link_state** %30, align 8
  %32 = icmp ne %struct.pcie_link_state* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %28, %25
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %96

36:                                               ; preds = %28
  %37 = load i64, i64* @aspm_disabled, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %36
  %40 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %41 = call i32 @pci_warn(%struct.pci_dev* %40, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %42 = load i32, i32* @EPERM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %96

44:                                               ; preds = %36
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = call i32 @down_read(i32* @pci_bus_sem)
  br label %49

49:                                               ; preds = %47, %44
  %50 = call i32 @mutex_lock(i32* @aspm_lock)
  %51 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %52 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %51, i32 0, i32 0
  %53 = load %struct.pcie_link_state*, %struct.pcie_link_state** %52, align 8
  store %struct.pcie_link_state* %53, %struct.pcie_link_state** %9, align 8
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* @PCIE_LINK_STATE_L0S, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %49
  %59 = load i32, i32* @ASPM_STATE_L0S, align 4
  %60 = load %struct.pcie_link_state*, %struct.pcie_link_state** %9, align 8
  %61 = getelementptr inbounds %struct.pcie_link_state, %struct.pcie_link_state* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = or i32 %62, %59
  store i32 %63, i32* %61, align 8
  br label %64

64:                                               ; preds = %58, %49
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* @PCIE_LINK_STATE_L1, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %64
  %70 = load i32, i32* @ASPM_STATE_L1, align 4
  %71 = load %struct.pcie_link_state*, %struct.pcie_link_state** %9, align 8
  %72 = getelementptr inbounds %struct.pcie_link_state, %struct.pcie_link_state* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = or i32 %73, %70
  store i32 %74, i32* %72, align 8
  br label %75

75:                                               ; preds = %69, %64
  %76 = load %struct.pcie_link_state*, %struct.pcie_link_state** %9, align 8
  %77 = load %struct.pcie_link_state*, %struct.pcie_link_state** %9, align 8
  %78 = call i32 @policy_to_aspm_state(%struct.pcie_link_state* %77)
  %79 = call i32 @pcie_config_aspm_link(%struct.pcie_link_state* %76, i32 %78)
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* @PCIE_LINK_STATE_CLKPM, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %75
  %85 = load %struct.pcie_link_state*, %struct.pcie_link_state** %9, align 8
  %86 = getelementptr inbounds %struct.pcie_link_state, %struct.pcie_link_state* %85, i32 0, i32 0
  store i64 0, i64* %86, align 8
  %87 = load %struct.pcie_link_state*, %struct.pcie_link_state** %9, align 8
  %88 = call i32 @pcie_set_clkpm(%struct.pcie_link_state* %87, i32 0)
  br label %89

89:                                               ; preds = %84, %75
  %90 = call i32 @mutex_unlock(i32* @aspm_lock)
  %91 = load i32, i32* %7, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %89
  %94 = call i32 @up_read(i32* @pci_bus_sem)
  br label %95

95:                                               ; preds = %93, %89
  store i32 0, i32* %4, align 4
  br label %96

96:                                               ; preds = %95, %39, %33, %18
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

declare dso_local i32 @pci_is_pcie(%struct.pci_dev*) #1

declare dso_local i64 @pcie_downstream_port(%struct.pci_dev*) #1

declare dso_local i32 @pci_warn(%struct.pci_dev*, i8*) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @pcie_config_aspm_link(%struct.pcie_link_state*, i32) #1

declare dso_local i32 @policy_to_aspm_state(%struct.pcie_link_state*) #1

declare dso_local i32 @pcie_set_clkpm(%struct.pcie_link_state*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
