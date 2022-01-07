; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-rockchip.c_rockchip_pcie_parse_dt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-rockchip.c_rockchip_pcie_parse_dt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rockchip_pcie = type { i32, i32, i8*, i8*, i8*, i8*, i8*, i64, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct.device* }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.platform_device = type { i32 }
%struct.resource = type { i32 }

@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"axi-base\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"mem-base\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"apb-base\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"num-lanes\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"invalid num-lanes, default to use one lane\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"core\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [37 x i8] c"missing core reset property in node\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"mgmt\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"missing mgmt reset property in node\0A\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"mgmt-sticky\00", align 1
@.str.10 = private unnamed_addr constant [44 x i8] c"missing mgmt-sticky reset property in node\0A\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"pipe\00", align 1
@.str.12 = private unnamed_addr constant [37 x i8] c"missing pipe reset property in node\0A\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"pm\00", align 1
@.str.14 = private unnamed_addr constant [35 x i8] c"missing pm reset property in node\0A\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"pclk\00", align 1
@.str.16 = private unnamed_addr constant [37 x i8] c"missing pclk reset property in node\0A\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"aclk\00", align 1
@.str.18 = private unnamed_addr constant [37 x i8] c"missing aclk reset property in node\0A\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"ep\00", align 1
@GPIOD_OUT_HIGH = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [35 x i8] c"missing ep-gpios property in node\0A\00", align 1
@.str.21 = private unnamed_addr constant [22 x i8] c"aclk clock not found\0A\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"aclk-perf\00", align 1
@.str.23 = private unnamed_addr constant [27 x i8] c"aclk_perf clock not found\0A\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"hclk\00", align 1
@.str.25 = private unnamed_addr constant [22 x i8] c"hclk clock not found\0A\00", align 1
@.str.26 = private unnamed_addr constant [20 x i8] c"pm clock not found\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rockchip_pcie_parse_dt(%struct.rockchip_pcie* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rockchip_pcie*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca i32, align 4
  store %struct.rockchip_pcie* %0, %struct.rockchip_pcie** %3, align 8
  %9 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %10 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %9, i32 0, i32 18
  %11 = load %struct.device*, %struct.device** %10, align 8
  store %struct.device* %11, %struct.device** %4, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = call %struct.platform_device* @to_platform_device(%struct.device* %12)
  store %struct.platform_device* %13, %struct.platform_device** %5, align 8
  %14 = load %struct.device*, %struct.device** %4, align 8
  %15 = getelementptr inbounds %struct.device, %struct.device* %14, i32 0, i32 0
  %16 = load %struct.device_node*, %struct.device_node** %15, align 8
  store %struct.device_node* %16, %struct.device_node** %6, align 8
  %17 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %18 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %17, i32 0, i32 7
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %42

