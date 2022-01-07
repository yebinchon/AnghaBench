; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/pcie/extr_aspm.c_alloc_pcie_link_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/pcie/extr_aspm.c_alloc_pcie_link_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcie_link_state = type { i32, %struct.pcie_link_state*, %struct.pcie_link_state*, i32, %struct.pci_dev* }
%struct.pci_dev = type { %struct.pcie_link_state*, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.pcie_link_state* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@PCI_EXP_TYPE_ROOT_PORT = common dso_local global i64 0, align 8
@PCI_EXP_TYPE_PCIE_BRIDGE = common dso_local global i64 0, align 8
@link_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pcie_link_state* (%struct.pci_dev*)* @alloc_pcie_link_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pcie_link_state* @alloc_pcie_link_state(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pcie_link_state*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.pcie_link_state*, align 8
  %5 = alloca %struct.pcie_link_state*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.pcie_link_state* @kzalloc(i32 40, i32 %6)
  store %struct.pcie_link_state* %7, %struct.pcie_link_state** %4, align 8
  %8 = load %struct.pcie_link_state*, %struct.pcie_link_state** %4, align 8
  %9 = icmp ne %struct.pcie_link_state* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store %struct.pcie_link_state* null, %struct.pcie_link_state** %2, align 8
  br label %80

11:                                               ; preds = %1
  %12 = load %struct.pcie_link_state*, %struct.pcie_link_state** %4, align 8
  %13 = getelementptr inbounds %struct.pcie_link_state, %struct.pcie_link_state* %12, i32 0, i32 0
  %14 = call i32 @INIT_LIST_HEAD(i32* %13)
  %15 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %16 = load %struct.pcie_link_state*, %struct.pcie_link_state** %4, align 8
  %17 = getelementptr inbounds %struct.pcie_link_state, %struct.pcie_link_state* %16, i32 0, i32 4
  store %struct.pci_dev* %15, %struct.pci_dev** %17, align 8
  %18 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %19 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @pci_function_0(i32 %20)
  %22 = load %struct.pcie_link_state*, %struct.pcie_link_state** %4, align 8
  %23 = getelementptr inbounds %struct.pcie_link_state, %struct.pcie_link_state* %22, i32 0, i32 3
  store i32 %21, i32* %23, align 8
  %24 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %25 = call i64 @pci_pcie_type(%struct.pci_dev* %24)
  %26 = load i64, i64* @PCI_EXP_TYPE_ROOT_PORT, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %42, label %28

28:                                               ; preds = %11
  %29 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %30 = call i64 @pci_pcie_type(%struct.pci_dev* %29)
  %31 = load i64, i64* @PCI_EXP_TYPE_PCIE_BRIDGE, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %42, label %33

33:                                               ; preds = %28
  %34 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %35 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %34, i32 0, i32 1
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = icmp ne %struct.TYPE_4__* %40, null
  br i1 %41, label %46, label %42

42:                                               ; preds = %33, %28, %11
  %43 = load %struct.pcie_link_state*, %struct.pcie_link_state** %4, align 8
  %44 = load %struct.pcie_link_state*, %struct.pcie_link_state** %4, align 8
  %45 = getelementptr inbounds %struct.pcie_link_state, %struct.pcie_link_state* %44, i32 0, i32 1
  store %struct.pcie_link_state* %43, %struct.pcie_link_state** %45, align 8
  br label %72

46:                                               ; preds = %33
  %47 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %48 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %47, i32 0, i32 1
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load %struct.pcie_link_state*, %struct.pcie_link_state** %54, align 8
  store %struct.pcie_link_state* %55, %struct.pcie_link_state** %5, align 8
  %56 = load %struct.pcie_link_state*, %struct.pcie_link_state** %5, align 8
  %57 = icmp ne %struct.pcie_link_state* %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %46
  %59 = load %struct.pcie_link_state*, %struct.pcie_link_state** %4, align 8
  %60 = call i32 @kfree(%struct.pcie_link_state* %59)
  store %struct.pcie_link_state* null, %struct.pcie_link_state** %2, align 8
  br label %80

61:                                               ; preds = %46
  %62 = load %struct.pcie_link_state*, %struct.pcie_link_state** %5, align 8
  %63 = load %struct.pcie_link_state*, %struct.pcie_link_state** %4, align 8
  %64 = getelementptr inbounds %struct.pcie_link_state, %struct.pcie_link_state* %63, i32 0, i32 2
  store %struct.pcie_link_state* %62, %struct.pcie_link_state** %64, align 8
  %65 = load %struct.pcie_link_state*, %struct.pcie_link_state** %4, align 8
  %66 = getelementptr inbounds %struct.pcie_link_state, %struct.pcie_link_state* %65, i32 0, i32 2
  %67 = load %struct.pcie_link_state*, %struct.pcie_link_state** %66, align 8
  %68 = getelementptr inbounds %struct.pcie_link_state, %struct.pcie_link_state* %67, i32 0, i32 1
  %69 = load %struct.pcie_link_state*, %struct.pcie_link_state** %68, align 8
  %70 = load %struct.pcie_link_state*, %struct.pcie_link_state** %4, align 8
  %71 = getelementptr inbounds %struct.pcie_link_state, %struct.pcie_link_state* %70, i32 0, i32 1
  store %struct.pcie_link_state* %69, %struct.pcie_link_state** %71, align 8
  br label %72

72:                                               ; preds = %61, %42
  %73 = load %struct.pcie_link_state*, %struct.pcie_link_state** %4, align 8
  %74 = getelementptr inbounds %struct.pcie_link_state, %struct.pcie_link_state* %73, i32 0, i32 0
  %75 = call i32 @list_add(i32* %74, i32* @link_list)
  %76 = load %struct.pcie_link_state*, %struct.pcie_link_state** %4, align 8
  %77 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %78 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %77, i32 0, i32 0
  store %struct.pcie_link_state* %76, %struct.pcie_link_state** %78, align 8
  %79 = load %struct.pcie_link_state*, %struct.pcie_link_state** %4, align 8
  store %struct.pcie_link_state* %79, %struct.pcie_link_state** %2, align 8
  br label %80

80:                                               ; preds = %72, %58, %10
  %81 = load %struct.pcie_link_state*, %struct.pcie_link_state** %2, align 8
  ret %struct.pcie_link_state* %81
}

declare dso_local %struct.pcie_link_state* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @pci_function_0(i32) #1

declare dso_local i64 @pci_pcie_type(%struct.pci_dev*) #1

declare dso_local i32 @kfree(%struct.pcie_link_state*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
