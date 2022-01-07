; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_pciehp_hpc.c_dbg_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_pciehp_hpc.c_dbg_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.controller = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"Slot Capabilities      : 0x%08x\0A\00", align 1
@PCI_EXP_SLTSTA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Slot Status            : 0x%04x\0A\00", align 1
@PCI_EXP_SLTCTL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Slot Control           : 0x%04x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.controller*)* @dbg_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dbg_ctrl(%struct.controller* %0) #0 {
  %2 = alloca %struct.controller*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.controller* %0, %struct.controller** %2, align 8
  %5 = load %struct.controller*, %struct.controller** %2, align 8
  %6 = getelementptr inbounds %struct.controller, %struct.controller* %5, i32 0, i32 1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  store %struct.pci_dev* %9, %struct.pci_dev** %3, align 8
  %10 = load %struct.controller*, %struct.controller** %2, align 8
  %11 = load %struct.controller*, %struct.controller** %2, align 8
  %12 = getelementptr inbounds %struct.controller, %struct.controller* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @ctrl_dbg(%struct.controller* %10, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %16 = load i32, i32* @PCI_EXP_SLTSTA, align 4
  %17 = call i32 @pcie_capability_read_word(%struct.pci_dev* %15, i32 %16, i32* %4)
  %18 = load %struct.controller*, %struct.controller** %2, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @ctrl_dbg(%struct.controller* %18, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %19)
  %21 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %22 = load i32, i32* @PCI_EXP_SLTCTL, align 4
  %23 = call i32 @pcie_capability_read_word(%struct.pci_dev* %21, i32 %22, i32* %4)
  %24 = load %struct.controller*, %struct.controller** %2, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @ctrl_dbg(%struct.controller* %24, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %25)
  ret void
}

declare dso_local i32 @ctrl_dbg(%struct.controller*, i8*, i32) #1

declare dso_local i32 @pcie_capability_read_word(%struct.pci_dev*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