21:                                               ; preds = %1
  %22 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %23 = load i32, i32* @IORESOURCE_MEM, align 4
  %24 = call i8* @platform_get_resource_byname(%struct.platform_device* %22, i32 %23, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %25 = bitcast i8* %24 to %struct.resource*
  store %struct.resource* %25, %struct.resource** %7, align 8
  %26 = load %struct.device*, %struct.device** %4, align 8
  %27 = load %struct.resource*, %struct.resource** %7, align 8
  %28 = call i8* @devm_pci_remap_cfg_resource(%struct.device* %26, %struct.resource* %27)
  %29 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %30 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %29, i32 0, i32 17
  store i8* %28, i8** %30, align 8
  %31 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %32 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %31, i32 0, i32 17
  %33 = load i8*, i8** %32, align 8
  %34 = call i64 @IS_ERR(i8* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %21
  %37 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %38 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %37, i32 0, i32 17
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @PTR_ERR(i8* %39)
  store i32 %40, i32* %2, align 4
  br label %404

41:                                               ; preds = %21
  br label %56

42:                                               ; preds = %1
  %43 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %44 = load i32, i32* @IORESOURCE_MEM, align 4
  %45 = call i8* @platform_get_resource_byname(%struct.platform_device* %43, i32 %44, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %46 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %47 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %46, i32 0, i32 16
  store i8* %45, i8** %47, align 8
  %48 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %49 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %48, i32 0, i32 16
  %50 = load i8*, i8** %49, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %42
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %2, align 4
  br label %404

55:                                               ; preds = %42
  br label %56

56:                                               ; preds = %55, %41
  %57 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %58 = load i32, i32* @IORESOURCE_MEM, align 4
  %59 = call i8* @platform_get_resource_byname(%struct.platform_device* %57, i32 %58, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %60 = bitcast i8* %59 to %struct.resource*
  store %struct.resource* %60, %struct.resource** %7, align 8
  %61 = load %struct.device*, %struct.device** %4, align 8
  %62 = load %struct.resource*, %struct.resource** %7, align 8
  %63 = call i8* @devm_ioremap_resource(%struct.device* %61, %struct.resource* %62)
  %64 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %65 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %64, i32 0, i32 15
  store i8* %63, i8** %65, align 8
  %66 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %67 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %66, i32 0, i32 15
  %68 = load i8*, i8** %67, align 8
  %69 = call i64 @IS_ERR(i8* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %56
  %72 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %73 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %72, i32 0, i32 15
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 @PTR_ERR(i8* %74)
  store i32 %75, i32* %2, align 4
  br label %404

76:                                               ; preds = %56
  %77 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %78 = call i32 @rockchip_pcie_get_phys(%struct.rockchip_pcie* %77)
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* %8, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %76
  %82 = load i32, i32* %8, align 4
  store i32 %82, i32* %2, align 4
  br label %404

83:                                               ; preds = %76
  %84 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %85 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %84, i32 0, i32 0
  store i32 1, i32* %85, align 8
  %86 = load %struct.device_node*, %struct.device_node** %6, align 8
  %87 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %88 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %87, i32 0, i32 0
  %89 = call i32 @of_property_read_u32(%struct.device_node* %86, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32* %88)
  store i32 %89, i32* %8, align 4
  %90 = load i32, i32* %8, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %112, label %92

92:                                               ; preds = %83
  %93 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %94 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %107, label %97

97:                                               ; preds = %92
  %98 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %99 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = icmp eq i32 %100, 3
  br i1 %101, label %107, label %102

102:                                              ; preds = %97
  %103 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %104 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = icmp sgt i32 %105, 4
  br i1 %106, label %107, label %112

107:                                              ; preds = %102, %97, %92
  %108 = load %struct.device*, %struct.device** %4, align 8
  %109 = call i32 @dev_warn(%struct.device* %108, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0))
  %110 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %111 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %110, i32 0, i32 0
  store i32 1, i32* %111, align 8
  br label %112

112:                                              ; preds = %107, %102, %83
  %113 = load %struct.device_node*, %struct.device_node** %6, align 8
  %114 = call i32 @of_pci_get_max_link_speed(%struct.device_node* %113)
  %115 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %116 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %115, i32 0, i32 1
  store i32 %114, i32* %116, align 4
  %117 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %118 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %126, label %121

121:                                              ; preds = %112
  %122 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %123 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = icmp sgt i32 %124, 2
  br i1 %125, label %126, label %129

126:                                              ; preds = %121, %112
  %127 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %128 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %127, i32 0, i32 1
  store i32 2, i32* %128, align 4
  br label %129

129:                                              ; preds = %126, %121
  %130 = load %struct.device*, %struct.device** %4, align 8
  %131 = call i8* @devm_reset_control_get_exclusive(%struct.device* %130, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %132 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %133 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %132, i32 0, i32 14
  store i8* %131, i8** %133, align 8
  %134 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %135 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %134, i32 0, i32 14
  %136 = load i8*, i8** %135, align 8
  %137 = call i64 @IS_ERR(i8* %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %155

139:                                              ; preds = %129
  %140 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %141 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %140, i32 0, i32 14
  %142 = load i8*, i8** %141, align 8
  %143 = call i32 @PTR_ERR(i8* %142)
  %144 = load i32, i32* @EPROBE_DEFER, align 4
  %145 = sub nsw i32 0, %144
  %146 = icmp ne i32 %143, %145
  br i1 %146, label %147, label %150

147:                                              ; preds = %139
  %148 = load %struct.device*, %struct.device** %4, align 8
  %149 = call i32 @dev_err(%struct.device* %148, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0))
  br label %150

150:                                              ; preds = %147, %139
  %151 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %152 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %151, i32 0, i32 14
  %153 = load i8*, i8** %152, align 8
  %154 = call i32 @PTR_ERR(i8* %153)
  store i32 %154, i32* %2, align 4
  br label %404

155:                                              ; preds = %129
  %156 = load %struct.device*, %struct.device** %4, align 8
  %157 = call i8* @devm_reset_control_get_exclusive(%struct.device* %156, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %158 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %159 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %158, i32 0, i32 13
  store i8* %157, i8** %159, align 8
  %160 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %161 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %160, i32 0, i32 13
  %162 = load i8*, i8** %161, align 8
  %163 = call i64 @IS_ERR(i8* %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %181

165:                                              ; preds = %155
  %166 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %167 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %166, i32 0, i32 13
  %168 = load i8*, i8** %167, align 8
  %169 = call i32 @PTR_ERR(i8* %168)
  %170 = load i32, i32* @EPROBE_DEFER, align 4
  %171 = sub nsw i32 0, %170
  %172 = icmp ne i32 %169, %171
  br i1 %172, label %173, label %176

173:                                              ; preds = %165
  %174 = load %struct.device*, %struct.device** %4, align 8
  %175 = call i32 @dev_err(%struct.device* %174, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0))
  br label %176

176:                                              ; preds = %173, %165
  %177 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %178 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %177, i32 0, i32 13
  %179 = load i8*, i8** %178, align 8
  %180 = call i32 @PTR_ERR(i8* %179)
  store i32 %180, i32* %2, align 4
  br label %404

181:                                              ; preds = %155
  %182 = load %struct.device*, %struct.device** %4, align 8
  %183 = call i8* @devm_reset_control_get_exclusive(%struct.device* %182, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0))
  %184 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %185 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %184, i32 0, i32 12
  store i8* %183, i8** %185, align 8
  %186 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %187 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %186, i32 0, i32 12
  %188 = load i8*, i8** %187, align 8
  %189 = call i64 @IS_ERR(i8* %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %207

191:                                              ; preds = %181
  %192 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %193 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %192, i32 0, i32 12
  %194 = load i8*, i8** %193, align 8
  %195 = call i32 @PTR_ERR(i8* %194)
  %196 = load i32, i32* @EPROBE_DEFER, align 4
  %197 = sub nsw i32 0, %196
  %198 = icmp ne i32 %195, %197
  br i1 %198, label %199, label %202

199:                                              ; preds = %191
  %200 = load %struct.device*, %struct.device** %4, align 8
  %201 = call i32 @dev_err(%struct.device* %200, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10, i64 0, i64 0))
  br label %202

202:                                              ; preds = %199, %191
  %203 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %204 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %203, i32 0, i32 12
  %205 = load i8*, i8** %204, align 8
  %206 = call i32 @PTR_ERR(i8* %205)
  store i32 %206, i32* %2, align 4
  br label %404

207:                                              ; preds = %181
  %208 = load %struct.device*, %struct.device** %4, align 8
  %209 = call i8* @devm_reset_control_get_exclusive(%struct.device* %208, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  %210 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %211 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %210, i32 0, i32 11
  store i8* %209, i8** %211, align 8
  %212 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %213 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %212, i32 0, i32 11
  %214 = load i8*, i8** %213, align 8
  %215 = call i64 @IS_ERR(i8* %214)
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %233

217:                                              ; preds = %207
  %218 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %219 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %218, i32 0, i32 11
  %220 = load i8*, i8** %219, align 8
  %221 = call i32 @PTR_ERR(i8* %220)
  %222 = load i32, i32* @EPROBE_DEFER, align 4
  %223 = sub nsw i32 0, %222
  %224 = icmp ne i32 %221, %223
  br i1 %224, label %225, label %228

225:                                              ; preds = %217
  %226 = load %struct.device*, %struct.device** %4, align 8
  %227 = call i32 @dev_err(%struct.device* %226, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.12, i64 0, i64 0))
  br label %228

228:                                              ; preds = %225, %217
  %229 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %230 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %229, i32 0, i32 11
  %231 = load i8*, i8** %230, align 8
  %232 = call i32 @PTR_ERR(i8* %231)
  store i32 %232, i32* %2, align 4
  br label %404

233:                                              ; preds = %207
  %234 = load %struct.device*, %struct.device** %4, align 8
  %235 = call i8* @devm_reset_control_get_exclusive(%struct.device* %234, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0))
  %236 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %237 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %236, i32 0, i32 10
  store i8* %235, i8** %237, align 8
  %238 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %239 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %238, i32 0, i32 10
  %240 = load i8*, i8** %239, align 8
  %241 = call i64 @IS_ERR(i8* %240)
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %259

243:                                              ; preds = %233
  %244 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %245 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %244, i32 0, i32 10
  %246 = load i8*, i8** %245, align 8
  %247 = call i32 @PTR_ERR(i8* %246)
  %248 = load i32, i32* @EPROBE_DEFER, align 4
  %249 = sub nsw i32 0, %248
  %250 = icmp ne i32 %247, %249
  br i1 %250, label %251, label %254

251:                                              ; preds = %243
  %252 = load %struct.device*, %struct.device** %4, align 8
  %253 = call i32 @dev_err(%struct.device* %252, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.14, i64 0, i64 0))
  br label %254

254:                                              ; preds = %251, %243
  %255 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %256 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %255, i32 0, i32 10
  %257 = load i8*, i8** %256, align 8
  %258 = call i32 @PTR_ERR(i8* %257)
  store i32 %258, i32* %2, align 4
  br label %404

259:                                              ; preds = %233
  %260 = load %struct.device*, %struct.device** %4, align 8
  %261 = call i8* @devm_reset_control_get_exclusive(%struct.device* %260, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0))
  %262 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %263 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %262, i32 0, i32 9
  store i8* %261, i8** %263, align 8
  %264 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %265 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %264, i32 0, i32 9
  %266 = load i8*, i8** %265, align 8
  %267 = call i64 @IS_ERR(i8* %266)
  %268 = icmp ne i64 %267, 0
  br i1 %268, label %269, label %285

269:                                              ; preds = %259
  %270 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %271 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %270, i32 0, i32 9
  %272 = load i8*, i8** %271, align 8
  %273 = call i32 @PTR_ERR(i8* %272)
  %274 = load i32, i32* @EPROBE_DEFER, align 4
  %275 = sub nsw i32 0, %274
  %276 = icmp ne i32 %273, %275
  br i1 %276, label %277, label %280

277:                                              ; preds = %269
  %278 = load %struct.device*, %struct.device** %4, align 8
  %279 = call i32 @dev_err(%struct.device* %278, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.16, i64 0, i64 0))
  br label %280

280:                                              ; preds = %277, %269
  %281 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %282 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %281, i32 0, i32 9
  %283 = load i8*, i8** %282, align 8
  %284 = call i32 @PTR_ERR(i8* %283)
  store i32 %284, i32* %2, align 4
  br label %404

285:                                              ; preds = %259
  %286 = load %struct.device*, %struct.device** %4, align 8
  %287 = call i8* @devm_reset_control_get_exclusive(%struct.device* %286, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0))
  %288 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %289 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %288, i32 0, i32 8
  store i8* %287, i8** %289, align 8
  %290 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %291 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %290, i32 0, i32 8
  %292 = load i8*, i8** %291, align 8
  %293 = call i64 @IS_ERR(i8* %292)
  %294 = icmp ne i64 %293, 0
  br i1 %294, label %295, label %311

