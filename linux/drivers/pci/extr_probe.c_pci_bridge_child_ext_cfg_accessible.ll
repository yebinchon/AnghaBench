; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_probe.c_pci_bridge_child_ext_cfg_accessible.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_probe.c_pci_bridge_child_ext_cfg_accessible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@PCI_BUS_FLAGS_NO_EXTCFG = common dso_local global i32 0, align 4
@PCI_EXP_TYPE_ROOT_PORT = common dso_local global i64 0, align 8
@PCI_EXP_TYPE_UPSTREAM = common dso_local global i64 0, align 8
@PCI_EXP_TYPE_DOWNSTREAM = common dso_local global i64 0, align 8
@PCI_CAP_ID_PCIX = common dso_local global i32 0, align 4
@PCI_X_STATUS = common dso_local global i64 0, align 8
@PCI_X_STATUS_266MHZ = common dso_local global i32 0, align 4
@PCI_X_STATUS_533MHZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*)* @pci_bridge_child_ext_cfg_accessible to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_bridge_child_ext_cfg_accessible(%struct.pci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  %6 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %7 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @PCI_BUS_FLAGS_NO_EXTCFG, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %54

15:                                               ; preds = %1
  %16 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %17 = call i64 @pci_is_pcie(%struct.pci_dev* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %35

19:                                               ; preds = %15
  %20 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %21 = call i64 @pci_pcie_type(%struct.pci_dev* %20)
  %22 = load i64, i64* @PCI_EXP_TYPE_ROOT_PORT, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %34, label %24

24:                                               ; preds = %19
  %25 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %26 = call i64 @pci_pcie_type(%struct.pci_dev* %25)
  %27 = load i64, i64* @PCI_EXP_TYPE_UPSTREAM, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %34, label %29

29:                                               ; preds = %24
  %30 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %31 = call i64 @pci_pcie_type(%struct.pci_dev* %30)
  %32 = load i64, i64* @PCI_EXP_TYPE_DOWNSTREAM, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %29, %24, %19
  store i32 1, i32* %2, align 4
  br label %54

35:                                               ; preds = %29, %15
  %36 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %37 = load i32, i32* @PCI_CAP_ID_PCIX, align 4
  %38 = call i32 @pci_find_capability(%struct.pci_dev* %36, i32 %37)
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %35
  store i32 0, i32* %2, align 4
  br label %54

42:                                               ; preds = %35
  %43 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = load i64, i64* @PCI_X_STATUS, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i32 @pci_read_config_dword(%struct.pci_dev* %43, i64 %47, i32* %5)
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @PCI_X_STATUS_266MHZ, align 4
  %51 = load i32, i32* @PCI_X_STATUS_533MHZ, align 4
  %52 = or i32 %50, %51
  %53 = and i32 %49, %52
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %42, %41, %34, %14
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i64 @pci_is_pcie(%struct.pci_dev*) #1

declare dso_local i64 @pci_pcie_type(%struct.pci_dev*) #1

declare dso_local i32 @pci_find_capability(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
