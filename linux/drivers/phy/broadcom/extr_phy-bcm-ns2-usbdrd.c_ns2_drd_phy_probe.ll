; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/broadcom/extr_phy-bcm-ns2-usbdrd.c_ns2_drd_phy_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/broadcom/extr_phy-bcm-ns2-usbdrd.c_ns2_drd_phy_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.phy_provider = type { i32 }
%struct.ns2_phy_driver = type { i64, i64, i32, i32, %struct.ns2_phy_data*, %struct.phy_provider*, %struct.phy_provider*, %struct.phy_provider*, %struct.phy_provider*, %struct.phy_provider*, %struct.phy_provider*, %struct.phy_provider* }
%struct.ns2_phy_data = type { %struct.phy_provider*, %struct.ns2_phy_driver* }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"icfg\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"rst-ctrl\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"crmu-ctrl\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"usb2-strap\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@GPIOD_IN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [23 x i8] c"failed to get ID GPIO\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"vbus\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"failed to get VBUS GPIO\0A\00", align 1
@usb_extcon_cable = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [34 x i8] c"failed to allocate extcon device\0A\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"failed to register extcon device\0A\00", align 1
@GPIO_DELAY = common dso_local global i32 0, align 4
@extcon_work = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [22 x i8] c"failed to get ID IRQ\0A\00", align 1
@gpio_irq_handler = common dso_local global i32 0, align 4
@IRQF_TRIGGER_RISING = common dso_local global i32 0, align 4
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [7 x i8] c"usb_id\00", align 1
@.str.12 = private unnamed_addr constant [38 x i8] c"failed to request handler for ID IRQ\0A\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"usb_vbus\00", align 1
@.str.14 = private unnamed_addr constant [40 x i8] c"failed to request handler for VBUS IRQ\0A\00", align 1
@AFE_CORERDY_VDDC = common dso_local global i32 0, align 4
@PHY_RESETB = common dso_local global i32 0, align 4
@ops = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [30 x i8] c"Failed to create usb drd phy\0A\00", align 1
@of_phy_simple_xlate = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [36 x i8] c"Failed to register as phy provider\0A\00", align 1
@.str.17 = private unnamed_addr constant [31 x i8] c"Registered NS2 DRD Phy device\0A\00", align 1
@system_power_efficient_wq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ns2_drd_phy_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ns2_drd_phy_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.phy_provider*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.ns2_phy_driver*, align 8
  %7 = alloca %struct.ns2_phy_data*, align 8
  %8 = alloca %struct.resource*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %5, align 8
  %13 = load %struct.device*, %struct.device** %5, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call i8* @devm_kzalloc(%struct.device* %13, i32 88, i32 %14)
  %16 = bitcast i8* %15 to %struct.ns2_phy_driver*
  store %struct.ns2_phy_driver* %16, %struct.ns2_phy_driver** %6, align 8
  %17 = load %struct.ns2_phy_driver*, %struct.ns2_phy_driver** %6, align 8
  %18 = icmp ne %struct.ns2_phy_driver* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %350

22:                                               ; preds = %1
  %23 = load %struct.device*, %struct.device** %5, align 8
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call i8* @devm_kzalloc(%struct.device* %23, i32 16, i32 %24)
  %26 = bitcast i8* %25 to %struct.ns2_phy_data*
  %27 = load %struct.ns2_phy_driver*, %struct.ns2_phy_driver** %6, align 8
  %28 = getelementptr inbounds %struct.ns2_phy_driver, %struct.ns2_phy_driver* %27, i32 0, i32 4
  store %struct.ns2_phy_data* %26, %struct.ns2_phy_data** %28, align 8
  %29 = load %struct.ns2_phy_driver*, %struct.ns2_phy_driver** %6, align 8
  %30 = getelementptr inbounds %struct.ns2_phy_driver, %struct.ns2_phy_driver* %29, i32 0, i32 4
  %31 = load %struct.ns2_phy_data*, %struct.ns2_phy_data** %30, align 8
  %32 = icmp ne %struct.ns2_phy_data* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %22
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %350

