; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_qcom_smbb.c_smbb_charger_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_qcom_smbb.c_smbb_charger_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reg_off_mask_default = type { i32, i32, i32, i64, i32, i32 (i32, %struct.smbb_charger*)* }
%struct.smbb_charger = type { i32, i64, i32, i8*, i8*, %struct.TYPE_11__, i8*, i8*, i8*, i8*, i8*, i32, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { i32, i8*, i8*, i8*, i32, i32, i32* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.platform_device = type { %struct.TYPE_10__ }
%struct.power_supply_config = type { i32, %struct.reg_off_mask_default*, %struct.smbb_charger*, i32 }
%struct.regulator_config = type { %struct.smbb_charger*, %struct.TYPE_10__* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"failed to locate regmap\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"missing or invalid 'reg' property\0A\00", align 1
@SMBB_MISC_REV2 = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [25 x i8] c"unable to read revision\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"v1 hardware not supported\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"Initializing SMBB rev %u\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"qcom,disable-dc\00", align 1
@_ATTR_CNT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [32 x i8] c"failed to parse/apply settings\0A\00", align 1
@bat_psy_desc = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [28 x i8] c"failed to register battery\0A\00", align 1
@smbb_bif = common dso_local global %struct.reg_off_mask_default* null, align 8
@usb_psy_desc = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [37 x i8] c"failed to register USB power supply\0A\00", align 1
@smbb_usb_extcon_cable = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [34 x i8] c"failed to allocate extcon device\0A\00", align 1
@.str.11 = private unnamed_addr constant [34 x i8] c"failed to register extcon device\0A\00", align 1
@dc_psy_desc = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [36 x i8] c"failed to register DC power supply\0A\00", align 1
@smbb_charger_irqs = common dso_local global %struct.reg_off_mask_default* null, align 8
@.str.13 = private unnamed_addr constant [24 x i8] c"failed to get irq '%s'\0A\00", align 1
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [28 x i8] c"failed to request irq '%s'\0A\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"otg-vbus\00", align 1
@smbb_chg_otg_ops = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@REGULATOR_VOLTAGE = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [11 x i8] c"usb-otg-in\00", align 1
@.str.17 = private unnamed_addr constant [31 x i8] c"qcom,jeita-extended-temp-range\00", align 1
@SMBB_BAT_BTC_CTRL = common dso_local global i64 0, align 8
@BTC_CTRL_COLD_EXT = common dso_local global i32 0, align 4
@BTC_CTRL_HOT_EXT_N = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [36 x i8] c"unable to set %s temperature range\0A\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"JEITA extended\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"normal\00", align 1
@smbb_charger_setup = common dso_local global %struct.reg_off_mask_default* null, align 8
@.str.21 = private unnamed_addr constant [42 x i8] c"unable to initializing charging, bailing\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @smbb_charger_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smbb_charger_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.power_supply_config, align 8
  %5 = alloca %struct.power_supply_config, align 8
  %6 = alloca %struct.power_supply_config, align 8
  %7 = alloca %struct.smbb_charger*, align 8
  %8 = alloca %struct.regulator_config, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.reg_off_mask_default*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %13 = bitcast %struct.power_supply_config* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 32, i1 false)
  %14 = bitcast %struct.power_supply_config* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %14, i8 0, i64 32, i1 false)
  %15 = bitcast %struct.power_supply_config* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %15, i8 0, i64 32, i1 false)
  %16 = bitcast %struct.regulator_config* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %16, i8 0, i64 16, i1 false)
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.smbb_charger* @devm_kzalloc(%struct.TYPE_10__* %18, i32 144, i32 %19)
  store %struct.smbb_charger* %20, %struct.smbb_charger** %7, align 8
  %21 = load %struct.smbb_charger*, %struct.smbb_charger** %7, align 8
  %22 = icmp ne %struct.smbb_charger* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %1
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %470

26:                                               ; preds = %1
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %27, i32 0, i32 0
  %29 = load %struct.smbb_charger*, %struct.smbb_charger** %7, align 8
  %30 = getelementptr inbounds %struct.smbb_charger, %struct.smbb_charger* %29, i32 0, i32 12
  store %struct.TYPE_10__* %28, %struct.TYPE_10__** %30, align 8
  %31 = load %struct.smbb_charger*, %struct.smbb_charger** %7, align 8
  %32 = getelementptr inbounds %struct.smbb_charger, %struct.smbb_charger* %31, i32 0, i32 11
  %33 = call i32 @mutex_init(i32* %32)
  %34 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %35 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @dev_get_regmap(i32 %37, i32* null)
  %39 = load %struct.smbb_charger*, %struct.smbb_charger** %7, align 8
  %40 = getelementptr inbounds %struct.smbb_charger, %struct.smbb_charger* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 8
  %41 = load %struct.smbb_charger*, %struct.smbb_charger** %7, align 8
  %42 = getelementptr inbounds %struct.smbb_charger, %struct.smbb_charger* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %26
  %46 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %47 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %46, i32 0, i32 0
  %48 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %47, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %49 = load i32, i32* @ENODEV, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %470

