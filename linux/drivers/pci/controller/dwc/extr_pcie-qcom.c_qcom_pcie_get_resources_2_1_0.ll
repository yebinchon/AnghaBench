; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-qcom.c_qcom_pcie_get_resources_2_1_0.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-qcom.c_qcom_pcie_get_resources_2_1_0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcom_pcie = type { %struct.dw_pcie*, %struct.TYPE_4__ }
%struct.dw_pcie = type { %struct.device* }
%struct.device = type { i32 }
%struct.TYPE_4__ = type { %struct.qcom_pcie_resources_2_1_0 }
%struct.qcom_pcie_resources_2_1_0 = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i8* }

@.str = private unnamed_addr constant [5 x i8] c"vdda\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"vdda_phy\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"vdda_refclk\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"iface\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"core\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"phy\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"pci\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"axi\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"ahb\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"por\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qcom_pcie*)* @qcom_pcie_get_resources_2_1_0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcom_pcie_get_resources_2_1_0(%struct.qcom_pcie* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qcom_pcie*, align 8
  %4 = alloca %struct.qcom_pcie_resources_2_1_0*, align 8
  %5 = alloca %struct.dw_pcie*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  store %struct.qcom_pcie* %0, %struct.qcom_pcie** %3, align 8
  %8 = load %struct.qcom_pcie*, %struct.qcom_pcie** %3, align 8
  %9 = getelementptr inbounds %struct.qcom_pcie, %struct.qcom_pcie* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  store %struct.qcom_pcie_resources_2_1_0* %10, %struct.qcom_pcie_resources_2_1_0** %4, align 8
  %11 = load %struct.qcom_pcie*, %struct.qcom_pcie** %3, align 8
  %12 = getelementptr inbounds %struct.qcom_pcie, %struct.qcom_pcie* %11, i32 0, i32 0
  %13 = load %struct.dw_pcie*, %struct.dw_pcie** %12, align 8
  store %struct.dw_pcie* %13, %struct.dw_pcie** %5, align 8
  %14 = load %struct.dw_pcie*, %struct.dw_pcie** %5, align 8
  %15 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %14, i32 0, i32 0
  %16 = load %struct.device*, %struct.device** %15, align 8
  store %struct.device* %16, %struct.device** %6, align 8
  %17 = load %struct.qcom_pcie_resources_2_1_0*, %struct.qcom_pcie_resources_2_1_0** %4, align 8
  %18 = getelementptr inbounds %struct.qcom_pcie_resources_2_1_0, %struct.qcom_pcie_resources_2_1_0* %17, i32 0, i32 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i64 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %21, align 8
  %22 = load %struct.qcom_pcie_resources_2_1_0*, %struct.qcom_pcie_resources_2_1_0** %4, align 8
  %23 = getelementptr inbounds %struct.qcom_pcie_resources_2_1_0, %struct.qcom_pcie_resources_2_1_0* %22, i32 0, i32 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i64 1
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %26, align 8
  %27 = load %struct.qcom_pcie_resources_2_1_0*, %struct.qcom_pcie_resources_2_1_0** %4, align 8
  %28 = getelementptr inbounds %struct.qcom_pcie_resources_2_1_0, %struct.qcom_pcie_resources_2_1_0* %27, i32 0, i32 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i64 2
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8** %31, align 8
  %32 = load %struct.device*, %struct.device** %6, align 8
  %33 = load %struct.qcom_pcie_resources_2_1_0*, %struct.qcom_pcie_resources_2_1_0** %4, align 8
  %34 = getelementptr inbounds %struct.qcom_pcie_resources_2_1_0, %struct.qcom_pcie_resources_2_1_0* %33, i32 0, i32 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %35)
  %37 = load %struct.qcom_pcie_resources_2_1_0*, %struct.qcom_pcie_resources_2_1_0** %4, align 8
  %38 = getelementptr inbounds %struct.qcom_pcie_resources_2_1_0, %struct.qcom_pcie_resources_2_1_0* %37, i32 0, i32 8
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = call i32 @devm_regulator_bulk_get(%struct.device* %32, i32 %36, %struct.TYPE_5__* %39)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %1
  %44 = load i32, i32* %7, align 4
  store i32 %44, i32* %2, align 4
  br label %159

