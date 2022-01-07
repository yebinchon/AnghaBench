; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_ehci-tegra.c_tegra_ehci_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_ehci-tegra.c_tegra_ehci_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.of_device_id = type { %struct.tegra_ehci_soc_config* }
%struct.tegra_ehci_soc_config = type { i32 }
%struct.resource = type { i32 }
%struct.usb_hcd = type { i32, i32, %struct.usb_phy*, %struct.TYPE_16__, %struct.usb_phy*, i32, i32 }
%struct.TYPE_16__ = type { i32 }
%struct.usb_phy = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 }
%struct.ehci_hcd = type { i32, %struct.usb_phy*, i64 }
%struct.tegra_ehci_hcd = type { %struct.usb_phy*, i32, %struct.usb_phy* }

@tegra_ehci_of_match = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Error: No device match found\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@tegra_ehci_hc_driver = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Unable to create HCD\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"Can't get ehci clock\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"usb\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"Can't get ehci reset\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"Failed to reset controller\0A\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"nvidia,phy\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [26 x i8] c"nvidia,needs-double-reset\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [26 x i8] c"Failed to initialize phy\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [28 x i8] c"Failed to power on the phy\0A\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"Failed to get IRQ\0A\00", align 1
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [23 x i8] c"Failed to add USB HCD\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @tegra_ehci_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_ehci_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.of_device_id*, align 8
  %5 = alloca %struct.tegra_ehci_soc_config*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca %struct.usb_hcd*, align 8
  %8 = alloca %struct.ehci_hcd*, align 8
  %9 = alloca %struct.tegra_ehci_hcd*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.usb_phy*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i32 0, i32* %10, align 4
  %13 = load i32, i32* @tegra_ehci_of_match, align 4
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = call %struct.of_device_id* @of_match_device(i32 %13, %struct.TYPE_14__* %15)
  store %struct.of_device_id* %16, %struct.of_device_id** %4, align 8
  %17 = load %struct.of_device_id*, %struct.of_device_id** %4, align 8
  %18 = icmp ne %struct.of_device_id* %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %1
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = call i32 @dev_err(%struct.TYPE_14__* %21, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @ENODEV, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %276

25:                                               ; preds = %1
  %26 = load %struct.of_device_id*, %struct.of_device_id** %4, align 8
  %27 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %26, i32 0, i32 0
  %28 = load %struct.tegra_ehci_soc_config*, %struct.tegra_ehci_soc_config** %27, align 8
  store %struct.tegra_ehci_soc_config* %28, %struct.tegra_ehci_soc_config** %5, align 8
  %29 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %30 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %29, i32 0, i32 0
  %31 = call i32 @DMA_BIT_MASK(i32 32)
  %32 = call i32 @dma_coerce_mask_and_coherent(%struct.TYPE_14__* %30, i32 %31)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %25
  %36 = load i32, i32* %10, align 4
  store i32 %36, i32* %2, align 4
  br label %276

37:                                               ; preds = %25
  %38 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %39 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %38, i32 0, i32 0
  %40 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %41 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %40, i32 0, i32 0
  %42 = call i32 @dev_name(%struct.TYPE_14__* %41)
  %43 = call %struct.usb_hcd* @usb_create_hcd(i32* @tegra_ehci_hc_driver, %struct.TYPE_14__* %39, i32 %42)
  store %struct.usb_hcd* %43, %struct.usb_hcd** %7, align 8
  %44 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %45 = icmp ne %struct.usb_hcd* %44, null
  br i1 %45, label %52, label %46

46:                                               ; preds = %37
  %47 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %48 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %47, i32 0, i32 0
  %49 = call i32 @dev_err(%struct.TYPE_14__* %48, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %2, align 4
  br label %276

52:                                               ; preds = %37
  %53 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %54 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %55 = call i32 @platform_set_drvdata(%struct.platform_device* %53, %struct.usb_hcd* %54)
  %56 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %57 = call %struct.ehci_hcd* @hcd_to_ehci(%struct.usb_hcd* %56)
  store %struct.ehci_hcd* %57, %struct.ehci_hcd** %8, align 8
  %58 = load %struct.ehci_hcd*, %struct.ehci_hcd** %8, align 8
  %59 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = inttoptr i64 %60 to %struct.tegra_ehci_hcd*
  store %struct.tegra_ehci_hcd* %61, %struct.tegra_ehci_hcd** %9, align 8
  %62 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %63 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %62, i32 0, i32 0
  store i32 1, i32* %63, align 8
  %64 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %65 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %64, i32 0, i32 0
  %66 = call %struct.usb_phy* @devm_clk_get(%struct.TYPE_14__* %65, i32* null)
  %67 = load %struct.tegra_ehci_hcd*, %struct.tegra_ehci_hcd** %9, align 8
  %68 = getelementptr inbounds %struct.tegra_ehci_hcd, %struct.tegra_ehci_hcd* %67, i32 0, i32 0
  store %struct.usb_phy* %66, %struct.usb_phy** %68, align 8
  %69 = load %struct.tegra_ehci_hcd*, %struct.tegra_ehci_hcd** %9, align 8
  %70 = getelementptr inbounds %struct.tegra_ehci_hcd, %struct.tegra_ehci_hcd* %69, i32 0, i32 0
  %71 = load %struct.usb_phy*, %struct.usb_phy** %70, align 8
  %72 = call i64 @IS_ERR(%struct.usb_phy* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %52
  %75 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %76 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %75, i32 0, i32 0
  %77 = call i32 @dev_err(%struct.TYPE_14__* %76, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %78 = load %struct.tegra_ehci_hcd*, %struct.tegra_ehci_hcd** %9, align 8
  %79 = getelementptr inbounds %struct.tegra_ehci_hcd, %struct.tegra_ehci_hcd* %78, i32 0, i32 0
  %80 = load %struct.usb_phy*, %struct.usb_phy** %79, align 8
  %81 = call i32 @PTR_ERR(%struct.usb_phy* %80)
  store i32 %81, i32* %10, align 4
  br label %272

82:                                               ; preds = %52
  %83 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %84 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %83, i32 0, i32 0
  %85 = call %struct.usb_phy* @devm_reset_control_get_shared(%struct.TYPE_14__* %84, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %86 = load %struct.tegra_ehci_hcd*, %struct.tegra_ehci_hcd** %9, align 8
  %87 = getelementptr inbounds %struct.tegra_ehci_hcd, %struct.tegra_ehci_hcd* %86, i32 0, i32 2
  store %struct.usb_phy* %85, %struct.usb_phy** %87, align 8
  %88 = load %struct.tegra_ehci_hcd*, %struct.tegra_ehci_hcd** %9, align 8
  %89 = getelementptr inbounds %struct.tegra_ehci_hcd, %struct.tegra_ehci_hcd* %88, i32 0, i32 2
  %90 = load %struct.usb_phy*, %struct.usb_phy** %89, align 8
  %91 = call i64 @IS_ERR(%struct.usb_phy* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %101

93:                                               ; preds = %82
  %94 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %95 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %94, i32 0, i32 0
  %96 = call i32 @dev_err(%struct.TYPE_14__* %95, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %97 = load %struct.tegra_ehci_hcd*, %struct.tegra_ehci_hcd** %9, align 8
  %98 = getelementptr inbounds %struct.tegra_ehci_hcd, %struct.tegra_ehci_hcd* %97, i32 0, i32 2
  %99 = load %struct.usb_phy*, %struct.usb_phy** %98, align 8
  %100 = call i32 @PTR_ERR(%struct.usb_phy* %99)
  store i32 %100, i32* %10, align 4
  br label %272

101:                                              ; preds = %82
  %102 = load %struct.tegra_ehci_hcd*, %struct.tegra_ehci_hcd** %9, align 8
  %103 = getelementptr inbounds %struct.tegra_ehci_hcd, %struct.tegra_ehci_hcd* %102, i32 0, i32 0
  %104 = load %struct.usb_phy*, %struct.usb_phy** %103, align 8
  %105 = call i32 @clk_prepare_enable(%struct.usb_phy* %104)
  store i32 %105, i32* %10, align 4
  %106 = load i32, i32* %10, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %101
  br label %272

109:                                              ; preds = %101
  %110 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %111 = call i32 @tegra_reset_usb_controller(%struct.platform_device* %110)
  store i32 %111, i32* %10, align 4
  %112 = load i32, i32* %10, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %109
  %115 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %116 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %115, i32 0, i32 0
  %117 = call i32 @dev_err(%struct.TYPE_14__* %116, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  br label %267

118:                                              ; preds = %109
  %119 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %120 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %119, i32 0, i32 0
  %121 = call %struct.usb_phy* @devm_usb_get_phy_by_phandle(%struct.TYPE_14__* %120, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32 0)
  store %struct.usb_phy* %121, %struct.usb_phy** %12, align 8
  %122 = load %struct.usb_phy*, %struct.usb_phy** %12, align 8
  %123 = call i64 @IS_ERR(%struct.usb_phy* %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %118
  %126 = load i32, i32* @EPROBE_DEFER, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %10, align 4
  br label %267

128:                                              ; preds = %118
  %129 = load %struct.usb_phy*, %struct.usb_phy** %12, align 8
  %130 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %131 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %130, i32 0, i32 2
  store %struct.usb_phy* %129, %struct.usb_phy** %131, align 8
  %132 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %133 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %132, i32 0, i32 1
  store i32 1, i32* %133, align 4
  %134 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %135 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @of_property_read_bool(i32 %137, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  %139 = load %struct.tegra_ehci_hcd*, %struct.tegra_ehci_hcd** %9, align 8
  %140 = getelementptr inbounds %struct.tegra_ehci_hcd, %struct.tegra_ehci_hcd* %139, i32 0, i32 1
  store i32 %138, i32* %140, align 8
  %141 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %142 = load i32, i32* @IORESOURCE_MEM, align 4
  %143 = call %struct.resource* @platform_get_resource(%struct.platform_device* %141, i32 %142, i32 0)
  store %struct.resource* %143, %struct.resource** %6, align 8
  %144 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %145 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %144, i32 0, i32 0
  %146 = load %struct.resource*, %struct.resource** %6, align 8
  %147 = call %struct.usb_phy* @devm_ioremap_resource(%struct.TYPE_14__* %145, %struct.resource* %146)
  %148 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %149 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %148, i32 0, i32 4
  store %struct.usb_phy* %147, %struct.usb_phy** %149, align 8
  %150 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %151 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %150, i32 0, i32 4
  %152 = load %struct.usb_phy*, %struct.usb_phy** %151, align 8
  %153 = call i64 @IS_ERR(%struct.usb_phy* %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %160

155:                                              ; preds = %128
  %156 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %157 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %156, i32 0, i32 4
  %158 = load %struct.usb_phy*, %struct.usb_phy** %157, align 8
  %159 = call i32 @PTR_ERR(%struct.usb_phy* %158)
  store i32 %159, i32* %10, align 4
  br label %267

160:                                              ; preds = %128
  %161 = load %struct.resource*, %struct.resource** %6, align 8
  %162 = getelementptr inbounds %struct.resource, %struct.resource* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %165 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %164, i32 0, i32 6
  store i32 %163, i32* %165, align 4
  %166 = load %struct.resource*, %struct.resource** %6, align 8
  %167 = call i32 @resource_size(%struct.resource* %166)
  %168 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %169 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %168, i32 0, i32 5
  store i32 %167, i32* %169, align 8
  %170 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %171 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %170, i32 0, i32 4
  %172 = load %struct.usb_phy*, %struct.usb_phy** %171, align 8
  %173 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %172, i64 256
  %174 = load %struct.ehci_hcd*, %struct.ehci_hcd** %8, align 8
  %175 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %174, i32 0, i32 1
  store %struct.usb_phy* %173, %struct.usb_phy** %175, align 8
  %176 = load %struct.tegra_ehci_soc_config*, %struct.tegra_ehci_soc_config** %5, align 8
  %177 = getelementptr inbounds %struct.tegra_ehci_soc_config, %struct.tegra_ehci_soc_config* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.ehci_hcd*, %struct.ehci_hcd** %8, align 8
  %180 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %179, i32 0, i32 0
  store i32 %178, i32* %180, align 8
  %181 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %182 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %181, i32 0, i32 2
  %183 = load %struct.usb_phy*, %struct.usb_phy** %182, align 8
  %184 = call i32 @usb_phy_init(%struct.usb_phy* %183)
  store i32 %184, i32* %10, align 4
  %185 = load i32, i32* %10, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %191

187:                                              ; preds = %160
  %188 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %189 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %188, i32 0, i32 0
  %190 = call i32 @dev_err(%struct.TYPE_14__* %189, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0))
  br label %267

191:                                              ; preds = %160
  %192 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %193 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %192, i32 0, i32 0
  %194 = load i32, i32* @GFP_KERNEL, align 4
  %195 = call %struct.TYPE_15__* @devm_kzalloc(%struct.TYPE_14__* %193, i32 4, i32 %194)
  %196 = load %struct.usb_phy*, %struct.usb_phy** %12, align 8
  %197 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %196, i32 0, i32 0
  store %struct.TYPE_15__* %195, %struct.TYPE_15__** %197, align 8
  %198 = load %struct.usb_phy*, %struct.usb_phy** %12, align 8
  %199 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %198, i32 0, i32 0
  %200 = load %struct.TYPE_15__*, %struct.TYPE_15__** %199, align 8
  %201 = icmp ne %struct.TYPE_15__* %200, null
  br i1 %201, label %205, label %202

202:                                              ; preds = %191
  %203 = load i32, i32* @ENOMEM, align 4
  %204 = sub nsw i32 0, %203
  store i32 %204, i32* %10, align 4
  br label %262

205:                                              ; preds = %191
  %206 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %207 = call i32 @hcd_to_bus(%struct.usb_hcd* %206)
  %208 = load %struct.usb_phy*, %struct.usb_phy** %12, align 8
  %209 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %208, i32 0, i32 0
  %210 = load %struct.TYPE_15__*, %struct.TYPE_15__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %210, i32 0, i32 0
  store i32 %207, i32* %211, align 4
  %212 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %213 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %212, i32 0, i32 2
  %214 = load %struct.usb_phy*, %struct.usb_phy** %213, align 8
  %215 = call i32 @usb_phy_set_suspend(%struct.usb_phy* %214, i32 0)
  store i32 %215, i32* %10, align 4
  %216 = load i32, i32* %10, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %222

218:                                              ; preds = %205
  %219 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %220 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %219, i32 0, i32 0
  %221 = call i32 @dev_err(%struct.TYPE_14__* %220, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0))
  br label %262

222:                                              ; preds = %205
  %223 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %224 = call i32 @platform_get_irq(%struct.platform_device* %223, i32 0)
  store i32 %224, i32* %11, align 4
  %225 = load i32, i32* %11, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %233, label %227

227:                                              ; preds = %222
  %228 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %229 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %228, i32 0, i32 0
  %230 = call i32 @dev_err(%struct.TYPE_14__* %229, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0))
  %231 = load i32, i32* @ENODEV, align 4
  %232 = sub nsw i32 0, %231
  store i32 %232, i32* %10, align 4
  br label %262

233:                                              ; preds = %222
  %234 = load %struct.usb_phy*, %struct.usb_phy** %12, align 8
  %235 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %234, i32 0, i32 0
  %236 = load %struct.TYPE_15__*, %struct.TYPE_15__** %235, align 8
  %237 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %238 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %237, i32 0, i32 3
  %239 = call i32 @otg_set_host(%struct.TYPE_15__* %236, %struct.TYPE_16__* %238)
  %240 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %241 = load i32, i32* %11, align 4
  %242 = load i32, i32* @IRQF_SHARED, align 4
  %243 = call i32 @usb_add_hcd(%struct.usb_hcd* %240, i32 %241, i32 %242)
  store i32 %243, i32* %10, align 4
  %244 = load i32, i32* %10, align 4
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %250

246:                                              ; preds = %233
  %247 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %248 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %247, i32 0, i32 0
  %249 = call i32 @dev_err(%struct.TYPE_14__* %248, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0))
  br label %257

250:                                              ; preds = %233
  %251 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %252 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %251, i32 0, i32 3
  %253 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 8
  %255 = call i32 @device_wakeup_enable(i32 %254)
  %256 = load i32, i32* %10, align 4
  store i32 %256, i32* %2, align 4
  br label %276

257:                                              ; preds = %246
  %258 = load %struct.usb_phy*, %struct.usb_phy** %12, align 8
  %259 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %258, i32 0, i32 0
  %260 = load %struct.TYPE_15__*, %struct.TYPE_15__** %259, align 8
  %261 = call i32 @otg_set_host(%struct.TYPE_15__* %260, %struct.TYPE_16__* null)
  br label %262

262:                                              ; preds = %257, %227, %218, %202
  %263 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %264 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %263, i32 0, i32 2
  %265 = load %struct.usb_phy*, %struct.usb_phy** %264, align 8
  %266 = call i32 @usb_phy_shutdown(%struct.usb_phy* %265)
  br label %267

267:                                              ; preds = %262, %187, %155, %125, %114
  %268 = load %struct.tegra_ehci_hcd*, %struct.tegra_ehci_hcd** %9, align 8
  %269 = getelementptr inbounds %struct.tegra_ehci_hcd, %struct.tegra_ehci_hcd* %268, i32 0, i32 0
  %270 = load %struct.usb_phy*, %struct.usb_phy** %269, align 8
  %271 = call i32 @clk_disable_unprepare(%struct.usb_phy* %270)
  br label %272

272:                                              ; preds = %267, %108, %93, %74
  %273 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %274 = call i32 @usb_put_hcd(%struct.usb_hcd* %273)
  %275 = load i32, i32* %10, align 4
  store i32 %275, i32* %2, align 4
  br label %276

276:                                              ; preds = %272, %250, %46, %35, %19
  %277 = load i32, i32* %2, align 4
  ret i32 %277
}

declare dso_local %struct.of_device_id* @of_match_device(i32, %struct.TYPE_14__*) #1

declare dso_local i32 @dev_err(%struct.TYPE_14__*, i8*) #1

declare dso_local i32 @dma_coerce_mask_and_coherent(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local %struct.usb_hcd* @usb_create_hcd(i32*, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @dev_name(%struct.TYPE_14__*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.usb_hcd*) #1

declare dso_local %struct.ehci_hcd* @hcd_to_ehci(%struct.usb_hcd*) #1

declare dso_local %struct.usb_phy* @devm_clk_get(%struct.TYPE_14__*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.usb_phy*) #1

declare dso_local i32 @PTR_ERR(%struct.usb_phy*) #1

declare dso_local %struct.usb_phy* @devm_reset_control_get_shared(%struct.TYPE_14__*, i8*) #1

declare dso_local i32 @clk_prepare_enable(%struct.usb_phy*) #1

declare dso_local i32 @tegra_reset_usb_controller(%struct.platform_device*) #1

declare dso_local %struct.usb_phy* @devm_usb_get_phy_by_phandle(%struct.TYPE_14__*, i8*, i32) #1

declare dso_local i32 @of_property_read_bool(i32, i8*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local %struct.usb_phy* @devm_ioremap_resource(%struct.TYPE_14__*, %struct.resource*) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @usb_phy_init(%struct.usb_phy*) #1

declare dso_local %struct.TYPE_15__* @devm_kzalloc(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @hcd_to_bus(%struct.usb_hcd*) #1

declare dso_local i32 @usb_phy_set_suspend(%struct.usb_phy*, i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @otg_set_host(%struct.TYPE_15__*, %struct.TYPE_16__*) #1

declare dso_local i32 @usb_add_hcd(%struct.usb_hcd*, i32, i32) #1

declare dso_local i32 @device_wakeup_enable(i32) #1

declare dso_local i32 @usb_phy_shutdown(%struct.usb_phy*) #1

declare dso_local i32 @clk_disable_unprepare(%struct.usb_phy*) #1

declare dso_local i32 @usb_put_hcd(%struct.usb_hcd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