51:                                               ; preds = %26
  %52 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %53 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.smbb_charger*, %struct.smbb_charger** %7, align 8
  %57 = getelementptr inbounds %struct.smbb_charger, %struct.smbb_charger* %56, i32 0, i32 1
  %58 = call i32 @of_property_read_u32(i32 %55, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i64* %57)
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %51
  %62 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %63 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %62, i32 0, i32 0
  %64 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %63, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %65 = load i32, i32* %9, align 4
  store i32 %65, i32* %2, align 4
  br label %470

66:                                               ; preds = %51
  %67 = load %struct.smbb_charger*, %struct.smbb_charger** %7, align 8
  %68 = getelementptr inbounds %struct.smbb_charger, %struct.smbb_charger* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.smbb_charger*, %struct.smbb_charger** %7, align 8
  %71 = getelementptr inbounds %struct.smbb_charger, %struct.smbb_charger* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @SMBB_MISC_REV2, align 8
  %74 = add nsw i64 %72, %73
  %75 = load %struct.smbb_charger*, %struct.smbb_charger** %7, align 8
  %76 = getelementptr inbounds %struct.smbb_charger, %struct.smbb_charger* %75, i32 0, i32 0
  %77 = call i32 @regmap_read(i32 %69, i64 %74, i32* %76)
  store i32 %77, i32* %9, align 4
  %78 = load i32, i32* %9, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %66
  %81 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %82 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %81, i32 0, i32 0
  %83 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %82, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %84 = load i32, i32* %9, align 4
  store i32 %84, i32* %2, align 4
  br label %470

85:                                               ; preds = %66
  %86 = load %struct.smbb_charger*, %struct.smbb_charger** %7, align 8
  %87 = getelementptr inbounds %struct.smbb_charger, %struct.smbb_charger* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %87, align 8
  %90 = load %struct.smbb_charger*, %struct.smbb_charger** %7, align 8
  %91 = getelementptr inbounds %struct.smbb_charger, %struct.smbb_charger* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp ne i32 %92, 2
  br i1 %93, label %94, label %105

94:                                               ; preds = %85
  %95 = load %struct.smbb_charger*, %struct.smbb_charger** %7, align 8
  %96 = getelementptr inbounds %struct.smbb_charger, %struct.smbb_charger* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = icmp ne i32 %97, 3
  br i1 %98, label %99, label %105

99:                                               ; preds = %94
  %100 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %101 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %100, i32 0, i32 0
  %102 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %101, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %103 = load i32, i32* @ENODEV, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %2, align 4
  br label %470

105:                                              ; preds = %94, %85
  %106 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %107 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %106, i32 0, i32 0
  %108 = load %struct.smbb_charger*, %struct.smbb_charger** %7, align 8
  %109 = getelementptr inbounds %struct.smbb_charger, %struct.smbb_charger* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @dev_info(%struct.TYPE_10__* %107, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32 %110)
  %112 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %113 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i8* @of_property_read_bool(i32 %115, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  %117 = load %struct.smbb_charger*, %struct.smbb_charger** %7, align 8
  %118 = getelementptr inbounds %struct.smbb_charger, %struct.smbb_charger* %117, i32 0, i32 7
  store i8* %116, i8** %118, align 8
  store i32 0, i32* %10, align 4
  br label %119

119:                                              ; preds = %135, %105
  %120 = load i32, i32* %10, align 4
  %121 = load i32, i32* @_ATTR_CNT, align 4
  %122 = icmp slt i32 %120, %121
  br i1 %122, label %123, label %138

123:                                              ; preds = %119
  %124 = load %struct.smbb_charger*, %struct.smbb_charger** %7, align 8
  %125 = load i32, i32* %10, align 4
  %126 = call i32 @smbb_charger_attr_parse(%struct.smbb_charger* %124, i32 %125)
  store i32 %126, i32* %9, align 4
  %127 = load i32, i32* %9, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %123
  %130 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %131 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %130, i32 0, i32 0
  %132 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %131, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0))
  %133 = load i32, i32* %9, align 4
  store i32 %133, i32* %2, align 4
  br label %470

134:                                              ; preds = %123
  br label %135

135:                                              ; preds = %134
  %136 = load i32, i32* %10, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %10, align 4
  br label %119

