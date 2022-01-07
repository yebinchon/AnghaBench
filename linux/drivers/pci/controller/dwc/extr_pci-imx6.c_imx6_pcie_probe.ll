; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pci-imx6.c_imx6_pcie_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pci-imx6.c_imx6_pcie_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.dw_pcie = type { i32*, i32*, %struct.device* }
%struct.imx6_pcie = type { i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, %struct.TYPE_2__*, i32*, i32*, i32*, i64, i32*, %struct.dw_pcie* }
%struct.TYPE_2__ = type { i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@dw_pcie_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"fsl,imx7d-pcie-phy\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Unable to map PCIe PHY\0A\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"reset-gpio\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"reset-gpio-active-high\00", align 1
@GPIOF_OUT_INIT_HIGH = common dso_local global i32 0, align 4
@GPIOF_OUT_INIT_LOW = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"PCIe reset\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"unable to get reset gpio\0A\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [9 x i8] c"pcie_phy\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"pcie_phy clock source missing or invalid\0A\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"pcie_bus\00", align 1
@.str.9 = private unnamed_addr constant [42 x i8] c"pcie_bus clock source missing or invalid\0A\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"pcie\00", align 1
@.str.11 = private unnamed_addr constant [38 x i8] c"pcie clock source missing or invalid\0A\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"pcie_inbound_axi\00", align 1
@.str.13 = private unnamed_addr constant [43 x i8] c"pcie_inbound_axi clock missing or invalid\0A\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"pcie_aux\00", align 1
@.str.15 = private unnamed_addr constant [42 x i8] c"pcie_aux clock source missing or invalid\0A\00", align 1
@IMX8MQ_PCIE2_BASE_ADDR = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [8 x i8] c"pciephy\00", align 1
@.str.17 = private unnamed_addr constant [37 x i8] c"Failed to get PCIEPHY reset control\0A\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"apps\00", align 1
@.str.19 = private unnamed_addr constant [39 x i8] c"Failed to get PCIE APPS reset control\0A\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"turnoff\00", align 1
@.str.21 = private unnamed_addr constant [37 x i8] c"Failed to get TURNOFF reset control\0A\00", align 1
@.str.22 = private unnamed_addr constant [21 x i8] c"fsl,imx6q-iomuxc-gpr\00", align 1
@.str.23 = private unnamed_addr constant [33 x i8] c"unable to find iomuxc registers\0A\00", align 1
@.str.24 = private unnamed_addr constant [19 x i8] c"fsl,tx-deemph-gen1\00", align 1
@.str.25 = private unnamed_addr constant [25 x i8] c"fsl,tx-deemph-gen2-3p5db\00", align 1
@.str.26 = private unnamed_addr constant [23 x i8] c"fsl,tx-deemph-gen2-6db\00", align 1
@.str.27 = private unnamed_addr constant [18 x i8] c"fsl,tx-swing-full\00", align 1
@.str.28 = private unnamed_addr constant [17 x i8] c"fsl,tx-swing-low\00", align 1
@.str.29 = private unnamed_addr constant [19 x i8] c"fsl,max-link-speed\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"vpcie\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@PCIE_RC_IMX6_MSI_CAP = common dso_local global i64 0, align 8
@PCI_MSI_FLAGS = common dso_local global i64 0, align 8
@PCI_MSI_FLAGS_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @imx6_pcie_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx6_pcie_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.dw_pcie*, align 8
  %6 = alloca %struct.imx6_pcie*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca %struct.resource*, align 8
  %9 = alloca %struct.device_node*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.resource, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  store %struct.device* %14, %struct.device** %4, align 8
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = getelementptr inbounds %struct.device, %struct.device* %15, i32 0, i32 0
  %17 = load %struct.device_node*, %struct.device_node** %16, align 8
  store %struct.device_node* %17, %struct.device_node** %9, align 8
  %18 = load %struct.device*, %struct.device** %4, align 8
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call i8* @devm_kzalloc(%struct.device* %18, i32 144, i32 %19)
  %21 = bitcast i8* %20 to %struct.imx6_pcie*
  store %struct.imx6_pcie* %21, %struct.imx6_pcie** %6, align 8
  %22 = load %struct.imx6_pcie*, %struct.imx6_pcie** %6, align 8
  %23 = icmp ne %struct.imx6_pcie* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %1
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %448

27:                                               ; preds = %1
  %28 = load %struct.device*, %struct.device** %4, align 8
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call i8* @devm_kzalloc(%struct.device* %28, i32 24, i32 %29)
  %31 = bitcast i8* %30 to %struct.dw_pcie*
  store %struct.dw_pcie* %31, %struct.dw_pcie** %5, align 8
  %32 = load %struct.dw_pcie*, %struct.dw_pcie** %5, align 8
  %33 = icmp ne %struct.dw_pcie* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %27
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %448

37:                                               ; preds = %27
  %38 = load %struct.device*, %struct.device** %4, align 8
  %39 = load %struct.dw_pcie*, %struct.dw_pcie** %5, align 8
  %40 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %39, i32 0, i32 2
  store %struct.device* %38, %struct.device** %40, align 8
  %41 = load %struct.dw_pcie*, %struct.dw_pcie** %5, align 8
  %42 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %41, i32 0, i32 1
  store i32* @dw_pcie_ops, i32** %42, align 8
  %43 = load %struct.dw_pcie*, %struct.dw_pcie** %5, align 8
  %44 = load %struct.imx6_pcie*, %struct.imx6_pcie** %6, align 8
  %45 = getelementptr inbounds %struct.imx6_pcie, %struct.imx6_pcie* %44, i32 0, i32 21
  store %struct.dw_pcie* %43, %struct.dw_pcie** %45, align 8
  %46 = load %struct.device*, %struct.device** %4, align 8
  %47 = call %struct.TYPE_2__* @of_device_get_match_data(%struct.device* %46)
  %48 = load %struct.imx6_pcie*, %struct.imx6_pcie** %6, align 8
  %49 = getelementptr inbounds %struct.imx6_pcie, %struct.imx6_pcie* %48, i32 0, i32 15
  store %struct.TYPE_2__* %47, %struct.TYPE_2__** %49, align 8
  %50 = load %struct.device_node*, %struct.device_node** %9, align 8
  %51 = call %struct.device_node* @of_parse_phandle(%struct.device_node* %50, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 0)
  store %struct.device_node* %51, %struct.device_node** %7, align 8
  %52 = load %struct.device_node*, %struct.device_node** %7, align 8
  %53 = icmp ne %struct.device_node* %52, null
  br i1 %53, label %54, label %82

54:                                               ; preds = %37
  %55 = load %struct.device_node*, %struct.device_node** %7, align 8
  %56 = call i32 @of_address_to_resource(%struct.device_node* %55, i32 0, %struct.resource* %12)
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %10, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %54
  %60 = load %struct.device*, %struct.device** %4, align 8
  %61 = call i32 @dev_err(%struct.device* %60, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %62 = load i32, i32* %10, align 4
  store i32 %62, i32* %2, align 4
  br label %448

63:                                               ; preds = %54
  %64 = load %struct.device*, %struct.device** %4, align 8
  %65 = call i8* @devm_ioremap_resource(%struct.device* %64, %struct.resource* %12)
  %66 = bitcast i8* %65 to i32*
  %67 = load %struct.imx6_pcie*, %struct.imx6_pcie** %6, align 8
  %68 = getelementptr inbounds %struct.imx6_pcie, %struct.imx6_pcie* %67, i32 0, i32 20
  store i32* %66, i32** %68, align 8
  %69 = load %struct.imx6_pcie*, %struct.imx6_pcie** %6, align 8
  %70 = getelementptr inbounds %struct.imx6_pcie, %struct.imx6_pcie* %69, i32 0, i32 20
  %71 = load i32*, i32** %70, align 8
  %72 = call i64 @IS_ERR(i32* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %63
  %75 = load %struct.device*, %struct.device** %4, align 8
  %76 = call i32 @dev_err(%struct.device* %75, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %77 = load %struct.imx6_pcie*, %struct.imx6_pcie** %6, align 8
  %78 = getelementptr inbounds %struct.imx6_pcie, %struct.imx6_pcie* %77, i32 0, i32 20
  %79 = load i32*, i32** %78, align 8
  %80 = call i32 @PTR_ERR(i32* %79)
  store i32 %80, i32* %2, align 4
  br label %448

81:                                               ; preds = %63
  br label %82

82:                                               ; preds = %81, %37
  %83 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %84 = load i32, i32* @IORESOURCE_MEM, align 4
  %85 = call %struct.resource* @platform_get_resource(%struct.platform_device* %83, i32 %84, i32 0)
  store %struct.resource* %85, %struct.resource** %8, align 8
  %86 = load %struct.device*, %struct.device** %4, align 8
  %87 = load %struct.resource*, %struct.resource** %8, align 8
  %88 = call i8* @devm_ioremap_resource(%struct.device* %86, %struct.resource* %87)
  %89 = bitcast i8* %88 to i32*
  %90 = load %struct.dw_pcie*, %struct.dw_pcie** %5, align 8
  %91 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %90, i32 0, i32 0
  store i32* %89, i32** %91, align 8
  %92 = load %struct.dw_pcie*, %struct.dw_pcie** %5, align 8
  %93 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = call i64 @IS_ERR(i32* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %82
  %98 = load %struct.dw_pcie*, %struct.dw_pcie** %5, align 8
  %99 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = call i32 @PTR_ERR(i32* %100)
  store i32 %101, i32* %2, align 4
  br label %448

102:                                              ; preds = %82
  %103 = load %struct.device_node*, %struct.device_node** %9, align 8
  %104 = call i32 @of_get_named_gpio(%struct.device_node* %103, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 0)
  %105 = load %struct.imx6_pcie*, %struct.imx6_pcie** %6, align 8
  %106 = getelementptr inbounds %struct.imx6_pcie, %struct.imx6_pcie* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 8
  %107 = load %struct.device_node*, %struct.device_node** %9, align 8
  %108 = call i64 @of_property_read_bool(%struct.device_node* %107, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %109 = load %struct.imx6_pcie*, %struct.imx6_pcie** %6, align 8
  %110 = getelementptr inbounds %struct.imx6_pcie, %struct.imx6_pcie* %109, i32 0, i32 19
  store i64 %108, i64* %110, align 8
  %111 = load %struct.imx6_pcie*, %struct.imx6_pcie** %6, align 8
  %112 = getelementptr inbounds %struct.imx6_pcie, %struct.imx6_pcie* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = call i64 @gpio_is_valid(i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %139

116:                                              ; preds = %102
  %117 = load %struct.device*, %struct.device** %4, align 8
  %118 = load %struct.imx6_pcie*, %struct.imx6_pcie** %6, align 8
  %119 = getelementptr inbounds %struct.imx6_pcie, %struct.imx6_pcie* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.imx6_pcie*, %struct.imx6_pcie** %6, align 8
  %122 = getelementptr inbounds %struct.imx6_pcie, %struct.imx6_pcie* %121, i32 0, i32 19
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %116
  %126 = load i32, i32* @GPIOF_OUT_INIT_HIGH, align 4
  br label %129

127:                                              ; preds = %116
  %128 = load i32, i32* @GPIOF_OUT_INIT_LOW, align 4
  br label %129

129:                                              ; preds = %127, %125
  %130 = phi i32 [ %126, %125 ], [ %128, %127 ]
  %131 = call i32 @devm_gpio_request_one(%struct.device* %117, i32 %120, i32 %130, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  store i32 %131, i32* %10, align 4
  %132 = load i32, i32* %10, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %129
  %135 = load %struct.device*, %struct.device** %4, align 8
  %136 = call i32 @dev_err(%struct.device* %135, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  %137 = load i32, i32* %10, align 4
  store i32 %137, i32* %2, align 4
  br label %448

138:                                              ; preds = %129
  br label %151

139:                                              ; preds = %102
  %140 = load %struct.imx6_pcie*, %struct.imx6_pcie** %6, align 8
  %141 = getelementptr inbounds %struct.imx6_pcie, %struct.imx6_pcie* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @EPROBE_DEFER, align 4
  %144 = sub nsw i32 0, %143
  %145 = icmp eq i32 %142, %144
  br i1 %145, label %146, label %150

146:                                              ; preds = %139
  %147 = load %struct.imx6_pcie*, %struct.imx6_pcie** %6, align 8
  %148 = getelementptr inbounds %struct.imx6_pcie, %struct.imx6_pcie* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  store i32 %149, i32* %2, align 4
  br label %448

150:                                              ; preds = %139
  br label %151

151:                                              ; preds = %150, %138
  %152 = load %struct.device*, %struct.device** %4, align 8
  %153 = call i8* @devm_clk_get(%struct.device* %152, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %154 = bitcast i8* %153 to i32*
  %155 = load %struct.imx6_pcie*, %struct.imx6_pcie** %6, align 8
  %156 = getelementptr inbounds %struct.imx6_pcie, %struct.imx6_pcie* %155, i32 0, i32 18
  store i32* %154, i32** %156, align 8
  %157 = load %struct.imx6_pcie*, %struct.imx6_pcie** %6, align 8
  %158 = getelementptr inbounds %struct.imx6_pcie, %struct.imx6_pcie* %157, i32 0, i32 18
  %159 = load i32*, i32** %158, align 8
  %160 = call i64 @IS_ERR(i32* %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %169

162:                                              ; preds = %151
  %163 = load %struct.device*, %struct.device** %4, align 8
  %164 = call i32 @dev_err(%struct.device* %163, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0))
  %165 = load %struct.imx6_pcie*, %struct.imx6_pcie** %6, align 8
  %166 = getelementptr inbounds %struct.imx6_pcie, %struct.imx6_pcie* %165, i32 0, i32 18
  %167 = load i32*, i32** %166, align 8
  %168 = call i32 @PTR_ERR(i32* %167)
  store i32 %168, i32* %2, align 4
  br label %448

169:                                              ; preds = %151
  %170 = load %struct.device*, %struct.device** %4, align 8
  %171 = call i8* @devm_clk_get(%struct.device* %170, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  %172 = bitcast i8* %171 to i32*
  %173 = load %struct.imx6_pcie*, %struct.imx6_pcie** %6, align 8
  %174 = getelementptr inbounds %struct.imx6_pcie, %struct.imx6_pcie* %173, i32 0, i32 17
  store i32* %172, i32** %174, align 8
  %175 = load %struct.imx6_pcie*, %struct.imx6_pcie** %6, align 8
  %176 = getelementptr inbounds %struct.imx6_pcie, %struct.imx6_pcie* %175, i32 0, i32 17
  %177 = load i32*, i32** %176, align 8
  %178 = call i64 @IS_ERR(i32* %177)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %187

180:                                              ; preds = %169
  %181 = load %struct.device*, %struct.device** %4, align 8
  %182 = call i32 @dev_err(%struct.device* %181, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9, i64 0, i64 0))
  %183 = load %struct.imx6_pcie*, %struct.imx6_pcie** %6, align 8
  %184 = getelementptr inbounds %struct.imx6_pcie, %struct.imx6_pcie* %183, i32 0, i32 17
  %185 = load i32*, i32** %184, align 8
  %186 = call i32 @PTR_ERR(i32* %185)
  store i32 %186, i32* %2, align 4
  br label %448

187:                                              ; preds = %169
  %188 = load %struct.device*, %struct.device** %4, align 8
  %189 = call i8* @devm_clk_get(%struct.device* %188, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  %190 = bitcast i8* %189 to i32*
  %191 = load %struct.imx6_pcie*, %struct.imx6_pcie** %6, align 8
  %192 = getelementptr inbounds %struct.imx6_pcie, %struct.imx6_pcie* %191, i32 0, i32 16
  store i32* %190, i32** %192, align 8
  %193 = load %struct.imx6_pcie*, %struct.imx6_pcie** %6, align 8
  %194 = getelementptr inbounds %struct.imx6_pcie, %struct.imx6_pcie* %193, i32 0, i32 16
  %195 = load i32*, i32** %194, align 8
  %196 = call i64 @IS_ERR(i32* %195)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %205

198:                                              ; preds = %187
  %199 = load %struct.device*, %struct.device** %4, align 8
  %200 = call i32 @dev_err(%struct.device* %199, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.11, i64 0, i64 0))
  %201 = load %struct.imx6_pcie*, %struct.imx6_pcie** %6, align 8
  %202 = getelementptr inbounds %struct.imx6_pcie, %struct.imx6_pcie* %201, i32 0, i32 16
  %203 = load i32*, i32** %202, align 8
  %204 = call i32 @PTR_ERR(i32* %203)
  store i32 %204, i32* %2, align 4
  br label %448

205:                                              ; preds = %187
  %206 = load %struct.imx6_pcie*, %struct.imx6_pcie** %6, align 8
  %207 = getelementptr inbounds %struct.imx6_pcie, %struct.imx6_pcie* %206, i32 0, i32 15
  %208 = load %struct.TYPE_2__*, %struct.TYPE_2__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  switch i32 %210, label %295 [
    i32 130, label %211
    i32 128, label %230
    i32 129, label %249
  ]

211:                                              ; preds = %205
  %212 = load %struct.device*, %struct.device** %4, align 8
  %213 = call i8* @devm_clk_get(%struct.device* %212, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0))
  %214 = bitcast i8* %213 to i32*
  %215 = load %struct.imx6_pcie*, %struct.imx6_pcie** %6, align 8
  %216 = getelementptr inbounds %struct.imx6_pcie, %struct.imx6_pcie* %215, i32 0, i32 14
  store i32* %214, i32** %216, align 8
  %217 = load %struct.imx6_pcie*, %struct.imx6_pcie** %6, align 8
  %218 = getelementptr inbounds %struct.imx6_pcie, %struct.imx6_pcie* %217, i32 0, i32 14
  %219 = load i32*, i32** %218, align 8
  %220 = call i64 @IS_ERR(i32* %219)
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %229

222:                                              ; preds = %211
  %223 = load %struct.device*, %struct.device** %4, align 8
  %224 = call i32 @dev_err(%struct.device* %223, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.13, i64 0, i64 0))
  %225 = load %struct.imx6_pcie*, %struct.imx6_pcie** %6, align 8
  %226 = getelementptr inbounds %struct.imx6_pcie, %struct.imx6_pcie* %225, i32 0, i32 14
  %227 = load i32*, i32** %226, align 8
  %228 = call i32 @PTR_ERR(i32* %227)
  store i32 %228, i32* %2, align 4
  br label %448

229:                                              ; preds = %211
  br label %296

230:                                              ; preds = %205
  %231 = load %struct.device*, %struct.device** %4, align 8
  %232 = call i8* @devm_clk_get(%struct.device* %231, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0))
  %233 = bitcast i8* %232 to i32*
  %234 = load %struct.imx6_pcie*, %struct.imx6_pcie** %6, align 8
  %235 = getelementptr inbounds %struct.imx6_pcie, %struct.imx6_pcie* %234, i32 0, i32 13
  store i32* %233, i32** %235, align 8
  %236 = load %struct.imx6_pcie*, %struct.imx6_pcie** %6, align 8
  %237 = getelementptr inbounds %struct.imx6_pcie, %struct.imx6_pcie* %236, i32 0, i32 13
  %238 = load i32*, i32** %237, align 8
  %239 = call i64 @IS_ERR(i32* %238)
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %248

241:                                              ; preds = %230
  %242 = load %struct.device*, %struct.device** %4, align 8
  %243 = call i32 @dev_err(%struct.device* %242, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i64 0, i64 0))
  %244 = load %struct.imx6_pcie*, %struct.imx6_pcie** %6, align 8
  %245 = getelementptr inbounds %struct.imx6_pcie, %struct.imx6_pcie* %244, i32 0, i32 13
  %246 = load i32*, i32** %245, align 8
  %247 = call i32 @PTR_ERR(i32* %246)
  store i32 %247, i32* %2, align 4
  br label %448

248:                                              ; preds = %230
  br label %249

249:                                              ; preds = %205, %248
  %250 = load %struct.resource*, %struct.resource** %8, align 8
  %251 = getelementptr inbounds %struct.resource, %struct.resource* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 4
  %253 = load i32, i32* @IMX8MQ_PCIE2_BASE_ADDR, align 4
  %254 = icmp eq i32 %252, %253
  br i1 %254, label %255, label %258

255:                                              ; preds = %249
  %256 = load %struct.imx6_pcie*, %struct.imx6_pcie** %6, align 8
  %257 = getelementptr inbounds %struct.imx6_pcie, %struct.imx6_pcie* %256, i32 0, i32 1
  store i32 1, i32* %257, align 4
  br label %258

258:                                              ; preds = %255, %249
  %259 = load %struct.device*, %struct.device** %4, align 8
  %260 = call i8* @devm_reset_control_get_exclusive(%struct.device* %259, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0))
  %261 = bitcast i8* %260 to i32*
  %262 = load %struct.imx6_pcie*, %struct.imx6_pcie** %6, align 8
  %263 = getelementptr inbounds %struct.imx6_pcie, %struct.imx6_pcie* %262, i32 0, i32 12
  store i32* %261, i32** %263, align 8
  %264 = load %struct.imx6_pcie*, %struct.imx6_pcie** %6, align 8
  %265 = getelementptr inbounds %struct.imx6_pcie, %struct.imx6_pcie* %264, i32 0, i32 12
  %266 = load i32*, i32** %265, align 8
  %267 = call i64 @IS_ERR(i32* %266)
  %268 = icmp ne i64 %267, 0
  br i1 %268, label %269, label %276

269:                                              ; preds = %258
  %270 = load %struct.device*, %struct.device** %4, align 8
  %271 = call i32 @dev_err(%struct.device* %270, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.17, i64 0, i64 0))
  %272 = load %struct.imx6_pcie*, %struct.imx6_pcie** %6, align 8
  %273 = getelementptr inbounds %struct.imx6_pcie, %struct.imx6_pcie* %272, i32 0, i32 12
  %274 = load i32*, i32** %273, align 8
  %275 = call i32 @PTR_ERR(i32* %274)
  store i32 %275, i32* %2, align 4
  br label %448

276:                                              ; preds = %258
  %277 = load %struct.device*, %struct.device** %4, align 8
  %278 = call i8* @devm_reset_control_get_exclusive(%struct.device* %277, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0))
  %279 = bitcast i8* %278 to i32*
  %280 = load %struct.imx6_pcie*, %struct.imx6_pcie** %6, align 8
  %281 = getelementptr inbounds %struct.imx6_pcie, %struct.imx6_pcie* %280, i32 0, i32 11
  store i32* %279, i32** %281, align 8
  %282 = load %struct.imx6_pcie*, %struct.imx6_pcie** %6, align 8
  %283 = getelementptr inbounds %struct.imx6_pcie, %struct.imx6_pcie* %282, i32 0, i32 11
  %284 = load i32*, i32** %283, align 8
  %285 = call i64 @IS_ERR(i32* %284)
  %286 = icmp ne i64 %285, 0
  br i1 %286, label %287, label %294

287:                                              ; preds = %276
  %288 = load %struct.device*, %struct.device** %4, align 8
  %289 = call i32 @dev_err(%struct.device* %288, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.19, i64 0, i64 0))
  %290 = load %struct.imx6_pcie*, %struct.imx6_pcie** %6, align 8
  %291 = getelementptr inbounds %struct.imx6_pcie, %struct.imx6_pcie* %290, i32 0, i32 11
  %292 = load i32*, i32** %291, align 8
  %293 = call i32 @PTR_ERR(i32* %292)
  store i32 %293, i32* %2, align 4
  br label %448

294:                                              ; preds = %276
  br label %296

295:                                              ; preds = %205
  br label %296

296:                                              ; preds = %295, %294, %229
  %297 = load %struct.device*, %struct.device** %4, align 8
  %298 = call i32* @devm_reset_control_get_optional_exclusive(%struct.device* %297, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i64 0, i64 0))
  %299 = load %struct.imx6_pcie*, %struct.imx6_pcie** %6, align 8
  %300 = getelementptr inbounds %struct.imx6_pcie, %struct.imx6_pcie* %299, i32 0, i32 10
  store i32* %298, i32** %300, align 8
  %301 = load %struct.imx6_pcie*, %struct.imx6_pcie** %6, align 8
  %302 = getelementptr inbounds %struct.imx6_pcie, %struct.imx6_pcie* %301, i32 0, i32 10
  %303 = load i32*, i32** %302, align 8
  %304 = call i64 @IS_ERR(i32* %303)
  %305 = icmp ne i64 %304, 0
  br i1 %305, label %306, label %313

306:                                              ; preds = %296
  %307 = load %struct.device*, %struct.device** %4, align 8
  %308 = call i32 @dev_err(%struct.device* %307, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.21, i64 0, i64 0))
  %309 = load %struct.imx6_pcie*, %struct.imx6_pcie** %6, align 8
  %310 = getelementptr inbounds %struct.imx6_pcie, %struct.imx6_pcie* %309, i32 0, i32 10
  %311 = load i32*, i32** %310, align 8
  %312 = call i32 @PTR_ERR(i32* %311)
  store i32 %312, i32* %2, align 4
  br label %448