295:                                              ; preds = %285
  %296 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %297 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %296, i32 0, i32 8
  %298 = load i8*, i8** %297, align 8
  %299 = call i32 @PTR_ERR(i8* %298)
  %300 = load i32, i32* @EPROBE_DEFER, align 4
  %301 = sub nsw i32 0, %300
  %302 = icmp ne i32 %299, %301
  br i1 %302, label %303, label %306

303:                                              ; preds = %295
  %304 = load %struct.device*, %struct.device** %4, align 8
  %305 = call i32 @dev_err(%struct.device* %304, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.18, i64 0, i64 0))
  br label %306

306:                                              ; preds = %303, %295
  %307 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %308 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %307, i32 0, i32 8
  %309 = load i8*, i8** %308, align 8
  %310 = call i32 @PTR_ERR(i8* %309)
  store i32 %310, i32* %2, align 4
  br label %404

311:                                              ; preds = %285
  %312 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %313 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %312, i32 0, i32 7
  %314 = load i64, i64* %313, align 8
  %315 = icmp ne i64 %314, 0
  br i1 %315, label %316, label %335

316:                                              ; preds = %311
  %317 = load %struct.device*, %struct.device** %4, align 8
  %318 = load i32, i32* @GPIOD_OUT_HIGH, align 4
  %319 = call i8* @devm_gpiod_get(%struct.device* %317, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0), i32 %318)
  %320 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %321 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %320, i32 0, i32 6
  store i8* %319, i8** %321, align 8
  %322 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %323 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %322, i32 0, i32 6
  %324 = load i8*, i8** %323, align 8
  %325 = call i64 @IS_ERR(i8* %324)
  %326 = icmp ne i64 %325, 0
  br i1 %326, label %327, label %334