138:                                              ; preds = %119
  %139 = load %struct.smbb_charger*, %struct.smbb_charger** %7, align 8
  %140 = getelementptr inbounds %struct.power_supply_config, %struct.power_supply_config* %4, i32 0, i32 2
  store %struct.smbb_charger* %139, %struct.smbb_charger** %140, align 8
  %141 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %142 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = getelementptr inbounds %struct.power_supply_config, %struct.power_supply_config* %4, i32 0, i32 3
  store i32 %144, i32* %145, align 8
  %146 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %147 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %146, i32 0, i32 0
  %148 = call i8* @devm_power_supply_register(%struct.TYPE_10__* %147, i32* @bat_psy_desc, %struct.power_supply_config* %4)
  %149 = load %struct.smbb_charger*, %struct.smbb_charger** %7, align 8
  %150 = getelementptr inbounds %struct.smbb_charger, %struct.smbb_charger* %149, i32 0, i32 10
  store i8* %148, i8** %150, align 8
  %151 = load %struct.smbb_charger*, %struct.smbb_charger** %7, align 8
  %152 = getelementptr inbounds %struct.smbb_charger, %struct.smbb_charger* %151, i32 0, i32 10
  %153 = load i8*, i8** %152, align 8
  %154 = call i64 @IS_ERR(i8* %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %164

156:                                              ; preds = %138
  %157 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %158 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %157, i32 0, i32 0
  %159 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %158, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0))
  %160 = load %struct.smbb_charger*, %struct.smbb_charger** %7, align 8
  %161 = getelementptr inbounds %struct.smbb_charger, %struct.smbb_charger* %160, i32 0, i32 10
  %162 = load i8*, i8** %161, align 8
  %163 = call i32 @PTR_ERR(i8* %162)
  store i32 %163, i32* %2, align 4
  br label %470

164:                                              ; preds = %138
  %165 = load %struct.smbb_charger*, %struct.smbb_charger** %7, align 8
  %166 = getelementptr inbounds %struct.power_supply_config, %struct.power_supply_config* %5, i32 0, i32 2
  store %struct.smbb_charger* %165, %struct.smbb_charger** %166, align 8
  %167 = load %struct.reg_off_mask_default*, %struct.reg_off_mask_default** @smbb_bif, align 8
  %168 = getelementptr inbounds %struct.power_supply_config, %struct.power_supply_config* %5, i32 0, i32 1
  store %struct.reg_off_mask_default* %167, %struct.reg_off_mask_default** %168, align 8
  %169 = load %struct.reg_off_mask_default*, %struct.reg_off_mask_default** @smbb_bif, align 8
  %170 = call i32 @ARRAY_SIZE(%struct.reg_off_mask_default* %169)
  %171 = getelementptr inbounds %struct.power_supply_config, %struct.power_supply_config* %5, i32 0, i32 0
  store i32 %170, i32* %171, align 8
  %172 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %173 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %172, i32 0, i32 0
  %174 = call i8* @devm_power_supply_register(%struct.TYPE_10__* %173, i32* @usb_psy_desc, %struct.power_supply_config* %5)
  %175 = load %struct.smbb_charger*, %struct.smbb_charger** %7, align 8
  %176 = getelementptr inbounds %struct.smbb_charger, %struct.smbb_charger* %175, i32 0, i32 9
  store i8* %174, i8** %176, align 8
  %177 = load %struct.smbb_charger*, %struct.smbb_charger** %7, align 8
  %178 = getelementptr inbounds %struct.smbb_charger, %struct.smbb_charger* %177, i32 0, i32 9
  %179 = load i8*, i8** %178, align 8
  %180 = call i64 @IS_ERR(i8* %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %190

182:                                              ; preds = %164
  %183 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %184 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %183, i32 0, i32 0
  %185 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %184, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0))
  %186 = load %struct.smbb_charger*, %struct.smbb_charger** %7, align 8
  %187 = getelementptr inbounds %struct.smbb_charger, %struct.smbb_charger* %186, i32 0, i32 9
  %188 = load i8*, i8** %187, align 8
  %189 = call i32 @PTR_ERR(i8* %188)
  store i32 %189, i32* %2, align 4
  br label %470

190:                                              ; preds = %164
  %191 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %192 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %191, i32 0, i32 0
  %193 = load i32, i32* @smbb_usb_extcon_cable, align 4
  %194 = call i8* @devm_extcon_dev_allocate(%struct.TYPE_10__* %192, i32 %193)
  %195 = load %struct.smbb_charger*, %struct.smbb_charger** %7, align 8
  %196 = getelementptr inbounds %struct.smbb_charger, %struct.smbb_charger* %195, i32 0, i32 8
  store i8* %194, i8** %196, align 8
  %197 = load %struct.smbb_charger*, %struct.smbb_charger** %7, align 8
  %198 = getelementptr inbounds %struct.smbb_charger, %struct.smbb_charger* %197, i32 0, i32 8
  %199 = load i8*, i8** %198, align 8
  %200 = call i64 @IS_ERR(i8* %199)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %208