313:                                              ; preds = %296
  %314 = call i32* @syscon_regmap_lookup_by_compatible(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.22, i64 0, i64 0))
  %315 = load %struct.imx6_pcie*, %struct.imx6_pcie** %6, align 8
  %316 = getelementptr inbounds %struct.imx6_pcie, %struct.imx6_pcie* %315, i32 0, i32 9
  store i32* %314, i32** %316, align 8
  %317 = load %struct.imx6_pcie*, %struct.imx6_pcie** %6, align 8
  %318 = getelementptr inbounds %struct.imx6_pcie, %struct.imx6_pcie* %317, i32 0, i32 9
  %319 = load i32*, i32** %318, align 8
  %320 = call i64 @IS_ERR(i32* %319)
  %321 = icmp ne i64 %320, 0
  br i1 %321, label %322, label %329

322:                                              ; preds = %313
  %323 = load %struct.device*, %struct.device** %4, align 8
  %324 = call i32 @dev_err(%struct.device* %323, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.23, i64 0, i64 0))
  %325 = load %struct.imx6_pcie*, %struct.imx6_pcie** %6, align 8
  %326 = getelementptr inbounds %struct.imx6_pcie, %struct.imx6_pcie* %325, i32 0, i32 9
  %327 = load i32*, i32** %326, align 8
  %328 = call i32 @PTR_ERR(i32* %327)
  store i32 %328, i32* %2, align 4
  br label %448