327:                                              ; preds = %316
  %328 = load %struct.device*, %struct.device** %4, align 8
  %329 = call i32 @dev_err(%struct.device* %328, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.20, i64 0, i64 0))
  %330 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %331 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %330, i32 0, i32 6
  %332 = load i8*, i8** %331, align 8
  %333 = call i32 @PTR_ERR(i8* %332)
  store i32 %333, i32* %2, align 4
  br label %404

334:                                              ; preds = %316
  br label %335

335:                                              ; preds = %334, %311
  %336 = load %struct.device*, %struct.device** %4, align 8
  %337 = call i8* @devm_clk_get(%struct.device* %336, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0))
  %338 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %339 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %338, i32 0, i32 5
  store i8* %337, i8** %339, align 8
  %340 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %341 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %340, i32 0, i32 5
  %342 = load i8*, i8** %341, align 8
  %343 = call i64 @IS_ERR(i8* %342)
  %344 = icmp ne i64 %343, 0
  br i1 %344, label %345, label %352

345:                                              ; preds = %335
  %346 = load %struct.device*, %struct.device** %4, align 8
  %347 = call i32 @dev_err(%struct.device* %346, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.21, i64 0, i64 0))
  %348 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %349 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %348, i32 0, i32 5
  %350 = load i8*, i8** %349, align 8
  %351 = call i32 @PTR_ERR(i8* %350)
  store i32 %351, i32* %2, align 4
  br label %404

