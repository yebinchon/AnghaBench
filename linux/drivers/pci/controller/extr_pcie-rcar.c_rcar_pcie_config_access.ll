; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-rcar.c_rcar_pcie_config_access.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-rcar.c_rcar_pcie_config_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcar_pcie = type { i32 }
%struct.pci_bus = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@PCIBIOS_DEVICE_NOT_FOUND = common dso_local global i32 0, align 4
@RCAR_PCI_ACCESS_READ = common dso_local global i8 0, align 1
@PCI_PRIMARY_BUS = common dso_local global i32 0, align 4
@PCIBIOS_SUCCESSFUL = common dso_local global i32 0, align 4
@PCIEERRFR = common dso_local global i32 0, align 4
@PCIECAR = common dso_local global i32 0, align 4
@CONFIG_SEND_ENABLE = common dso_local global i32 0, align 4
@TYPE0 = common dso_local global i32 0, align 4
@PCIECCTLR = common dso_local global i32 0, align 4
@TYPE1 = common dso_local global i32 0, align 4
@UNSUPPORTED_REQUEST = common dso_local global i32 0, align 4
@PCI_STATUS = common dso_local global i32 0, align 4
@PCI_STATUS_REC_MASTER_ABORT = common dso_local global i32 0, align 4
@PCI_STATUS_REC_TARGET_ABORT = common dso_local global i32 0, align 4
@PCIECDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rcar_pcie*, i8, %struct.pci_bus*, i32, i32, i32*)* @rcar_pcie_config_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rcar_pcie_config_access(%struct.rcar_pcie* %0, i8 zeroext %1, %struct.pci_bus* %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.rcar_pcie*, align 8
  %9 = alloca i8, align 1
  %10 = alloca %struct.pci_bus*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.rcar_pcie* %0, %struct.rcar_pcie** %8, align 8
  store i8 %1, i8* %9, align 1
  store %struct.pci_bus* %2, %struct.pci_bus** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %18 = load i32, i32* %11, align 4
  %19 = call i32 @PCI_SLOT(i32 %18)
  store i32 %19, i32* %14, align 4
  %20 = load i32, i32* %11, align 4
  %21 = call i32 @PCI_FUNC(i32 %20)
  store i32 %21, i32* %15, align 4
  %22 = load i32, i32* %12, align 4
  %23 = and i32 %22, -4
  store i32 %23, i32* %16, align 4
  %24 = load i32, i32* %16, align 4
  %25 = udiv i32 %24, 4
  store i32 %25, i32* %17, align 4
  %26 = load %struct.pci_bus*, %struct.pci_bus** %10, align 8
  %27 = call i64 @pci_is_root_bus(%struct.pci_bus* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %69

29:                                               ; preds = %6
  %30 = load i32, i32* %14, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = load i32, i32* @PCIBIOS_DEVICE_NOT_FOUND, align 4
  store i32 %33, i32* %7, align 4
  br label %164

34:                                               ; preds = %29
  %35 = load i8, i8* %9, align 1
  %36 = zext i8 %35 to i32
  %37 = load i8, i8* @RCAR_PCI_ACCESS_READ, align 1
  %38 = zext i8 %37 to i32
  %39 = icmp eq i32 %36, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %34
  %41 = load %struct.rcar_pcie*, %struct.rcar_pcie** %8, align 8
  %42 = load i32, i32* %17, align 4
  %43 = call i32 @PCICONF(i32 %42)
  %44 = call i32 @rcar_pci_read_reg(%struct.rcar_pcie* %41, i32 %43)
  %45 = load i32*, i32** %13, align 8
  store i32 %44, i32* %45, align 4
  br label %67

46:                                               ; preds = %34
  %47 = load %struct.pci_bus*, %struct.pci_bus** %10, align 8
  %48 = call i64 @pci_is_root_bus(%struct.pci_bus* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %60

50:                                               ; preds = %46
  %51 = load i32, i32* %16, align 4
  %52 = load i32, i32* @PCI_PRIMARY_BUS, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %50
  %55 = load i32*, i32** %13, align 8
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %56, 255
  %58 = load %struct.rcar_pcie*, %struct.rcar_pcie** %8, align 8
  %59 = getelementptr inbounds %struct.rcar_pcie, %struct.rcar_pcie* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  br label %60

60:                                               ; preds = %54, %50, %46
  %61 = load %struct.rcar_pcie*, %struct.rcar_pcie** %8, align 8
  %62 = load i32*, i32** %13, align 8
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %17, align 4
  %65 = call i32 @PCICONF(i32 %64)
  %66 = call i32 @rcar_pci_write_reg(%struct.rcar_pcie* %61, i32 %63, i32 %65)
  br label %67

67:                                               ; preds = %60, %40
  %68 = load i32, i32* @PCIBIOS_SUCCESSFUL, align 4
  store i32 %68, i32* %7, align 4
  br label %164

69:                                               ; preds = %6
  %70 = load %struct.rcar_pcie*, %struct.rcar_pcie** %8, align 8
  %71 = getelementptr inbounds %struct.rcar_pcie, %struct.rcar_pcie* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %69
  %75 = load i32, i32* @PCIBIOS_DEVICE_NOT_FOUND, align 4
  store i32 %75, i32* %7, align 4
  br label %164

76:                                               ; preds = %69
  %77 = load %struct.rcar_pcie*, %struct.rcar_pcie** %8, align 8
  %78 = load %struct.rcar_pcie*, %struct.rcar_pcie** %8, align 8
  %79 = load i32, i32* @PCIEERRFR, align 4
  %80 = call i32 @rcar_pci_read_reg(%struct.rcar_pcie* %78, i32 %79)
  %81 = load i32, i32* @PCIEERRFR, align 4
  %82 = call i32 @rcar_pci_write_reg(%struct.rcar_pcie* %77, i32 %80, i32 %81)
  %83 = load %struct.rcar_pcie*, %struct.rcar_pcie** %8, align 8
  %84 = load %struct.pci_bus*, %struct.pci_bus** %10, align 8
  %85 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @PCIE_CONF_BUS(i32 %86)
  %88 = load i32, i32* %14, align 4
  %89 = call i32 @PCIE_CONF_DEV(i32 %88)
  %90 = or i32 %87, %89
  %91 = load i32, i32* %15, align 4
  %92 = call i32 @PCIE_CONF_FUNC(i32 %91)
  %93 = or i32 %90, %92
  %94 = load i32, i32* %16, align 4
  %95 = or i32 %93, %94
  %96 = load i32, i32* @PCIECAR, align 4
  %97 = call i32 @rcar_pci_write_reg(%struct.rcar_pcie* %83, i32 %95, i32 %96)
  %98 = load %struct.pci_bus*, %struct.pci_bus** %10, align 8
  %99 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %98, i32 0, i32 0
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.rcar_pcie*, %struct.rcar_pcie** %8, align 8
  %104 = getelementptr inbounds %struct.rcar_pcie, %struct.rcar_pcie* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = icmp eq i32 %102, %105
  br i1 %106, label %107, label %114

107:                                              ; preds = %76
  %108 = load %struct.rcar_pcie*, %struct.rcar_pcie** %8, align 8
  %109 = load i32, i32* @CONFIG_SEND_ENABLE, align 4
  %110 = load i32, i32* @TYPE0, align 4
  %111 = or i32 %109, %110
  %112 = load i32, i32* @PCIECCTLR, align 4
  %113 = call i32 @rcar_pci_write_reg(%struct.rcar_pcie* %108, i32 %111, i32 %112)
  br label %121

114:                                              ; preds = %76
  %115 = load %struct.rcar_pcie*, %struct.rcar_pcie** %8, align 8
  %116 = load i32, i32* @CONFIG_SEND_ENABLE, align 4
  %117 = load i32, i32* @TYPE1, align 4
  %118 = or i32 %116, %117
  %119 = load i32, i32* @PCIECCTLR, align 4
  %120 = call i32 @rcar_pci_write_reg(%struct.rcar_pcie* %115, i32 %118, i32 %119)
  br label %121

121:                                              ; preds = %114, %107
  %122 = load %struct.rcar_pcie*, %struct.rcar_pcie** %8, align 8
  %123 = load i32, i32* @PCIEERRFR, align 4
  %124 = call i32 @rcar_pci_read_reg(%struct.rcar_pcie* %122, i32 %123)
  %125 = load i32, i32* @UNSUPPORTED_REQUEST, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %121
  %129 = load i32, i32* @PCIBIOS_DEVICE_NOT_FOUND, align 4
  store i32 %129, i32* %7, align 4
  br label %164

130:                                              ; preds = %121
  %131 = load %struct.rcar_pcie*, %struct.rcar_pcie** %8, align 8
  %132 = load i32, i32* @PCI_STATUS, align 4
  %133 = call i32 @RCONF(i32 %132)
  %134 = call i32 @rcar_read_conf(%struct.rcar_pcie* %131, i32 %133)
  %135 = load i32, i32* @PCI_STATUS_REC_MASTER_ABORT, align 4
  %136 = load i32, i32* @PCI_STATUS_REC_TARGET_ABORT, align 4
  %137 = or i32 %135, %136
  %138 = and i32 %134, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %130
  %141 = load i32, i32* @PCIBIOS_DEVICE_NOT_FOUND, align 4
  store i32 %141, i32* %7, align 4
  br label %164

142:                                              ; preds = %130
  %143 = load i8, i8* %9, align 1
  %144 = zext i8 %143 to i32
  %145 = load i8, i8* @RCAR_PCI_ACCESS_READ, align 1
  %146 = zext i8 %145 to i32
  %147 = icmp eq i32 %144, %146
  br i1 %147, label %148, label %153

148:                                              ; preds = %142
  %149 = load %struct.rcar_pcie*, %struct.rcar_pcie** %8, align 8
  %150 = load i32, i32* @PCIECDR, align 4
  %151 = call i32 @rcar_pci_read_reg(%struct.rcar_pcie* %149, i32 %150)
  %152 = load i32*, i32** %13, align 8
  store i32 %151, i32* %152, align 4
  br label %159

153:                                              ; preds = %142
  %154 = load %struct.rcar_pcie*, %struct.rcar_pcie** %8, align 8
  %155 = load i32*, i32** %13, align 8
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* @PCIECDR, align 4
  %158 = call i32 @rcar_pci_write_reg(%struct.rcar_pcie* %154, i32 %156, i32 %157)
  br label %159

159:                                              ; preds = %153, %148
  %160 = load %struct.rcar_pcie*, %struct.rcar_pcie** %8, align 8
  %161 = load i32, i32* @PCIECCTLR, align 4
  %162 = call i32 @rcar_pci_write_reg(%struct.rcar_pcie* %160, i32 0, i32 %161)
  %163 = load i32, i32* @PCIBIOS_SUCCESSFUL, align 4
  store i32 %163, i32* %7, align 4
  br label %164

164:                                              ; preds = %159, %140, %128, %74, %67, %32
  %165 = load i32, i32* %7, align 4
  ret i32 %165
}

declare dso_local i32 @PCI_SLOT(i32) #1

declare dso_local i32 @PCI_FUNC(i32) #1

declare dso_local i64 @pci_is_root_bus(%struct.pci_bus*) #1

declare dso_local i32 @rcar_pci_read_reg(%struct.rcar_pcie*, i32) #1

declare dso_local i32 @PCICONF(i32) #1

declare dso_local i32 @rcar_pci_write_reg(%struct.rcar_pcie*, i32, i32) #1

declare dso_local i32 @PCIE_CONF_BUS(i32) #1

declare dso_local i32 @PCIE_CONF_DEV(i32) #1

declare dso_local i32 @PCIE_CONF_FUNC(i32) #1

declare dso_local i32 @rcar_read_conf(%struct.rcar_pcie*, i32) #1

declare dso_local i32 @RCONF(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
