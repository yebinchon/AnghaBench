; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_probe.c_pci_ea_fixed_busnrs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_probe.c_pci_ea_fixed_busnrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i64 }

@PCI_HEADER_TYPE_BRIDGE = common dso_local global i64 0, align 8
@PCI_CAP_ID_EA = common dso_local global i32 0, align 4
@PCI_EA_FIRST_ENT = common dso_local global i32 0, align 4
@PCI_EA_SEC_BUS_MASK = common dso_local global i32 0, align 4
@PCI_EA_SUB_BUS_MASK = common dso_local global i32 0, align 4
@PCI_EA_SUB_BUS_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i32*, i32*)* @pci_ea_fixed_busnrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_ea_fixed_busnrs(%struct.pci_dev* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %12 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @PCI_HEADER_TYPE_BRIDGE, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %41

17:                                               ; preds = %3
  %18 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %19 = load i32, i32* @PCI_CAP_ID_EA, align 4
  %20 = call i32 @pci_find_capability(%struct.pci_dev* %18, i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  br label %41

24:                                               ; preds = %17
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @PCI_EA_FIRST_ENT, align 4
  %27 = add nsw i32 %25, %26
  store i32 %27, i32* %9, align 4
  %28 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @pci_read_config_dword(%struct.pci_dev* %28, i32 %29, i32* %10)
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* @PCI_EA_SEC_BUS_MASK, align 4
  %33 = and i32 %31, %32
  %34 = load i32*, i32** %6, align 8
  store i32 %33, i32* %34, align 4
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* @PCI_EA_SUB_BUS_MASK, align 4
  %37 = and i32 %35, %36
  %38 = load i32, i32* @PCI_EA_SUB_BUS_SHIFT, align 4
  %39 = ashr i32 %37, %38
  %40 = load i32*, i32** %7, align 8
  store i32 %39, i32* %40, align 4
  store i32 1, i32* %4, align 4
  br label %41

41:                                               ; preds = %24, %23, %16
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i32 @pci_find_capability(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