202:                                              ; preds = %190
  %203 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %204 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %203, i32 0, i32 0
  %205 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %204, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0))
  %206 = load i32, i32* @ENOMEM, align 4
  %207 = sub nsw i32 0, %206
  store i32 %207, i32* %2, align 4
  br label %470

208:                                              ; preds = %190
  %209 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %210 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %209, i32 0, i32 0
  %211 = load %struct.smbb_charger*, %struct.smbb_charger** %7, align 8
  %212 = getelementptr inbounds %struct.smbb_charger, %struct.smbb_charger* %211, i32 0, i32 8
  %213 = load i8*, i8** %212, align 8
  %214 = call i32 @devm_extcon_dev_register(%struct.TYPE_10__* %210, i8* %213)
  store i32 %214, i32* %9, align 4
  %215 = load i32, i32* %9, align 4
  %216 = icmp slt i32 %215, 0
  br i1 %216, label %217, label %222

217:                                              ; preds = %208
  %218 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %219 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %218, i32 0, i32 0
  %220 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %219, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.11, i64 0, i64 0))
  %221 = load i32, i32* %9, align 4
  store i32 %221, i32* %2, align 4
  br label %470

222:                                              ; preds = %208
  %223 = load %struct.smbb_charger*, %struct.smbb_charger** %7, align 8
  %224 = getelementptr inbounds %struct.smbb_charger, %struct.smbb_charger* %223, i32 0, i32 7
  %225 = load i8*, i8** %224, align 8
  %226 = icmp ne i8* %225, null
  br i1 %226, label %254, label %227

227:                                              ; preds = %222
  %228 = load %struct.smbb_charger*, %struct.smbb_charger** %7, align 8
  %229 = getelementptr inbounds %struct.power_supply_config, %struct.power_supply_config* %6, i32 0, i32 2
  store %struct.smbb_charger* %228, %struct.smbb_charger** %229, align 8
  %230 = load %struct.reg_off_mask_default*, %struct.reg_off_mask_default** @smbb_bif, align 8
  %231 = getelementptr inbounds %struct.power_supply_config, %struct.power_supply_config* %6, i32 0, i32 1
  store %struct.reg_off_mask_default* %230, %struct.reg_off_mask_default** %231, align 8
  %232 = load %struct.reg_off_mask_default*, %struct.reg_off_mask_default** @smbb_bif, align 8
  %233 = call i32 @ARRAY_SIZE(%struct.reg_off_mask_default* %232)
  %234 = getelementptr inbounds %struct.power_supply_config, %struct.power_supply_config* %6, i32 0, i32 0
  store i32 %233, i32* %234, align 8
  %235 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %236 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %235, i32 0, i32 0
  %237 = call i8* @devm_power_supply_register(%struct.TYPE_10__* %236, i32* @dc_psy_desc, %struct.power_supply_config* %6)
  %238 = load %struct.smbb_charger*, %struct.smbb_charger** %7, align 8
  %239 = getelementptr inbounds %struct.smbb_charger, %struct.smbb_charger* %238, i32 0, i32 6
  store i8* %237, i8** %239, align 8
  %240 = load %struct.smbb_charger*, %struct.smbb_charger** %7, align 8
  %241 = getelementptr inbounds %struct.smbb_charger, %struct.smbb_charger* %240, i32 0, i32 6
  %242 = load i8*, i8** %241, align 8
  %243 = call i64 @IS_ERR(i8* %242)
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %253

245:                                              ; preds = %227
  %246 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %247 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %246, i32 0, i32 0
  %248 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %247, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.12, i64 0, i64 0))
  %249 = load %struct.smbb_charger*, %struct.smbb_charger** %7, align 8
  %250 = getelementptr inbounds %struct.smbb_charger, %struct.smbb_charger* %249, i32 0, i32 6
  %251 = load i8*, i8** %250, align 8
  %252 = call i32 @PTR_ERR(i8* %251)
  store i32 %252, i32* %2, align 4
  br label %470

253:                                              ; preds = %227
  br label %254

254:                                              ; preds = %253, %222
  store i32 0, i32* %10, align 4
  br label %255

255:                                              ; preds = %324, %254
  %256 = load i32, i32* %10, align 4
  %257 = load %struct.reg_off_mask_default*, %struct.reg_off_mask_default** @smbb_charger_irqs, align 8
  %258 = call i32 @ARRAY_SIZE(%struct.reg_off_mask_default* %257)
  %259 = icmp slt i32 %256, %258
  br i1 %259, label %260, label %327

