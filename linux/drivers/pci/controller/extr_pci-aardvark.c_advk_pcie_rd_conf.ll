; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-aardvark.c_advk_pcie_rd_conf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-aardvark.c_advk_pcie_rd_conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i64, i64, %struct.advk_pcie* }
%struct.advk_pcie = type { i64, i32 }

@PCIBIOS_DEVICE_NOT_FOUND = common dso_local global i32 0, align 4
@PIO_START = common dso_local global i32 0, align 4
@PIO_ISR = common dso_local global i32 0, align 4
@PIO_CTRL = common dso_local global i32 0, align 4
@PIO_CTRL_TYPE_MASK = common dso_local global i32 0, align 4
@PCIE_CONFIG_RD_TYPE0 = common dso_local global i32 0, align 4
@PCIE_CONFIG_RD_TYPE1 = common dso_local global i32 0, align 4
@PIO_ADDR_LS = common dso_local global i32 0, align 4
@PIO_ADDR_MS = common dso_local global i32 0, align 4
@PIO_WR_DATA_STRB = common dso_local global i32 0, align 4
@PCIBIOS_SET_FAILED = common dso_local global i32 0, align 4
@PIO_RD_DATA = common dso_local global i32 0, align 4
@PCIBIOS_SUCCESSFUL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_bus*, i32, i32, i32, i32*)* @advk_pcie_rd_conf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @advk_pcie_rd_conf(%struct.pci_bus* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_bus*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.advk_pcie*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.pci_bus* %0, %struct.pci_bus** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %15 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %16 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %15, i32 0, i32 2
  %17 = load %struct.advk_pcie*, %struct.advk_pcie** %16, align 8
  store %struct.advk_pcie* %17, %struct.advk_pcie** %12, align 8
  %18 = load %struct.advk_pcie*, %struct.advk_pcie** %12, align 8
  %19 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @advk_pcie_valid_device(%struct.advk_pcie* %18, %struct.pci_bus* %19, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %5
  %24 = load i32*, i32** %11, align 8
  store i32 -1, i32* %24, align 4
  %25 = load i32, i32* @PCIBIOS_DEVICE_NOT_FOUND, align 4
  store i32 %25, i32* %6, align 4
  br label %133

26:                                               ; preds = %5
  %27 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %28 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.advk_pcie*, %struct.advk_pcie** %12, align 8
  %31 = getelementptr inbounds %struct.advk_pcie, %struct.advk_pcie* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %29, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %26
  %35 = load %struct.advk_pcie*, %struct.advk_pcie** %12, align 8
  %36 = getelementptr inbounds %struct.advk_pcie, %struct.advk_pcie* %35, i32 0, i32 1
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %10, align 4
  %39 = load i32*, i32** %11, align 8
  %40 = call i32 @pci_bridge_emul_conf_read(i32* %36, i32 %37, i32 %38, i32* %39)
  store i32 %40, i32* %6, align 4
  br label %133

41:                                               ; preds = %26
  %42 = load %struct.advk_pcie*, %struct.advk_pcie** %12, align 8
  %43 = load i32, i32* @PIO_START, align 4
  %44 = call i32 @advk_writel(%struct.advk_pcie* %42, i32 0, i32 %43)
  %45 = load %struct.advk_pcie*, %struct.advk_pcie** %12, align 8
  %46 = load i32, i32* @PIO_ISR, align 4
  %47 = call i32 @advk_writel(%struct.advk_pcie* %45, i32 1, i32 %46)
  %48 = load %struct.advk_pcie*, %struct.advk_pcie** %12, align 8
  %49 = load i32, i32* @PIO_CTRL, align 4
  %50 = call i32 @advk_readl(%struct.advk_pcie* %48, i32 %49)
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* @PIO_CTRL_TYPE_MASK, align 4
  %52 = xor i32 %51, -1
  %53 = load i32, i32* %13, align 4
  %54 = and i32 %53, %52
  store i32 %54, i32* %13, align 4
  %55 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %56 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.advk_pcie*, %struct.advk_pcie** %12, align 8
  %59 = getelementptr inbounds %struct.advk_pcie, %struct.advk_pcie* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp eq i64 %57, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %41
  %63 = load i32, i32* @PCIE_CONFIG_RD_TYPE0, align 4
  %64 = load i32, i32* %13, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %13, align 4
  br label %70

66:                                               ; preds = %41
  %67 = load i32, i32* @PCIE_CONFIG_RD_TYPE1, align 4
  %68 = load i32, i32* %13, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %13, align 4
  br label %70

70:                                               ; preds = %66, %62
  %71 = load %struct.advk_pcie*, %struct.advk_pcie** %12, align 8
  %72 = load i32, i32* %13, align 4
  %73 = load i32, i32* @PIO_CTRL, align 4
  %74 = call i32 @advk_writel(%struct.advk_pcie* %71, i32 %72, i32 %73)
  %75 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %76 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* %9, align 4
  %80 = call i32 @PCIE_CONF_ADDR(i64 %77, i32 %78, i32 %79)
  store i32 %80, i32* %13, align 4
  %81 = load %struct.advk_pcie*, %struct.advk_pcie** %12, align 8
  %82 = load i32, i32* %13, align 4
  %83 = load i32, i32* @PIO_ADDR_LS, align 4
  %84 = call i32 @advk_writel(%struct.advk_pcie* %81, i32 %82, i32 %83)
  %85 = load %struct.advk_pcie*, %struct.advk_pcie** %12, align 8
  %86 = load i32, i32* @PIO_ADDR_MS, align 4
  %87 = call i32 @advk_writel(%struct.advk_pcie* %85, i32 0, i32 %86)
  %88 = load %struct.advk_pcie*, %struct.advk_pcie** %12, align 8
  %89 = load i32, i32* @PIO_WR_DATA_STRB, align 4
  %90 = call i32 @advk_writel(%struct.advk_pcie* %88, i32 15, i32 %89)
  %91 = load %struct.advk_pcie*, %struct.advk_pcie** %12, align 8
  %92 = load i32, i32* @PIO_START, align 4
  %93 = call i32 @advk_writel(%struct.advk_pcie* %91, i32 1, i32 %92)
  %94 = load %struct.advk_pcie*, %struct.advk_pcie** %12, align 8
  %95 = call i32 @advk_pcie_wait_pio(%struct.advk_pcie* %94)
  store i32 %95, i32* %14, align 4
  %96 = load i32, i32* %14, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %70
  %99 = load i32, i32* @PCIBIOS_SET_FAILED, align 4
  store i32 %99, i32* %6, align 4
  br label %133

100:                                              ; preds = %70
  %101 = load %struct.advk_pcie*, %struct.advk_pcie** %12, align 8
  %102 = call i32 @advk_pcie_check_pio_status(%struct.advk_pcie* %101)
  %103 = load %struct.advk_pcie*, %struct.advk_pcie** %12, align 8
  %104 = load i32, i32* @PIO_RD_DATA, align 4
  %105 = call i32 @advk_readl(%struct.advk_pcie* %103, i32 %104)
  %106 = load i32*, i32** %11, align 8
  store i32 %105, i32* %106, align 4
  %107 = load i32, i32* %10, align 4
  %108 = icmp eq i32 %107, 1
  br i1 %108, label %109, label %118

109:                                              ; preds = %100
  %110 = load i32*, i32** %11, align 8
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* %9, align 4
  %113 = and i32 %112, 3
  %114 = mul nsw i32 8, %113
  %115 = ashr i32 %111, %114
  %116 = and i32 %115, 255
  %117 = load i32*, i32** %11, align 8
  store i32 %116, i32* %117, align 4
  br label %131

118:                                              ; preds = %100
  %119 = load i32, i32* %10, align 4
  %120 = icmp eq i32 %119, 2
  br i1 %120, label %121, label %130

121:                                              ; preds = %118
  %122 = load i32*, i32** %11, align 8
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* %9, align 4
  %125 = and i32 %124, 3
  %126 = mul nsw i32 8, %125
  %127 = ashr i32 %123, %126
  %128 = and i32 %127, 65535
  %129 = load i32*, i32** %11, align 8
  store i32 %128, i32* %129, align 4
  br label %130

130:                                              ; preds = %121, %118
  br label %131

131:                                              ; preds = %130, %109
  %132 = load i32, i32* @PCIBIOS_SUCCESSFUL, align 4
  store i32 %132, i32* %6, align 4
  br label %133

133:                                              ; preds = %131, %98, %34, %23
  %134 = load i32, i32* %6, align 4
  ret i32 %134
}

declare dso_local i32 @advk_pcie_valid_device(%struct.advk_pcie*, %struct.pci_bus*, i32) #1

declare dso_local i32 @pci_bridge_emul_conf_read(i32*, i32, i32, i32*) #1

declare dso_local i32 @advk_writel(%struct.advk_pcie*, i32, i32) #1

declare dso_local i32 @advk_readl(%struct.advk_pcie*, i32) #1

declare dso_local i32 @PCIE_CONF_ADDR(i64, i32, i32) #1

declare dso_local i32 @advk_pcie_wait_pio(%struct.advk_pcie*) #1

declare dso_local i32 @advk_pcie_check_pio_status(%struct.advk_pcie*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
