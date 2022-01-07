; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pci-imx6.c_imx6_pcie_assert_core_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pci-imx6.c_imx6_pcie_assert_core_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx6_pcie = type { i64, i32, i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.device* }
%struct.device = type { i32 }

@IOMUXC_GPR12 = common dso_local global i32 0, align 4
@IMX6SX_GPR12_PCIE_TEST_POWERDOWN = common dso_local global i32 0, align 4
@IOMUXC_GPR5 = common dso_local global i32 0, align 4
@IMX6SX_GPR5_PCIE_BTNRST_RESET = common dso_local global i32 0, align 4
@IOMUXC_GPR1 = common dso_local global i32 0, align 4
@IMX6Q_GPR1_PCIE_SW_RST = common dso_local global i32 0, align 4
@IMX6Q_GPR1_PCIE_TEST_PD = common dso_local global i32 0, align 4
@IMX6Q_GPR1_PCIE_REF_CLK_EN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"failed to disable vpcie regulator: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.imx6_pcie*)* @imx6_pcie_assert_core_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @imx6_pcie_assert_core_reset(%struct.imx6_pcie* %0) #0 {
  %2 = alloca %struct.imx6_pcie*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  store %struct.imx6_pcie* %0, %struct.imx6_pcie** %2, align 8
  %5 = load %struct.imx6_pcie*, %struct.imx6_pcie** %2, align 8
  %6 = getelementptr inbounds %struct.imx6_pcie, %struct.imx6_pcie* %5, i32 0, i32 5
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load %struct.device*, %struct.device** %8, align 8
  store %struct.device* %9, %struct.device** %3, align 8
  %10 = load %struct.imx6_pcie*, %struct.imx6_pcie** %2, align 8
  %11 = getelementptr inbounds %struct.imx6_pcie, %struct.imx6_pcie* %10, i32 0, i32 4
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %60 [
    i32 129, label %15
    i32 128, label %15
    i32 130, label %24
    i32 131, label %39
    i32 132, label %47
  ]

15:                                               ; preds = %1, %1
  %16 = load %struct.imx6_pcie*, %struct.imx6_pcie** %2, align 8
  %17 = getelementptr inbounds %struct.imx6_pcie, %struct.imx6_pcie* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @reset_control_assert(i32 %18)
  %20 = load %struct.imx6_pcie*, %struct.imx6_pcie** %2, align 8
  %21 = getelementptr inbounds %struct.imx6_pcie, %struct.imx6_pcie* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @reset_control_assert(i32 %22)
  br label %60

24:                                               ; preds = %1
  %25 = load %struct.imx6_pcie*, %struct.imx6_pcie** %2, align 8
  %26 = getelementptr inbounds %struct.imx6_pcie, %struct.imx6_pcie* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @IOMUXC_GPR12, align 4
  %29 = load i32, i32* @IMX6SX_GPR12_PCIE_TEST_POWERDOWN, align 4
  %30 = load i32, i32* @IMX6SX_GPR12_PCIE_TEST_POWERDOWN, align 4
  %31 = call i32 @regmap_update_bits(i32 %27, i32 %28, i32 %29, i32 %30)
  %32 = load %struct.imx6_pcie*, %struct.imx6_pcie** %2, align 8
  %33 = getelementptr inbounds %struct.imx6_pcie, %struct.imx6_pcie* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @IOMUXC_GPR5, align 4
  %36 = load i32, i32* @IMX6SX_GPR5_PCIE_BTNRST_RESET, align 4
  %37 = load i32, i32* @IMX6SX_GPR5_PCIE_BTNRST_RESET, align 4
  %38 = call i32 @regmap_update_bits(i32 %34, i32 %35, i32 %36, i32 %37)
  br label %60

39:                                               ; preds = %1
  %40 = load %struct.imx6_pcie*, %struct.imx6_pcie** %2, align 8
  %41 = getelementptr inbounds %struct.imx6_pcie, %struct.imx6_pcie* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @IOMUXC_GPR1, align 4
  %44 = load i32, i32* @IMX6Q_GPR1_PCIE_SW_RST, align 4
  %45 = load i32, i32* @IMX6Q_GPR1_PCIE_SW_RST, align 4
  %46 = call i32 @regmap_update_bits(i32 %42, i32 %43, i32 %44, i32 %45)
  br label %60

47:                                               ; preds = %1
  %48 = load %struct.imx6_pcie*, %struct.imx6_pcie** %2, align 8
  %49 = getelementptr inbounds %struct.imx6_pcie, %struct.imx6_pcie* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @IOMUXC_GPR1, align 4
  %52 = load i32, i32* @IMX6Q_GPR1_PCIE_TEST_PD, align 4
  %53 = call i32 @regmap_update_bits(i32 %50, i32 %51, i32 %52, i32 262144)
  %54 = load %struct.imx6_pcie*, %struct.imx6_pcie** %2, align 8
  %55 = getelementptr inbounds %struct.imx6_pcie, %struct.imx6_pcie* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @IOMUXC_GPR1, align 4
  %58 = load i32, i32* @IMX6Q_GPR1_PCIE_REF_CLK_EN, align 4
  %59 = call i32 @regmap_update_bits(i32 %56, i32 %57, i32 %58, i32 0)
  br label %60

60:                                               ; preds = %1, %47, %39, %24, %15
  %61 = load %struct.imx6_pcie*, %struct.imx6_pcie** %2, align 8
  %62 = getelementptr inbounds %struct.imx6_pcie, %struct.imx6_pcie* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %83

65:                                               ; preds = %60
  %66 = load %struct.imx6_pcie*, %struct.imx6_pcie** %2, align 8
  %67 = getelementptr inbounds %struct.imx6_pcie, %struct.imx6_pcie* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = call i64 @regulator_is_enabled(i64 %68)
  %70 = icmp sgt i64 %69, 0
  br i1 %70, label %71, label %83

71:                                               ; preds = %65
  %72 = load %struct.imx6_pcie*, %struct.imx6_pcie** %2, align 8
  %73 = getelementptr inbounds %struct.imx6_pcie, %struct.imx6_pcie* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @regulator_disable(i64 %74)
  store i32 %75, i32* %4, align 4
  %76 = load i32, i32* %4, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %71
  %79 = load %struct.device*, %struct.device** %3, align 8
  %80 = load i32, i32* %4, align 4
  %81 = call i32 @dev_err(%struct.device* %79, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %80)
  br label %82

82:                                               ; preds = %78, %71
  br label %83

83:                                               ; preds = %82, %65, %60
  ret void
}

declare dso_local i32 @reset_control_assert(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i64 @regulator_is_enabled(i64) #1

declare dso_local i32 @regulator_disable(i64) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