36:                                               ; preds = %22
  %37 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %38 = load i32, i32* @IORESOURCE_MEM, align 4
  %39 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %37, i32 %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store %struct.resource* %39, %struct.resource** %8, align 8
  %40 = load %struct.device*, %struct.device** %5, align 8
  %41 = load %struct.resource*, %struct.resource** %8, align 8
  %42 = call i8* @devm_ioremap_resource(%struct.device* %40, %struct.resource* %41)
  %43 = bitcast i8* %42 to %struct.phy_provider*
  %44 = load %struct.ns2_phy_driver*, %struct.ns2_phy_driver** %6, align 8
  %45 = getelementptr inbounds %struct.ns2_phy_driver, %struct.ns2_phy_driver* %44, i32 0, i32 11
  store %struct.phy_provider* %43, %struct.phy_provider** %45, align 8
  %46 = load %struct.ns2_phy_driver*, %struct.ns2_phy_driver** %6, align 8
  %47 = getelementptr inbounds %struct.ns2_phy_driver, %struct.ns2_phy_driver* %46, i32 0, i32 11
  %48 = load %struct.phy_provider*, %struct.phy_provider** %47, align 8
  %49 = call i64 @IS_ERR(%struct.phy_provider* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %36
  %52 = load %struct.ns2_phy_driver*, %struct.ns2_phy_driver** %6, align 8
  %53 = getelementptr inbounds %struct.ns2_phy_driver, %struct.ns2_phy_driver* %52, i32 0, i32 11
  %54 = load %struct.phy_provider*, %struct.phy_provider** %53, align 8
  %55 = call i32 @PTR_ERR(%struct.phy_provider* %54)
  store i32 %55, i32* %2, align 4
  br label %350

56:                                               ; preds = %36
  %57 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %58 = load i32, i32* @IORESOURCE_MEM, align 4
  %59 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %57, i32 %58, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store %struct.resource* %59, %struct.resource** %8, align 8
  %60 = load %struct.device*, %struct.device** %5, align 8
  %61 = load %struct.resource*, %struct.resource** %8, align 8
  %62 = call i8* @devm_ioremap_resource(%struct.device* %60, %struct.resource* %61)
  %63 = bitcast i8* %62 to %struct.phy_provider*
  %64 = load %struct.ns2_phy_driver*, %struct.ns2_phy_driver** %6, align 8
  %65 = getelementptr inbounds %struct.ns2_phy_driver, %struct.ns2_phy_driver* %64, i32 0, i32 10
  store %struct.phy_provider* %63, %struct.phy_provider** %65, align 8
  %66 = load %struct.ns2_phy_driver*, %struct.ns2_phy_driver** %6, align 8
  %67 = getelementptr inbounds %struct.ns2_phy_driver, %struct.ns2_phy_driver* %66, i32 0, i32 10
  %68 = load %struct.phy_provider*, %struct.phy_provider** %67, align 8
  %69 = call i64 @IS_ERR(%struct.phy_provider* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %56
  %72 = load %struct.ns2_phy_driver*, %struct.ns2_phy_driver** %6, align 8
  %73 = getelementptr inbounds %struct.ns2_phy_driver, %struct.ns2_phy_driver* %72, i32 0, i32 10
  %74 = load %struct.phy_provider*, %struct.phy_provider** %73, align 8
  %75 = call i32 @PTR_ERR(%struct.phy_provider* %74)
  store i32 %75, i32* %2, align 4
  br label %350

76:                                               ; preds = %56
  %77 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %78 = load i32, i32* @IORESOURCE_MEM, align 4
  %79 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %77, i32 %78, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  store %struct.resource* %79, %struct.resource** %8, align 8
  %80 = load %struct.device*, %struct.device** %5, align 8
  %81 = load %struct.resource*, %struct.resource** %8, align 8
  %82 = call i8* @devm_ioremap_resource(%struct.device* %80, %struct.resource* %81)
  %83 = bitcast i8* %82 to %struct.phy_provider*
  %84 = load %struct.ns2_phy_driver*, %struct.ns2_phy_driver** %6, align 8
  %85 = getelementptr inbounds %struct.ns2_phy_driver, %struct.ns2_phy_driver* %84, i32 0, i32 5
  store %struct.phy_provider* %83, %struct.phy_provider** %85, align 8
  %86 = load %struct.ns2_phy_driver*, %struct.ns2_phy_driver** %6, align 8
  %87 = getelementptr inbounds %struct.ns2_phy_driver, %struct.ns2_phy_driver* %86, i32 0, i32 5
  %88 = load %struct.phy_provider*, %struct.phy_provider** %87, align 8
  %89 = call i64 @IS_ERR(%struct.phy_provider* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %76
  %92 = load %struct.ns2_phy_driver*, %struct.ns2_phy_driver** %6, align 8
  %93 = getelementptr inbounds %struct.ns2_phy_driver, %struct.ns2_phy_driver* %92, i32 0, i32 5
  %94 = load %struct.phy_provider*, %struct.phy_provider** %93, align 8
  %95 = call i32 @PTR_ERR(%struct.phy_provider* %94)
  store i32 %95, i32* %2, align 4
  br label %350

96:                                               ; preds = %76
  %97 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %98 = load i32, i32* @IORESOURCE_MEM, align 4
  %99 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %97, i32 %98, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  store %struct.resource* %99, %struct.resource** %8, align 8
  %100 = load %struct.device*, %struct.device** %5, align 8
  %101 = load %struct.resource*, %struct.resource** %8, align 8
  %102 = call i8* @devm_ioremap_resource(%struct.device* %100, %struct.resource* %101)
  %103 = bitcast i8* %102 to %struct.phy_provider*
  %104 = load %struct.ns2_phy_driver*, %struct.ns2_phy_driver** %6, align 8
  %105 = getelementptr inbounds %struct.ns2_phy_driver, %struct.ns2_phy_driver* %104, i32 0, i32 9
  store %struct.phy_provider* %103, %struct.phy_provider** %105, align 8
  %106 = load %struct.ns2_phy_driver*, %struct.ns2_phy_driver** %6, align 8
  %107 = getelementptr inbounds %struct.ns2_phy_driver, %struct.ns2_phy_driver* %106, i32 0, i32 9
  %108 = load %struct.phy_provider*, %struct.phy_provider** %107, align 8
  %109 = call i64 @IS_ERR(%struct.phy_provider* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %96
  %112 = load %struct.ns2_phy_driver*, %struct.ns2_phy_driver** %6, align 8
  %113 = getelementptr inbounds %struct.ns2_phy_driver, %struct.ns2_phy_driver* %112, i32 0, i32 9
  %114 = load %struct.phy_provider*, %struct.phy_provider** %113, align 8
  %115 = call i32 @PTR_ERR(%struct.phy_provider* %114)
  store i32 %115, i32* %2, align 4
  br label %350

116:                                              ; preds = %96
  %117 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %118 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %117, i32 0, i32 0
  %119 = load i32, i32* @GPIOD_IN, align 4
  %120 = call i8* @devm_gpiod_get(%struct.device* %118, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %119)
  %121 = bitcast i8* %120 to %struct.phy_provider*
  %122 = load %struct.ns2_phy_driver*, %struct.ns2_phy_driver** %6, align 8
  %123 = getelementptr inbounds %struct.ns2_phy_driver, %struct.ns2_phy_driver* %122, i32 0, i32 7
  store %struct.phy_provider* %121, %struct.phy_provider** %123, align 8
  %124 = load %struct.ns2_phy_driver*, %struct.ns2_phy_driver** %6, align 8
  %125 = getelementptr inbounds %struct.ns2_phy_driver, %struct.ns2_phy_driver* %124, i32 0, i32 7
  %126 = load %struct.phy_provider*, %struct.phy_provider** %125, align 8
  %127 = call i64 @IS_ERR(%struct.phy_provider* %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %136

129:                                              ; preds = %116
  %130 = load %struct.device*, %struct.device** %5, align 8
  %131 = call i32 @dev_err(%struct.device* %130, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %132 = load %struct.ns2_phy_driver*, %struct.ns2_phy_driver** %6, align 8
  %133 = getelementptr inbounds %struct.ns2_phy_driver, %struct.ns2_phy_driver* %132, i32 0, i32 7
  %134 = load %struct.phy_provider*, %struct.phy_provider** %133, align 8
  %135 = call i32 @PTR_ERR(%struct.phy_provider* %134)
  store i32 %135, i32* %2, align 4
  br label %350

136:                                              ; preds = %116
  %137 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %138 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %137, i32 0, i32 0
  %139 = load i32, i32* @GPIOD_IN, align 4
  %140 = call i8* @devm_gpiod_get(%struct.device* %138, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 %139)
  %141 = bitcast i8* %140 to %struct.phy_provider*
  %142 = load %struct.ns2_phy_driver*, %struct.ns2_phy_driver** %6, align 8
  %143 = getelementptr inbounds %struct.ns2_phy_driver, %struct.ns2_phy_driver* %142, i32 0, i32 6
  store %struct.phy_provider* %141, %struct.phy_provider** %143, align 8
  %144 = load %struct.ns2_phy_driver*, %struct.ns2_phy_driver** %6, align 8
  %145 = getelementptr inbounds %struct.ns2_phy_driver, %struct.ns2_phy_driver* %144, i32 0, i32 6
  %146 = load %struct.phy_provider*, %struct.phy_provider** %145, align 8
  %147 = call i64 @IS_ERR(%struct.phy_provider* %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %156

149:                                              ; preds = %136
  %150 = load %struct.device*, %struct.device** %5, align 8
  %151 = call i32 @dev_err(%struct.device* %150, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0))
  %152 = load %struct.ns2_phy_driver*, %struct.ns2_phy_driver** %6, align 8
  %153 = getelementptr inbounds %struct.ns2_phy_driver, %struct.ns2_phy_driver* %152, i32 0, i32 6
  %154 = load %struct.phy_provider*, %struct.phy_provider** %153, align 8
  %155 = call i32 @PTR_ERR(%struct.phy_provider* %154)
  store i32 %155, i32* %2, align 4
  br label %350

156:                                              ; preds = %136
  %157 = load %struct.device*, %struct.device** %5, align 8
  %158 = load i32, i32* @usb_extcon_cable, align 4
  %159 = call %struct.phy_provider* @devm_extcon_dev_allocate(%struct.device* %157, i32 %158)
  %160 = load %struct.ns2_phy_driver*, %struct.ns2_phy_driver** %6, align 8
  %161 = getelementptr inbounds %struct.ns2_phy_driver, %struct.ns2_phy_driver* %160, i32 0, i32 8
  store %struct.phy_provider* %159, %struct.phy_provider** %161, align 8
  %162 = load %struct.ns2_phy_driver*, %struct.ns2_phy_driver** %6, align 8
  %163 = getelementptr inbounds %struct.ns2_phy_driver, %struct.ns2_phy_driver* %162, i32 0, i32 8
  %164 = load %struct.phy_provider*, %struct.phy_provider** %163, align 8
  %165 = call i64 @IS_ERR(%struct.phy_provider* %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %172

167:                                              ; preds = %156
  %168 = load %struct.device*, %struct.device** %5, align 8
  %169 = call i32 @dev_err(%struct.device* %168, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0))
  %170 = load i32, i32* @ENOMEM, align 4
  %171 = sub nsw i32 0, %170
  store i32 %171, i32* %2, align 4
  br label %350

172:                                              ; preds = %156
  %173 = load %struct.device*, %struct.device** %5, align 8
  %174 = load %struct.ns2_phy_driver*, %struct.ns2_phy_driver** %6, align 8
  %175 = getelementptr inbounds %struct.ns2_phy_driver, %struct.ns2_phy_driver* %174, i32 0, i32 8
  %176 = load %struct.phy_provider*, %struct.phy_provider** %175, align 8
  %177 = call i32 @devm_extcon_dev_register(%struct.device* %173, %struct.phy_provider* %176)
  store i32 %177, i32* %9, align 4
  %178 = load i32, i32* %9, align 4
  %179 = icmp slt i32 %178, 0
  br i1 %179, label %180, label %184

180:                                              ; preds = %172
  %181 = load %struct.device*, %struct.device** %5, align 8
  %182 = call i32 @dev_err(%struct.device* %181, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0))
  %183 = load i32, i32* %9, align 4
  store i32 %183, i32* %2, align 4
  br label %350

184:                                              ; preds = %172
  %185 = load %struct.ns2_phy_driver*, %struct.ns2_phy_driver** %6, align 8
  %186 = getelementptr inbounds %struct.ns2_phy_driver, %struct.ns2_phy_driver* %185, i32 0, i32 7
  %187 = load %struct.phy_provider*, %struct.phy_provider** %186, align 8
  %188 = load i32, i32* @GPIO_DELAY, align 4
  %189 = mul nsw i32 %188, 1000
  %190 = call i32 @gpiod_set_debounce(%struct.phy_provider* %187, i32 %189)
  store i32 %190, i32* %9, align 4
  %191 = load i32, i32* %9, align 4
  %192 = icmp slt i32 %191, 0
  br i1 %192, label %193, label %198

193:                                              ; preds = %184
  %194 = load i32, i32* @GPIO_DELAY, align 4
  %195 = call i32 @msecs_to_jiffies(i32 %194)
  %196 = load %struct.ns2_phy_driver*, %struct.ns2_phy_driver** %6, align 8
  %197 = getelementptr inbounds %struct.ns2_phy_driver, %struct.ns2_phy_driver* %196, i32 0, i32 2
  store i32 %195, i32* %197, align 8
  br label %198

198:                                              ; preds = %193, %184
  %199 = load %struct.ns2_phy_driver*, %struct.ns2_phy_driver** %6, align 8
  %200 = getelementptr inbounds %struct.ns2_phy_driver, %struct.ns2_phy_driver* %199, i32 0, i32 3
  %201 = load i32, i32* @extcon_work, align 4
  %202 = call i32 @INIT_DELAYED_WORK(i32* %200, i32 %201)
  %203 = load %struct.ns2_phy_driver*, %struct.ns2_phy_driver** %6, align 8
  %204 = getelementptr inbounds %struct.ns2_phy_driver, %struct.ns2_phy_driver* %203, i32 0, i32 7
  %205 = load %struct.phy_provider*, %struct.phy_provider** %204, align 8
  %206 = call i8* @gpiod_to_irq(%struct.phy_provider* %205)
  %207 = ptrtoint i8* %206 to i64
  %208 = load %struct.ns2_phy_driver*, %struct.ns2_phy_driver** %6, align 8
  %209 = getelementptr inbounds %struct.ns2_phy_driver, %struct.ns2_phy_driver* %208, i32 0, i32 0
  store i64 %207, i64* %209, align 8
  %210 = load %struct.ns2_phy_driver*, %struct.ns2_phy_driver** %6, align 8
  %211 = getelementptr inbounds %struct.ns2_phy_driver, %struct.ns2_phy_driver* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = icmp slt i64 %212, 0
  br i1 %213, label %214, label %221

214:                                              ; preds = %198
  %215 = load %struct.device*, %struct.device** %5, align 8
  %216 = call i32 @dev_err(%struct.device* %215, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0))
  %217 = load %struct.ns2_phy_driver*, %struct.ns2_phy_driver** %6, align 8
  %218 = getelementptr inbounds %struct.ns2_phy_driver, %struct.ns2_phy_driver* %217, i32 0, i32 0
  %219 = load i64, i64* %218, align 8
  %220 = trunc i64 %219 to i32
  store i32 %220, i32* %2, align 4
  br label %350

221:                                              ; preds = %198
  %222 = load %struct.ns2_phy_driver*, %struct.ns2_phy_driver** %6, align 8
  %223 = getelementptr inbounds %struct.ns2_phy_driver, %struct.ns2_phy_driver* %222, i32 0, i32 6
  %224 = load %struct.phy_provider*, %struct.phy_provider** %223, align 8
  %225 = call i8* @gpiod_to_irq(%struct.phy_provider* %224)
  %226 = ptrtoint i8* %225 to i64
  %227 = load %struct.ns2_phy_driver*, %struct.ns2_phy_driver** %6, align 8
  %228 = getelementptr inbounds %struct.ns2_phy_driver, %struct.ns2_phy_driver* %227, i32 0, i32 1
  store i64 %226, i64* %228, align 8
  %229 = load %struct.ns2_phy_driver*, %struct.ns2_phy_driver** %6, align 8
  %230 = getelementptr inbounds %struct.ns2_phy_driver, %struct.ns2_phy_driver* %229, i32 0, i32 1
  %231 = load i64, i64* %230, align 8
  %232 = icmp slt i64 %231, 0
  br i1 %232, label %233, label %240

233:                                              ; preds = %221
  %234 = load %struct.device*, %struct.device** %5, align 8
  %235 = call i32 @dev_err(%struct.device* %234, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0))
  %236 = load %struct.ns2_phy_driver*, %struct.ns2_phy_driver** %6, align 8
  %237 = getelementptr inbounds %struct.ns2_phy_driver, %struct.ns2_phy_driver* %236, i32 0, i32 1
  %238 = load i64, i64* %237, align 8
  %239 = trunc i64 %238 to i32
  store i32 %239, i32* %2, align 4
  br label %350

240:                                              ; preds = %221
  %241 = load %struct.device*, %struct.device** %5, align 8
  %242 = load %struct.ns2_phy_driver*, %struct.ns2_phy_driver** %6, align 8
  %243 = getelementptr inbounds %struct.ns2_phy_driver, %struct.ns2_phy_driver* %242, i32 0, i32 0
  %244 = load i64, i64* %243, align 8
  %245 = trunc i64 %244 to i32
  %246 = load i32, i32* @gpio_irq_handler, align 4
  %247 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %248 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %249 = or i32 %247, %248
  %250 = load %struct.ns2_phy_driver*, %struct.ns2_phy_driver** %6, align 8
  %251 = call i32 @devm_request_irq(%struct.device* %241, i32 %245, i32 %246, i32 %249, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), %struct.ns2_phy_driver* %250)
  store i32 %251, i32* %9, align 4
  %252 = load i32, i32* %9, align 4
  %253 = icmp slt i32 %252, 0
  br i1 %253, label %254, label %258

254:                                              ; preds = %240
  %255 = load %struct.device*, %struct.device** %5, align 8
  %256 = call i32 @dev_err(%struct.device* %255, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.12, i64 0, i64 0))
  %257 = load i32, i32* %9, align 4
  store i32 %257, i32* %2, align 4
  br label %350

258:                                              ; preds = %240
  %259 = load %struct.device*, %struct.device** %5, align 8
  %260 = load %struct.ns2_phy_driver*, %struct.ns2_phy_driver** %6, align 8
  %261 = getelementptr inbounds %struct.ns2_phy_driver, %struct.ns2_phy_driver* %260, i32 0, i32 1
  %262 = load i64, i64* %261, align 8
  %263 = trunc i64 %262 to i32
  %264 = load i32, i32* @gpio_irq_handler, align 4
  %265 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %266 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %267 = or i32 %265, %266
  %268 = load %struct.ns2_phy_driver*, %struct.ns2_phy_driver** %6, align 8
  %269 = call i32 @devm_request_irq(%struct.device* %259, i32 %263, i32 %264, i32 %267, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0), %struct.ns2_phy_driver* %268)
  store i32 %269, i32* %9, align 4
  %270 = load i32, i32* %9, align 4
  %271 = icmp slt i32 %270, 0
  br i1 %271, label %272, label %276

