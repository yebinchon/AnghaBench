; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_probe.c_pci_cfg_space_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_probe.c_pci_cfg_space_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }

@PCI_BUS_FLAGS_NO_EXTCFG = common dso_local global i32 0, align 4
@PCI_CFG_SPACE_SIZE = common dso_local global i32 0, align 4
@PCI_CLASS_BRIDGE_HOST = common dso_local global i32 0, align 4
@PCI_CAP_ID_PCIX = common dso_local global i32 0, align 4
@PCI_X_STATUS = common dso_local global i64 0, align 8
@PCI_X_STATUS_266MHZ = common dso_local global i32 0, align 4
@PCI_X_STATUS_533MHZ = common dso_local global i32 0, align 4
@PCI_CFG_SPACE_EXP_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pci_cfg_space_size(%struct.pci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  %7 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %8 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @PCI_BUS_FLAGS_NO_EXTCFG, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* @PCI_CFG_SPACE_SIZE, align 4
  store i32 %16, i32* %2, align 4
  br label %61

17:                                               ; preds = %1
  %18 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %19 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = ashr i32 %20, 8
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @PCI_CLASS_BRIDGE_HOST, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %17
  %26 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %27 = call i32 @pci_cfg_space_size_ext(%struct.pci_dev* %26)
  store i32 %27, i32* %2, align 4
  br label %61

28:                                               ; preds = %17
  %29 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %30 = call i64 @pci_is_pcie(%struct.pci_dev* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %34 = call i32 @pci_cfg_space_size_ext(%struct.pci_dev* %33)
  store i32 %34, i32* %2, align 4
  br label %61

35:                                               ; preds = %28
  %36 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %37 = load i32, i32* @PCI_CAP_ID_PCIX, align 4
  %38 = call i32 @pci_find_capability(%struct.pci_dev* %36, i32 %37)
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %35
  %42 = load i32, i32* @PCI_CFG_SPACE_SIZE, align 4
  store i32 %42, i32* %2, align 4
  br label %61

43:                                               ; preds = %35
  %44 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %45 = load i32, i32* %4, align 4
  %46 = sext i32 %45 to i64
  %47 = load i64, i64* @PCI_X_STATUS, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @pci_read_config_dword(%struct.pci_dev* %44, i64 %48, i32* %5)
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @PCI_X_STATUS_266MHZ, align 4
  %52 = load i32, i32* @PCI_X_STATUS_533MHZ, align 4
  %53 = or i32 %51, %52
  %54 = and i32 %50, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %43
  %57 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %58 = call i32 @pci_cfg_space_size_ext(%struct.pci_dev* %57)
  store i32 %58, i32* %2, align 4
  br label %61

59:                                               ; preds = %43
  %60 = load i32, i32* @PCI_CFG_SPACE_SIZE, align 4
  store i32 %60, i32* %2, align 4
  br label %61

61:                                               ; preds = %59, %56, %41, %32, %25, %15
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i32 @pci_cfg_space_size_ext(%struct.pci_dev*) #1

declare dso_local i64 @pci_is_pcie(%struct.pci_dev*) #1

declare dso_local i32 @pci_find_capability(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