329:                                              ; preds = %313
  %330 = load %struct.device_node*, %struct.device_node** %9, align 8
  %331 = load %struct.imx6_pcie*, %struct.imx6_pcie** %6, align 8
  %332 = getelementptr inbounds %struct.imx6_pcie, %struct.imx6_pcie* %331, i32 0, i32 2
  %333 = call i32 @of_property_read_u32(%struct.device_node* %330, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.24, i64 0, i64 0), i32* %332)
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %335, label %338

335:                                              ; preds = %329
  %336 = load %struct.imx6_pcie*, %struct.imx6_pcie** %6, align 8
  %337 = getelementptr inbounds %struct.imx6_pcie, %struct.imx6_pcie* %336, i32 0, i32 2
  store i32 0, i32* %337, align 8
  br label %338

338:                                              ; preds = %335, %329
  %339 = load %struct.device_node*, %struct.device_node** %9, align 8
  %340 = load %struct.imx6_pcie*, %struct.imx6_pcie** %6, align 8
  %341 = getelementptr inbounds %struct.imx6_pcie, %struct.imx6_pcie* %340, i32 0, i32 3
  %342 = call i32 @of_property_read_u32(%struct.device_node* %339, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.25, i64 0, i64 0), i32* %341)
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %344, label %347

344:                                              ; preds = %338
  %345 = load %struct.imx6_pcie*, %struct.imx6_pcie** %6, align 8
  %346 = getelementptr inbounds %struct.imx6_pcie, %struct.imx6_pcie* %345, i32 0, i32 3
  store i32 0, i32* %346, align 4
  br label %347

