; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pci-imx6.c_imx6_pcie_enable_ref_clk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pci-imx6.c_imx6_pcie_enable_ref_clk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx6_pcie = type { i32, i32, i32, %struct.TYPE_2__*, %struct.dw_pcie* }
%struct.TYPE_2__ = type { i32 }
%struct.dw_pcie = type { %struct.device* }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"unable to enable pcie_axi clock\0A\00", align 1
@IOMUXC_GPR12 = common dso_local global i32 0, align 4
@IMX6SX_GPR12_PCIE_TEST_POWERDOWN = common dso_local global i32 0, align 4
@IOMUXC_GPR1 = common dso_local global i32 0, align 4
@IMX6Q_GPR1_PCIE_TEST_PD = common dso_local global i32 0, align 4
@IMX6Q_GPR1_PCIE_REF_CLK_EN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"unable to enable pcie_aux clock\0A\00", align 1
@IMX8MQ_GPR_PCIE_CLK_REQ_OVERRIDE = common dso_local global i32 0, align 4
@IMX8MQ_GPR_PCIE_CLK_REQ_OVERRIDE_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.imx6_pcie*)* @imx6_pcie_enable_ref_clk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx6_pcie_enable_ref_clk(%struct.imx6_pcie* %0) #0 {
  %2 = alloca %struct.imx6_pcie*, align 8
  %3 = alloca %struct.dw_pcie*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.imx6_pcie* %0, %struct.imx6_pcie** %2, align 8
  %7 = load %struct.imx6_pcie*, %struct.imx6_pcie** %2, align 8
  %8 = getelementptr inbounds %struct.imx6_pcie, %struct.imx6_pcie* %7, i32 0, i32 4
  %9 = load %struct.dw_pcie*, %struct.dw_pcie** %8, align 8
  store %struct.dw_pcie* %9, %struct.dw_pcie** %3, align 8
  %10 = load %struct.dw_pcie*, %struct.dw_pcie** %3, align 8
  %11 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %10, i32 0, i32 0
  %12 = load %struct.device*, %struct.device** %11, align 8
  store %struct.device* %12, %struct.device** %4, align 8
  store i32 0, i32* %6, align 4
  %13 = load %struct.imx6_pcie*, %struct.imx6_pcie** %2, align 8
  %14 = getelementptr inbounds %struct.imx6_pcie, %struct.imx6_pcie* %13, i32 0, i32 3
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %76 [
    i32 130, label %18
    i32 131, label %35
    i32 132, label %35
    i32 129, label %49
    i32 128, label %50
  ]

18:                                               ; preds = %1
  %19 = load %struct.imx6_pcie*, %struct.imx6_pcie** %2, align 8
  %20 = getelementptr inbounds %struct.imx6_pcie, %struct.imx6_pcie* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @clk_prepare_enable(i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %18
  %26 = load %struct.device*, %struct.device** %4, align 8
  %27 = call i32 @dev_err(%struct.device* %26, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %76

28:                                               ; preds = %18
  %29 = load %struct.imx6_pcie*, %struct.imx6_pcie** %2, align 8
  %30 = getelementptr inbounds %struct.imx6_pcie, %struct.imx6_pcie* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @IOMUXC_GPR12, align 4
  %33 = load i32, i32* @IMX6SX_GPR12_PCIE_TEST_POWERDOWN, align 4
  %34 = call i32 @regmap_update_bits(i32 %31, i32 %32, i32 %33, i32 0)
  br label %76

35:                                               ; preds = %1, %1
  %36 = load %struct.imx6_pcie*, %struct.imx6_pcie** %2, align 8
  %37 = getelementptr inbounds %struct.imx6_pcie, %struct.imx6_pcie* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @IOMUXC_GPR1, align 4
  %40 = load i32, i32* @IMX6Q_GPR1_PCIE_TEST_PD, align 4
  %41 = call i32 @regmap_update_bits(i32 %38, i32 %39, i32 %40, i32 0)
  %42 = call i32 @usleep_range(i32 10, i32 100)
  %43 = load %struct.imx6_pcie*, %struct.imx6_pcie** %2, align 8
  %44 = getelementptr inbounds %struct.imx6_pcie, %struct.imx6_pcie* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @IOMUXC_GPR1, align 4
  %47 = load i32, i32* @IMX6Q_GPR1_PCIE_REF_CLK_EN, align 4
  %48 = call i32 @regmap_update_bits(i32 %45, i32 %46, i32 %47, i32 65536)
  br label %76

49:                                               ; preds = %1
  br label %76

50:                                               ; preds = %1
  %51 = load %struct.imx6_pcie*, %struct.imx6_pcie** %2, align 8
  %52 = getelementptr inbounds %struct.imx6_pcie, %struct.imx6_pcie* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @clk_prepare_enable(i32 %53)
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %50
  %58 = load %struct.device*, %struct.device** %4, align 8
  %59 = call i32 @dev_err(%struct.device* %58, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %76

60:                                               ; preds = %50
  %61 = load %struct.imx6_pcie*, %struct.imx6_pcie** %2, align 8
  %62 = call i32 @imx6_pcie_grp_offset(%struct.imx6_pcie* %61)
  store i32 %62, i32* %5, align 4
  %63 = load %struct.imx6_pcie*, %struct.imx6_pcie** %2, align 8
  %64 = getelementptr inbounds %struct.imx6_pcie, %struct.imx6_pcie* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* @IMX8MQ_GPR_PCIE_CLK_REQ_OVERRIDE, align 4
  %68 = call i32 @regmap_update_bits(i32 %65, i32 %66, i32 %67, i32 0)
  %69 = load %struct.imx6_pcie*, %struct.imx6_pcie** %2, align 8
  %70 = getelementptr inbounds %struct.imx6_pcie, %struct.imx6_pcie* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* %5, align 4
  %73 = load i32, i32* @IMX8MQ_GPR_PCIE_CLK_REQ_OVERRIDE_EN, align 4
  %74 = load i32, i32* @IMX8MQ_GPR_PCIE_CLK_REQ_OVERRIDE_EN, align 4
  %75 = call i32 @regmap_update_bits(i32 %71, i32 %72, i32 %73, i32 %74)
  br label %76

76:                                               ; preds = %1, %60, %57, %49, %35, %28, %25
  %77 = load i32, i32* %6, align 4
  ret i32 %77
}

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @imx6_pcie_grp_offset(%struct.imx6_pcie*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
