; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-aardvark.c_advk_pcie_wr_conf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-aardvark.c_advk_pcie_wr_conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i64, i64, %struct.advk_pcie* }
%struct.advk_pcie = type { i64, i32 }

@PCIBIOS_DEVICE_NOT_FOUND = common dso_local global i32 0, align 4
@PCIBIOS_SET_FAILED = common dso_local global i32 0, align 4
@PIO_START = common dso_local global i32 0, align 4
@PIO_ISR = common dso_local global i32 0, align 4
@PIO_CTRL = common dso_local global i32 0, align 4
@PIO_CTRL_TYPE_MASK = common dso_local global i32 0, align 4
@PCIE_CONFIG_WR_TYPE0 = common dso_local global i32 0, align 4
@PCIE_CONFIG_WR_TYPE1 = common dso_local global i32 0, align 4
@PIO_ADDR_LS = common dso_local global i32 0, align 4
@PIO_ADDR_MS = common dso_local global i32 0, align 4
@PIO_WR_DATA = common dso_local global i32 0, align 4
@PIO_WR_DATA_STRB = common dso_local global i32 0, align 4
@PCIBIOS_SUCCESSFUL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_bus*, i32, i32, i32, i32)* @advk_pcie_wr_conf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @advk_pcie_wr_conf(%struct.pci_bus* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_bus*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.advk_pcie*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.pci_bus* %0, %struct.pci_bus** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %17 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %18 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %17, i32 0, i32 2
  %19 = load %struct.advk_pcie*, %struct.advk_pcie** %18, align 8
  store %struct.advk_pcie* %19, %struct.advk_pcie** %12, align 8
  store i32 0, i32* %14, align 4
  %20 = load %struct.advk_pcie*, %struct.advk_pcie** %12, align 8
  %21 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @advk_pcie_valid_device(%struct.advk_pcie* %20, %struct.pci_bus* %21, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %5
  %26 = load i32, i32* @PCIBIOS_DEVICE_NOT_FOUND, align 4
  store i32 %26, i32* %6, align 4
  br label %128

27:                                               ; preds = %5
  %28 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %29 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.advk_pcie*, %struct.advk_pcie** %12, align 8
  %32 = getelementptr inbounds %struct.advk_pcie, %struct.advk_pcie* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %30, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %27
  %36 = load %struct.advk_pcie*, %struct.advk_pcie** %12, align 8
  %37 = getelementptr inbounds %struct.advk_pcie, %struct.advk_pcie* %36, i32 0, i32 1
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %11, align 4
  %41 = call i32 @pci_bridge_emul_conf_write(i32* %37, i32 %38, i32 %39, i32 %40)
  store i32 %41, i32* %6, align 4
  br label %128

42:                                               ; preds = %27
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %10, align 4
  %45 = srem i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load i32, i32* @PCIBIOS_SET_FAILED, align 4
  store i32 %48, i32* %6, align 4
  br label %128

49:                                               ; preds = %42
  %50 = load %struct.advk_pcie*, %struct.advk_pcie** %12, align 8
  %51 = load i32, i32* @PIO_START, align 4
  %52 = call i32 @advk_writel(%struct.advk_pcie* %50, i32 0, i32 %51)
  %53 = load %struct.advk_pcie*, %struct.advk_pcie** %12, align 8
  %54 = load i32, i32* @PIO_ISR, align 4
  %55 = call i32 @advk_writel(%struct.advk_pcie* %53, i32 1, i32 %54)
  %56 = load %struct.advk_pcie*, %struct.advk_pcie** %12, align 8
  %57 = load i32, i32* @PIO_CTRL, align 4
  %58 = call i32 @advk_readl(%struct.advk_pcie* %56, i32 %57)
  store i32 %58, i32* %13, align 4
  %59 = load i32, i32* @PIO_CTRL_TYPE_MASK, align 4
  %60 = xor i32 %59, -1
  %61 = load i32, i32* %13, align 4
  %62 = and i32 %61, %60
  store i32 %62, i32* %13, align 4
  %63 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %64 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.advk_pcie*, %struct.advk_pcie** %12, align 8
  %67 = getelementptr inbounds %struct.advk_pcie, %struct.advk_pcie* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp eq i64 %65, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %49
  %71 = load i32, i32* @PCIE_CONFIG_WR_TYPE0, align 4
  %72 = load i32, i32* %13, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %13, align 4
  br label %78

74:                                               ; preds = %49
  %75 = load i32, i32* @PCIE_CONFIG_WR_TYPE1, align 4
  %76 = load i32, i32* %13, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %13, align 4
  br label %78

78:                                               ; preds = %74, %70
  %79 = load %struct.advk_pcie*, %struct.advk_pcie** %12, align 8
  %80 = load i32, i32* %13, align 4
  %81 = load i32, i32* @PIO_CTRL, align 4
  %82 = call i32 @advk_writel(%struct.advk_pcie* %79, i32 %80, i32 %81)
  %83 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %84 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* %9, align 4
  %88 = call i32 @PCIE_CONF_ADDR(i64 %85, i32 %86, i32 %87)
  store i32 %88, i32* %13, align 4
  %89 = load %struct.advk_pcie*, %struct.advk_pcie** %12, align 8
  %90 = load i32, i32* %13, align 4
  %91 = load i32, i32* @PIO_ADDR_LS, align 4
  %92 = call i32 @advk_writel(%struct.advk_pcie* %89, i32 %90, i32 %91)
  %93 = load %struct.advk_pcie*, %struct.advk_pcie** %12, align 8
  %94 = load i32, i32* @PIO_ADDR_MS, align 4
  %95 = call i32 @advk_writel(%struct.advk_pcie* %93, i32 0, i32 %94)
  %96 = load i32, i32* %9, align 4
  %97 = and i32 %96, 3
  store i32 %97, i32* %15, align 4
  %98 = load i32, i32* %11, align 4
  %99 = load i32, i32* %15, align 4
  %100 = mul nsw i32 8, %99
  %101 = shl i32 %98, %100
  store i32 %101, i32* %13, align 4
  %102 = load i32, i32* %10, align 4
  %103 = sub nsw i32 %102, 1
  %104 = call i32 @GENMASK(i32 %103, i32 0)
  %105 = load i32, i32* %15, align 4
  %106 = shl i32 %104, %105
  store i32 %106, i32* %14, align 4
  %107 = load %struct.advk_pcie*, %struct.advk_pcie** %12, align 8
  %108 = load i32, i32* %13, align 4
  %109 = load i32, i32* @PIO_WR_DATA, align 4
  %110 = call i32 @advk_writel(%struct.advk_pcie* %107, i32 %108, i32 %109)
  %111 = load %struct.advk_pcie*, %struct.advk_pcie** %12, align 8
  %112 = load i32, i32* %14, align 4
  %113 = load i32, i32* @PIO_WR_DATA_STRB, align 4
  %114 = call i32 @advk_writel(%struct.advk_pcie* %111, i32 %112, i32 %113)
  %115 = load %struct.advk_pcie*, %struct.advk_pcie** %12, align 8
  %116 = load i32, i32* @PIO_START, align 4
  %117 = call i32 @advk_writel(%struct.advk_pcie* %115, i32 1, i32 %116)
  %118 = load %struct.advk_pcie*, %struct.advk_pcie** %12, align 8
  %119 = call i32 @advk_pcie_wait_pio(%struct.advk_pcie* %118)
  store i32 %119, i32* %16, align 4
  %120 = load i32, i32* %16, align 4
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %78
  %123 = load i32, i32* @PCIBIOS_SET_FAILED, align 4
  store i32 %123, i32* %6, align 4
  br label %128

124:                                              ; preds = %78
  %125 = load %struct.advk_pcie*, %struct.advk_pcie** %12, align 8
  %126 = call i32 @advk_pcie_check_pio_status(%struct.advk_pcie* %125)
  %127 = load i32, i32* @PCIBIOS_SUCCESSFUL, align 4
  store i32 %127, i32* %6, align 4
  br label %128

128:                                              ; preds = %124, %122, %47, %35, %25
  %129 = load i32, i32* %6, align 4
  ret i32 %129
}

declare dso_local i32 @advk_pcie_valid_device(%struct.advk_pcie*, %struct.pci_bus*, i32) #1

declare dso_local i32 @pci_bridge_emul_conf_write(i32*, i32, i32, i32) #1

declare dso_local i32 @advk_writel(%struct.advk_pcie*, i32, i32) #1

declare dso_local i32 @advk_readl(%struct.advk_pcie*, i32) #1

declare dso_local i32 @PCIE_CONF_ADDR(i64, i32, i32) #1

declare dso_local i32 @GENMASK(i32, i32) #1

declare dso_local i32 @advk_pcie_wait_pio(%struct.advk_pcie*) #1

declare dso_local i32 @advk_pcie_check_pio_status(%struct.advk_pcie*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