347:                                              ; preds = %344, %338
  %348 = load %struct.device_node*, %struct.device_node** %9, align 8
  %349 = load %struct.imx6_pcie*, %struct.imx6_pcie** %6, align 8
  %350 = getelementptr inbounds %struct.imx6_pcie, %struct.imx6_pcie* %349, i32 0, i32 4
  %351 = call i32 @of_property_read_u32(%struct.device_node* %348, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.26, i64 0, i64 0), i32* %350)
  %352 = icmp ne i32 %351, 0
  br i1 %352, label %353, label %356

353:                                              ; preds = %347
  %354 = load %struct.imx6_pcie*, %struct.imx6_pcie** %6, align 8
  %355 = getelementptr inbounds %struct.imx6_pcie, %struct.imx6_pcie* %354, i32 0, i32 4
  store i32 20, i32* %355, align 8
  br label %356

356:                                              ; preds = %353, %347
  %357 = load %struct.device_node*, %struct.device_node** %9, align 8
  %358 = load %struct.imx6_pcie*, %struct.imx6_pcie** %6, align 8
  %359 = getelementptr inbounds %struct.imx6_pcie, %struct.imx6_pcie* %358, i32 0, i32 5
  %360 = call i32 @of_property_read_u32(%struct.device_node* %357, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.27, i64 0, i64 0), i32* %359)
  %361 = icmp ne i32 %360, 0
  br i1 %361, label %362, label %365