260:                                              ; preds = %255
  %261 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %262 = load %struct.reg_off_mask_default*, %struct.reg_off_mask_default** @smbb_charger_irqs, align 8
  %263 = load i32, i32* %10, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds %struct.reg_off_mask_default, %struct.reg_off_mask_default* %262, i64 %264
  %266 = getelementptr inbounds %struct.reg_off_mask_default, %struct.reg_off_mask_default* %265, i32 0, i32 4
  %267 = load i32, i32* %266, align 8
  %268 = call i32 @platform_get_irq_byname(%struct.platform_device* %261, i32 %267)
  store i32 %268, i32* %11, align 4
  %269 = load i32, i32* %11, align 4
  %270 = icmp slt i32 %269, 0
  br i1 %270, label %271, label %282

271:                                              ; preds = %260
  %272 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %273 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %272, i32 0, i32 0
  %274 = load %struct.reg_off_mask_default*, %struct.reg_off_mask_default** @smbb_charger_irqs, align 8
  %275 = load i32, i32* %10, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds %struct.reg_off_mask_default, %struct.reg_off_mask_default* %274, i64 %276
  %278 = getelementptr inbounds %struct.reg_off_mask_default, %struct.reg_off_mask_default* %277, i32 0, i32 4
  %279 = load i32, i32* %278, align 8
  %280 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %273, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0), i32 %279)
  %281 = load i32, i32* %11, align 4
  store i32 %281, i32* %2, align 4
  br label %470

282:                                              ; preds = %260
  %283 = load %struct.reg_off_mask_default*, %struct.reg_off_mask_default** @smbb_charger_irqs, align 8
  %284 = load i32, i32* %10, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds %struct.reg_off_mask_default, %struct.reg_off_mask_default* %283, i64 %285
  %287 = getelementptr inbounds %struct.reg_off_mask_default, %struct.reg_off_mask_default* %286, i32 0, i32 5
  %288 = load i32 (i32, %struct.smbb_charger*)*, i32 (i32, %struct.smbb_charger*)** %287, align 8
  %289 = load i32, i32* %11, align 4
  %290 = load %struct.smbb_charger*, %struct.smbb_charger** %7, align 8
  %291 = call i32 %288(i32 %289, %struct.smbb_charger* %290)
  %292 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %293 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %292, i32 0, i32 0
  %294 = load i32, i32* %11, align 4
  %295 = load %struct.reg_off_mask_default*, %struct.reg_off_mask_default** @smbb_charger_irqs, align 8
  %296 = load i32, i32* %10, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds %struct.reg_off_mask_default, %struct.reg_off_mask_default* %295, i64 %297
  %299 = getelementptr inbounds %struct.reg_off_mask_default, %struct.reg_off_mask_default* %298, i32 0, i32 5
  %300 = load i32 (i32, %struct.smbb_charger*)*, i32 (i32, %struct.smbb_charger*)** %299, align 8
  %301 = load i32, i32* @IRQF_ONESHOT, align 4
  %302 = load %struct.reg_off_mask_default*, %struct.reg_off_mask_default** @smbb_charger_irqs, align 8
  %303 = load i32, i32* %10, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds %struct.reg_off_mask_default, %struct.reg_off_mask_default* %302, i64 %304
  %306 = getelementptr inbounds %struct.reg_off_mask_default, %struct.reg_off_mask_default* %305, i32 0, i32 4
  %307 = load i32, i32* %306, align 8
  %308 = load %struct.smbb_charger*, %struct.smbb_charger** %7, align 8
  %309 = call i32 @devm_request_threaded_irq(%struct.TYPE_10__* %293, i32 %294, i32* null, i32 (i32, %struct.smbb_charger*)* %300, i32 %301, i32 %307, %struct.smbb_charger* %308)
  store i32 %309, i32* %9, align 4
  %310 = load i32, i32* %9, align 4
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %312, label %323

312:                                              ; preds = %282
  %313 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %314 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %313, i32 0, i32 0
  %315 = load %struct.reg_off_mask_default*, %struct.reg_off_mask_default** @smbb_charger_irqs, align 8
  %316 = load i32, i32* %10, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds %struct.reg_off_mask_default, %struct.reg_off_mask_default* %315, i64 %317
  %319 = getelementptr inbounds %struct.reg_off_mask_default, %struct.reg_off_mask_default* %318, i32 0, i32 4
  %320 = load i32, i32* %319, align 8
  %321 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %314, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.14, i64 0, i64 0), i32 %320)
  %322 = load i32, i32* %9, align 4
  store i32 %322, i32* %2, align 4
  br label %470