352:                                              ; preds = %335
  %353 = load %struct.device*, %struct.device** %4, align 8
  %354 = call i8* @devm_clk_get(%struct.device* %353, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i64 0, i64 0))
  %355 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %356 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %355, i32 0, i32 4
  store i8* %354, i8** %356, align 8
  %357 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %358 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %357, i32 0, i32 4
  %359 = load i8*, i8** %358, align 8
  %360 = call i64 @IS_ERR(i8* %359)
  %361 = icmp ne i64 %360, 0
  br i1 %361, label %362, label %369

362:                                              ; preds = %352
  %363 = load %struct.device*, %struct.device** %4, align 8
  %364 = call i32 @dev_err(%struct.device* %363, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.23, i64 0, i64 0))
  %365 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %366 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %365, i32 0, i32 4
  %367 = load i8*, i8** %366, align 8
  %368 = call i32 @PTR_ERR(i8* %367)
  store i32 %368, i32* %2, align 4
  br label %404

369:                                              ; preds = %352
  %370 = load %struct.device*, %struct.device** %4, align 8
  %371 = call i8* @devm_clk_get(%struct.device* %370, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0))
  %372 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %373 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %372, i32 0, i32 3
  store i8* %371, i8** %373, align 8
  %374 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %375 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %374, i32 0, i32 3
  %376 = load i8*, i8** %375, align 8
  %377 = call i64 @IS_ERR(i8* %376)
  %378 = icmp ne i64 %377, 0
  br i1 %378, label %379, label %386

379:                                              ; preds = %369
  %380 = load %struct.device*, %struct.device** %4, align 8
  %381 = call i32 @dev_err(%struct.device* %380, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.25, i64 0, i64 0))
  %382 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %383 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %382, i32 0, i32 3
  %384 = load i8*, i8** %383, align 8
  %385 = call i32 @PTR_ERR(i8* %384)
  store i32 %385, i32* %2, align 4
  br label %404

386:                                              ; preds = %369
  %387 = load %struct.device*, %struct.device** %4, align 8
  %388 = call i8* @devm_clk_get(%struct.device* %387, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0))
  %389 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %390 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %389, i32 0, i32 2
  store i8* %388, i8** %390, align 8
  %391 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %392 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %391, i32 0, i32 2
  %393 = load i8*, i8** %392, align 8
  %394 = call i64 @IS_ERR(i8* %393)
  %395 = icmp ne i64 %394, 0
  br i1 %395, label %396, label %403

396:                                              ; preds = %386
  %397 = load %struct.device*, %struct.device** %4, align 8
  %398 = call i32 @dev_err(%struct.device* %397, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.26, i64 0, i64 0))
  %399 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %400 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %399, i32 0, i32 2
  %401 = load i8*, i8** %400, align 8
  %402 = call i32 @PTR_ERR(i8* %401)
  store i32 %402, i32* %2, align 4
  br label %404

403:                                              ; preds = %386
  store i32 0, i32* %2, align 4
  br label %404

404:                                              ; preds = %403, %396, %379, %362, %345, %327, %306, %280, %254, %228, %202, %176, %150, %81, %71, %52, %36
  %405 = load i32, i32* %2, align 4
  ret i32 %405
}

declare dso_local %struct.platform_device* @to_platform_device(%struct.device*) #1

declare dso_local i8* @platform_get_resource_byname(%struct.platform_device*, i32, i8*) #1

declare dso_local i8* @devm_pci_remap_cfg_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i8* @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i32 @rockchip_pcie_get_phys(%struct.rockchip_pcie*) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

declare dso_local i32 @of_pci_get_max_link_speed(%struct.device_node*) #1

declare dso_local i8* @devm_reset_control_get_exclusive(%struct.device*, i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i8* @devm_gpiod_get(%struct.device*, i8*, i32) #1

declare dso_local i8* @devm_clk_get(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
