; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pci-imx6.c_imx6_pcie_init_phy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pci-imx6.c_imx6_pcie_init_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx6_pcie = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@IMX8MQ_GPR_PCIE_REF_USE_PAD = common dso_local global i32 0, align 4
@IOMUXC_GPR12 = common dso_local global i32 0, align 4
@IMX7D_GPR12_PCIE_PHY_REFCLK_SEL = common dso_local global i32 0, align 4
@IMX6SX_GPR12_PCIE_RX_EQ_MASK = common dso_local global i32 0, align 4
@IMX6SX_GPR12_PCIE_RX_EQ_2 = common dso_local global i32 0, align 4
@IMX6Q_GPR12_PCIE_CTL_2 = common dso_local global i32 0, align 4
@IMX6Q_GPR12_LOS_LEVEL = common dso_local global i32 0, align 4
@IOMUXC_GPR8 = common dso_local global i32 0, align 4
@IMX6Q_GPR8_TX_DEEMPH_GEN1 = common dso_local global i32 0, align 4
@IMX6Q_GPR8_TX_DEEMPH_GEN2_3P5DB = common dso_local global i32 0, align 4
@IMX6Q_GPR8_TX_DEEMPH_GEN2_6DB = common dso_local global i32 0, align 4
@IMX6Q_GPR8_TX_SWING_FULL = common dso_local global i32 0, align 4
@IMX6Q_GPR8_TX_SWING_LOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.imx6_pcie*)* @imx6_pcie_init_phy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @imx6_pcie_init_phy(%struct.imx6_pcie* %0) #0 {
  %2 = alloca %struct.imx6_pcie*, align 8
  store %struct.imx6_pcie* %0, %struct.imx6_pcie** %2, align 8
  %3 = load %struct.imx6_pcie*, %struct.imx6_pcie** %2, align 8
  %4 = getelementptr inbounds %struct.imx6_pcie, %struct.imx6_pcie* %3, i32 0, i32 6
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %32 [
    i32 128, label %8
    i32 129, label %17
    i32 130, label %24
  ]

8:                                                ; preds = %1
  %9 = load %struct.imx6_pcie*, %struct.imx6_pcie** %2, align 8
  %10 = getelementptr inbounds %struct.imx6_pcie, %struct.imx6_pcie* %9, i32 0, i32 5
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.imx6_pcie*, %struct.imx6_pcie** %2, align 8
  %13 = call i32 @imx6_pcie_grp_offset(%struct.imx6_pcie* %12)
  %14 = load i32, i32* @IMX8MQ_GPR_PCIE_REF_USE_PAD, align 4
  %15 = load i32, i32* @IMX8MQ_GPR_PCIE_REF_USE_PAD, align 4
  %16 = call i32 @regmap_update_bits(i32 %11, i32 %13, i32 %14, i32 %15)
  br label %95

17:                                               ; preds = %1
  %18 = load %struct.imx6_pcie*, %struct.imx6_pcie** %2, align 8
  %19 = getelementptr inbounds %struct.imx6_pcie, %struct.imx6_pcie* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @IOMUXC_GPR12, align 4
  %22 = load i32, i32* @IMX7D_GPR12_PCIE_PHY_REFCLK_SEL, align 4
  %23 = call i32 @regmap_update_bits(i32 %20, i32 %21, i32 %22, i32 0)
  br label %95

24:                                               ; preds = %1
  %25 = load %struct.imx6_pcie*, %struct.imx6_pcie** %2, align 8
  %26 = getelementptr inbounds %struct.imx6_pcie, %struct.imx6_pcie* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @IOMUXC_GPR12, align 4
  %29 = load i32, i32* @IMX6SX_GPR12_PCIE_RX_EQ_MASK, align 4
  %30 = load i32, i32* @IMX6SX_GPR12_PCIE_RX_EQ_2, align 4
  %31 = call i32 @regmap_update_bits(i32 %27, i32 %28, i32 %29, i32 %30)
  br label %32