323:                                              ; preds = %282
  br label %324

324:                                              ; preds = %323
  %325 = load i32, i32* %10, align 4
  %326 = add nsw i32 %325, 1
  store i32 %326, i32* %10, align 4
  br label %255

327:                                              ; preds = %255
  %328 = load %struct.smbb_charger*, %struct.smbb_charger** %7, align 8
  %329 = getelementptr inbounds %struct.smbb_charger, %struct.smbb_charger* %328, i32 0, i32 5
  %330 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %329, i32 0, i32 0
  store i32 -1, i32* %330, align 8
  %331 = load %struct.smbb_charger*, %struct.smbb_charger** %7, align 8
  %332 = getelementptr inbounds %struct.smbb_charger, %struct.smbb_charger* %331, i32 0, i32 5
  %333 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %332, i32 0, i32 1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0), i8** %333, align 8
  %334 = load %struct.smbb_charger*, %struct.smbb_charger** %7, align 8
  %335 = getelementptr inbounds %struct.smbb_charger, %struct.smbb_charger* %334, i32 0, i32 5
  %336 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %335, i32 0, i32 6
  store i32* @smbb_chg_otg_ops, i32** %336, align 8
  %337 = load i32, i32* @THIS_MODULE, align 4
  %338 = load %struct.smbb_charger*, %struct.smbb_charger** %7, align 8
  %339 = getelementptr inbounds %struct.smbb_charger, %struct.smbb_charger* %338, i32 0, i32 5
  %340 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %339, i32 0, i32 5
  store i32 %337, i32* %340, align 4
  %341 = load i32, i32* @REGULATOR_VOLTAGE, align 4
  %342 = load %struct.smbb_charger*, %struct.smbb_charger** %7, align 8
  %343 = getelementptr inbounds %struct.smbb_charger, %struct.smbb_charger* %342, i32 0, i32 5
  %344 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %343, i32 0, i32 4
  store i32 %341, i32* %344, align 8
  %345 = load %struct.smbb_charger*, %struct.smbb_charger** %7, align 8
  %346 = getelementptr inbounds %struct.smbb_charger, %struct.smbb_charger* %345, i32 0, i32 5
  %347 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %346, i32 0, i32 2
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i64 0, i64 0), i8** %347, align 8
  %348 = load %struct.smbb_charger*, %struct.smbb_charger** %7, align 8
  %349 = getelementptr inbounds %struct.smbb_charger, %struct.smbb_charger* %348, i32 0, i32 5
  %350 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %349, i32 0, i32 3
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0), i8** %350, align 8
  %351 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %352 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %351, i32 0, i32 0
  %353 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %8, i32 0, i32 1
  store %struct.TYPE_10__* %352, %struct.TYPE_10__** %353, align 8
  %354 = load %struct.smbb_charger*, %struct.smbb_charger** %7, align 8
  %355 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %8, i32 0, i32 0
  store %struct.smbb_charger* %354, %struct.smbb_charger** %355, align 8
  %356 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %357 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %356, i32 0, i32 0
  %358 = load %struct.smbb_charger*, %struct.smbb_charger** %7, align 8
  %359 = getelementptr inbounds %struct.smbb_charger, %struct.smbb_charger* %358, i32 0, i32 5
  %360 = call i8* @devm_regulator_register(%struct.TYPE_10__* %357, %struct.TYPE_11__* %359, %struct.regulator_config* %8)
  %361 = load %struct.smbb_charger*, %struct.smbb_charger** %7, align 8
  %362 = getelementptr inbounds %struct.smbb_charger, %struct.smbb_charger* %361, i32 0, i32 4
  store i8* %360, i8** %362, align 8
  %363 = load %struct.smbb_charger*, %struct.smbb_charger** %7, align 8
  %364 = getelementptr inbounds %struct.smbb_charger, %struct.smbb_charger* %363, i32 0, i32 4
  %365 = load i8*, i8** %364, align 8
  %366 = call i64 @IS_ERR(i8* %365)
  %367 = icmp ne i64 %366, 0
  br i1 %367, label %368, label %373

368:                                              ; preds = %327
  %369 = load %struct.smbb_charger*, %struct.smbb_charger** %7, align 8
  %370 = getelementptr inbounds %struct.smbb_charger, %struct.smbb_charger* %369, i32 0, i32 4
  %371 = load i8*, i8** %370, align 8
  %372 = call i32 @PTR_ERR(i8* %371)
  store i32 %372, i32* %2, align 4
  br label %470