45:                                               ; preds = %1
  %46 = load %struct.device*, %struct.device** %6, align 8
  %47 = call i8* @devm_clk_get(%struct.device* %46, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %48 = load %struct.qcom_pcie_resources_2_1_0*, %struct.qcom_pcie_resources_2_1_0** %4, align 8
  %49 = getelementptr inbounds %struct.qcom_pcie_resources_2_1_0, %struct.qcom_pcie_resources_2_1_0* %48, i32 0, i32 7
  store i8* %47, i8** %49, align 8
  %50 = load %struct.qcom_pcie_resources_2_1_0*, %struct.qcom_pcie_resources_2_1_0** %4, align 8
  %51 = getelementptr inbounds %struct.qcom_pcie_resources_2_1_0, %struct.qcom_pcie_resources_2_1_0* %50, i32 0, i32 7
  %52 = load i8*, i8** %51, align 8
  %53 = call i64 @IS_ERR(i8* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %45
  %56 = load %struct.qcom_pcie_resources_2_1_0*, %struct.qcom_pcie_resources_2_1_0** %4, align 8
  %57 = getelementptr inbounds %struct.qcom_pcie_resources_2_1_0, %struct.qcom_pcie_resources_2_1_0* %56, i32 0, i32 7
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 @PTR_ERR(i8* %58)
  store i32 %59, i32* %2, align 4
  br label %159

60:                                               ; preds = %45
  %61 = load %struct.device*, %struct.device** %6, align 8
  %62 = call i8* @devm_clk_get(%struct.device* %61, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %63 = load %struct.qcom_pcie_resources_2_1_0*, %struct.qcom_pcie_resources_2_1_0** %4, align 8
  %64 = getelementptr inbounds %struct.qcom_pcie_resources_2_1_0, %struct.qcom_pcie_resources_2_1_0* %63, i32 0, i32 6
  store i8* %62, i8** %64, align 8
  %65 = load %struct.qcom_pcie_resources_2_1_0*, %struct.qcom_pcie_resources_2_1_0** %4, align 8
  %66 = getelementptr inbounds %struct.qcom_pcie_resources_2_1_0, %struct.qcom_pcie_resources_2_1_0* %65, i32 0, i32 6
  %67 = load i8*, i8** %66, align 8
  %68 = call i64 @IS_ERR(i8* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %60
  %71 = load %struct.qcom_pcie_resources_2_1_0*, %struct.qcom_pcie_resources_2_1_0** %4, align 8
  %72 = getelementptr inbounds %struct.qcom_pcie_resources_2_1_0, %struct.qcom_pcie_resources_2_1_0* %71, i32 0, i32 6
  %73 = load i8*, i8** %72, align 8
  %74 = call i32 @PTR_ERR(i8* %73)
  store i32 %74, i32* %2, align 4
  br label %159

75:                                               ; preds = %60
  %76 = load %struct.device*, %struct.device** %6, align 8
  %77 = call i8* @devm_clk_get(%struct.device* %76, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %78 = load %struct.qcom_pcie_resources_2_1_0*, %struct.qcom_pcie_resources_2_1_0** %4, align 8
  %79 = getelementptr inbounds %struct.qcom_pcie_resources_2_1_0, %struct.qcom_pcie_resources_2_1_0* %78, i32 0, i32 5
  store i8* %77, i8** %79, align 8
  %80 = load %struct.qcom_pcie_resources_2_1_0*, %struct.qcom_pcie_resources_2_1_0** %4, align 8
  %81 = getelementptr inbounds %struct.qcom_pcie_resources_2_1_0, %struct.qcom_pcie_resources_2_1_0* %80, i32 0, i32 5
  %82 = load i8*, i8** %81, align 8
  %83 = call i64 @IS_ERR(i8* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %75
  %86 = load %struct.qcom_pcie_resources_2_1_0*, %struct.qcom_pcie_resources_2_1_0** %4, align 8
  %87 = getelementptr inbounds %struct.qcom_pcie_resources_2_1_0, %struct.qcom_pcie_resources_2_1_0* %86, i32 0, i32 5
  %88 = load i8*, i8** %87, align 8
  %89 = call i32 @PTR_ERR(i8* %88)
  store i32 %89, i32* %2, align 4
  br label %159

90:                                               ; preds = %75
  %91 = load %struct.device*, %struct.device** %6, align 8
  %92 = call i8* @devm_reset_control_get_exclusive(%struct.device* %91, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %93 = load %struct.qcom_pcie_resources_2_1_0*, %struct.qcom_pcie_resources_2_1_0** %4, align 8
  %94 = getelementptr inbounds %struct.qcom_pcie_resources_2_1_0, %struct.qcom_pcie_resources_2_1_0* %93, i32 0, i32 4
  store i8* %92, i8** %94, align 8
  %95 = load %struct.qcom_pcie_resources_2_1_0*, %struct.qcom_pcie_resources_2_1_0** %4, align 8
  %96 = getelementptr inbounds %struct.qcom_pcie_resources_2_1_0, %struct.qcom_pcie_resources_2_1_0* %95, i32 0, i32 4
  %97 = load i8*, i8** %96, align 8
  %98 = call i64 @IS_ERR(i8* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %90
  %101 = load %struct.qcom_pcie_resources_2_1_0*, %struct.qcom_pcie_resources_2_1_0** %4, align 8
  %102 = getelementptr inbounds %struct.qcom_pcie_resources_2_1_0, %struct.qcom_pcie_resources_2_1_0* %101, i32 0, i32 4
  %103 = load i8*, i8** %102, align 8
  %104 = call i32 @PTR_ERR(i8* %103)
  store i32 %104, i32* %2, align 4
  br label %159

105:                                              ; preds = %90
  %106 = load %struct.device*, %struct.device** %6, align 8
  %107 = call i8* @devm_reset_control_get_exclusive(%struct.device* %106, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %108 = load %struct.qcom_pcie_resources_2_1_0*, %struct.qcom_pcie_resources_2_1_0** %4, align 8
  %109 = getelementptr inbounds %struct.qcom_pcie_resources_2_1_0, %struct.qcom_pcie_resources_2_1_0* %108, i32 0, i32 3
  store i8* %107, i8** %109, align 8
  %110 = load %struct.qcom_pcie_resources_2_1_0*, %struct.qcom_pcie_resources_2_1_0** %4, align 8
  %111 = getelementptr inbounds %struct.qcom_pcie_resources_2_1_0, %struct.qcom_pcie_resources_2_1_0* %110, i32 0, i32 3
  %112 = load i8*, i8** %111, align 8
  %113 = call i64 @IS_ERR(i8* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %105
  %116 = load %struct.qcom_pcie_resources_2_1_0*, %struct.qcom_pcie_resources_2_1_0** %4, align 8
  %117 = getelementptr inbounds %struct.qcom_pcie_resources_2_1_0, %struct.qcom_pcie_resources_2_1_0* %116, i32 0, i32 3
  %118 = load i8*, i8** %117, align 8
  %119 = call i32 @PTR_ERR(i8* %118)
  store i32 %119, i32* %2, align 4
  br label %159

120:                                              ; preds = %105
  %121 = load %struct.device*, %struct.device** %6, align 8
  %122 = call i8* @devm_reset_control_get_exclusive(%struct.device* %121, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  %123 = load %struct.qcom_pcie_resources_2_1_0*, %struct.qcom_pcie_resources_2_1_0** %4, align 8
  %124 = getelementptr inbounds %struct.qcom_pcie_resources_2_1_0, %struct.qcom_pcie_resources_2_1_0* %123, i32 0, i32 2
  store i8* %122, i8** %124, align 8
  %125 = load %struct.qcom_pcie_resources_2_1_0*, %struct.qcom_pcie_resources_2_1_0** %4, align 8
  %126 = getelementptr inbounds %struct.qcom_pcie_resources_2_1_0, %struct.qcom_pcie_resources_2_1_0* %125, i32 0, i32 2
  %127 = load i8*, i8** %126, align 8
  %128 = call i64 @IS_ERR(i8* %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %135

130:                                              ; preds = %120
  %131 = load %struct.qcom_pcie_resources_2_1_0*, %struct.qcom_pcie_resources_2_1_0** %4, align 8
  %132 = getelementptr inbounds %struct.qcom_pcie_resources_2_1_0, %struct.qcom_pcie_resources_2_1_0* %131, i32 0, i32 2
  %133 = load i8*, i8** %132, align 8
  %134 = call i32 @PTR_ERR(i8* %133)
  store i32 %134, i32* %2, align 4
  br label %159

135:                                              ; preds = %120
  %136 = load %struct.device*, %struct.device** %6, align 8
  %137 = call i8* @devm_reset_control_get_exclusive(%struct.device* %136, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  %138 = load %struct.qcom_pcie_resources_2_1_0*, %struct.qcom_pcie_resources_2_1_0** %4, align 8
  %139 = getelementptr inbounds %struct.qcom_pcie_resources_2_1_0, %struct.qcom_pcie_resources_2_1_0* %138, i32 0, i32 1
  store i8* %137, i8** %139, align 8
  %140 = load %struct.qcom_pcie_resources_2_1_0*, %struct.qcom_pcie_resources_2_1_0** %4, align 8
  %141 = getelementptr inbounds %struct.qcom_pcie_resources_2_1_0, %struct.qcom_pcie_resources_2_1_0* %140, i32 0, i32 1
  %142 = load i8*, i8** %141, align 8
  %143 = call i64 @IS_ERR(i8* %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %150

145:                                              ; preds = %135
  %146 = load %struct.qcom_pcie_resources_2_1_0*, %struct.qcom_pcie_resources_2_1_0** %4, align 8
  %147 = getelementptr inbounds %struct.qcom_pcie_resources_2_1_0, %struct.qcom_pcie_resources_2_1_0* %146, i32 0, i32 1
  %148 = load i8*, i8** %147, align 8
  %149 = call i32 @PTR_ERR(i8* %148)
  store i32 %149, i32* %2, align 4
  br label %159

150:                                              ; preds = %135
  %151 = load %struct.device*, %struct.device** %6, align 8
  %152 = call i8* @devm_reset_control_get_exclusive(%struct.device* %151, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %153 = load %struct.qcom_pcie_resources_2_1_0*, %struct.qcom_pcie_resources_2_1_0** %4, align 8
  %154 = getelementptr inbounds %struct.qcom_pcie_resources_2_1_0, %struct.qcom_pcie_resources_2_1_0* %153, i32 0, i32 0
  store i8* %152, i8** %154, align 8
  %155 = load %struct.qcom_pcie_resources_2_1_0*, %struct.qcom_pcie_resources_2_1_0** %4, align 8
  %156 = getelementptr inbounds %struct.qcom_pcie_resources_2_1_0, %struct.qcom_pcie_resources_2_1_0* %155, i32 0, i32 0
  %157 = load i8*, i8** %156, align 8
  %158 = call i32 @PTR_ERR_OR_ZERO(i8* %157)
  store i32 %158, i32* %2, align 4
  br label %159

159:                                              ; preds = %150, %145, %130, %115, %100, %85, %70, %55, %43
  %160 = load i32, i32* %2, align 4
  ret i32 %160
}

declare dso_local i32 @devm_regulator_bulk_get(%struct.device*, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_5__*) #1

declare dso_local i8* @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i8* @devm_reset_control_get_exclusive(%struct.device*, i8*) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
