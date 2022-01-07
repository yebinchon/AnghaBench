; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-rcar.c_rcar_pcie_write_conf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-rcar.c_rcar_pcie_write_conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i32, i32, %struct.rcar_pcie* }
%struct.rcar_pcie = type { i32 }

@RCAR_PCI_ACCESS_READ = common dso_local global i32 0, align 4
@PCIBIOS_SUCCESSFUL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [73 x i8] c"pcie-config-write: bus=%3d devfn=0x%04x where=0x%04x size=%d val=0x%08x\0A\00", align 1
@BITS_PER_BYTE = common dso_local global i32 0, align 4
@RCAR_PCI_ACCESS_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_bus*, i32, i32, i32, i32)* @rcar_pcie_write_conf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rcar_pcie_write_conf(%struct.pci_bus* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_bus*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.rcar_pcie*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.pci_bus* %0, %struct.pci_bus** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %17 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %16, i32 0, i32 2
  %18 = load %struct.rcar_pcie*, %struct.rcar_pcie** %17, align 8
  store %struct.rcar_pcie* %18, %struct.rcar_pcie** %12, align 8
  %19 = load %struct.rcar_pcie*, %struct.rcar_pcie** %12, align 8
  %20 = load i32, i32* @RCAR_PCI_ACCESS_READ, align 4
  %21 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @rcar_pcie_config_access(%struct.rcar_pcie* %19, i32 %20, %struct.pci_bus* %21, i32 %22, i32 %23, i32* %14)
  store i32 %24, i32* %15, align 4
  %25 = load i32, i32* %15, align 4
  %26 = load i32, i32* @PCIBIOS_SUCCESSFUL, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %5
  %29 = load i32, i32* %15, align 4
  store i32 %29, i32* %6, align 4
  br label %89

30:                                               ; preds = %5
  %31 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %32 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %31, i32 0, i32 1
  %33 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %34 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* %11, align 4
  %40 = call i32 @dev_dbg(i32* %32, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %36, i32 %37, i32 %38, i32 %39)
  %41 = load i32, i32* %10, align 4
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %43, label %59

43:                                               ; preds = %30
  %44 = load i32, i32* @BITS_PER_BYTE, align 4
  %45 = load i32, i32* %9, align 4
  %46 = and i32 %45, 3
  %47 = mul nsw i32 %44, %46
  store i32 %47, i32* %13, align 4
  %48 = load i32, i32* %13, align 4
  %49 = shl i32 255, %48
  %50 = xor i32 %49, -1
  %51 = load i32, i32* %14, align 4
  %52 = and i32 %51, %50
  store i32 %52, i32* %14, align 4
  %53 = load i32, i32* %11, align 4
  %54 = and i32 %53, 255
  %55 = load i32, i32* %13, align 4
  %56 = shl i32 %54, %55
  %57 = load i32, i32* %14, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %14, align 4
  br label %81

59:                                               ; preds = %30
  %60 = load i32, i32* %10, align 4
  %61 = icmp eq i32 %60, 2
  br i1 %61, label %62, label %78

62:                                               ; preds = %59
  %63 = load i32, i32* @BITS_PER_BYTE, align 4
  %64 = load i32, i32* %9, align 4
  %65 = and i32 %64, 2
  %66 = mul nsw i32 %63, %65
  store i32 %66, i32* %13, align 4
  %67 = load i32, i32* %13, align 4
  %68 = shl i32 65535, %67
  %69 = xor i32 %68, -1
  %70 = load i32, i32* %14, align 4
  %71 = and i32 %70, %69
  store i32 %71, i32* %14, align 4
  %72 = load i32, i32* %11, align 4
  %73 = and i32 %72, 65535
  %74 = load i32, i32* %13, align 4
  %75 = shl i32 %73, %74
  %76 = load i32, i32* %14, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %14, align 4
  br label %80

78:                                               ; preds = %59
  %79 = load i32, i32* %11, align 4
  store i32 %79, i32* %14, align 4
  br label %80

80:                                               ; preds = %78, %62
  br label %81

81:                                               ; preds = %80, %43
  %82 = load %struct.rcar_pcie*, %struct.rcar_pcie** %12, align 8
  %83 = load i32, i32* @RCAR_PCI_ACCESS_WRITE, align 4
  %84 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* %9, align 4
  %87 = call i32 @rcar_pcie_config_access(%struct.rcar_pcie* %82, i32 %83, %struct.pci_bus* %84, i32 %85, i32 %86, i32* %14)
  store i32 %87, i32* %15, align 4
  %88 = load i32, i32* %15, align 4
  store i32 %88, i32* %6, align 4
  br label %89

89:                                               ; preds = %81, %28
  %90 = load i32, i32* %6, align 4
  ret i32 %90
}

declare dso_local i32 @rcar_pcie_config_access(%struct.rcar_pcie*, i32, %struct.pci_bus*, i32, i32, i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