272:                                              ; preds = %258
  %273 = load %struct.device*, %struct.device** %5, align 8
  %274 = call i32 @dev_err(%struct.device* %273, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.14, i64 0, i64 0))
  %275 = load i32, i32* %9, align 4
  store i32 %275, i32* %2, align 4
  br label %350

276:                                              ; preds = %258
  %277 = load %struct.device*, %struct.device** %5, align 8
  %278 = load %struct.ns2_phy_driver*, %struct.ns2_phy_driver** %6, align 8
  %279 = call i32 @dev_set_drvdata(%struct.device* %277, %struct.ns2_phy_driver* %278)
  %280 = load %struct.ns2_phy_driver*, %struct.ns2_phy_driver** %6, align 8
  %281 = getelementptr inbounds %struct.ns2_phy_driver, %struct.ns2_phy_driver* %280, i32 0, i32 5
  %282 = load %struct.phy_provider*, %struct.phy_provider** %281, align 8
  %283 = call i32 @readl(%struct.phy_provider* %282)
  store i32 %283, i32* %10, align 4
  %284 = load i32, i32* @AFE_CORERDY_VDDC, align 4
  %285 = load i32, i32* @PHY_RESETB, align 4
  %286 = or i32 %284, %285
  %287 = xor i32 %286, -1
  %288 = load i32, i32* %10, align 4
  %289 = and i32 %288, %287
  store i32 %289, i32* %10, align 4
  %290 = load i32, i32* %10, align 4
  %291 = load %struct.ns2_phy_driver*, %struct.ns2_phy_driver** %6, align 8
  %292 = getelementptr inbounds %struct.ns2_phy_driver, %struct.ns2_phy_driver* %291, i32 0, i32 5
  %293 = load %struct.phy_provider*, %struct.phy_provider** %292, align 8
  %294 = call i32 @writel(i32 %290, %struct.phy_provider* %293)
  %295 = load %struct.ns2_phy_driver*, %struct.ns2_phy_driver** %6, align 8
  %296 = getelementptr inbounds %struct.ns2_phy_driver, %struct.ns2_phy_driver* %295, i32 0, i32 4
  %297 = load %struct.ns2_phy_data*, %struct.ns2_phy_data** %296, align 8
  store %struct.ns2_phy_data* %297, %struct.ns2_phy_data** %7, align 8
  %298 = load %struct.device*, %struct.device** %5, align 8
  %299 = load %struct.device*, %struct.device** %5, align 8
  %300 = getelementptr inbounds %struct.device, %struct.device* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 4
  %302 = call %struct.phy_provider* @devm_phy_create(%struct.device* %298, i32 %301, i32* @ops)
  %303 = load %struct.ns2_phy_data*, %struct.ns2_phy_data** %7, align 8
  %304 = getelementptr inbounds %struct.ns2_phy_data, %struct.ns2_phy_data* %303, i32 0, i32 0
  store %struct.phy_provider* %302, %struct.phy_provider** %304, align 8
  %305 = load %struct.ns2_phy_data*, %struct.ns2_phy_data** %7, align 8
  %306 = getelementptr inbounds %struct.ns2_phy_data, %struct.ns2_phy_data* %305, i32 0, i32 0
  %307 = load %struct.phy_provider*, %struct.phy_provider** %306, align 8
  %308 = call i64 @IS_ERR(%struct.phy_provider* %307)
  %309 = icmp ne i64 %308, 0
  br i1 %309, label %310, label %317

