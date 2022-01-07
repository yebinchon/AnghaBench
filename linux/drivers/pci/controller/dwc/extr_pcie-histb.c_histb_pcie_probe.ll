; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-histb.c_histb_pcie_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-histb.c_histb_pcie_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.histb_pcie = type { i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32, i32*, i32*, %struct.dw_pcie* }
%struct.dw_pcie = type { i32*, i32*, %struct.device*, %struct.pcie_port }
%struct.pcie_port = type { i64, i32* }
%struct.resource = type { i32 }

@GPIOF_DIR_OUT = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@dw_pcie_ops = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"control\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"cannot get control reg base\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"rc-dbi\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"cannot get rc-dbi base\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"vpcie\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"reset-gpios\00", align 1
@OF_GPIO_ACTIVE_LOW = common dso_local global i32 0, align 4
@GPIOF_ACTIVE_LOW = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [26 x i8] c"PCIe device power control\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"unable to request gpio\0A\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"aux\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"Failed to get PCIe aux clk\0A\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"pipe\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"Failed to get PCIe pipe clk\0A\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"sys\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"Failed to get PCIEe sys clk\0A\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"bus\00", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"Failed to get PCIe bus clk\0A\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"soft\00", align 1
@.str.17 = private unnamed_addr constant [25 x i8] c"couldn't get soft reset\0A\00", align 1
@.str.18 = private unnamed_addr constant [24 x i8] c"couldn't get sys reset\0A\00", align 1
@.str.19 = private unnamed_addr constant [24 x i8] c"couldn't get bus reset\0A\00", align 1
@CONFIG_PCI_MSI = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [4 x i8] c"msi\00", align 1
@.str.21 = private unnamed_addr constant [23 x i8] c"Failed to get MSI IRQ\0A\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"phy\00", align 1
@.str.23 = private unnamed_addr constant [19 x i8] c"no pcie-phy found\0A\00", align 1
@histb_pcie_host_ops = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [23 x i8] c"failed to enable host\0A\00", align 1
@.str.25 = private unnamed_addr constant [27 x i8] c"failed to initialize host\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @histb_pcie_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @histb_pcie_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.histb_pcie*, align 8
  %5 = alloca %struct.dw_pcie*, align 8
  %6 = alloca %struct.pcie_port*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca %struct.device_node*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.device, %struct.device* %14, i32 0, i32 0
  %16 = load %struct.device_node*, %struct.device_node** %15, align 8
  store %struct.device_node* %16, %struct.device_node** %8, align 8
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  store %struct.device* %18, %struct.device** %9, align 8
  %19 = load i64, i64* @GPIOF_DIR_OUT, align 8
  store i64 %19, i64* %11, align 8
  %20 = load %struct.device*, %struct.device** %9, align 8
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call i8* @devm_kzalloc(%struct.device* %20, i32 96, i32 %21)
  %23 = bitcast i8* %22 to %struct.histb_pcie*
  store %struct.histb_pcie* %23, %struct.histb_pcie** %4, align 8
  %24 = load %struct.histb_pcie*, %struct.histb_pcie** %4, align 8
  %25 = icmp ne %struct.histb_pcie* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %1
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %343

29:                                               ; preds = %1
  %30 = load %struct.device*, %struct.device** %9, align 8
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call i8* @devm_kzalloc(%struct.device* %30, i32 40, i32 %31)
  %33 = bitcast i8* %32 to %struct.dw_pcie*
  store %struct.dw_pcie* %33, %struct.dw_pcie** %5, align 8
  %34 = load %struct.dw_pcie*, %struct.dw_pcie** %5, align 8
  %35 = icmp ne %struct.dw_pcie* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %29
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %343

