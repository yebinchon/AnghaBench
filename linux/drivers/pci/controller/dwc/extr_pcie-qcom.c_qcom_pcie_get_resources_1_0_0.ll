; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-qcom.c_qcom_pcie_get_resources_1_0_0.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-qcom.c_qcom_pcie_get_resources_1_0_0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcom_pcie = type { %struct.dw_pcie*, %struct.TYPE_2__ }
%struct.dw_pcie = type { %struct.device* }
%struct.device = type { i32 }
%struct.TYPE_2__ = type { %struct.qcom_pcie_resources_1_0_0 }
%struct.qcom_pcie_resources_1_0_0 = type { i32, i8*, i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [5 x i8] c"vdda\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"iface\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"aux\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"master_bus\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"slave_bus\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"core\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qcom_pcie*)* @qcom_pcie_get_resources_1_0_0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcom_pcie_get_resources_1_0_0(%struct.qcom_pcie* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qcom_pcie*, align 8
  %4 = alloca %struct.qcom_pcie_resources_1_0_0*, align 8
  %5 = alloca %struct.dw_pcie*, align 8
  %6 = alloca %struct.device*, align 8
  store %struct.qcom_pcie* %0, %struct.qcom_pcie** %3, align 8
  %7 = load %struct.qcom_pcie*, %struct.qcom_pcie** %3, align 8
  %8 = getelementptr inbounds %struct.qcom_pcie, %struct.qcom_pcie* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store %struct.qcom_pcie_resources_1_0_0* %9, %struct.qcom_pcie_resources_1_0_0** %4, align 8
  %10 = load %struct.qcom_pcie*, %struct.qcom_pcie** %3, align 8
  %11 = getelementptr inbounds %struct.qcom_pcie, %struct.qcom_pcie* %10, i32 0, i32 0
  %12 = load %struct.dw_pcie*, %struct.dw_pcie** %11, align 8
  store %struct.dw_pcie* %12, %struct.dw_pcie** %5, align 8
  %13 = load %struct.dw_pcie*, %struct.dw_pcie** %5, align 8
  %14 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %13, i32 0, i32 0
  %15 = load %struct.device*, %struct.device** %14, align 8
  store %struct.device* %15, %struct.device** %6, align 8
  %16 = load %struct.device*, %struct.device** %6, align 8
  %17 = call i8* @devm_regulator_get(%struct.device* %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.qcom_pcie_resources_1_0_0*, %struct.qcom_pcie_resources_1_0_0** %4, align 8
  %19 = getelementptr inbounds %struct.qcom_pcie_resources_1_0_0, %struct.qcom_pcie_resources_1_0_0* %18, i32 0, i32 5
  store i8* %17, i8** %19, align 8
  %20 = load %struct.qcom_pcie_resources_1_0_0*, %struct.qcom_pcie_resources_1_0_0** %4, align 8
  %21 = getelementptr inbounds %struct.qcom_pcie_resources_1_0_0, %struct.qcom_pcie_resources_1_0_0* %20, i32 0, i32 5
  %22 = load i8*, i8** %21, align 8
  %23 = call i64 @IS_ERR(i8* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %1
  %26 = load %struct.qcom_pcie_resources_1_0_0*, %struct.qcom_pcie_resources_1_0_0** %4, align 8
  %27 = getelementptr inbounds %struct.qcom_pcie_resources_1_0_0, %struct.qcom_pcie_resources_1_0_0* %26, i32 0, i32 5
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @PTR_ERR(i8* %28)
  store i32 %29, i32* %2, align 4
  br label %99

30:                                               ; preds = %1
  %31 = load %struct.device*, %struct.device** %6, align 8
  %32 = call i8* @devm_clk_get(%struct.device* %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %33 = load %struct.qcom_pcie_resources_1_0_0*, %struct.qcom_pcie_resources_1_0_0** %4, align 8
  %34 = getelementptr inbounds %struct.qcom_pcie_resources_1_0_0, %struct.qcom_pcie_resources_1_0_0* %33, i32 0, i32 4
  store i8* %32, i8** %34, align 8
  %35 = load %struct.qcom_pcie_resources_1_0_0*, %struct.qcom_pcie_resources_1_0_0** %4, align 8
  %36 = getelementptr inbounds %struct.qcom_pcie_resources_1_0_0, %struct.qcom_pcie_resources_1_0_0* %35, i32 0, i32 4
  %37 = load i8*, i8** %36, align 8
  %38 = call i64 @IS_ERR(i8* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %30
  %41 = load %struct.qcom_pcie_resources_1_0_0*, %struct.qcom_pcie_resources_1_0_0** %4, align 8
  %42 = getelementptr inbounds %struct.qcom_pcie_resources_1_0_0, %struct.qcom_pcie_resources_1_0_0* %41, i32 0, i32 4
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 @PTR_ERR(i8* %43)
  store i32 %44, i32* %2, align 4
  br label %99

45:                                               ; preds = %30
  %46 = load %struct.device*, %struct.device** %6, align 8
  %47 = call i8* @devm_clk_get(%struct.device* %46, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %48 = load %struct.qcom_pcie_resources_1_0_0*, %struct.qcom_pcie_resources_1_0_0** %4, align 8
  %49 = getelementptr inbounds %struct.qcom_pcie_resources_1_0_0, %struct.qcom_pcie_resources_1_0_0* %48, i32 0, i32 3
  store i8* %47, i8** %49, align 8
  %50 = load %struct.qcom_pcie_resources_1_0_0*, %struct.qcom_pcie_resources_1_0_0** %4, align 8
  %51 = getelementptr inbounds %struct.qcom_pcie_resources_1_0_0, %struct.qcom_pcie_resources_1_0_0* %50, i32 0, i32 3
  %52 = load i8*, i8** %51, align 8
  %53 = call i64 @IS_ERR(i8* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %45
  %56 = load %struct.qcom_pcie_resources_1_0_0*, %struct.qcom_pcie_resources_1_0_0** %4, align 8
  %57 = getelementptr inbounds %struct.qcom_pcie_resources_1_0_0, %struct.qcom_pcie_resources_1_0_0* %56, i32 0, i32 3
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 @PTR_ERR(i8* %58)
  store i32 %59, i32* %2, align 4
  br label %99

60:                                               ; preds = %45
  %61 = load %struct.device*, %struct.device** %6, align 8
  %62 = call i8* @devm_clk_get(%struct.device* %61, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %63 = load %struct.qcom_pcie_resources_1_0_0*, %struct.qcom_pcie_resources_1_0_0** %4, align 8
  %64 = getelementptr inbounds %struct.qcom_pcie_resources_1_0_0, %struct.qcom_pcie_resources_1_0_0* %63, i32 0, i32 2
  store i8* %62, i8** %64, align 8
  %65 = load %struct.qcom_pcie_resources_1_0_0*, %struct.qcom_pcie_resources_1_0_0** %4, align 8
  %66 = getelementptr inbounds %struct.qcom_pcie_resources_1_0_0, %struct.qcom_pcie_resources_1_0_0* %65, i32 0, i32 2
  %67 = load i8*, i8** %66, align 8
  %68 = call i64 @IS_ERR(i8* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %60
  %71 = load %struct.qcom_pcie_resources_1_0_0*, %struct.qcom_pcie_resources_1_0_0** %4, align 8
  %72 = getelementptr inbounds %struct.qcom_pcie_resources_1_0_0, %struct.qcom_pcie_resources_1_0_0* %71, i32 0, i32 2
  %73 = load i8*, i8** %72, align 8
  %74 = call i32 @PTR_ERR(i8* %73)
  store i32 %74, i32* %2, align 4
  br label %99

75:                                               ; preds = %60
  %76 = load %struct.device*, %struct.device** %6, align 8
  %77 = call i8* @devm_clk_get(%struct.device* %76, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %78 = load %struct.qcom_pcie_resources_1_0_0*, %struct.qcom_pcie_resources_1_0_0** %4, align 8
  %79 = getelementptr inbounds %struct.qcom_pcie_resources_1_0_0, %struct.qcom_pcie_resources_1_0_0* %78, i32 0, i32 1
  store i8* %77, i8** %79, align 8
  %80 = load %struct.qcom_pcie_resources_1_0_0*, %struct.qcom_pcie_resources_1_0_0** %4, align 8
  %81 = getelementptr inbounds %struct.qcom_pcie_resources_1_0_0, %struct.qcom_pcie_resources_1_0_0* %80, i32 0, i32 1
  %82 = load i8*, i8** %81, align 8
  %83 = call i64 @IS_ERR(i8* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %75
  %86 = load %struct.qcom_pcie_resources_1_0_0*, %struct.qcom_pcie_resources_1_0_0** %4, align 8
  %87 = getelementptr inbounds %struct.qcom_pcie_resources_1_0_0, %struct.qcom_pcie_resources_1_0_0* %86, i32 0, i32 1
  %88 = load i8*, i8** %87, align 8
  %89 = call i32 @PTR_ERR(i8* %88)
  store i32 %89, i32* %2, align 4
  br label %99

90:                                               ; preds = %75
  %91 = load %struct.device*, %struct.device** %6, align 8
  %92 = call i32 @devm_reset_control_get_exclusive(%struct.device* %91, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %93 = load %struct.qcom_pcie_resources_1_0_0*, %struct.qcom_pcie_resources_1_0_0** %4, align 8
  %94 = getelementptr inbounds %struct.qcom_pcie_resources_1_0_0, %struct.qcom_pcie_resources_1_0_0* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 8
  %95 = load %struct.qcom_pcie_resources_1_0_0*, %struct.qcom_pcie_resources_1_0_0** %4, align 8
  %96 = getelementptr inbounds %struct.qcom_pcie_resources_1_0_0, %struct.qcom_pcie_resources_1_0_0* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @PTR_ERR_OR_ZERO(i32 %97)
  store i32 %98, i32* %2, align 4
  br label %99

99:                                               ; preds = %90, %85, %70, %55, %40, %25
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local i8* @devm_regulator_get(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i8* @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i32 @devm_reset_control_get_exclusive(%struct.device*, i8*) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