310:                                              ; preds = %276
  %311 = load %struct.device*, %struct.device** %5, align 8
  %312 = call i32 @dev_err(%struct.device* %311, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.15, i64 0, i64 0))
  %313 = load %struct.ns2_phy_data*, %struct.ns2_phy_data** %7, align 8
  %314 = getelementptr inbounds %struct.ns2_phy_data, %struct.ns2_phy_data* %313, i32 0, i32 0
  %315 = load %struct.phy_provider*, %struct.phy_provider** %314, align 8
  %316 = call i32 @PTR_ERR(%struct.phy_provider* %315)
  store i32 %316, i32* %2, align 4
  br label %350

317:                                              ; preds = %276
  %318 = load %struct.ns2_phy_driver*, %struct.ns2_phy_driver** %6, align 8
  %319 = load %struct.ns2_phy_data*, %struct.ns2_phy_data** %7, align 8
  %320 = getelementptr inbounds %struct.ns2_phy_data, %struct.ns2_phy_data* %319, i32 0, i32 1
  store %struct.ns2_phy_driver* %318, %struct.ns2_phy_driver** %320, align 8
  %321 = load %struct.ns2_phy_data*, %struct.ns2_phy_data** %7, align 8
  %322 = getelementptr inbounds %struct.ns2_phy_data, %struct.ns2_phy_data* %321, i32 0, i32 0
  %323 = load %struct.phy_provider*, %struct.phy_provider** %322, align 8
  %324 = load %struct.ns2_phy_data*, %struct.ns2_phy_data** %7, align 8
  %325 = call i32 @phy_set_drvdata(%struct.phy_provider* %323, %struct.ns2_phy_data* %324)
  %326 = load %struct.device*, %struct.device** %5, align 8
  %327 = load i32, i32* @of_phy_simple_xlate, align 4
  %328 = call %struct.phy_provider* @devm_of_phy_provider_register(%struct.device* %326, i32 %327)
  store %struct.phy_provider* %328, %struct.phy_provider** %4, align 8
  %329 = load %struct.phy_provider*, %struct.phy_provider** %4, align 8
  %330 = call i64 @IS_ERR(%struct.phy_provider* %329)
  %331 = icmp ne i64 %330, 0
  br i1 %331, label %332, label %337