39:                                               ; preds = %29
  %40 = load %struct.dw_pcie*, %struct.dw_pcie** %5, align 8
  %41 = load %struct.histb_pcie*, %struct.histb_pcie** %4, align 8
  %42 = getelementptr inbounds %struct.histb_pcie, %struct.histb_pcie* %41, i32 0, i32 11
  store %struct.dw_pcie* %40, %struct.dw_pcie** %42, align 8
  %43 = load %struct.dw_pcie*, %struct.dw_pcie** %5, align 8
  %44 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %43, i32 0, i32 3
  store %struct.pcie_port* %44, %struct.pcie_port** %6, align 8
  %45 = load %struct.device*, %struct.device** %9, align 8
  %46 = load %struct.dw_pcie*, %struct.dw_pcie** %5, align 8
  %47 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %46, i32 0, i32 2
  store %struct.device* %45, %struct.device** %47, align 8
  %48 = load %struct.dw_pcie*, %struct.dw_pcie** %5, align 8
  %49 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %48, i32 0, i32 1
  store i32* @dw_pcie_ops, i32** %49, align 8
  %50 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %51 = load i32, i32* @IORESOURCE_MEM, align 4
  %52 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %50, i32 %51, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store %struct.resource* %52, %struct.resource** %7, align 8
  %53 = load %struct.device*, %struct.device** %9, align 8
  %54 = load %struct.resource*, %struct.resource** %7, align 8
  %55 = call i8* @devm_ioremap_resource(%struct.device* %53, %struct.resource* %54)
  %56 = bitcast i8* %55 to i32*
  %57 = load %struct.histb_pcie*, %struct.histb_pcie** %4, align 8
  %58 = getelementptr inbounds %struct.histb_pcie, %struct.histb_pcie* %57, i32 0, i32 10
  store i32* %56, i32** %58, align 8
  %59 = load %struct.histb_pcie*, %struct.histb_pcie** %4, align 8
  %60 = getelementptr inbounds %struct.histb_pcie, %struct.histb_pcie* %59, i32 0, i32 10
  %61 = load i32*, i32** %60, align 8
  %62 = call i64 @IS_ERR(i32* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %39
  %65 = load %struct.device*, %struct.device** %9, align 8
  %66 = call i32 @dev_err(%struct.device* %65, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %67 = load %struct.histb_pcie*, %struct.histb_pcie** %4, align 8
  %68 = getelementptr inbounds %struct.histb_pcie, %struct.histb_pcie* %67, i32 0, i32 10
  %69 = load i32*, i32** %68, align 8
  %70 = call i32 @PTR_ERR(i32* %69)
  store i32 %70, i32* %2, align 4
  br label %343

71:                                               ; preds = %39
  %72 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %73 = load i32, i32* @IORESOURCE_MEM, align 4
  %74 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %72, i32 %73, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  store %struct.resource* %74, %struct.resource** %7, align 8
  %75 = load %struct.device*, %struct.device** %9, align 8
  %76 = load %struct.resource*, %struct.resource** %7, align 8
  %77 = call i8* @devm_ioremap_resource(%struct.device* %75, %struct.resource* %76)
  %78 = bitcast i8* %77 to i32*
  %79 = load %struct.dw_pcie*, %struct.dw_pcie** %5, align 8
  %80 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %79, i32 0, i32 0
  store i32* %78, i32** %80, align 8
  %81 = load %struct.dw_pcie*, %struct.dw_pcie** %5, align 8
  %82 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = call i64 @IS_ERR(i32* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %71
  %87 = load %struct.device*, %struct.device** %9, align 8
  %88 = call i32 @dev_err(%struct.device* %87, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %89 = load %struct.dw_pcie*, %struct.dw_pcie** %5, align 8
  %90 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = call i32 @PTR_ERR(i32* %91)
  store i32 %92, i32* %2, align 4
  br label %343

93:                                               ; preds = %71
  %94 = load %struct.device*, %struct.device** %9, align 8
  %95 = call i32* @devm_regulator_get_optional(%struct.device* %94, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %96 = load %struct.histb_pcie*, %struct.histb_pcie** %4, align 8
  %97 = getelementptr inbounds %struct.histb_pcie, %struct.histb_pcie* %96, i32 0, i32 9
  store i32* %95, i32** %97, align 8
  %98 = load %struct.histb_pcie*, %struct.histb_pcie** %4, align 8
  %99 = getelementptr inbounds %struct.histb_pcie, %struct.histb_pcie* %98, i32 0, i32 9
  %100 = load i32*, i32** %99, align 8
  %101 = call i64 @IS_ERR(i32* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %119

103:                                              ; preds = %93
  %104 = load %struct.histb_pcie*, %struct.histb_pcie** %4, align 8
  %105 = getelementptr inbounds %struct.histb_pcie, %struct.histb_pcie* %104, i32 0, i32 9
  %106 = load i32*, i32** %105, align 8
  %107 = call i32 @PTR_ERR(i32* %106)
  %108 = load i32, i32* @ENODEV, align 4
  %109 = sub nsw i32 0, %108
  %110 = icmp ne i32 %107, %109
  br i1 %110, label %111, label %116

111:                                              ; preds = %103
  %112 = load %struct.histb_pcie*, %struct.histb_pcie** %4, align 8
  %113 = getelementptr inbounds %struct.histb_pcie, %struct.histb_pcie* %112, i32 0, i32 9
  %114 = load i32*, i32** %113, align 8
  %115 = call i32 @PTR_ERR(i32* %114)
  store i32 %115, i32* %2, align 4
  br label %343

116:                                              ; preds = %103
  %117 = load %struct.histb_pcie*, %struct.histb_pcie** %4, align 8
  %118 = getelementptr inbounds %struct.histb_pcie, %struct.histb_pcie* %117, i32 0, i32 9
  store i32* null, i32** %118, align 8
  br label %119

119:                                              ; preds = %116, %93
  %120 = load %struct.device_node*, %struct.device_node** %8, align 8
  %121 = call i32 @of_get_named_gpio_flags(%struct.device_node* %120, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 0, i32* %10)
  %122 = load %struct.histb_pcie*, %struct.histb_pcie** %4, align 8
  %123 = getelementptr inbounds %struct.histb_pcie, %struct.histb_pcie* %122, i32 0, i32 8
  store i32 %121, i32* %123, align 8
  %124 = load i32, i32* %10, align 4
  %125 = load i32, i32* @OF_GPIO_ACTIVE_LOW, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %119
  %129 = load i64, i64* @GPIOF_ACTIVE_LOW, align 8
  %130 = load i64, i64* %11, align 8
  %131 = or i64 %130, %129
  store i64 %131, i64* %11, align 8
  br label %132

132:                                              ; preds = %128, %119
  %133 = load %struct.histb_pcie*, %struct.histb_pcie** %4, align 8
  %134 = getelementptr inbounds %struct.histb_pcie, %struct.histb_pcie* %133, i32 0, i32 8
  %135 = load i32, i32* %134, align 8
  %136 = call i64 @gpio_is_valid(i32 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %152

138:                                              ; preds = %132
  %139 = load %struct.device*, %struct.device** %9, align 8
  %140 = load %struct.histb_pcie*, %struct.histb_pcie** %4, align 8
  %141 = getelementptr inbounds %struct.histb_pcie, %struct.histb_pcie* %140, i32 0, i32 8
  %142 = load i32, i32* %141, align 8
  %143 = load i64, i64* %11, align 8
  %144 = call i32 @devm_gpio_request_one(%struct.device* %139, i32 %142, i64 %143, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  store i32 %144, i32* %12, align 4
  %145 = load i32, i32* %12, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %151

147:                                              ; preds = %138
  %148 = load %struct.device*, %struct.device** %9, align 8
  %149 = call i32 @dev_err(%struct.device* %148, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  %150 = load i32, i32* %12, align 4
  store i32 %150, i32* %2, align 4
  br label %343

151:                                              ; preds = %138
  br label %152

152:                                              ; preds = %151, %132
  %153 = load %struct.device*, %struct.device** %9, align 8
  %154 = call i8* @devm_clk_get(%struct.device* %153, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  %155 = bitcast i8* %154 to i32*
  %156 = load %struct.histb_pcie*, %struct.histb_pcie** %4, align 8
  %157 = getelementptr inbounds %struct.histb_pcie, %struct.histb_pcie* %156, i32 0, i32 7
  store i32* %155, i32** %157, align 8
  %158 = load %struct.histb_pcie*, %struct.histb_pcie** %4, align 8
  %159 = getelementptr inbounds %struct.histb_pcie, %struct.histb_pcie* %158, i32 0, i32 7
  %160 = load i32*, i32** %159, align 8
  %161 = call i64 @IS_ERR(i32* %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %170

163:                                              ; preds = %152
  %164 = load %struct.device*, %struct.device** %9, align 8
  %165 = call i32 @dev_err(%struct.device* %164, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0))
  %166 = load %struct.histb_pcie*, %struct.histb_pcie** %4, align 8
  %167 = getelementptr inbounds %struct.histb_pcie, %struct.histb_pcie* %166, i32 0, i32 7
  %168 = load i32*, i32** %167, align 8
  %169 = call i32 @PTR_ERR(i32* %168)
  store i32 %169, i32* %2, align 4
  br label %343

170:                                              ; preds = %152
  %171 = load %struct.device*, %struct.device** %9, align 8
  %172 = call i8* @devm_clk_get(%struct.device* %171, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  %173 = bitcast i8* %172 to i32*
  %174 = load %struct.histb_pcie*, %struct.histb_pcie** %4, align 8
  %175 = getelementptr inbounds %struct.histb_pcie, %struct.histb_pcie* %174, i32 0, i32 6
  store i32* %173, i32** %175, align 8
  %176 = load %struct.histb_pcie*, %struct.histb_pcie** %4, align 8
  %177 = getelementptr inbounds %struct.histb_pcie, %struct.histb_pcie* %176, i32 0, i32 6
  %178 = load i32*, i32** %177, align 8
  %179 = call i64 @IS_ERR(i32* %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %188

181:                                              ; preds = %170
  %182 = load %struct.device*, %struct.device** %9, align 8
  %183 = call i32 @dev_err(%struct.device* %182, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i64 0, i64 0))
  %184 = load %struct.histb_pcie*, %struct.histb_pcie** %4, align 8
  %185 = getelementptr inbounds %struct.histb_pcie, %struct.histb_pcie* %184, i32 0, i32 6
  %186 = load i32*, i32** %185, align 8
  %187 = call i32 @PTR_ERR(i32* %186)
  store i32 %187, i32* %2, align 4
  br label %343

188:                                              ; preds = %170
  %189 = load %struct.device*, %struct.device** %9, align 8
  %190 = call i8* @devm_clk_get(%struct.device* %189, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0))
  %191 = bitcast i8* %190 to i32*
  %192 = load %struct.histb_pcie*, %struct.histb_pcie** %4, align 8
  %193 = getelementptr inbounds %struct.histb_pcie, %struct.histb_pcie* %192, i32 0, i32 5
  store i32* %191, i32** %193, align 8
  %194 = load %struct.histb_pcie*, %struct.histb_pcie** %4, align 8
  %195 = getelementptr inbounds %struct.histb_pcie, %struct.histb_pcie* %194, i32 0, i32 5
  %196 = load i32*, i32** %195, align 8
  %197 = call i64 @IS_ERR(i32* %196)
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %206

199:                                              ; preds = %188
  %200 = load %struct.device*, %struct.device** %9, align 8
  %201 = call i32 @dev_err(%struct.device* %200, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i64 0, i64 0))
  %202 = load %struct.histb_pcie*, %struct.histb_pcie** %4, align 8
  %203 = getelementptr inbounds %struct.histb_pcie, %struct.histb_pcie* %202, i32 0, i32 5
  %204 = load i32*, i32** %203, align 8
  %205 = call i32 @PTR_ERR(i32* %204)
  store i32 %205, i32* %2, align 4
  br label %343

206:                                              ; preds = %188
  %207 = load %struct.device*, %struct.device** %9, align 8
  %208 = call i8* @devm_clk_get(%struct.device* %207, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0))
  %209 = bitcast i8* %208 to i32*
  %210 = load %struct.histb_pcie*, %struct.histb_pcie** %4, align 8
  %211 = getelementptr inbounds %struct.histb_pcie, %struct.histb_pcie* %210, i32 0, i32 4
  store i32* %209, i32** %211, align 8
  %212 = load %struct.histb_pcie*, %struct.histb_pcie** %4, align 8
  %213 = getelementptr inbounds %struct.histb_pcie, %struct.histb_pcie* %212, i32 0, i32 4
  %214 = load i32*, i32** %213, align 8
  %215 = call i64 @IS_ERR(i32* %214)
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %224

217:                                              ; preds = %206
  %218 = load %struct.device*, %struct.device** %9, align 8
  %219 = call i32 @dev_err(%struct.device* %218, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.15, i64 0, i64 0))
  %220 = load %struct.histb_pcie*, %struct.histb_pcie** %4, align 8
  %221 = getelementptr inbounds %struct.histb_pcie, %struct.histb_pcie* %220, i32 0, i32 4
  %222 = load i32*, i32** %221, align 8
  %223 = call i32 @PTR_ERR(i32* %222)
  store i32 %223, i32* %2, align 4
  br label %343

224:                                              ; preds = %206
  %225 = load %struct.device*, %struct.device** %9, align 8
  %226 = call i8* @devm_reset_control_get(%struct.device* %225, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0))
  %227 = bitcast i8* %226 to i32*
  %228 = load %struct.histb_pcie*, %struct.histb_pcie** %4, align 8
  %229 = getelementptr inbounds %struct.histb_pcie, %struct.histb_pcie* %228, i32 0, i32 3
  store i32* %227, i32** %229, align 8
  %230 = load %struct.histb_pcie*, %struct.histb_pcie** %4, align 8
  %231 = getelementptr inbounds %struct.histb_pcie, %struct.histb_pcie* %230, i32 0, i32 3
  %232 = load i32*, i32** %231, align 8
  %233 = call i64 @IS_ERR(i32* %232)
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %242

235:                                              ; preds = %224
  %236 = load %struct.device*, %struct.device** %9, align 8
  %237 = call i32 @dev_err(%struct.device* %236, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.17, i64 0, i64 0))
  %238 = load %struct.histb_pcie*, %struct.histb_pcie** %4, align 8
  %239 = getelementptr inbounds %struct.histb_pcie, %struct.histb_pcie* %238, i32 0, i32 3
  %240 = load i32*, i32** %239, align 8
  %241 = call i32 @PTR_ERR(i32* %240)
  store i32 %241, i32* %2, align 4
  br label %343

242:                                              ; preds = %224
  %243 = load %struct.device*, %struct.device** %9, align 8
  %244 = call i8* @devm_reset_control_get(%struct.device* %243, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0))
  %245 = bitcast i8* %244 to i32*
  %246 = load %struct.histb_pcie*, %struct.histb_pcie** %4, align 8
  %247 = getelementptr inbounds %struct.histb_pcie, %struct.histb_pcie* %246, i32 0, i32 2
  store i32* %245, i32** %247, align 8
  %248 = load %struct.histb_pcie*, %struct.histb_pcie** %4, align 8
  %249 = getelementptr inbounds %struct.histb_pcie, %struct.histb_pcie* %248, i32 0, i32 2
  %250 = load i32*, i32** %249, align 8
  %251 = call i64 @IS_ERR(i32* %250)
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %253, label %260

253:                                              ; preds = %242
  %254 = load %struct.device*, %struct.device** %9, align 8
  %255 = call i32 @dev_err(%struct.device* %254, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.18, i64 0, i64 0))
  %256 = load %struct.histb_pcie*, %struct.histb_pcie** %4, align 8
  %257 = getelementptr inbounds %struct.histb_pcie, %struct.histb_pcie* %256, i32 0, i32 2
  %258 = load i32*, i32** %257, align 8
  %259 = call i32 @PTR_ERR(i32* %258)
  store i32 %259, i32* %2, align 4
  br label %343

260:                                              ; preds = %242
  %261 = load %struct.device*, %struct.device** %9, align 8
  %262 = call i8* @devm_reset_control_get(%struct.device* %261, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0))
  %263 = bitcast i8* %262 to i32*
  %264 = load %struct.histb_pcie*, %struct.histb_pcie** %4, align 8
  %265 = getelementptr inbounds %struct.histb_pcie, %struct.histb_pcie* %264, i32 0, i32 1
  store i32* %263, i32** %265, align 8
  %266 = load %struct.histb_pcie*, %struct.histb_pcie** %4, align 8
  %267 = getelementptr inbounds %struct.histb_pcie, %struct.histb_pcie* %266, i32 0, i32 1
  %268 = load i32*, i32** %267, align 8
  %269 = call i64 @IS_ERR(i32* %268)
  %270 = icmp ne i64 %269, 0
  br i1 %270, label %271, label %278

271:                                              ; preds = %260
  %272 = load %struct.device*, %struct.device** %9, align 8
  %273 = call i32 @dev_err(%struct.device* %272, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.19, i64 0, i64 0))
  %274 = load %struct.histb_pcie*, %struct.histb_pcie** %4, align 8
  %275 = getelementptr inbounds %struct.histb_pcie, %struct.histb_pcie* %274, i32 0, i32 1
  %276 = load i32*, i32** %275, align 8
  %277 = call i32 @PTR_ERR(i32* %276)
  store i32 %277, i32* %2, align 4
  br label %343

278:                                              ; preds = %260
  %279 = load i32, i32* @CONFIG_PCI_MSI, align 4
  %280 = call i64 @IS_ENABLED(i32 %279)
  %281 = icmp ne i64 %280, 0
  br i1 %281, label %282, label %299

282:                                              ; preds = %278
  %283 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %284 = call i64 @platform_get_irq_byname(%struct.platform_device* %283, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0))
  %285 = load %struct.pcie_port*, %struct.pcie_port** %6, align 8
  %286 = getelementptr inbounds %struct.pcie_port, %struct.pcie_port* %285, i32 0, i32 0
  store i64 %284, i64* %286, align 8
  %287 = load %struct.pcie_port*, %struct.pcie_port** %6, align 8
  %288 = getelementptr inbounds %struct.pcie_port, %struct.pcie_port* %287, i32 0, i32 0
  %289 = load i64, i64* %288, align 8
  %290 = icmp slt i64 %289, 0
  br i1 %290, label %291, label %298