373:                                              ; preds = %327
  %374 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %375 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %374, i32 0, i32 0
  %376 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %375, i32 0, i32 0
  %377 = load i32, i32* %376, align 4
  %378 = call i8* @of_property_read_bool(i32 %377, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.17, i64 0, i64 0))
  %379 = load %struct.smbb_charger*, %struct.smbb_charger** %7, align 8
  %380 = getelementptr inbounds %struct.smbb_charger, %struct.smbb_charger* %379, i32 0, i32 3
  store i8* %378, i8** %380, align 8
  %381 = load %struct.smbb_charger*, %struct.smbb_charger** %7, align 8
  %382 = getelementptr inbounds %struct.smbb_charger, %struct.smbb_charger* %381, i32 0, i32 2
  %383 = load i32, i32* %382, align 8
  %384 = load %struct.smbb_charger*, %struct.smbb_charger** %7, align 8
  %385 = getelementptr inbounds %struct.smbb_charger, %struct.smbb_charger* %384, i32 0, i32 1
  %386 = load i64, i64* %385, align 8
  %387 = load i64, i64* @SMBB_BAT_BTC_CTRL, align 8
  %388 = add nsw i64 %386, %387
  %389 = load i32, i32* @BTC_CTRL_COLD_EXT, align 4
  %390 = load i32, i32* @BTC_CTRL_HOT_EXT_N, align 4
  %391 = or i32 %389, %390
  %392 = load %struct.smbb_charger*, %struct.smbb_charger** %7, align 8
  %393 = getelementptr inbounds %struct.smbb_charger, %struct.smbb_charger* %392, i32 0, i32 3
  %394 = load i8*, i8** %393, align 8
  %395 = icmp ne i8* %394, null
  br i1 %395, label %396, label %398

396:                                              ; preds = %373
  %397 = load i32, i32* @BTC_CTRL_COLD_EXT, align 4
  br label %400

398:                                              ; preds = %373
  %399 = load i32, i32* @BTC_CTRL_HOT_EXT_N, align 4
  br label %400

400:                                              ; preds = %398, %396
  %401 = phi i32 [ %397, %396 ], [ %399, %398 ]
  %402 = call i32 @regmap_update_bits(i32 %383, i64 %388, i32 %391, i32 %401)
  store i32 %402, i32* %9, align 4
  %403 = load i32, i32* %9, align 4
  %404 = icmp ne i32 %403, 0
  br i1 %404, label %405, label %416

405:                                              ; preds = %400
  %406 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %407 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %406, i32 0, i32 0
  %408 = load %struct.smbb_charger*, %struct.smbb_charger** %7, align 8
  %409 = getelementptr inbounds %struct.smbb_charger, %struct.smbb_charger* %408, i32 0, i32 3
  %410 = load i8*, i8** %409, align 8
  %411 = icmp ne i8* %410, null
  %412 = zext i1 %411 to i64
  %413 = select i1 %411, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i64 0, i64 0)
  %414 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %407, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.18, i64 0, i64 0), i8* %413)
  %415 = load i32, i32* %9, align 4
  store i32 %415, i32* %2, align 4
  br label %470

416:                                              ; preds = %400
  store i32 0, i32* %10, align 4
  br label %417

417:                                              ; preds = %463, %416
  %418 = load i32, i32* %10, align 4
  %419 = load %struct.reg_off_mask_default*, %struct.reg_off_mask_default** @smbb_charger_setup, align 8
  %420 = call i32 @ARRAY_SIZE(%struct.reg_off_mask_default* %419)
  %421 = icmp slt i32 %418, %420
  br i1 %421, label %422, label %466

422:                                              ; preds = %417
  %423 = load %struct.reg_off_mask_default*, %struct.reg_off_mask_default** @smbb_charger_setup, align 8
  %424 = load i32, i32* %10, align 4
  %425 = sext i32 %424 to i64
  %426 = getelementptr inbounds %struct.reg_off_mask_default, %struct.reg_off_mask_default* %423, i64 %425
  store %struct.reg_off_mask_default* %426, %struct.reg_off_mask_default** %12, align 8
  %427 = load %struct.reg_off_mask_default*, %struct.reg_off_mask_default** %12, align 8
  %428 = getelementptr inbounds %struct.reg_off_mask_default, %struct.reg_off_mask_default* %427, i32 0, i32 0
  %429 = load i32, i32* %428, align 8
  %430 = load %struct.smbb_charger*, %struct.smbb_charger** %7, align 8
  %431 = getelementptr inbounds %struct.smbb_charger, %struct.smbb_charger* %430, i32 0, i32 0
  %432 = load i32, i32* %431, align 8
  %433 = call i32 @BIT(i32 %432)
  %434 = and i32 %429, %433
  %435 = icmp ne i32 %434, 0
  br i1 %435, label %436, label %437

436:                                              ; preds = %422
  br label %463

