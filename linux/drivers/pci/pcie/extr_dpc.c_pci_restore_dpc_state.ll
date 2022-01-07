; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/pcie/extr_dpc.c_pci_restore_dpc_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/pcie/extr_dpc.c_pci_restore_dpc_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.dpc_dev = type { i64 }
%struct.pci_cap_saved_state = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@PCI_EXT_CAP_ID_DPC = common dso_local global i32 0, align 4
@PCI_EXP_DPC_CTL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pci_restore_dpc_state(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.dpc_dev*, align 8
  %4 = alloca %struct.pci_cap_saved_state*, align 8
  %5 = alloca i32*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %6 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %7 = call i32 @pci_is_pcie(%struct.pci_dev* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %38

10:                                               ; preds = %1
  %11 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %12 = call %struct.dpc_dev* @to_dpc_dev(%struct.pci_dev* %11)
  store %struct.dpc_dev* %12, %struct.dpc_dev** %3, align 8
  %13 = load %struct.dpc_dev*, %struct.dpc_dev** %3, align 8
  %14 = icmp ne %struct.dpc_dev* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  br label %38

16:                                               ; preds = %10
  %17 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %18 = load i32, i32* @PCI_EXT_CAP_ID_DPC, align 4
  %19 = call %struct.pci_cap_saved_state* @pci_find_saved_ext_cap(%struct.pci_dev* %17, i32 %18)
  store %struct.pci_cap_saved_state* %19, %struct.pci_cap_saved_state** %4, align 8
  %20 = load %struct.pci_cap_saved_state*, %struct.pci_cap_saved_state** %4, align 8
  %21 = icmp ne %struct.pci_cap_saved_state* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %16
  br label %38

23:                                               ; preds = %16
  %24 = load %struct.pci_cap_saved_state*, %struct.pci_cap_saved_state** %4, align 8
  %25 = getelementptr inbounds %struct.pci_cap_saved_state, %struct.pci_cap_saved_state* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  store i32* %28, i32** %5, align 8
  %29 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %30 = load %struct.dpc_dev*, %struct.dpc_dev** %3, align 8
  %31 = getelementptr inbounds %struct.dpc_dev, %struct.dpc_dev* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @PCI_EXP_DPC_CTL, align 8
  %34 = add nsw i64 %32, %33
  %35 = load i32*, i32** %5, align 8
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @pci_write_config_word(%struct.pci_dev* %29, i64 %34, i32 %36)
  br label %38

38:                                               ; preds = %23, %22, %15, %9
  ret void
}

declare dso_local i32 @pci_is_pcie(%struct.pci_dev*) #1

declare dso_local %struct.dpc_dev* @to_dpc_dev(%struct.pci_dev*) #1

declare dso_local %struct.pci_cap_saved_state* @pci_find_saved_ext_cap(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_write_config_word(%struct.pci_dev*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