291:                                              ; preds = %282
  %292 = load %struct.device*, %struct.device** %9, align 8
  %293 = call i32 @dev_err(%struct.device* %292, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.21, i64 0, i64 0))
  %294 = load %struct.pcie_port*, %struct.pcie_port** %6, align 8
  %295 = getelementptr inbounds %struct.pcie_port, %struct.pcie_port* %294, i32 0, i32 0
  %296 = load i64, i64* %295, align 8
  %297 = trunc i64 %296 to i32
  store i32 %297, i32* %2, align 4
  br label %343

298:                                              ; preds = %282
  br label %299

299:                                              ; preds = %298, %278
  %300 = load %struct.device*, %struct.device** %9, align 8
  %301 = call i32* @devm_phy_get(%struct.device* %300, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0))
  %302 = load %struct.histb_pcie*, %struct.histb_pcie** %4, align 8
  %303 = getelementptr inbounds %struct.histb_pcie, %struct.histb_pcie* %302, i32 0, i32 0
  store i32* %301, i32** %303, align 8
  %304 = load %struct.histb_pcie*, %struct.histb_pcie** %4, align 8
  %305 = getelementptr inbounds %struct.histb_pcie, %struct.histb_pcie* %304, i32 0, i32 0
  %306 = load i32*, i32** %305, align 8
  %307 = call i64 @IS_ERR(i32* %306)
  %308 = icmp ne i64 %307, 0
  br i1 %308, label %309, label %314

