; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/pcie/extr_aer.c_aer_disable_rootport.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/pcie/extr_aer.c_aer_disable_rootport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aer_rpc = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@PCI_ERR_ROOT_COMMAND = common dso_local global i64 0, align 8
@ROOT_PORT_INTR_ON_MESG_MASK = common dso_local global i32 0, align 4
@PCI_ERR_ROOT_STATUS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aer_rpc*)* @aer_disable_rootport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aer_disable_rootport(%struct.aer_rpc* %0) #0 {
  %2 = alloca %struct.aer_rpc*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.aer_rpc* %0, %struct.aer_rpc** %2, align 8
  %6 = load %struct.aer_rpc*, %struct.aer_rpc** %2, align 8
  %7 = getelementptr inbounds %struct.aer_rpc, %struct.aer_rpc* %6, i32 0, i32 0
  %8 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  store %struct.pci_dev* %8, %struct.pci_dev** %3, align 8
  %9 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %10 = call i32 @set_downstream_devices_error_reporting(%struct.pci_dev* %9, i32 0)
  %11 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %12 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %5, align 4
  %14 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = load i64, i64* @PCI_ERR_ROOT_COMMAND, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @pci_read_config_dword(%struct.pci_dev* %14, i64 %18, i32* %4)
  %20 = load i32, i32* @ROOT_PORT_INTR_ON_MESG_MASK, align 4
  %21 = xor i32 %20, -1
  %22 = load i32, i32* %4, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %4, align 4
  %24 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = load i64, i64* @PCI_ERR_ROOT_COMMAND, align 8
  %28 = add nsw i64 %26, %27
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @pci_write_config_dword(%struct.pci_dev* %24, i64 %28, i32 %29)
  %31 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = load i64, i64* @PCI_ERR_ROOT_STATUS, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @pci_read_config_dword(%struct.pci_dev* %31, i64 %35, i32* %4)
  %37 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = load i64, i64* @PCI_ERR_ROOT_STATUS, align 8
  %41 = add nsw i64 %39, %40
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @pci_write_config_dword(%struct.pci_dev* %37, i64 %41, i32 %42)
  ret void
}

declare dso_local i32 @set_downstream_devices_error_reporting(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i64, i32*) #1

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
