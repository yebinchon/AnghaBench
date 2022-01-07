; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/pcie/extr_aer.c_aer_enable_rootport.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/pcie/extr_aer.c_aer_enable_rootport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aer_rpc = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@PCI_EXP_DEVSTA = common dso_local global i32 0, align 4
@PCI_EXP_RTCTL = common dso_local global i32 0, align 4
@SYSTEM_ERROR_INTR_ON_MESG_MASK = common dso_local global i32 0, align 4
@PCI_ERR_ROOT_STATUS = common dso_local global i64 0, align 8
@PCI_ERR_COR_STATUS = common dso_local global i64 0, align 8
@PCI_ERR_UNCOR_STATUS = common dso_local global i64 0, align 8
@PCI_ERR_ROOT_COMMAND = common dso_local global i64 0, align 8
@ROOT_PORT_INTR_ON_MESG_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aer_rpc*)* @aer_enable_rootport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aer_enable_rootport(%struct.aer_rpc* %0) #0 {
  %2 = alloca %struct.aer_rpc*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.aer_rpc* %0, %struct.aer_rpc** %2, align 8
  %7 = load %struct.aer_rpc*, %struct.aer_rpc** %2, align 8
  %8 = getelementptr inbounds %struct.aer_rpc, %struct.aer_rpc* %7, i32 0, i32 0
  %9 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  store %struct.pci_dev* %9, %struct.pci_dev** %3, align 8
  %10 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %11 = load i32, i32* @PCI_EXP_DEVSTA, align 4
  %12 = call i32 @pcie_capability_read_word(%struct.pci_dev* %10, i32 %11, i32* %5)
  %13 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %14 = load i32, i32* @PCI_EXP_DEVSTA, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @pcie_capability_write_word(%struct.pci_dev* %13, i32 %14, i32 %15)
  %17 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %18 = load i32, i32* @PCI_EXP_RTCTL, align 4
  %19 = load i32, i32* @SYSTEM_ERROR_INTR_ON_MESG_MASK, align 4
  %20 = call i32 @pcie_capability_clear_word(%struct.pci_dev* %17, i32 %18, i32 %19)
  %21 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %22 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %4, align 4
  %24 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = load i64, i64* @PCI_ERR_ROOT_STATUS, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @pci_read_config_dword(%struct.pci_dev* %24, i64 %28, i32* %6)
  %30 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = load i64, i64* @PCI_ERR_ROOT_STATUS, align 8
  %34 = add nsw i64 %32, %33
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @pci_write_config_dword(%struct.pci_dev* %30, i64 %34, i32 %35)
  %37 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = load i64, i64* @PCI_ERR_COR_STATUS, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @pci_read_config_dword(%struct.pci_dev* %37, i64 %41, i32* %6)
  %43 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = load i64, i64* @PCI_ERR_COR_STATUS, align 8
  %47 = add nsw i64 %45, %46
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @pci_write_config_dword(%struct.pci_dev* %43, i64 %47, i32 %48)
  %50 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %51 = load i32, i32* %4, align 4
  %52 = sext i32 %51 to i64
  %53 = load i64, i64* @PCI_ERR_UNCOR_STATUS, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i32 @pci_read_config_dword(%struct.pci_dev* %50, i64 %54, i32* %6)
  %56 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  %59 = load i64, i64* @PCI_ERR_UNCOR_STATUS, align 8
  %60 = add nsw i64 %58, %59
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @pci_write_config_dword(%struct.pci_dev* %56, i64 %60, i32 %61)
  %63 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %64 = call i32 @set_downstream_devices_error_reporting(%struct.pci_dev* %63, i32 1)
  %65 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %66 = load i32, i32* %4, align 4
  %67 = sext i32 %66 to i64
  %68 = load i64, i64* @PCI_ERR_ROOT_COMMAND, align 8
  %69 = add nsw i64 %67, %68
  %70 = call i32 @pci_read_config_dword(%struct.pci_dev* %65, i64 %69, i32* %6)
  %71 = load i32, i32* @ROOT_PORT_INTR_ON_MESG_MASK, align 4
  %72 = load i32, i32* %6, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %6, align 4
  %74 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %75 = load i32, i32* %4, align 4
  %76 = sext i32 %75 to i64
  %77 = load i64, i64* @PCI_ERR_ROOT_COMMAND, align 8
  %78 = add nsw i64 %76, %77
  %79 = load i32, i32* %6, align 4
  %80 = call i32 @pci_write_config_dword(%struct.pci_dev* %74, i64 %78, i32 %79)
  ret void
}

declare dso_local i32 @pcie_capability_read_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pcie_capability_write_word(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pcie_capability_clear_word(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i64, i32*) #1

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i64, i32) #1

declare dso_local i32 @set_downstream_devices_error_reporting(%struct.pci_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
