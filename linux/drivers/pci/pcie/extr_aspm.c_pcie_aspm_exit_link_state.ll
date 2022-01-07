; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/pcie/extr_aspm.c_pcie_aspm_exit_link_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/pcie/extr_aspm.c_pcie_aspm_exit_link_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { %struct.pcie_link_state*, %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.pcie_link_state = type { i32, %struct.pcie_link_state*, %struct.pcie_link_state* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { %struct.pci_dev* }

@pci_bus_sem = common dso_local global i32 0, align 4
@aspm_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pcie_aspm_exit_link_state(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.pcie_link_state*, align 8
  %5 = alloca %struct.pcie_link_state*, align 8
  %6 = alloca %struct.pcie_link_state*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %7 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %8 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %7, i32 0, i32 2
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  store %struct.pci_dev* %11, %struct.pci_dev** %3, align 8
  %12 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %13 = icmp ne %struct.pci_dev* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %16 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %15, i32 0, i32 0
  %17 = load %struct.pcie_link_state*, %struct.pcie_link_state** %16, align 8
  %18 = icmp ne %struct.pcie_link_state* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %14, %1
  br label %58

20:                                               ; preds = %14
  %21 = call i32 @down_read(i32* @pci_bus_sem)
  %22 = call i32 @mutex_lock(i32* @aspm_lock)
  %23 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %24 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %23, i32 0, i32 1
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = call i32 @list_empty(i32* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %20
  br label %55

30:                                               ; preds = %20
  %31 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %32 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %31, i32 0, i32 0
  %33 = load %struct.pcie_link_state*, %struct.pcie_link_state** %32, align 8
  store %struct.pcie_link_state* %33, %struct.pcie_link_state** %4, align 8
  %34 = load %struct.pcie_link_state*, %struct.pcie_link_state** %4, align 8
  %35 = getelementptr inbounds %struct.pcie_link_state, %struct.pcie_link_state* %34, i32 0, i32 2
  %36 = load %struct.pcie_link_state*, %struct.pcie_link_state** %35, align 8
  store %struct.pcie_link_state* %36, %struct.pcie_link_state** %5, align 8
  %37 = load %struct.pcie_link_state*, %struct.pcie_link_state** %4, align 8
  %38 = getelementptr inbounds %struct.pcie_link_state, %struct.pcie_link_state* %37, i32 0, i32 1
  %39 = load %struct.pcie_link_state*, %struct.pcie_link_state** %38, align 8
  store %struct.pcie_link_state* %39, %struct.pcie_link_state** %6, align 8
  %40 = load %struct.pcie_link_state*, %struct.pcie_link_state** %4, align 8
  %41 = call i32 @pcie_config_aspm_link(%struct.pcie_link_state* %40, i32 0)
  %42 = load %struct.pcie_link_state*, %struct.pcie_link_state** %4, align 8
  %43 = getelementptr inbounds %struct.pcie_link_state, %struct.pcie_link_state* %42, i32 0, i32 0
  %44 = call i32 @list_del(i32* %43)
  %45 = load %struct.pcie_link_state*, %struct.pcie_link_state** %4, align 8
  %46 = call i32 @free_link_state(%struct.pcie_link_state* %45)
  %47 = load %struct.pcie_link_state*, %struct.pcie_link_state** %6, align 8
  %48 = icmp ne %struct.pcie_link_state* %47, null
  br i1 %48, label %49, label %54

49:                                               ; preds = %30
  %50 = load %struct.pcie_link_state*, %struct.pcie_link_state** %5, align 8
  %51 = call i32 @pcie_update_aspm_capable(%struct.pcie_link_state* %50)
  %52 = load %struct.pcie_link_state*, %struct.pcie_link_state** %6, align 8
  %53 = call i32 @pcie_config_aspm_path(%struct.pcie_link_state* %52)
  br label %54

54:                                               ; preds = %49, %30
  br label %55

55:                                               ; preds = %54, %29
  %56 = call i32 @mutex_unlock(i32* @aspm_lock)
  %57 = call i32 @up_read(i32* @pci_bus_sem)
  br label %58

58:                                               ; preds = %55, %19
  ret void
}

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @pcie_config_aspm_link(%struct.pcie_link_state*, i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @free_link_state(%struct.pcie_link_state*) #1

declare dso_local i32 @pcie_update_aspm_capable(%struct.pcie_link_state*) #1

declare dso_local i32 @pcie_config_aspm_path(%struct.pcie_link_state*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
