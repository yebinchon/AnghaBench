; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-qcom.c_qcom_pcie_get_resources_2_3_2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-qcom.c_qcom_pcie_get_resources_2_3_2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcom_pcie = type { %struct.dw_pcie*, %struct.TYPE_4__ }
%struct.dw_pcie = type { %struct.device* }
%struct.device = type { i32 }
%struct.TYPE_4__ = type { %struct.qcom_pcie_resources_2_3_2 }
%struct.qcom_pcie_resources_2_3_2 = type { i8*, i8*, i8*, i8*, i8*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i8* }

@.str = private unnamed_addr constant [5 x i8] c"vdda\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"vddpe-3v3\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"aux\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"cfg\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"bus_master\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"bus_slave\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"pipe\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qcom_pcie*)* @qcom_pcie_get_resources_2_3_2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcom_pcie_get_resources_2_3_2(%struct.qcom_pcie* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qcom_pcie*, align 8
  %4 = alloca %struct.qcom_pcie_resources_2_3_2*, align 8
  %5 = alloca %struct.dw_pcie*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  store %struct.qcom_pcie* %0, %struct.qcom_pcie** %3, align 8
  %8 = load %struct.qcom_pcie*, %struct.qcom_pcie** %3, align 8
  %9 = getelementptr inbounds %struct.qcom_pcie, %struct.qcom_pcie* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  store %struct.qcom_pcie_resources_2_3_2* %10, %struct.qcom_pcie_resources_2_3_2** %4, align 8
  %11 = load %struct.qcom_pcie*, %struct.qcom_pcie** %3, align 8
  %12 = getelementptr inbounds %struct.qcom_pcie, %struct.qcom_pcie* %11, i32 0, i32 0
  %13 = load %struct.dw_pcie*, %struct.dw_pcie** %12, align 8
  store %struct.dw_pcie* %13, %struct.dw_pcie** %5, align 8
  %14 = load %struct.dw_pcie*, %struct.dw_pcie** %5, align 8
  %15 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %14, i32 0, i32 0
  %16 = load %struct.device*, %struct.device** %15, align 8
  store %struct.device* %16, %struct.device** %6, align 8
  %17 = load %struct.qcom_pcie_resources_2_3_2*, %struct.qcom_pcie_resources_2_3_2** %4, align 8
  %18 = getelementptr inbounds %struct.qcom_pcie_resources_2_3_2, %struct.qcom_pcie_resources_2_3_2* %17, i32 0, i32 5
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i64 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %21, align 8
  %22 = load %struct.qcom_pcie_resources_2_3_2*, %struct.qcom_pcie_resources_2_3_2** %4, align 8
  %23 = getelementptr inbounds %struct.qcom_pcie_resources_2_3_2, %struct.qcom_pcie_resources_2_3_2* %22, i32 0, i32 5
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i64 1
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8** %26, align 8
  %27 = load %struct.device*, %struct.device** %6, align 8
  %28 = load %struct.qcom_pcie_resources_2_3_2*, %struct.qcom_pcie_resources_2_3_2** %4, align 8
  %29 = getelementptr inbounds %struct.qcom_pcie_resources_2_3_2, %struct.qcom_pcie_resources_2_3_2* %28, i32 0, i32 5
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %30)
  %32 = load %struct.qcom_pcie_resources_2_3_2*, %struct.qcom_pcie_resources_2_3_2** %4, align 8
  %33 = getelementptr inbounds %struct.qcom_pcie_resources_2_3_2, %struct.qcom_pcie_resources_2_3_2* %32, i32 0, i32 5
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = call i32 @devm_regulator_bulk_get(%struct.device* %27, i32 %31, %struct.TYPE_5__* %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %1
  %39 = load i32, i32* %7, align 4
  store i32 %39, i32* %2, align 4
  br label %109

40:                                               ; preds = %1
  %41 = load %struct.device*, %struct.device** %6, align 8
  %42 = call i8* @devm_clk_get(%struct.device* %41, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %43 = load %struct.qcom_pcie_resources_2_3_2*, %struct.qcom_pcie_resources_2_3_2** %4, align 8
  %44 = getelementptr inbounds %struct.qcom_pcie_resources_2_3_2, %struct.qcom_pcie_resources_2_3_2* %43, i32 0, i32 4
  store i8* %42, i8** %44, align 8
  %45 = load %struct.qcom_pcie_resources_2_3_2*, %struct.qcom_pcie_resources_2_3_2** %4, align 8
  %46 = getelementptr inbounds %struct.qcom_pcie_resources_2_3_2, %struct.qcom_pcie_resources_2_3_2* %45, i32 0, i32 4
  %47 = load i8*, i8** %46, align 8
  %48 = call i64 @IS_ERR(i8* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %40
  %51 = load %struct.qcom_pcie_resources_2_3_2*, %struct.qcom_pcie_resources_2_3_2** %4, align 8
  %52 = getelementptr inbounds %struct.qcom_pcie_resources_2_3_2, %struct.qcom_pcie_resources_2_3_2* %51, i32 0, i32 4
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 @PTR_ERR(i8* %53)
  store i32 %54, i32* %2, align 4
  br label %109

55:                                               ; preds = %40
  %56 = load %struct.device*, %struct.device** %6, align 8
  %57 = call i8* @devm_clk_get(%struct.device* %56, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %58 = load %struct.qcom_pcie_resources_2_3_2*, %struct.qcom_pcie_resources_2_3_2** %4, align 8
  %59 = getelementptr inbounds %struct.qcom_pcie_resources_2_3_2, %struct.qcom_pcie_resources_2_3_2* %58, i32 0, i32 3
  store i8* %57, i8** %59, align 8
  %60 = load %struct.qcom_pcie_resources_2_3_2*, %struct.qcom_pcie_resources_2_3_2** %4, align 8
  %61 = getelementptr inbounds %struct.qcom_pcie_resources_2_3_2, %struct.qcom_pcie_resources_2_3_2* %60, i32 0, i32 3
  %62 = load i8*, i8** %61, align 8
  %63 = call i64 @IS_ERR(i8* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %55
  %66 = load %struct.qcom_pcie_resources_2_3_2*, %struct.qcom_pcie_resources_2_3_2** %4, align 8
  %67 = getelementptr inbounds %struct.qcom_pcie_resources_2_3_2, %struct.qcom_pcie_resources_2_3_2* %66, i32 0, i32 3
  %68 = load i8*, i8** %67, align 8
  %69 = call i32 @PTR_ERR(i8* %68)
  store i32 %69, i32* %2, align 4
  br label %109

70:                                               ; preds = %55
  %71 = load %struct.device*, %struct.device** %6, align 8
  %72 = call i8* @devm_clk_get(%struct.device* %71, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %73 = load %struct.qcom_pcie_resources_2_3_2*, %struct.qcom_pcie_resources_2_3_2** %4, align 8
  %74 = getelementptr inbounds %struct.qcom_pcie_resources_2_3_2, %struct.qcom_pcie_resources_2_3_2* %73, i32 0, i32 2
  store i8* %72, i8** %74, align 8
  %75 = load %struct.qcom_pcie_resources_2_3_2*, %struct.qcom_pcie_resources_2_3_2** %4, align 8
  %76 = getelementptr inbounds %struct.qcom_pcie_resources_2_3_2, %struct.qcom_pcie_resources_2_3_2* %75, i32 0, i32 2
  %77 = load i8*, i8** %76, align 8
  %78 = call i64 @IS_ERR(i8* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %70
  %81 = load %struct.qcom_pcie_resources_2_3_2*, %struct.qcom_pcie_resources_2_3_2** %4, align 8
  %82 = getelementptr inbounds %struct.qcom_pcie_resources_2_3_2, %struct.qcom_pcie_resources_2_3_2* %81, i32 0, i32 2
  %83 = load i8*, i8** %82, align 8
  %84 = call i32 @PTR_ERR(i8* %83)
  store i32 %84, i32* %2, align 4
  br label %109

85:                                               ; preds = %70
  %86 = load %struct.device*, %struct.device** %6, align 8
  %87 = call i8* @devm_clk_get(%struct.device* %86, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %88 = load %struct.qcom_pcie_resources_2_3_2*, %struct.qcom_pcie_resources_2_3_2** %4, align 8
  %89 = getelementptr inbounds %struct.qcom_pcie_resources_2_3_2, %struct.qcom_pcie_resources_2_3_2* %88, i32 0, i32 1
  store i8* %87, i8** %89, align 8
  %90 = load %struct.qcom_pcie_resources_2_3_2*, %struct.qcom_pcie_resources_2_3_2** %4, align 8
  %91 = getelementptr inbounds %struct.qcom_pcie_resources_2_3_2, %struct.qcom_pcie_resources_2_3_2* %90, i32 0, i32 1
  %92 = load i8*, i8** %91, align 8
  %93 = call i64 @IS_ERR(i8* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %85
  %96 = load %struct.qcom_pcie_resources_2_3_2*, %struct.qcom_pcie_resources_2_3_2** %4, align 8
  %97 = getelementptr inbounds %struct.qcom_pcie_resources_2_3_2, %struct.qcom_pcie_resources_2_3_2* %96, i32 0, i32 1
  %98 = load i8*, i8** %97, align 8
  %99 = call i32 @PTR_ERR(i8* %98)
  store i32 %99, i32* %2, align 4
  br label %109

100:                                              ; preds = %85
  %101 = load %struct.device*, %struct.device** %6, align 8
  %102 = call i8* @devm_clk_get(%struct.device* %101, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %103 = load %struct.qcom_pcie_resources_2_3_2*, %struct.qcom_pcie_resources_2_3_2** %4, align 8
  %104 = getelementptr inbounds %struct.qcom_pcie_resources_2_3_2, %struct.qcom_pcie_resources_2_3_2* %103, i32 0, i32 0
  store i8* %102, i8** %104, align 8
  %105 = load %struct.qcom_pcie_resources_2_3_2*, %struct.qcom_pcie_resources_2_3_2** %4, align 8
  %106 = getelementptr inbounds %struct.qcom_pcie_resources_2_3_2, %struct.qcom_pcie_resources_2_3_2* %105, i32 0, i32 0
  %107 = load i8*, i8** %106, align 8
  %108 = call i32 @PTR_ERR_OR_ZERO(i8* %107)
  store i32 %108, i32* %2, align 4
  br label %109

109:                                              ; preds = %100, %95, %80, %65, %50, %38
  %110 = load i32, i32* %2, align 4
  ret i32 %110
}

declare dso_local i32 @devm_regulator_bulk_get(%struct.device*, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_5__*) #1

declare dso_local i8* @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