362:                                              ; preds = %356
  %363 = load %struct.imx6_pcie*, %struct.imx6_pcie** %6, align 8
  %364 = getelementptr inbounds %struct.imx6_pcie, %struct.imx6_pcie* %363, i32 0, i32 5
  store i32 127, i32* %364, align 4
  br label %365

365:                                              ; preds = %362, %356
  %366 = load %struct.device_node*, %struct.device_node** %9, align 8
  %367 = load %struct.imx6_pcie*, %struct.imx6_pcie** %6, align 8
  %368 = getelementptr inbounds %struct.imx6_pcie, %struct.imx6_pcie* %367, i32 0, i32 6
  %369 = call i32 @of_property_read_u32(%struct.device_node* %366, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.28, i64 0, i64 0), i32* %368)
  %370 = icmp ne i32 %369, 0
  br i1 %370, label %371, label %374

371:                                              ; preds = %365
  %372 = load %struct.imx6_pcie*, %struct.imx6_pcie** %6, align 8
  %373 = getelementptr inbounds %struct.imx6_pcie, %struct.imx6_pcie* %372, i32 0, i32 6
  store i32 127, i32* %373, align 8
  br label %374

374:                                              ; preds = %371, %365
  %375 = load %struct.device_node*, %struct.device_node** %9, align 8
  %376 = load %struct.imx6_pcie*, %struct.imx6_pcie** %6, align 8
  %377 = getelementptr inbounds %struct.imx6_pcie, %struct.imx6_pcie* %376, i32 0, i32 7
  %378 = call i32 @of_property_read_u32(%struct.device_node* %375, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.29, i64 0, i64 0), i32* %377)
  store i32 %378, i32* %10, align 4
  %379 = load i32, i32* %10, align 4
  %380 = icmp ne i32 %379, 0
  br i1 %380, label %381, label %384