332:                                              ; preds = %317
  %333 = load %struct.device*, %struct.device** %5, align 8
  %334 = call i32 @dev_err(%struct.device* %333, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.16, i64 0, i64 0))
  %335 = load %struct.phy_provider*, %struct.phy_provider** %4, align 8
  %336 = call i32 @PTR_ERR(%struct.phy_provider* %335)
  store i32 %336, i32* %2, align 4
  br label %350

337:                                              ; preds = %317
  %338 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %339 = load %struct.ns2_phy_driver*, %struct.ns2_phy_driver** %6, align 8
  %340 = call i32 @platform_set_drvdata(%struct.platform_device* %338, %struct.ns2_phy_driver* %339)
  %341 = load %struct.device*, %struct.device** %5, align 8
  %342 = call i32 @dev_info(%struct.device* %341, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.17, i64 0, i64 0))
  %343 = load i32, i32* @system_power_efficient_wq, align 4
  %344 = load %struct.ns2_phy_driver*, %struct.ns2_phy_driver** %6, align 8
  %345 = getelementptr inbounds %struct.ns2_phy_driver, %struct.ns2_phy_driver* %344, i32 0, i32 3
  %346 = load %struct.ns2_phy_driver*, %struct.ns2_phy_driver** %6, align 8
  %347 = getelementptr inbounds %struct.ns2_phy_driver, %struct.ns2_phy_driver* %346, i32 0, i32 2
  %348 = load i32, i32* %347, align 8
  %349 = call i32 @queue_delayed_work(i32 %343, i32* %345, i32 %348)
  store i32 0, i32* %2, align 4
  br label %350

