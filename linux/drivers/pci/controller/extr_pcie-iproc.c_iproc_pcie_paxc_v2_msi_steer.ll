; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-iproc.c_iproc_pcie_paxc_v2_msi_steer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-iproc.c_iproc_pcie_paxc_v2_msi_steer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iproc_pcie = type { i32 }

@IPROC_PCIE_MSI_EN_CFG = common dso_local global i32 0, align 4
@MSI_ENABLE_CFG = common dso_local global i32 0, align 4
@IPROC_PCIE_MSI_BASE_ADDR = common dso_local global i32 0, align 4
@IPROC_PCIE_MSI_WINDOW_SIZE = common dso_local global i32 0, align 4
@IPROC_PCIE_MSI_GIC_MODE = common dso_local global i32 0, align 4
@GIC_V3_CFG = common dso_local global i32 0, align 4
@IPROC_PCIE_MSI_ADDR_HI = common dso_local global i32 0, align 4
@IPROC_PCIE_MSI_ADDR_LO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iproc_pcie*, i32, i32)* @iproc_pcie_paxc_v2_msi_steer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iproc_pcie_paxc_v2_msi_steer(%struct.iproc_pcie* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.iproc_pcie*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.iproc_pcie* %0, %struct.iproc_pcie** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %22, label %10

10:                                               ; preds = %3
  %11 = load %struct.iproc_pcie*, %struct.iproc_pcie** %4, align 8
  %12 = load i32, i32* @IPROC_PCIE_MSI_EN_CFG, align 4
  %13 = call i32 @iproc_pcie_read_reg(%struct.iproc_pcie* %11, i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* @MSI_ENABLE_CFG, align 4
  %15 = xor i32 %14, -1
  %16 = load i32, i32* %7, align 4
  %17 = and i32 %16, %15
  store i32 %17, i32* %7, align 4
  %18 = load %struct.iproc_pcie*, %struct.iproc_pcie** %4, align 8
  %19 = load i32, i32* @IPROC_PCIE_MSI_EN_CFG, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @iproc_pcie_write_reg(%struct.iproc_pcie* %18, i32 %19, i32 %20)
  br label %63

22:                                               ; preds = %3
  %23 = load %struct.iproc_pcie*, %struct.iproc_pcie** %4, align 8
  %24 = load i32, i32* @IPROC_PCIE_MSI_BASE_ADDR, align 4
  %25 = load i32, i32* %5, align 4
  %26 = ashr i32 %25, 13
  %27 = call i32 @iproc_pcie_write_reg(%struct.iproc_pcie* %23, i32 %24, i32 %26)
  %28 = load %struct.iproc_pcie*, %struct.iproc_pcie** %4, align 8
  %29 = load i32, i32* @IPROC_PCIE_MSI_WINDOW_SIZE, align 4
  %30 = call i32 @iproc_pcie_write_reg(%struct.iproc_pcie* %28, i32 %29, i32 0)
  %31 = load %struct.iproc_pcie*, %struct.iproc_pcie** %4, align 8
  %32 = load i32, i32* @IPROC_PCIE_MSI_GIC_MODE, align 4
  %33 = call i32 @iproc_pcie_read_reg(%struct.iproc_pcie* %31, i32 %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* @GIC_V3_CFG, align 4
  %35 = load i32, i32* %7, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %7, align 4
  %37 = load %struct.iproc_pcie*, %struct.iproc_pcie** %4, align 8
  %38 = load i32, i32* @IPROC_PCIE_MSI_GIC_MODE, align 4
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @iproc_pcie_write_reg(%struct.iproc_pcie* %37, i32 %38, i32 %39)
  %41 = load i32, i32* %5, align 4
  %42 = ashr i32 %41, 2
  store i32 %42, i32* %5, align 4
  %43 = load %struct.iproc_pcie*, %struct.iproc_pcie** %4, align 8
  %44 = load i32, i32* @IPROC_PCIE_MSI_ADDR_HI, align 4
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @upper_32_bits(i32 %45)
  %47 = call i32 @iproc_pcie_write_reg(%struct.iproc_pcie* %43, i32 %44, i32 %46)
  %48 = load %struct.iproc_pcie*, %struct.iproc_pcie** %4, align 8
  %49 = load i32, i32* @IPROC_PCIE_MSI_ADDR_LO, align 4
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @lower_32_bits(i32 %50)
  %52 = call i32 @iproc_pcie_write_reg(%struct.iproc_pcie* %48, i32 %49, i32 %51)
  %53 = load %struct.iproc_pcie*, %struct.iproc_pcie** %4, align 8
  %54 = load i32, i32* @IPROC_PCIE_MSI_EN_CFG, align 4
  %55 = call i32 @iproc_pcie_read_reg(%struct.iproc_pcie* %53, i32 %54)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* @MSI_ENABLE_CFG, align 4
  %57 = load i32, i32* %7, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %7, align 4
  %59 = load %struct.iproc_pcie*, %struct.iproc_pcie** %4, align 8
  %60 = load i32, i32* @IPROC_PCIE_MSI_EN_CFG, align 4
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @iproc_pcie_write_reg(%struct.iproc_pcie* %59, i32 %60, i32 %61)
  br label %63

63:                                               ; preds = %22, %10
  ret void
}

declare dso_local i32 @iproc_pcie_read_reg(%struct.iproc_pcie*, i32) #1

declare dso_local i32 @iproc_pcie_write_reg(%struct.iproc_pcie*, i32, i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