309:                                              ; preds = %299
  %310 = load %struct.device*, %struct.device** %9, align 8
  %311 = call i32 @dev_info(%struct.device* %310, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.23, i64 0, i64 0))
  %312 = load %struct.histb_pcie*, %struct.histb_pcie** %4, align 8
  %313 = getelementptr inbounds %struct.histb_pcie, %struct.histb_pcie* %312, i32 0, i32 0
  store i32* null, i32** %313, align 8
  br label %319

314:                                              ; preds = %299
  %315 = load %struct.histb_pcie*, %struct.histb_pcie** %4, align 8
  %316 = getelementptr inbounds %struct.histb_pcie, %struct.histb_pcie* %315, i32 0, i32 0
  %317 = load i32*, i32** %316, align 8
  %318 = call i32 @phy_init(i32* %317)
  br label %319

319:                                              ; preds = %314, %309
  %320 = load %struct.pcie_port*, %struct.pcie_port** %6, align 8
  %321 = getelementptr inbounds %struct.pcie_port, %struct.pcie_port* %320, i32 0, i32 1
  store i32* @histb_pcie_host_ops, i32** %321, align 8
  %322 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %323 = load %struct.histb_pcie*, %struct.histb_pcie** %4, align 8
  %324 = call i32 @platform_set_drvdata(%struct.platform_device* %322, %struct.histb_pcie* %323)
  %325 = load %struct.pcie_port*, %struct.pcie_port** %6, align 8
  %326 = call i32 @histb_pcie_host_enable(%struct.pcie_port* %325)
  store i32 %326, i32* %12, align 4
  %327 = load i32, i32* %12, align 4
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %329, label %333

