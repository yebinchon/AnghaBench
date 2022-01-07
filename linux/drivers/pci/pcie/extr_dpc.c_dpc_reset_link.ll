; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/pcie/extr_dpc.c_dpc_reset_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/pcie/extr_dpc.c_dpc_reset_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.dpc_dev = type { i64, i64 }

@PCI_ERS_RESULT_DISCONNECT = common dso_local global i32 0, align 4
@PCI_EXP_DPC_STATUS = common dso_local global i64 0, align 8
@PCI_EXP_DPC_STATUS_TRIGGER = common dso_local global i32 0, align 4
@PCI_ERS_RESULT_RECOVERED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*)* @dpc_reset_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpc_reset_link(%struct.pci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.dpc_dev*, align 8
  %5 = alloca i64, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  %6 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %7 = call %struct.dpc_dev* @to_dpc_dev(%struct.pci_dev* %6)
  store %struct.dpc_dev* %7, %struct.dpc_dev** %4, align 8
  %8 = load %struct.dpc_dev*, %struct.dpc_dev** %4, align 8
  %9 = getelementptr inbounds %struct.dpc_dev, %struct.dpc_dev* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %5, align 8
  %11 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %12 = call i32 @pcie_wait_for_link(%struct.pci_dev* %11, i32 0)
  %13 = load %struct.dpc_dev*, %struct.dpc_dev** %4, align 8
  %14 = getelementptr inbounds %struct.dpc_dev, %struct.dpc_dev* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %1
  %18 = load %struct.dpc_dev*, %struct.dpc_dev** %4, align 8
  %19 = call i64 @dpc_wait_rp_inactive(%struct.dpc_dev* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load i32, i32* @PCI_ERS_RESULT_DISCONNECT, align 4
  store i32 %22, i32* %2, align 4
  br label %37

23:                                               ; preds = %17, %1
  %24 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %25 = load i64, i64* %5, align 8
  %26 = load i64, i64* @PCI_EXP_DPC_STATUS, align 8
  %27 = add nsw i64 %25, %26
  %28 = load i32, i32* @PCI_EXP_DPC_STATUS_TRIGGER, align 4
  %29 = call i32 @pci_write_config_word(%struct.pci_dev* %24, i64 %27, i32 %28)
  %30 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %31 = call i32 @pcie_wait_for_link(%struct.pci_dev* %30, i32 1)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %23
  %34 = load i32, i32* @PCI_ERS_RESULT_DISCONNECT, align 4
  store i32 %34, i32* %2, align 4
  br label %37

35:                                               ; preds = %23
  %36 = load i32, i32* @PCI_ERS_RESULT_RECOVERED, align 4
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %35, %33, %21
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local %struct.dpc_dev* @to_dpc_dev(%struct.pci_dev*) #1

declare dso_local i32 @pcie_wait_for_link(%struct.pci_dev*, i32) #1

declare dso_local i64 @dpc_wait_rp_inactive(%struct.dpc_dev*) #1

declare dso_local i32 @pci_write_config_word(%struct.pci_dev*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
