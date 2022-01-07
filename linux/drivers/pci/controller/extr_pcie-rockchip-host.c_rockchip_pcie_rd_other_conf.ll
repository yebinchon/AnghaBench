; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-rockchip-host.c_rockchip_pcie_rd_other_conf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-rockchip-host.c_rockchip_pcie_rd_other_conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rockchip_pcie = type { i64, i64 }
%struct.pci_bus = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }

@PCIBIOS_BAD_REGISTER_NUMBER = common dso_local global i32 0, align 4
@AXI_WRAPPER_TYPE0_CFG = common dso_local global i32 0, align 4
@AXI_WRAPPER_TYPE1_CFG = common dso_local global i32 0, align 4
@PCIBIOS_SUCCESSFUL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rockchip_pcie*, %struct.pci_bus*, i64, i32, i32, i64*)* @rockchip_pcie_rd_other_conf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rockchip_pcie_rd_other_conf(%struct.rockchip_pcie* %0, %struct.pci_bus* %1, i64 %2, i32 %3, i32 %4, i64* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.rockchip_pcie*, align 8
  %9 = alloca %struct.pci_bus*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64*, align 8
  %14 = alloca i64, align 8
  store %struct.rockchip_pcie* %0, %struct.rockchip_pcie** %8, align 8
  store %struct.pci_bus* %1, %struct.pci_bus** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i64* %5, i64** %13, align 8
  %15 = load %struct.pci_bus*, %struct.pci_bus** %9, align 8
  %16 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load i64, i64* %10, align 8
  %19 = call i32 @PCI_SLOT(i64 %18)
  %20 = load i64, i64* %10, align 8
  %21 = call i32 @PCI_FUNC(i64 %20)
  %22 = load i32, i32* %11, align 4
  %23 = call i64 @PCIE_ECAM_ADDR(i32 %17, i32 %19, i32 %21, i32 %22)
  store i64 %23, i64* %14, align 8
  %24 = load i64, i64* %14, align 8
  %25 = load i32, i32* %12, align 4
  %26 = call i32 @IS_ALIGNED(i64 %24, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %6
  %29 = load i64*, i64** %13, align 8
  store i64 0, i64* %29, align 8
  %30 = load i32, i32* @PCIBIOS_BAD_REGISTER_NUMBER, align 4
  store i32 %30, i32* %7, align 4
  br label %89

31:                                               ; preds = %6
  %32 = load %struct.pci_bus*, %struct.pci_bus** %9, align 8
  %33 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %8, align 8
  %38 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %36, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %31
  %42 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %8, align 8
  %43 = load i32, i32* @AXI_WRAPPER_TYPE0_CFG, align 4
  %44 = call i32 @rockchip_pcie_cfg_configuration_accesses(%struct.rockchip_pcie* %42, i32 %43)
  br label %49

45:                                               ; preds = %31
  %46 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %8, align 8
  %47 = load i32, i32* @AXI_WRAPPER_TYPE1_CFG, align 4
  %48 = call i32 @rockchip_pcie_cfg_configuration_accesses(%struct.rockchip_pcie* %46, i32 %47)
  br label %49

49:                                               ; preds = %45, %41
  %50 = load i32, i32* %12, align 4
  %51 = icmp eq i32 %50, 4
  br i1 %51, label %52, label %60

52:                                               ; preds = %49
  %53 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %8, align 8
  %54 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* %14, align 8
  %57 = add nsw i64 %55, %56
  %58 = call i64 @readl(i64 %57)
  %59 = load i64*, i64** %13, align 8
  store i64 %58, i64* %59, align 8
  br label %87

60:                                               ; preds = %49
  %61 = load i32, i32* %12, align 4
  %62 = icmp eq i32 %61, 2
  br i1 %62, label %63, label %71

63:                                               ; preds = %60
  %64 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %8, align 8
  %65 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* %14, align 8
  %68 = add nsw i64 %66, %67
  %69 = call i64 @readw(i64 %68)
  %70 = load i64*, i64** %13, align 8
  store i64 %69, i64* %70, align 8
  br label %86

71:                                               ; preds = %60
  %72 = load i32, i32* %12, align 4
  %73 = icmp eq i32 %72, 1
  br i1 %73, label %74, label %82

74:                                               ; preds = %71
  %75 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %8, align 8
  %76 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* %14, align 8
  %79 = add nsw i64 %77, %78
  %80 = call i64 @readb(i64 %79)
  %81 = load i64*, i64** %13, align 8
  store i64 %80, i64* %81, align 8
  br label %85

82:                                               ; preds = %71
  %83 = load i64*, i64** %13, align 8
  store i64 0, i64* %83, align 8
  %84 = load i32, i32* @PCIBIOS_BAD_REGISTER_NUMBER, align 4
  store i32 %84, i32* %7, align 4
  br label %89

85:                                               ; preds = %74
  br label %86

86:                                               ; preds = %85, %63
  br label %87

87:                                               ; preds = %86, %52
  %88 = load i32, i32* @PCIBIOS_SUCCESSFUL, align 4
  store i32 %88, i32* %7, align 4
  br label %89

89:                                               ; preds = %87, %82, %28
  %90 = load i32, i32* %7, align 4
  ret i32 %90
}

declare dso_local i64 @PCIE_ECAM_ADDR(i32, i32, i32, i32) #1

declare dso_local i32 @PCI_SLOT(i64) #1

declare dso_local i32 @PCI_FUNC(i64) #1

declare dso_local i32 @IS_ALIGNED(i64, i32) #1

declare dso_local i32 @rockchip_pcie_cfg_configuration_accesses(%struct.rockchip_pcie*, i32) #1

declare dso_local i64 @readl(i64) #1

declare dso_local i64 @readw(i64) #1

declare dso_local i64 @readb(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
