; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-qcom.c_qcom_pcie_get_resources_2_4_0.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-qcom.c_qcom_pcie_get_resources_2_4_0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcom_pcie = type { %struct.dw_pcie*, %struct.TYPE_3__ }
%struct.dw_pcie = type { %struct.device* }
%struct.device = type { i32 }
%struct.TYPE_3__ = type { %struct.qcom_pcie_resources_2_4_0 }
%struct.qcom_pcie_resources_2_4_0 = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8* }

@.str = private unnamed_addr constant [18 x i8] c"qcom,pcie-ipq4019\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"aux\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"master_bus\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"slave_bus\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"iface\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"axi_m\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"axi_s\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"pipe\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"axi_m_vmid\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"axi_s_xpu\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"parf\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"phy\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"axi_m_sticky\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"pipe_sticky\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"pwr\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"ahb\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"phy_ahb\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qcom_pcie*)* @qcom_pcie_get_resources_2_4_0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcom_pcie_get_resources_2_4_0(%struct.qcom_pcie* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qcom_pcie*, align 8
  %4 = alloca %struct.qcom_pcie_resources_2_4_0*, align 8
  %5 = alloca %struct.dw_pcie*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.qcom_pcie* %0, %struct.qcom_pcie** %3, align 8
  %9 = load %struct.qcom_pcie*, %struct.qcom_pcie** %3, align 8
  %10 = getelementptr inbounds %struct.qcom_pcie, %struct.qcom_pcie* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  store %struct.qcom_pcie_resources_2_4_0* %11, %struct.qcom_pcie_resources_2_4_0** %4, align 8
  %12 = load %struct.qcom_pcie*, %struct.qcom_pcie** %3, align 8
  %13 = getelementptr inbounds %struct.qcom_pcie, %struct.qcom_pcie* %12, i32 0, i32 0
  %14 = load %struct.dw_pcie*, %struct.dw_pcie** %13, align 8
  store %struct.dw_pcie* %14, %struct.dw_pcie** %5, align 8
  %15 = load %struct.dw_pcie*, %struct.dw_pcie** %5, align 8
  %16 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %15, i32 0, i32 0
  %17 = load %struct.device*, %struct.device** %16, align 8
  store %struct.device* %17, %struct.device** %6, align 8
  %18 = load %struct.device*, %struct.device** %6, align 8
  %19 = getelementptr inbounds %struct.device, %struct.device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @of_device_is_compatible(i32 %20, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i32 %21, i32* %7, align 4
  %22 = load %struct.qcom_pcie_resources_2_4_0*, %struct.qcom_pcie_resources_2_4_0** %4, align 8
  %23 = getelementptr inbounds %struct.qcom_pcie_resources_2_4_0, %struct.qcom_pcie_resources_2_4_0* %22, i32 0, i32 13
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i64 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %26, align 8
  %27 = load %struct.qcom_pcie_resources_2_4_0*, %struct.qcom_pcie_resources_2_4_0** %4, align 8
  %28 = getelementptr inbounds %struct.qcom_pcie_resources_2_4_0, %struct.qcom_pcie_resources_2_4_0* %27, i32 0, i32 13
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i64 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8** %31, align 8
  %32 = load %struct.qcom_pcie_resources_2_4_0*, %struct.qcom_pcie_resources_2_4_0** %4, align 8
  %33 = getelementptr inbounds %struct.qcom_pcie_resources_2_4_0, %struct.qcom_pcie_resources_2_4_0* %32, i32 0, i32 13
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i64 2
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8** %36, align 8
  %37 = load %struct.qcom_pcie_resources_2_4_0*, %struct.qcom_pcie_resources_2_4_0** %4, align 8
  %38 = getelementptr inbounds %struct.qcom_pcie_resources_2_4_0, %struct.qcom_pcie_resources_2_4_0* %37, i32 0, i32 13
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i64 3
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8** %41, align 8
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i32 3, i32 4
  %46 = load %struct.qcom_pcie_resources_2_4_0*, %struct.qcom_pcie_resources_2_4_0** %4, align 8
  %47 = getelementptr inbounds %struct.qcom_pcie_resources_2_4_0, %struct.qcom_pcie_resources_2_4_0* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load %struct.device*, %struct.device** %6, align 8
  %49 = load %struct.qcom_pcie_resources_2_4_0*, %struct.qcom_pcie_resources_2_4_0** %4, align 8
  %50 = getelementptr inbounds %struct.qcom_pcie_resources_2_4_0, %struct.qcom_pcie_resources_2_4_0* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.qcom_pcie_resources_2_4_0*, %struct.qcom_pcie_resources_2_4_0** %4, align 8
  %53 = getelementptr inbounds %struct.qcom_pcie_resources_2_4_0, %struct.qcom_pcie_resources_2_4_0* %52, i32 0, i32 13
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = call i32 @devm_clk_bulk_get(%struct.device* %48, i32 %51, %struct.TYPE_4__* %54)
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %1
  %59 = load i32, i32* %8, align 4
  store i32 %59, i32* %2, align 4
  br label %249

60:                                               ; preds = %1
  %61 = load %struct.device*, %struct.device** %6, align 8
  %62 = call i8* @devm_reset_control_get_exclusive(%struct.device* %61, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %63 = load %struct.qcom_pcie_resources_2_4_0*, %struct.qcom_pcie_resources_2_4_0** %4, align 8
  %64 = getelementptr inbounds %struct.qcom_pcie_resources_2_4_0, %struct.qcom_pcie_resources_2_4_0* %63, i32 0, i32 12
  store i8* %62, i8** %64, align 8
  %65 = load %struct.qcom_pcie_resources_2_4_0*, %struct.qcom_pcie_resources_2_4_0** %4, align 8
  %66 = getelementptr inbounds %struct.qcom_pcie_resources_2_4_0, %struct.qcom_pcie_resources_2_4_0* %65, i32 0, i32 12
  %67 = load i8*, i8** %66, align 8
  %68 = call i64 @IS_ERR(i8* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %60
  %71 = load %struct.qcom_pcie_resources_2_4_0*, %struct.qcom_pcie_resources_2_4_0** %4, align 8
  %72 = getelementptr inbounds %struct.qcom_pcie_resources_2_4_0, %struct.qcom_pcie_resources_2_4_0* %71, i32 0, i32 12
  %73 = load i8*, i8** %72, align 8
  %74 = call i32 @PTR_ERR(i8* %73)
  store i32 %74, i32* %2, align 4
  br label %249

75:                                               ; preds = %60
  %76 = load %struct.device*, %struct.device** %6, align 8
  %77 = call i8* @devm_reset_control_get_exclusive(%struct.device* %76, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %78 = load %struct.qcom_pcie_resources_2_4_0*, %struct.qcom_pcie_resources_2_4_0** %4, align 8
  %79 = getelementptr inbounds %struct.qcom_pcie_resources_2_4_0, %struct.qcom_pcie_resources_2_4_0* %78, i32 0, i32 11
  store i8* %77, i8** %79, align 8
  %80 = load %struct.qcom_pcie_resources_2_4_0*, %struct.qcom_pcie_resources_2_4_0** %4, align 8
  %81 = getelementptr inbounds %struct.qcom_pcie_resources_2_4_0, %struct.qcom_pcie_resources_2_4_0* %80, i32 0, i32 11
  %82 = load i8*, i8** %81, align 8
  %83 = call i64 @IS_ERR(i8* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %75
  %86 = load %struct.qcom_pcie_resources_2_4_0*, %struct.qcom_pcie_resources_2_4_0** %4, align 8
  %87 = getelementptr inbounds %struct.qcom_pcie_resources_2_4_0, %struct.qcom_pcie_resources_2_4_0* %86, i32 0, i32 11
  %88 = load i8*, i8** %87, align 8
  %89 = call i32 @PTR_ERR(i8* %88)
  store i32 %89, i32* %2, align 4
  br label %249

90:                                               ; preds = %75
  %91 = load i32, i32* %7, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %169

93:                                               ; preds = %90
  %94 = load %struct.device*, %struct.device** %6, align 8
  %95 = call i8* @devm_reset_control_get_exclusive(%struct.device* %94, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %96 = load %struct.qcom_pcie_resources_2_4_0*, %struct.qcom_pcie_resources_2_4_0** %4, align 8
  %97 = getelementptr inbounds %struct.qcom_pcie_resources_2_4_0, %struct.qcom_pcie_resources_2_4_0* %96, i32 0, i32 10
  store i8* %95, i8** %97, align 8
  %98 = load %struct.qcom_pcie_resources_2_4_0*, %struct.qcom_pcie_resources_2_4_0** %4, align 8
  %99 = getelementptr inbounds %struct.qcom_pcie_resources_2_4_0, %struct.qcom_pcie_resources_2_4_0* %98, i32 0, i32 10
  %100 = load i8*, i8** %99, align 8
  %101 = call i64 @IS_ERR(i8* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %93
  %104 = load %struct.qcom_pcie_resources_2_4_0*, %struct.qcom_pcie_resources_2_4_0** %4, align 8
  %105 = getelementptr inbounds %struct.qcom_pcie_resources_2_4_0, %struct.qcom_pcie_resources_2_4_0* %104, i32 0, i32 10
  %106 = load i8*, i8** %105, align 8
  %107 = call i32 @PTR_ERR(i8* %106)
  store i32 %107, i32* %2, align 4
  br label %249

108:                                              ; preds = %93
  %109 = load %struct.device*, %struct.device** %6, align 8
  %110 = call i8* @devm_reset_control_get_exclusive(%struct.device* %109, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  %111 = load %struct.qcom_pcie_resources_2_4_0*, %struct.qcom_pcie_resources_2_4_0** %4, align 8
  %112 = getelementptr inbounds %struct.qcom_pcie_resources_2_4_0, %struct.qcom_pcie_resources_2_4_0* %111, i32 0, i32 9
  store i8* %110, i8** %112, align 8
  %113 = load %struct.qcom_pcie_resources_2_4_0*, %struct.qcom_pcie_resources_2_4_0** %4, align 8
  %114 = getelementptr inbounds %struct.qcom_pcie_resources_2_4_0, %struct.qcom_pcie_resources_2_4_0* %113, i32 0, i32 9
  %115 = load i8*, i8** %114, align 8
  %116 = call i64 @IS_ERR(i8* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %108
  %119 = load %struct.qcom_pcie_resources_2_4_0*, %struct.qcom_pcie_resources_2_4_0** %4, align 8
  %120 = getelementptr inbounds %struct.qcom_pcie_resources_2_4_0, %struct.qcom_pcie_resources_2_4_0* %119, i32 0, i32 9
  %121 = load i8*, i8** %120, align 8
  %122 = call i32 @PTR_ERR(i8* %121)
  store i32 %122, i32* %2, align 4
  br label %249

123:                                              ; preds = %108
  %124 = load %struct.device*, %struct.device** %6, align 8
  %125 = call i8* @devm_reset_control_get_exclusive(%struct.device* %124, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0))
  %126 = load %struct.qcom_pcie_resources_2_4_0*, %struct.qcom_pcie_resources_2_4_0** %4, align 8
  %127 = getelementptr inbounds %struct.qcom_pcie_resources_2_4_0, %struct.qcom_pcie_resources_2_4_0* %126, i32 0, i32 8
  store i8* %125, i8** %127, align 8
  %128 = load %struct.qcom_pcie_resources_2_4_0*, %struct.qcom_pcie_resources_2_4_0** %4, align 8
  %129 = getelementptr inbounds %struct.qcom_pcie_resources_2_4_0, %struct.qcom_pcie_resources_2_4_0* %128, i32 0, i32 8
  %130 = load i8*, i8** %129, align 8
  %131 = call i64 @IS_ERR(i8* %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %123
  %134 = load %struct.qcom_pcie_resources_2_4_0*, %struct.qcom_pcie_resources_2_4_0** %4, align 8
  %135 = getelementptr inbounds %struct.qcom_pcie_resources_2_4_0, %struct.qcom_pcie_resources_2_4_0* %134, i32 0, i32 8
  %136 = load i8*, i8** %135, align 8
  %137 = call i32 @PTR_ERR(i8* %136)
  store i32 %137, i32* %2, align 4
  br label %249

138:                                              ; preds = %123
  %139 = load %struct.device*, %struct.device** %6, align 8
  %140 = call i8* @devm_reset_control_get_exclusive(%struct.device* %139, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  %141 = load %struct.qcom_pcie_resources_2_4_0*, %struct.qcom_pcie_resources_2_4_0** %4, align 8
  %142 = getelementptr inbounds %struct.qcom_pcie_resources_2_4_0, %struct.qcom_pcie_resources_2_4_0* %141, i32 0, i32 7
  store i8* %140, i8** %142, align 8
  %143 = load %struct.qcom_pcie_resources_2_4_0*, %struct.qcom_pcie_resources_2_4_0** %4, align 8
  %144 = getelementptr inbounds %struct.qcom_pcie_resources_2_4_0, %struct.qcom_pcie_resources_2_4_0* %143, i32 0, i32 7
  %145 = load i8*, i8** %144, align 8
  %146 = call i64 @IS_ERR(i8* %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %153

148:                                              ; preds = %138
  %149 = load %struct.qcom_pcie_resources_2_4_0*, %struct.qcom_pcie_resources_2_4_0** %4, align 8
  %150 = getelementptr inbounds %struct.qcom_pcie_resources_2_4_0, %struct.qcom_pcie_resources_2_4_0* %149, i32 0, i32 7
  %151 = load i8*, i8** %150, align 8
  %152 = call i32 @PTR_ERR(i8* %151)
  store i32 %152, i32* %2, align 4
  br label %249

153:                                              ; preds = %138
  %154 = load %struct.device*, %struct.device** %6, align 8
  %155 = call i8* @devm_reset_control_get_exclusive(%struct.device* %154, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0))
  %156 = load %struct.qcom_pcie_resources_2_4_0*, %struct.qcom_pcie_resources_2_4_0** %4, align 8
  %157 = getelementptr inbounds %struct.qcom_pcie_resources_2_4_0, %struct.qcom_pcie_resources_2_4_0* %156, i32 0, i32 6
  store i8* %155, i8** %157, align 8
  %158 = load %struct.qcom_pcie_resources_2_4_0*, %struct.qcom_pcie_resources_2_4_0** %4, align 8
  %159 = getelementptr inbounds %struct.qcom_pcie_resources_2_4_0, %struct.qcom_pcie_resources_2_4_0* %158, i32 0, i32 6
  %160 = load i8*, i8** %159, align 8
  %161 = call i64 @IS_ERR(i8* %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %168

163:                                              ; preds = %153
  %164 = load %struct.qcom_pcie_resources_2_4_0*, %struct.qcom_pcie_resources_2_4_0** %4, align 8
  %165 = getelementptr inbounds %struct.qcom_pcie_resources_2_4_0, %struct.qcom_pcie_resources_2_4_0* %164, i32 0, i32 6
  %166 = load i8*, i8** %165, align 8
  %167 = call i32 @PTR_ERR(i8* %166)
  store i32 %167, i32* %2, align 4
  br label %249

168:                                              ; preds = %153
  br label %169

169:                                              ; preds = %168, %90
  %170 = load %struct.device*, %struct.device** %6, align 8
  %171 = call i8* @devm_reset_control_get_exclusive(%struct.device* %170, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0))
  %172 = load %struct.qcom_pcie_resources_2_4_0*, %struct.qcom_pcie_resources_2_4_0** %4, align 8
  %173 = getelementptr inbounds %struct.qcom_pcie_resources_2_4_0, %struct.qcom_pcie_resources_2_4_0* %172, i32 0, i32 5
  store i8* %171, i8** %173, align 8
  %174 = load %struct.qcom_pcie_resources_2_4_0*, %struct.qcom_pcie_resources_2_4_0** %4, align 8
  %175 = getelementptr inbounds %struct.qcom_pcie_resources_2_4_0, %struct.qcom_pcie_resources_2_4_0* %174, i32 0, i32 5
  %176 = load i8*, i8** %175, align 8
  %177 = call i64 @IS_ERR(i8* %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %184

179:                                              ; preds = %169
  %180 = load %struct.qcom_pcie_resources_2_4_0*, %struct.qcom_pcie_resources_2_4_0** %4, align 8
  %181 = getelementptr inbounds %struct.qcom_pcie_resources_2_4_0, %struct.qcom_pcie_resources_2_4_0* %180, i32 0, i32 5
  %182 = load i8*, i8** %181, align 8
  %183 = call i32 @PTR_ERR(i8* %182)
  store i32 %183, i32* %2, align 4
  br label %249

184:                                              ; preds = %169
  %185 = load %struct.device*, %struct.device** %6, align 8
  %186 = call i8* @devm_reset_control_get_exclusive(%struct.device* %185, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0))
  %187 = load %struct.qcom_pcie_resources_2_4_0*, %struct.qcom_pcie_resources_2_4_0** %4, align 8
  %188 = getelementptr inbounds %struct.qcom_pcie_resources_2_4_0, %struct.qcom_pcie_resources_2_4_0* %187, i32 0, i32 4
  store i8* %186, i8** %188, align 8
  %189 = load %struct.qcom_pcie_resources_2_4_0*, %struct.qcom_pcie_resources_2_4_0** %4, align 8
  %190 = getelementptr inbounds %struct.qcom_pcie_resources_2_4_0, %struct.qcom_pcie_resources_2_4_0* %189, i32 0, i32 4
  %191 = load i8*, i8** %190, align 8
  %192 = call i64 @IS_ERR(i8* %191)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %199

194:                                              ; preds = %184
  %195 = load %struct.qcom_pcie_resources_2_4_0*, %struct.qcom_pcie_resources_2_4_0** %4, align 8
  %196 = getelementptr inbounds %struct.qcom_pcie_resources_2_4_0, %struct.qcom_pcie_resources_2_4_0* %195, i32 0, i32 4
  %197 = load i8*, i8** %196, align 8
  %198 = call i32 @PTR_ERR(i8* %197)
  store i32 %198, i32* %2, align 4
  br label %249

199:                                              ; preds = %184
  %200 = load %struct.device*, %struct.device** %6, align 8
  %201 = call i8* @devm_reset_control_get_exclusive(%struct.device* %200, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0))
  %202 = load %struct.qcom_pcie_resources_2_4_0*, %struct.qcom_pcie_resources_2_4_0** %4, align 8
  %203 = getelementptr inbounds %struct.qcom_pcie_resources_2_4_0, %struct.qcom_pcie_resources_2_4_0* %202, i32 0, i32 3
  store i8* %201, i8** %203, align 8
  %204 = load %struct.qcom_pcie_resources_2_4_0*, %struct.qcom_pcie_resources_2_4_0** %4, align 8
  %205 = getelementptr inbounds %struct.qcom_pcie_resources_2_4_0, %struct.qcom_pcie_resources_2_4_0* %204, i32 0, i32 3
  %206 = load i8*, i8** %205, align 8
  %207 = call i64 @IS_ERR(i8* %206)
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %214

209:                                              ; preds = %199
  %210 = load %struct.qcom_pcie_resources_2_4_0*, %struct.qcom_pcie_resources_2_4_0** %4, align 8
  %211 = getelementptr inbounds %struct.qcom_pcie_resources_2_4_0, %struct.qcom_pcie_resources_2_4_0* %210, i32 0, i32 3
  %212 = load i8*, i8** %211, align 8
  %213 = call i32 @PTR_ERR(i8* %212)
  store i32 %213, i32* %2, align 4
  br label %249

214:                                              ; preds = %199
  %215 = load %struct.device*, %struct.device** %6, align 8
  %216 = call i8* @devm_reset_control_get_exclusive(%struct.device* %215, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0))
  %217 = load %struct.qcom_pcie_resources_2_4_0*, %struct.qcom_pcie_resources_2_4_0** %4, align 8
  %218 = getelementptr inbounds %struct.qcom_pcie_resources_2_4_0, %struct.qcom_pcie_resources_2_4_0* %217, i32 0, i32 2
  store i8* %216, i8** %218, align 8
  %219 = load %struct.qcom_pcie_resources_2_4_0*, %struct.qcom_pcie_resources_2_4_0** %4, align 8
  %220 = getelementptr inbounds %struct.qcom_pcie_resources_2_4_0, %struct.qcom_pcie_resources_2_4_0* %219, i32 0, i32 2
  %221 = load i8*, i8** %220, align 8
  %222 = call i64 @IS_ERR(i8* %221)
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %229

224:                                              ; preds = %214
  %225 = load %struct.qcom_pcie_resources_2_4_0*, %struct.qcom_pcie_resources_2_4_0** %4, align 8
  %226 = getelementptr inbounds %struct.qcom_pcie_resources_2_4_0, %struct.qcom_pcie_resources_2_4_0* %225, i32 0, i32 2
  %227 = load i8*, i8** %226, align 8
  %228 = call i32 @PTR_ERR(i8* %227)
  store i32 %228, i32* %2, align 4
  br label %249

229:                                              ; preds = %214
  %230 = load i32, i32* %7, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %248

232:                                              ; preds = %229
  %233 = load %struct.device*, %struct.device** %6, align 8
  %234 = call i8* @devm_reset_control_get_exclusive(%struct.device* %233, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0))
  %235 = load %struct.qcom_pcie_resources_2_4_0*, %struct.qcom_pcie_resources_2_4_0** %4, align 8
  %236 = getelementptr inbounds %struct.qcom_pcie_resources_2_4_0, %struct.qcom_pcie_resources_2_4_0* %235, i32 0, i32 1
  store i8* %234, i8** %236, align 8
  %237 = load %struct.qcom_pcie_resources_2_4_0*, %struct.qcom_pcie_resources_2_4_0** %4, align 8
  %238 = getelementptr inbounds %struct.qcom_pcie_resources_2_4_0, %struct.qcom_pcie_resources_2_4_0* %237, i32 0, i32 1
  %239 = load i8*, i8** %238, align 8
  %240 = call i64 @IS_ERR(i8* %239)
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %247

242:                                              ; preds = %232
  %243 = load %struct.qcom_pcie_resources_2_4_0*, %struct.qcom_pcie_resources_2_4_0** %4, align 8
  %244 = getelementptr inbounds %struct.qcom_pcie_resources_2_4_0, %struct.qcom_pcie_resources_2_4_0* %243, i32 0, i32 1
  %245 = load i8*, i8** %244, align 8
  %246 = call i32 @PTR_ERR(i8* %245)
  store i32 %246, i32* %2, align 4
  br label %249

247:                                              ; preds = %232
  br label %248

248:                                              ; preds = %247, %229
  store i32 0, i32* %2, align 4
  br label %249

249:                                              ; preds = %248, %242, %224, %209, %194, %179, %163, %148, %133, %118, %103, %85, %70, %58
  %250 = load i32, i32* %2, align 4
  ret i32 %250
}

declare dso_local i32 @of_device_is_compatible(i32, i8*) #1

declare dso_local i32 @devm_clk_bulk_get(%struct.device*, i32, %struct.TYPE_4__*) #1

declare dso_local i8* @devm_reset_control_get_exclusive(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