350:                                              ; preds = %337, %332, %310, %272, %254, %233, %214, %180, %167, %149, %129, %111, %91, %71, %51, %33, %19
  %351 = load i32, i32* %2, align 4
  ret i32 %351
}

declare dso_local i8* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource_byname(%struct.platform_device*, i32, i8*) #1

declare dso_local i8* @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(%struct.phy_provider*) #1

declare dso_local i32 @PTR_ERR(%struct.phy_provider*) #1

declare dso_local i8* @devm_gpiod_get(%struct.device*, i8*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local %struct.phy_provider* @devm_extcon_dev_allocate(%struct.device*, i32) #1

declare dso_local i32 @devm_extcon_dev_register(%struct.device*, %struct.phy_provider*) #1

declare dso_local i32 @gpiod_set_debounce(%struct.phy_provider*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i8* @gpiod_to_irq(%struct.phy_provider*) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i8*, %struct.ns2_phy_driver*) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.ns2_phy_driver*) #1

declare dso_local i32 @readl(%struct.phy_provider*) #1

declare dso_local i32 @writel(i32, %struct.phy_provider*) #1

declare dso_local %struct.phy_provider* @devm_phy_create(%struct.device*, i32, i32*) #1

declare dso_local i32 @phy_set_drvdata(%struct.phy_provider*, %struct.ns2_phy_data*) #1

declare dso_local %struct.phy_provider* @devm_of_phy_provider_register(%struct.device*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.ns2_phy_driver*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
