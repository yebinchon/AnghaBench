; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/mt7621-pci/extr_pci-mt7621.c_mt7621_pcie_enable_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/mt7621-pci/extr_pci-mt7621.c_mt7621_pcie_enable_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7621_pcie_port = type { i32, %struct.mt7621_pcie* }
%struct.mt7621_pcie = type { i32 }

@MT7621_PCIE_OFFSET = common dso_local global i32 0, align 4
@MT7621_NEXT_PORT = common dso_local global i32 0, align 4
@RALINK_PCI_PCIMSK_ADDR = common dso_local global i32 0, align 4
@PCIE_BAR_MAP_MAX = common dso_local global i32 0, align 4
@PCIE_BAR_ENABLE = common dso_local global i32 0, align 4
@RALINK_PCI_BAR0SETUP_ADDR = common dso_local global i32 0, align 4
@MEMORY_BASE = common dso_local global i32 0, align 4
@RALINK_PCI_IMBASEBAR0_ADDR = common dso_local global i32 0, align 4
@PCIE_CLASS_CODE = common dso_local global i32 0, align 4
@PCIE_REVISION_ID = common dso_local global i32 0, align 4
@RALINK_PCI_CLASS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mt7621_pcie_port*)* @mt7621_pcie_enable_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt7621_pcie_enable_port(%struct.mt7621_pcie_port* %0) #0 {
  %2 = alloca %struct.mt7621_pcie_port*, align 8
  %3 = alloca %struct.mt7621_pcie*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mt7621_pcie_port* %0, %struct.mt7621_pcie_port** %2, align 8
  %7 = load %struct.mt7621_pcie_port*, %struct.mt7621_pcie_port** %2, align 8
  %8 = getelementptr inbounds %struct.mt7621_pcie_port, %struct.mt7621_pcie_port* %7, i32 0, i32 1
  %9 = load %struct.mt7621_pcie*, %struct.mt7621_pcie** %8, align 8
  store %struct.mt7621_pcie* %9, %struct.mt7621_pcie** %3, align 8
  %10 = load %struct.mt7621_pcie_port*, %struct.mt7621_pcie_port** %2, align 8
  %11 = getelementptr inbounds %struct.mt7621_pcie_port, %struct.mt7621_pcie_port* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* @MT7621_PCIE_OFFSET, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @MT7621_NEXT_PORT, align 4
  %16 = mul nsw i32 %14, %15
  %17 = add nsw i32 %13, %16
  store i32 %17, i32* %5, align 4
  %18 = load %struct.mt7621_pcie*, %struct.mt7621_pcie** %3, align 8
  %19 = load i32, i32* @RALINK_PCI_PCIMSK_ADDR, align 4
  %20 = call i32 @pcie_read(%struct.mt7621_pcie* %18, i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @PCIE_PORT_INT_EN(i32 %21)
  %23 = load i32, i32* %6, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %6, align 4
  %25 = load %struct.mt7621_pcie*, %struct.mt7621_pcie** %3, align 8
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @RALINK_PCI_PCIMSK_ADDR, align 4
  %28 = call i32 @pcie_write(%struct.mt7621_pcie* %25, i32 %26, i32 %27)
  %29 = load %struct.mt7621_pcie*, %struct.mt7621_pcie** %3, align 8
  %30 = load i32, i32* @PCIE_BAR_MAP_MAX, align 4
  %31 = load i32, i32* @PCIE_BAR_ENABLE, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @RALINK_PCI_BAR0SETUP_ADDR, align 4
  %35 = add nsw i32 %33, %34
  %36 = call i32 @pcie_write(%struct.mt7621_pcie* %29, i32 %32, i32 %35)
  %37 = load %struct.mt7621_pcie*, %struct.mt7621_pcie** %3, align 8
  %38 = load i32, i32* @MEMORY_BASE, align 4
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @RALINK_PCI_IMBASEBAR0_ADDR, align 4
  %41 = add nsw i32 %39, %40
  %42 = call i32 @pcie_write(%struct.mt7621_pcie* %37, i32 %38, i32 %41)
  %43 = load %struct.mt7621_pcie*, %struct.mt7621_pcie** %3, align 8
  %44 = load i32, i32* @PCIE_CLASS_CODE, align 4
  %45 = load i32, i32* @PCIE_REVISION_ID, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @RALINK_PCI_CLASS, align 4
  %49 = add nsw i32 %47, %48
  %50 = call i32 @pcie_write(%struct.mt7621_pcie* %43, i32 %46, i32 %49)
  ret void
}

declare dso_local i32 @pcie_read(%struct.mt7621_pcie*, i32) #1

declare dso_local i32 @PCIE_PORT_INT_EN(i32) #1

declare dso_local i32 @pcie_write(%struct.mt7621_pcie*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