32:                                               ; preds = %1, %24
  %33 = load %struct.imx6_pcie*, %struct.imx6_pcie** %2, align 8
  %34 = getelementptr inbounds %struct.imx6_pcie, %struct.imx6_pcie* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @IOMUXC_GPR12, align 4
  %37 = load i32, i32* @IMX6Q_GPR12_PCIE_CTL_2, align 4
  %38 = call i32 @regmap_update_bits(i32 %35, i32 %36, i32 %37, i32 0)
  %39 = load %struct.imx6_pcie*, %struct.imx6_pcie** %2, align 8
  %40 = getelementptr inbounds %struct.imx6_pcie, %struct.imx6_pcie* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @IOMUXC_GPR12, align 4
  %43 = load i32, i32* @IMX6Q_GPR12_LOS_LEVEL, align 4
  %44 = call i32 @regmap_update_bits(i32 %41, i32 %42, i32 %43, i32 144)
  %45 = load %struct.imx6_pcie*, %struct.imx6_pcie** %2, align 8
  %46 = getelementptr inbounds %struct.imx6_pcie, %struct.imx6_pcie* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @IOMUXC_GPR8, align 4
  %49 = load i32, i32* @IMX6Q_GPR8_TX_DEEMPH_GEN1, align 4
  %50 = load %struct.imx6_pcie*, %struct.imx6_pcie** %2, align 8
  %51 = getelementptr inbounds %struct.imx6_pcie, %struct.imx6_pcie* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = shl i32 %52, 0
  %54 = call i32 @regmap_update_bits(i32 %47, i32 %48, i32 %49, i32 %53)
  %55 = load %struct.imx6_pcie*, %struct.imx6_pcie** %2, align 8
  %56 = getelementptr inbounds %struct.imx6_pcie, %struct.imx6_pcie* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @IOMUXC_GPR8, align 4
  %59 = load i32, i32* @IMX6Q_GPR8_TX_DEEMPH_GEN2_3P5DB, align 4
  %60 = load %struct.imx6_pcie*, %struct.imx6_pcie** %2, align 8
  %61 = getelementptr inbounds %struct.imx6_pcie, %struct.imx6_pcie* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = shl i32 %62, 6
  %64 = call i32 @regmap_update_bits(i32 %57, i32 %58, i32 %59, i32 %63)
  %65 = load %struct.imx6_pcie*, %struct.imx6_pcie** %2, align 8
  %66 = getelementptr inbounds %struct.imx6_pcie, %struct.imx6_pcie* %65, i32 0, i32 5
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @IOMUXC_GPR8, align 4
  %69 = load i32, i32* @IMX6Q_GPR8_TX_DEEMPH_GEN2_6DB, align 4
  %70 = load %struct.imx6_pcie*, %struct.imx6_pcie** %2, align 8
  %71 = getelementptr inbounds %struct.imx6_pcie, %struct.imx6_pcie* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = shl i32 %72, 12
  %74 = call i32 @regmap_update_bits(i32 %67, i32 %68, i32 %69, i32 %73)
  %75 = load %struct.imx6_pcie*, %struct.imx6_pcie** %2, align 8
  %76 = getelementptr inbounds %struct.imx6_pcie, %struct.imx6_pcie* %75, i32 0, i32 5
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @IOMUXC_GPR8, align 4
  %79 = load i32, i32* @IMX6Q_GPR8_TX_SWING_FULL, align 4
  %80 = load %struct.imx6_pcie*, %struct.imx6_pcie** %2, align 8
  %81 = getelementptr inbounds %struct.imx6_pcie, %struct.imx6_pcie* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = shl i32 %82, 18
  %84 = call i32 @regmap_update_bits(i32 %77, i32 %78, i32 %79, i32 %83)
  %85 = load %struct.imx6_pcie*, %struct.imx6_pcie** %2, align 8
  %86 = getelementptr inbounds %struct.imx6_pcie, %struct.imx6_pcie* %85, i32 0, i32 5
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @IOMUXC_GPR8, align 4
  %89 = load i32, i32* @IMX6Q_GPR8_TX_SWING_LOW, align 4
  %90 = load %struct.imx6_pcie*, %struct.imx6_pcie** %2, align 8
  %91 = getelementptr inbounds %struct.imx6_pcie, %struct.imx6_pcie* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 8
  %93 = shl i32 %92, 25
  %94 = call i32 @regmap_update_bits(i32 %87, i32 %88, i32 %89, i32 %93)
  br label %95

95:                                               ; preds = %32, %17, %8
  %96 = load %struct.imx6_pcie*, %struct.imx6_pcie** %2, align 8
  %97 = call i32 @imx6_pcie_configure_type(%struct.imx6_pcie* %96)
  ret void
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @imx6_pcie_grp_offset(%struct.imx6_pcie*) #1

declare dso_local i32 @imx6_pcie_configure_type(%struct.imx6_pcie*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