329:                                              ; preds = %319
  %330 = load %struct.device*, %struct.device** %9, align 8
  %331 = call i32 @dev_err(%struct.device* %330, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.24, i64 0, i64 0))
  %332 = load i32, i32* %12, align 4
  store i32 %332, i32* %2, align 4
  br label %343

333:                                              ; preds = %319
  %334 = load %struct.pcie_port*, %struct.pcie_port** %6, align 8
  %335 = call i32 @dw_pcie_host_init(%struct.pcie_port* %334)
  store i32 %335, i32* %12, align 4
  %336 = load i32, i32* %12, align 4
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %338, label %342

338:                                              ; preds = %333
  %339 = load %struct.device*, %struct.device** %9, align 8
  %340 = call i32 @dev_err(%struct.device* %339, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.25, i64 0, i64 0))
  %341 = load i32, i32* %12, align 4
  store i32 %341, i32* %2, align 4
  br label %343

342:                                              ; preds = %333
  store i32 0, i32* %2, align 4
  br label %343

343:                                              ; preds = %342, %338, %329, %291, %271, %253, %235, %217, %199, %181, %163, %147, %111, %86, %64, %36, %26
  %344 = load i32, i32* %2, align 4
  ret i32 %344
}

declare dso_local i8* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource_byname(%struct.platform_device*, i32, i8*) #1

declare dso_local i8* @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32* @devm_regulator_get_optional(%struct.device*, i8*) #1

declare dso_local i32 @of_get_named_gpio_flags(%struct.device_node*, i8*, i32, i32*) #1

declare dso_local i64 @gpio_is_valid(i32) #1

declare dso_local i32 @devm_gpio_request_one(%struct.device*, i32, i64, i8*) #1

declare dso_local i8* @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i8* @devm_reset_control_get(%struct.device*, i8*) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i64 @platform_get_irq_byname(%struct.platform_device*, i8*) #1

declare dso_local i32* @devm_phy_get(%struct.device*, i8*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

declare dso_local i32 @phy_init(i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.histb_pcie*) #1

declare dso_local i32 @histb_pcie_host_enable(%struct.pcie_port*) #1

declare dso_local i32 @dw_pcie_host_init(%struct.pcie_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