381:                                              ; preds = %374
  %382 = load %struct.imx6_pcie*, %struct.imx6_pcie** %6, align 8
  %383 = getelementptr inbounds %struct.imx6_pcie, %struct.imx6_pcie* %382, i32 0, i32 7
  store i32 1, i32* %383, align 4
  br label %384

384:                                              ; preds = %381, %374
  %385 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %386 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %385, i32 0, i32 0
  %387 = call i32* @devm_regulator_get_optional(%struct.device* %386, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i64 0, i64 0))
  %388 = load %struct.imx6_pcie*, %struct.imx6_pcie** %6, align 8
  %389 = getelementptr inbounds %struct.imx6_pcie, %struct.imx6_pcie* %388, i32 0, i32 8
  store i32* %387, i32** %389, align 8
  %390 = load %struct.imx6_pcie*, %struct.imx6_pcie** %6, align 8
  %391 = getelementptr inbounds %struct.imx6_pcie, %struct.imx6_pcie* %390, i32 0, i32 8
  %392 = load i32*, i32** %391, align 8
  %393 = call i64 @IS_ERR(i32* %392)
  %394 = icmp ne i64 %393, 0
  br i1 %394, label %395, label %411

395:                                              ; preds = %384
  %396 = load %struct.imx6_pcie*, %struct.imx6_pcie** %6, align 8
  %397 = getelementptr inbounds %struct.imx6_pcie, %struct.imx6_pcie* %396, i32 0, i32 8
  %398 = load i32*, i32** %397, align 8
  %399 = call i32 @PTR_ERR(i32* %398)
  %400 = load i32, i32* @ENODEV, align 4
  %401 = sub nsw i32 0, %400
  %402 = icmp ne i32 %399, %401
  br i1 %402, label %403, label %408

