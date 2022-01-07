; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-qcom.c_qcom_pcie_init_1_0_0.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-qcom.c_qcom_pcie_init_1_0_0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcom_pcie = type { i64, %struct.dw_pcie*, %struct.TYPE_2__ }
%struct.dw_pcie = type { %struct.device* }
%struct.device = type { i32 }
%struct.TYPE_2__ = type { %struct.qcom_pcie_resources_1_0_0 }
%struct.qcom_pcie_resources_1_0_0 = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"cannot deassert core reset\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"cannot prepare/enable aux clock\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"cannot prepare/enable iface clock\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"cannot prepare/enable master_bus clock\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"cannot prepare/enable slave_bus clock\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"cannot enable vdda regulator\0A\00", align 1
@PCIE20_PARF_DBI_BASE_ADDR = common dso_local global i64 0, align 8
@CONFIG_PCI_MSI = common dso_local global i32 0, align 4
@PCIE20_PARF_AXI_MSTR_WR_ADDR_HALT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qcom_pcie*)* @qcom_pcie_init_1_0_0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcom_pcie_init_1_0_0(%struct.qcom_pcie* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qcom_pcie*, align 8
  %4 = alloca %struct.qcom_pcie_resources_1_0_0*, align 8
  %5 = alloca %struct.dw_pcie*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.qcom_pcie* %0, %struct.qcom_pcie** %3, align 8
  %9 = load %struct.qcom_pcie*, %struct.qcom_pcie** %3, align 8
  %10 = getelementptr inbounds %struct.qcom_pcie, %struct.qcom_pcie* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.qcom_pcie_resources_1_0_0* %11, %struct.qcom_pcie_resources_1_0_0** %4, align 8
  %12 = load %struct.qcom_pcie*, %struct.qcom_pcie** %3, align 8
  %13 = getelementptr inbounds %struct.qcom_pcie, %struct.qcom_pcie* %12, i32 0, i32 1
  %14 = load %struct.dw_pcie*, %struct.dw_pcie** %13, align 8
  store %struct.dw_pcie* %14, %struct.dw_pcie** %5, align 8
  %15 = load %struct.dw_pcie*, %struct.dw_pcie** %5, align 8
  %16 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %15, i32 0, i32 0
  %17 = load %struct.device*, %struct.device** %16, align 8
  store %struct.device* %17, %struct.device** %6, align 8
  %18 = load %struct.qcom_pcie_resources_1_0_0*, %struct.qcom_pcie_resources_1_0_0** %4, align 8
  %19 = getelementptr inbounds %struct.qcom_pcie_resources_1_0_0, %struct.qcom_pcie_resources_1_0_0* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @reset_control_deassert(i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %1
  %25 = load %struct.device*, %struct.device** %6, align 8
  %26 = call i32 @dev_err(%struct.device* %25, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* %7, align 4
  store i32 %27, i32* %2, align 4
  br label %132

28:                                               ; preds = %1
  %29 = load %struct.qcom_pcie_resources_1_0_0*, %struct.qcom_pcie_resources_1_0_0** %4, align 8
  %30 = getelementptr inbounds %struct.qcom_pcie_resources_1_0_0, %struct.qcom_pcie_resources_1_0_0* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @clk_prepare_enable(i32 %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %28
  %36 = load %struct.device*, %struct.device** %6, align 8
  %37 = call i32 @dev_err(%struct.device* %36, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %126

38:                                               ; preds = %28
  %39 = load %struct.qcom_pcie_resources_1_0_0*, %struct.qcom_pcie_resources_1_0_0** %4, align 8
  %40 = getelementptr inbounds %struct.qcom_pcie_resources_1_0_0, %struct.qcom_pcie_resources_1_0_0* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @clk_prepare_enable(i32 %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %38
  %46 = load %struct.device*, %struct.device** %6, align 8
  %47 = call i32 @dev_err(%struct.device* %46, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %121

48:                                               ; preds = %38
  %49 = load %struct.qcom_pcie_resources_1_0_0*, %struct.qcom_pcie_resources_1_0_0** %4, align 8
  %50 = getelementptr inbounds %struct.qcom_pcie_resources_1_0_0, %struct.qcom_pcie_resources_1_0_0* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @clk_prepare_enable(i32 %51)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %48
  %56 = load %struct.device*, %struct.device** %6, align 8
  %57 = call i32 @dev_err(%struct.device* %56, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  br label %116

58:                                               ; preds = %48
  %59 = load %struct.qcom_pcie_resources_1_0_0*, %struct.qcom_pcie_resources_1_0_0** %4, align 8
  %60 = getelementptr inbounds %struct.qcom_pcie_resources_1_0_0, %struct.qcom_pcie_resources_1_0_0* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @clk_prepare_enable(i32 %61)
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %7, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %58
  %66 = load %struct.device*, %struct.device** %6, align 8
  %67 = call i32 @dev_err(%struct.device* %66, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  br label %111

68:                                               ; preds = %58
  %69 = load %struct.qcom_pcie_resources_1_0_0*, %struct.qcom_pcie_resources_1_0_0** %4, align 8
  %70 = getelementptr inbounds %struct.qcom_pcie_resources_1_0_0, %struct.qcom_pcie_resources_1_0_0* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @regulator_enable(i32 %71)
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* %7, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %68
  %76 = load %struct.device*, %struct.device** %6, align 8
  %77 = call i32 @dev_err(%struct.device* %76, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  br label %106

78:                                               ; preds = %68
  %79 = load %struct.qcom_pcie*, %struct.qcom_pcie** %3, align 8
  %80 = getelementptr inbounds %struct.qcom_pcie, %struct.qcom_pcie* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @PCIE20_PARF_DBI_BASE_ADDR, align 8
  %83 = add nsw i64 %81, %82
  %84 = call i32 @writel(i32 0, i64 %83)
  %85 = load i32, i32* @CONFIG_PCI_MSI, align 4
  %86 = call i64 @IS_ENABLED(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %105

88:                                               ; preds = %78
  %89 = load %struct.qcom_pcie*, %struct.qcom_pcie** %3, align 8
  %90 = getelementptr inbounds %struct.qcom_pcie, %struct.qcom_pcie* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @PCIE20_PARF_AXI_MSTR_WR_ADDR_HALT, align 8
  %93 = add nsw i64 %91, %92
  %94 = call i32 @readl(i64 %93)
  store i32 %94, i32* %8, align 4
  %95 = call i32 @BIT(i32 31)
  %96 = load i32, i32* %8, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %8, align 4
  %98 = load i32, i32* %8, align 4
  %99 = load %struct.qcom_pcie*, %struct.qcom_pcie** %3, align 8
  %100 = getelementptr inbounds %struct.qcom_pcie, %struct.qcom_pcie* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @PCIE20_PARF_AXI_MSTR_WR_ADDR_HALT, align 8
  %103 = add nsw i64 %101, %102
  %104 = call i32 @writel(i32 %98, i64 %103)
  br label %105

105:                                              ; preds = %88, %78
  store i32 0, i32* %2, align 4
  br label %132

106:                                              ; preds = %75
  %107 = load %struct.qcom_pcie_resources_1_0_0*, %struct.qcom_pcie_resources_1_0_0** %4, align 8
  %108 = getelementptr inbounds %struct.qcom_pcie_resources_1_0_0, %struct.qcom_pcie_resources_1_0_0* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @clk_disable_unprepare(i32 %109)
  br label %111

111:                                              ; preds = %106, %65
  %112 = load %struct.qcom_pcie_resources_1_0_0*, %struct.qcom_pcie_resources_1_0_0** %4, align 8
  %113 = getelementptr inbounds %struct.qcom_pcie_resources_1_0_0, %struct.qcom_pcie_resources_1_0_0* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @clk_disable_unprepare(i32 %114)
  br label %116

116:                                              ; preds = %111, %55
  %117 = load %struct.qcom_pcie_resources_1_0_0*, %struct.qcom_pcie_resources_1_0_0** %4, align 8
  %118 = getelementptr inbounds %struct.qcom_pcie_resources_1_0_0, %struct.qcom_pcie_resources_1_0_0* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @clk_disable_unprepare(i32 %119)
  br label %121

121:                                              ; preds = %116, %45
  %122 = load %struct.qcom_pcie_resources_1_0_0*, %struct.qcom_pcie_resources_1_0_0** %4, align 8
  %123 = getelementptr inbounds %struct.qcom_pcie_resources_1_0_0, %struct.qcom_pcie_resources_1_0_0* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @clk_disable_unprepare(i32 %124)
  br label %126

126:                                              ; preds = %121, %35
  %127 = load %struct.qcom_pcie_resources_1_0_0*, %struct.qcom_pcie_resources_1_0_0** %4, align 8
  %128 = getelementptr inbounds %struct.qcom_pcie_resources_1_0_0, %struct.qcom_pcie_resources_1_0_0* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @reset_control_assert(i32 %129)
  %131 = load i32, i32* %7, align 4
  store i32 %131, i32* %2, align 4
  br label %132

132:                                              ; preds = %126, %105, %24
  %133 = load i32, i32* %2, align 4
  ret i32 %133
}

declare dso_local i32 @reset_control_deassert(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @reset_control_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