437:                                              ; preds = %422
  %438 = load %struct.smbb_charger*, %struct.smbb_charger** %7, align 8
  %439 = getelementptr inbounds %struct.smbb_charger, %struct.smbb_charger* %438, i32 0, i32 2
  %440 = load i32, i32* %439, align 8
  %441 = load %struct.smbb_charger*, %struct.smbb_charger** %7, align 8
  %442 = getelementptr inbounds %struct.smbb_charger, %struct.smbb_charger* %441, i32 0, i32 1
  %443 = load i64, i64* %442, align 8
  %444 = load %struct.reg_off_mask_default*, %struct.reg_off_mask_default** %12, align 8
  %445 = getelementptr inbounds %struct.reg_off_mask_default, %struct.reg_off_mask_default* %444, i32 0, i32 3
  %446 = load i64, i64* %445, align 8
  %447 = add nsw i64 %443, %446
  %448 = load %struct.reg_off_mask_default*, %struct.reg_off_mask_default** %12, align 8
  %449 = getelementptr inbounds %struct.reg_off_mask_default, %struct.reg_off_mask_default* %448, i32 0, i32 1
  %450 = load i32, i32* %449, align 4
  %451 = load %struct.reg_off_mask_default*, %struct.reg_off_mask_default** %12, align 8
  %452 = getelementptr inbounds %struct.reg_off_mask_default, %struct.reg_off_mask_default* %451, i32 0, i32 2
  %453 = load i32, i32* %452, align 8
  %454 = call i32 @regmap_update_bits(i32 %440, i64 %447, i32 %450, i32 %453)
  store i32 %454, i32* %9, align 4
  %455 = load i32, i32* %9, align 4
  %456 = icmp ne i32 %455, 0
  br i1 %456, label %457, label %462

457:                                              ; preds = %437
  %458 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %459 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %458, i32 0, i32 0
  %460 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %459, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.21, i64 0, i64 0))
  %461 = load i32, i32* %9, align 4
  store i32 %461, i32* %2, align 4
  br label %470

462:                                              ; preds = %437
  br label %463

463:                                              ; preds = %462, %436
  %464 = load i32, i32* %10, align 4
  %465 = add nsw i32 %464, 1
  store i32 %465, i32* %10, align 4
  br label %417

466:                                              ; preds = %417
  %467 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %468 = load %struct.smbb_charger*, %struct.smbb_charger** %7, align 8
  %469 = call i32 @platform_set_drvdata(%struct.platform_device* %467, %struct.smbb_charger* %468)
  store i32 0, i32* %2, align 4
  br label %470

470:                                              ; preds = %466, %457, %405, %368, %312, %271, %245, %217, %202, %182, %156, %129, %99, %80, %61, %45, %23
  %471 = load i32, i32* %2, align 4
  ret i32 %471
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.smbb_charger* @devm_kzalloc(%struct.TYPE_10__*, i32, i32) #2

declare dso_local i32 @mutex_init(i32*) #2

declare dso_local i32 @dev_get_regmap(i32, i32*) #2

declare dso_local i32 @dev_err(%struct.TYPE_10__*, i8*, ...) #2

declare dso_local i32 @of_property_read_u32(i32, i8*, i64*) #2

declare dso_local i32 @regmap_read(i32, i64, i32*) #2

declare dso_local i32 @dev_info(%struct.TYPE_10__*, i8*, i32) #2

declare dso_local i8* @of_property_read_bool(i32, i8*) #2

declare dso_local i32 @smbb_charger_attr_parse(%struct.smbb_charger*, i32) #2

declare dso_local i8* @devm_power_supply_register(%struct.TYPE_10__*, i32*, %struct.power_supply_config*) #2

declare dso_local i64 @IS_ERR(i8*) #2

declare dso_local i32 @PTR_ERR(i8*) #2

declare dso_local i32 @ARRAY_SIZE(%struct.reg_off_mask_default*) #2

declare dso_local i8* @devm_extcon_dev_allocate(%struct.TYPE_10__*, i32) #2

declare dso_local i32 @devm_extcon_dev_register(%struct.TYPE_10__*, i8*) #2

declare dso_local i32 @platform_get_irq_byname(%struct.platform_device*, i32) #2

declare dso_local i32 @devm_request_threaded_irq(%struct.TYPE_10__*, i32, i32*, i32 (i32, %struct.smbb_charger*)*, i32, i32, %struct.smbb_charger*) #2

declare dso_local i8* @devm_regulator_register(%struct.TYPE_10__*, %struct.TYPE_11__*, %struct.regulator_config*) #2

declare dso_local i32 @regmap_update_bits(i32, i64, i32, i32) #2

declare dso_local i32 @BIT(i32) #2

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.smbb_charger*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