403:                                              ; preds = %395
  %404 = load %struct.imx6_pcie*, %struct.imx6_pcie** %6, align 8
  %405 = getelementptr inbounds %struct.imx6_pcie, %struct.imx6_pcie* %404, i32 0, i32 8
  %406 = load i32*, i32** %405, align 8
  %407 = call i32 @PTR_ERR(i32* %406)
  store i32 %407, i32* %2, align 4
  br label %448

408:                                              ; preds = %395
  %409 = load %struct.imx6_pcie*, %struct.imx6_pcie** %6, align 8
  %410 = getelementptr inbounds %struct.imx6_pcie, %struct.imx6_pcie* %409, i32 0, i32 8
  store i32* null, i32** %410, align 8
  br label %411

411:                                              ; preds = %408, %384
  %412 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %413 = load %struct.imx6_pcie*, %struct.imx6_pcie** %6, align 8
  %414 = call i32 @platform_set_drvdata(%struct.platform_device* %412, %struct.imx6_pcie* %413)
  %415 = load %struct.device*, %struct.device** %4, align 8
  %416 = call i32 @imx6_pcie_attach_pd(%struct.device* %415)
  store i32 %416, i32* %10, align 4
  %417 = load i32, i32* %10, align 4
  %418 = icmp ne i32 %417, 0
  br i1 %418, label %419, label %421

