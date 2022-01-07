; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-qcom.c_qcom_pcie_get_resources_2_3_3.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-qcom.c_qcom_pcie_get_resources_2_3_3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcom_pcie = type { %struct.dw_pcie*, %struct.TYPE_2__ }
%struct.dw_pcie = type { %struct.device* }
%struct.device = type { i32 }
%struct.TYPE_2__ = type { %struct.qcom_pcie_resources_2_3_3 }
%struct.qcom_pcie_resources_2_3_3 = type { i8**, i8*, i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [6 x i8] c"axi_m\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"axi_s\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"pipe\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"axi_m_sticky\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"sticky\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"ahb\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"sleep\00", align 1
@__const.qcom_pcie_get_resources_2_3_3.rst_names = private unnamed_addr constant [7 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0)], align 16
@.str.7 = private unnamed_addr constant [6 x i8] c"iface\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"aux\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qcom_pcie*)* @qcom_pcie_get_resources_2_3_3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcom_pcie_get_resources_2_3_3(%struct.qcom_pcie* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qcom_pcie*, align 8
  %4 = alloca %struct.qcom_pcie_resources_2_3_3*, align 8
  %5 = alloca %struct.dw_pcie*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [7 x i8*], align 16
  store %struct.qcom_pcie* %0, %struct.qcom_pcie** %3, align 8
  %9 = load %struct.qcom_pcie*, %struct.qcom_pcie** %3, align 8
  %10 = getelementptr inbounds %struct.qcom_pcie, %struct.qcom_pcie* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.qcom_pcie_resources_2_3_3* %11, %struct.qcom_pcie_resources_2_3_3** %4, align 8
  %12 = load %struct.qcom_pcie*, %struct.qcom_pcie** %3, align 8
  %13 = getelementptr inbounds %struct.qcom_pcie, %struct.qcom_pcie* %12, i32 0, i32 0
  %14 = load %struct.dw_pcie*, %struct.dw_pcie** %13, align 8
  store %struct.dw_pcie* %14, %struct.dw_pcie** %5, align 8
  %15 = load %struct.dw_pcie*, %struct.dw_pcie** %5, align 8
  %16 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %15, i32 0, i32 0
  %17 = load %struct.device*, %struct.device** %16, align 8
  store %struct.device* %17, %struct.device** %6, align 8
  %18 = bitcast [7 x i8*]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %18, i8* align 16 bitcast ([7 x i8*]* @__const.qcom_pcie_get_resources_2_3_3.rst_names to i8*), i64 56, i1 false)
  %19 = load %struct.device*, %struct.device** %6, align 8
  %20 = call i8* @devm_clk_get(%struct.device* %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %21 = load %struct.qcom_pcie_resources_2_3_3*, %struct.qcom_pcie_resources_2_3_3** %4, align 8
  %22 = getelementptr inbounds %struct.qcom_pcie_resources_2_3_3, %struct.qcom_pcie_resources_2_3_3* %21, i32 0, i32 5
  store i8* %20, i8** %22, align 8
  %23 = load %struct.qcom_pcie_resources_2_3_3*, %struct.qcom_pcie_resources_2_3_3** %4, align 8
  %24 = getelementptr inbounds %struct.qcom_pcie_resources_2_3_3, %struct.qcom_pcie_resources_2_3_3* %23, i32 0, i32 5
  %25 = load i8*, i8** %24, align 8
  %26 = call i64 @IS_ERR(i8* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %1
  %29 = load %struct.qcom_pcie_resources_2_3_3*, %struct.qcom_pcie_resources_2_3_3** %4, align 8
  %30 = getelementptr inbounds %struct.qcom_pcie_resources_2_3_3, %struct.qcom_pcie_resources_2_3_3* %29, i32 0, i32 5
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 @PTR_ERR(i8* %31)
  store i32 %32, i32* %2, align 4
  br label %135

33:                                               ; preds = %1
  %34 = load %struct.device*, %struct.device** %6, align 8
  %35 = call i8* @devm_clk_get(%struct.device* %34, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %36 = load %struct.qcom_pcie_resources_2_3_3*, %struct.qcom_pcie_resources_2_3_3** %4, align 8
  %37 = getelementptr inbounds %struct.qcom_pcie_resources_2_3_3, %struct.qcom_pcie_resources_2_3_3* %36, i32 0, i32 4
  store i8* %35, i8** %37, align 8
  %38 = load %struct.qcom_pcie_resources_2_3_3*, %struct.qcom_pcie_resources_2_3_3** %4, align 8
  %39 = getelementptr inbounds %struct.qcom_pcie_resources_2_3_3, %struct.qcom_pcie_resources_2_3_3* %38, i32 0, i32 4
  %40 = load i8*, i8** %39, align 8
  %41 = call i64 @IS_ERR(i8* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %33
  %44 = load %struct.qcom_pcie_resources_2_3_3*, %struct.qcom_pcie_resources_2_3_3** %4, align 8
  %45 = getelementptr inbounds %struct.qcom_pcie_resources_2_3_3, %struct.qcom_pcie_resources_2_3_3* %44, i32 0, i32 4
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 @PTR_ERR(i8* %46)
  store i32 %47, i32* %2, align 4
  br label %135

48:                                               ; preds = %33
  %49 = load %struct.device*, %struct.device** %6, align 8
  %50 = call i8* @devm_clk_get(%struct.device* %49, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %51 = load %struct.qcom_pcie_resources_2_3_3*, %struct.qcom_pcie_resources_2_3_3** %4, align 8
  %52 = getelementptr inbounds %struct.qcom_pcie_resources_2_3_3, %struct.qcom_pcie_resources_2_3_3* %51, i32 0, i32 3
  store i8* %50, i8** %52, align 8
  %53 = load %struct.qcom_pcie_resources_2_3_3*, %struct.qcom_pcie_resources_2_3_3** %4, align 8
  %54 = getelementptr inbounds %struct.qcom_pcie_resources_2_3_3, %struct.qcom_pcie_resources_2_3_3* %53, i32 0, i32 3
  %55 = load i8*, i8** %54, align 8
  %56 = call i64 @IS_ERR(i8* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %48
  %59 = load %struct.qcom_pcie_resources_2_3_3*, %struct.qcom_pcie_resources_2_3_3** %4, align 8
  %60 = getelementptr inbounds %struct.qcom_pcie_resources_2_3_3, %struct.qcom_pcie_resources_2_3_3* %59, i32 0, i32 3
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 @PTR_ERR(i8* %61)
  store i32 %62, i32* %2, align 4
  br label %135

63:                                               ; preds = %48
  %64 = load %struct.device*, %struct.device** %6, align 8
  %65 = call i8* @devm_clk_get(%struct.device* %64, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %66 = load %struct.qcom_pcie_resources_2_3_3*, %struct.qcom_pcie_resources_2_3_3** %4, align 8
  %67 = getelementptr inbounds %struct.qcom_pcie_resources_2_3_3, %struct.qcom_pcie_resources_2_3_3* %66, i32 0, i32 2
  store i8* %65, i8** %67, align 8
  %68 = load %struct.qcom_pcie_resources_2_3_3*, %struct.qcom_pcie_resources_2_3_3** %4, align 8
  %69 = getelementptr inbounds %struct.qcom_pcie_resources_2_3_3, %struct.qcom_pcie_resources_2_3_3* %68, i32 0, i32 2
  %70 = load i8*, i8** %69, align 8
  %71 = call i64 @IS_ERR(i8* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %63
  %74 = load %struct.qcom_pcie_resources_2_3_3*, %struct.qcom_pcie_resources_2_3_3** %4, align 8
  %75 = getelementptr inbounds %struct.qcom_pcie_resources_2_3_3, %struct.qcom_pcie_resources_2_3_3* %74, i32 0, i32 2
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 @PTR_ERR(i8* %76)
  store i32 %77, i32* %2, align 4
  br label %135

78:                                               ; preds = %63
  %79 = load %struct.device*, %struct.device** %6, align 8
  %80 = call i8* @devm_clk_get(%struct.device* %79, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  %81 = load %struct.qcom_pcie_resources_2_3_3*, %struct.qcom_pcie_resources_2_3_3** %4, align 8
  %82 = getelementptr inbounds %struct.qcom_pcie_resources_2_3_3, %struct.qcom_pcie_resources_2_3_3* %81, i32 0, i32 1
  store i8* %80, i8** %82, align 8
  %83 = load %struct.qcom_pcie_resources_2_3_3*, %struct.qcom_pcie_resources_2_3_3** %4, align 8
  %84 = getelementptr inbounds %struct.qcom_pcie_resources_2_3_3, %struct.qcom_pcie_resources_2_3_3* %83, i32 0, i32 1
  %85 = load i8*, i8** %84, align 8
  %86 = call i64 @IS_ERR(i8* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %78
  %89 = load %struct.qcom_pcie_resources_2_3_3*, %struct.qcom_pcie_resources_2_3_3** %4, align 8
  %90 = getelementptr inbounds %struct.qcom_pcie_resources_2_3_3, %struct.qcom_pcie_resources_2_3_3* %89, i32 0, i32 1
  %91 = load i8*, i8** %90, align 8
  %92 = call i32 @PTR_ERR(i8* %91)
  store i32 %92, i32* %2, align 4
  br label %135

93:                                               ; preds = %78
  store i32 0, i32* %7, align 4
  br label %94

94:                                               ; preds = %131, %93
  %95 = load i32, i32* %7, align 4
  %96 = getelementptr inbounds [7 x i8*], [7 x i8*]* %8, i64 0, i64 0
  %97 = call i32 @ARRAY_SIZE(i8** %96)
  %98 = icmp slt i32 %95, %97
  br i1 %98, label %99, label %134

99:                                               ; preds = %94
  %100 = load %struct.device*, %struct.device** %6, align 8
  %101 = load i32, i32* %7, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [7 x i8*], [7 x i8*]* %8, i64 0, i64 %102
  %104 = load i8*, i8** %103, align 8
  %105 = call i8* @devm_reset_control_get(%struct.device* %100, i8* %104)
  %106 = load %struct.qcom_pcie_resources_2_3_3*, %struct.qcom_pcie_resources_2_3_3** %4, align 8
  %107 = getelementptr inbounds %struct.qcom_pcie_resources_2_3_3, %struct.qcom_pcie_resources_2_3_3* %106, i32 0, i32 0
  %108 = load i8**, i8*** %107, align 8
  %109 = load i32, i32* %7, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8*, i8** %108, i64 %110
  store i8* %105, i8** %111, align 8
  %112 = load %struct.qcom_pcie_resources_2_3_3*, %struct.qcom_pcie_resources_2_3_3** %4, align 8
  %113 = getelementptr inbounds %struct.qcom_pcie_resources_2_3_3, %struct.qcom_pcie_resources_2_3_3* %112, i32 0, i32 0
  %114 = load i8**, i8*** %113, align 8
  %115 = load i32, i32* %7, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i8*, i8** %114, i64 %116
  %118 = load i8*, i8** %117, align 8
  %119 = call i64 @IS_ERR(i8* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %130

121:                                              ; preds = %99
  %122 = load %struct.qcom_pcie_resources_2_3_3*, %struct.qcom_pcie_resources_2_3_3** %4, align 8
  %123 = getelementptr inbounds %struct.qcom_pcie_resources_2_3_3, %struct.qcom_pcie_resources_2_3_3* %122, i32 0, i32 0
  %124 = load i8**, i8*** %123, align 8
  %125 = load i32, i32* %7, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8*, i8** %124, i64 %126
  %128 = load i8*, i8** %127, align 8
  %129 = call i32 @PTR_ERR(i8* %128)
  store i32 %129, i32* %2, align 4
  br label %135

130:                                              ; preds = %99
  br label %131

131:                                              ; preds = %130
  %132 = load i32, i32* %7, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %7, align 4
  br label %94

134:                                              ; preds = %94
  store i32 0, i32* %2, align 4
  br label %135

135:                                              ; preds = %134, %121, %88, %73, %58, %43, %28
  %136 = load i32, i32* %2, align 4
  ret i32 %136
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @devm_clk_get(%struct.device*, i8*) #2

declare dso_local i64 @IS_ERR(i8*) #2

declare dso_local i32 @PTR_ERR(i8*) #2

declare dso_local i32 @ARRAY_SIZE(i8**) #2

declare dso_local i8* @devm_reset_control_get(%struct.device*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