419:                                              ; preds = %411
  %420 = load i32, i32* %10, align 4
  store i32 %420, i32* %2, align 4
  br label %448

421:                                              ; preds = %411
  %422 = load %struct.imx6_pcie*, %struct.imx6_pcie** %6, align 8
  %423 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %424 = call i32 @imx6_add_pcie_port(%struct.imx6_pcie* %422, %struct.platform_device* %423)
  store i32 %424, i32* %10, align 4
  %425 = load i32, i32* %10, align 4
  %426 = icmp slt i32 %425, 0
  br i1 %426, label %427, label %429

427:                                              ; preds = %421
  %428 = load i32, i32* %10, align 4
  store i32 %428, i32* %2, align 4
  br label %448

429:                                              ; preds = %421
  %430 = call i64 (...) @pci_msi_enabled()
  %431 = icmp ne i64 %430, 0
  br i1 %431, label %432, label %447

432:                                              ; preds = %429
  %433 = load %struct.dw_pcie*, %struct.dw_pcie** %5, align 8
  %434 = load i64, i64* @PCIE_RC_IMX6_MSI_CAP, align 8
  %435 = load i64, i64* @PCI_MSI_FLAGS, align 8
  %436 = add nsw i64 %434, %435
  %437 = call i32 @dw_pcie_readw_dbi(%struct.dw_pcie* %433, i64 %436)
  store i32 %437, i32* %11, align 4
  %438 = load i32, i32* @PCI_MSI_FLAGS_ENABLE, align 4
  %439 = load i32, i32* %11, align 4
  %440 = or i32 %439, %438
  store i32 %440, i32* %11, align 4
  %441 = load %struct.dw_pcie*, %struct.dw_pcie** %5, align 8
  %442 = load i64, i64* @PCIE_RC_IMX6_MSI_CAP, align 8
  %443 = load i64, i64* @PCI_MSI_FLAGS, align 8
  %444 = add nsw i64 %442, %443
  %445 = load i32, i32* %11, align 4
  %446 = call i32 @dw_pcie_writew_dbi(%struct.dw_pcie* %441, i64 %444, i32 %445)
  br label %447

447:                                              ; preds = %432, %429
  store i32 0, i32* %2, align 4
  br label %448

448:                                              ; preds = %447, %427, %419, %403, %322, %306, %287, %269, %241, %222, %198, %180, %162, %146, %134, %97, %74, %59, %34, %24
  %449 = load i32, i32* %2, align 4
  ret i32 %449
}

declare dso_local i8* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.TYPE_2__* @of_device_get_match_data(%struct.device*) #1

declare dso_local %struct.device_node* @of_parse_phandle(%struct.device_node*, i8*, i32) #1

declare dso_local i32 @of_address_to_resource(%struct.device_node*, i32, %struct.resource*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i8* @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @of_get_named_gpio(%struct.device_node*, i8*, i32) #1

declare dso_local i64 @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local i64 @gpio_is_valid(i32) #1

declare dso_local i32 @devm_gpio_request_one(%struct.device*, i32, i32, i8*) #1

declare dso_local i8* @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i8* @devm_reset_control_get_exclusive(%struct.device*, i8*) #1

declare dso_local i32* @devm_reset_control_get_optional_exclusive(%struct.device*, i8*) #1

declare dso_local i32* @syscon_regmap_lookup_by_compatible(i8*) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32* @devm_regulator_get_optional(%struct.device*, i8*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.imx6_pcie*) #1

declare dso_local i32 @imx6_pcie_attach_pd(%struct.device*) #1

declare dso_local i32 @imx6_add_pcie_port(%struct.imx6_pcie*, %struct.platform_device*) #1

declare dso_local i64 @pci_msi_enabled(...) #1

declare dso_local i32 @dw_pcie_readw_dbi(%struct.dw_pcie*, i64) #1

declare dso_local i32 @dw_pcie_writew_dbi(%struct.dw_pcie*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
