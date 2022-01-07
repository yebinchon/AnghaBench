; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_axp20x_usb_power.c_axp20x_usb_power_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_axp20x_usb_power.c_axp20x_usb_power_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.power_supply_desc = type { i32 }
%struct.platform_device = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.axp20x_dev = type { i32, i32, i32 }
%struct.power_supply_config = type { %struct.axp20x_usb_power*, i32 }
%struct.axp20x_usb_power = type { i32, i32, i32, i32, i32 }

@axp20x_usb_power_probe.axp20x_irq_names = internal constant [5 x i8*] [i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0), i8* null], align 16
@.str = private unnamed_addr constant [12 x i8] c"VBUS_PLUGIN\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"VBUS_REMOVAL\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"VBUS_VALID\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"VBUS_NOT_VALID\00", align 1
@axp20x_usb_power_probe.axp22x_irq_names = internal constant [3 x i8*] [i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* null], align 16
@ENODEV = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"Parent drvdata not set\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AXP202_ID = common dso_local global i64 0, align 8
@AXP20X_VBUS_MON = common dso_local global i32 0, align 4
@AXP20X_VBUS_MON_VBUS_VALID = common dso_local global i32 0, align 4
@CONFIG_AXP20X_ADC = common dso_local global i32 0, align 4
@axp20x_usb_power_desc = common dso_local global %struct.power_supply_desc zeroinitializer, align 4
@AXP221_ID = common dso_local global i64 0, align 8
@AXP223_ID = common dso_local global i64 0, align 8
@AXP813_ID = common dso_local global i64 0, align 8
@axp22x_usb_power_desc = common dso_local global %struct.power_supply_desc zeroinitializer, align 4
@.str.5 = private unnamed_addr constant [30 x i8] c"Unsupported AXP variant: %ld\0A\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"No IRQ for %s: %d\0A\00", align 1
@axp20x_usb_power_irq = common dso_local global i32 0, align 4
@DRVNAME = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [29 x i8] c"Error requesting %s IRQ: %d\0A\00", align 1
@axp20x_usb_power_poll_vbus = common dso_local global i32 0, align 4
@system_wq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @axp20x_usb_power_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axp20x_usb_power_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.axp20x_dev*, align 8
  %5 = alloca %struct.power_supply_config, align 8
  %6 = alloca %struct.axp20x_usb_power*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %struct.power_supply_desc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.axp20x_dev* @dev_get_drvdata(i32 %15)
  store %struct.axp20x_dev* %16, %struct.axp20x_dev** %4, align 8
  %17 = bitcast %struct.power_supply_config* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %17, i8 0, i64 16, i1 false)
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @of_device_is_available(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %1
  %25 = load i32, i32* @ENODEV, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %229

27:                                               ; preds = %1
  %28 = load %struct.axp20x_dev*, %struct.axp20x_dev** %4, align 8
  %29 = icmp ne %struct.axp20x_dev* %28, null
  br i1 %29, label %36, label %30

30:                                               ; preds = %27
  %31 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %32 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %31, i32 0, i32 0
  %33 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %32, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %229

36:                                               ; preds = %27
  %37 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %38 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %37, i32 0, i32 0
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = call %struct.axp20x_usb_power* @devm_kzalloc(%struct.TYPE_7__* %38, i32 20, i32 %39)
  store %struct.axp20x_usb_power* %40, %struct.axp20x_usb_power** %6, align 8
  %41 = load %struct.axp20x_usb_power*, %struct.axp20x_usb_power** %6, align 8
  %42 = icmp ne %struct.axp20x_usb_power* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %36
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %229

46:                                               ; preds = %36
  %47 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %48 = load %struct.axp20x_usb_power*, %struct.axp20x_usb_power** %6, align 8
  %49 = call i32 @platform_set_drvdata(%struct.platform_device* %47, %struct.axp20x_usb_power* %48)
  %50 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %51 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %50, i32 0, i32 0
  %52 = call i64 @of_device_get_match_data(%struct.TYPE_7__* %51)
  %53 = trunc i64 %52 to i32
  %54 = load %struct.axp20x_usb_power*, %struct.axp20x_usb_power** %6, align 8
  %55 = getelementptr inbounds %struct.axp20x_usb_power, %struct.axp20x_usb_power* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  %56 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %57 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.axp20x_usb_power*, %struct.axp20x_usb_power** %6, align 8
  %61 = getelementptr inbounds %struct.axp20x_usb_power, %struct.axp20x_usb_power* %60, i32 0, i32 4
  store i32 %59, i32* %61, align 4
  %62 = load %struct.axp20x_dev*, %struct.axp20x_dev** %4, align 8
  %63 = getelementptr inbounds %struct.axp20x_dev, %struct.axp20x_dev* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.axp20x_usb_power*, %struct.axp20x_usb_power** %6, align 8
  %66 = getelementptr inbounds %struct.axp20x_usb_power, %struct.axp20x_usb_power* %65, i32 0, i32 3
  store i32 %64, i32* %66, align 4
  %67 = load %struct.axp20x_usb_power*, %struct.axp20x_usb_power** %6, align 8
  %68 = getelementptr inbounds %struct.axp20x_usb_power, %struct.axp20x_usb_power* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = sext i32 %69 to i64
  %71 = load i64, i64* @AXP202_ID, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %102

73:                                               ; preds = %46
  %74 = load %struct.axp20x_usb_power*, %struct.axp20x_usb_power** %6, align 8
  %75 = getelementptr inbounds %struct.axp20x_usb_power, %struct.axp20x_usb_power* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @AXP20X_VBUS_MON, align 4
  %78 = load i32, i32* @AXP20X_VBUS_MON_VBUS_VALID, align 4
  %79 = load i32, i32* @AXP20X_VBUS_MON_VBUS_VALID, align 4
  %80 = call i32 @regmap_update_bits(i32 %76, i32 %77, i32 %78, i32 %79)
  store i32 %80, i32* %11, align 4
  %81 = load i32, i32* %11, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %73
  %84 = load i32, i32* %11, align 4
  store i32 %84, i32* %2, align 4
  br label %229

85:                                               ; preds = %73
  %86 = load i32, i32* @CONFIG_AXP20X_ADC, align 4
  %87 = call i64 @IS_ENABLED(i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %85
  %90 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %91 = load %struct.axp20x_usb_power*, %struct.axp20x_usb_power** %6, align 8
  %92 = call i32 @configure_iio_channels(%struct.platform_device* %90, %struct.axp20x_usb_power* %91)
  store i32 %92, i32* %11, align 4
  br label %96

93:                                               ; preds = %85
  %94 = load %struct.axp20x_usb_power*, %struct.axp20x_usb_power** %6, align 8
  %95 = call i32 @configure_adc_registers(%struct.axp20x_usb_power* %94)
  store i32 %95, i32* %11, align 4
  br label %96

96:                                               ; preds = %93, %89
  %97 = load i32, i32* %11, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %96
  %100 = load i32, i32* %11, align 4
  store i32 %100, i32* %2, align 4
  br label %229

101:                                              ; preds = %96
  store %struct.power_supply_desc* @axp20x_usb_power_desc, %struct.power_supply_desc** %8, align 8
  store i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @axp20x_usb_power_probe.axp20x_irq_names, i64 0, i64 0), i8*** %7, align 8
  br label %134

102:                                              ; preds = %46
  %103 = load %struct.axp20x_usb_power*, %struct.axp20x_usb_power** %6, align 8
  %104 = getelementptr inbounds %struct.axp20x_usb_power, %struct.axp20x_usb_power* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = sext i32 %105 to i64
  %107 = load i64, i64* @AXP221_ID, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %123, label %109

109:                                              ; preds = %102
  %110 = load %struct.axp20x_usb_power*, %struct.axp20x_usb_power** %6, align 8
  %111 = getelementptr inbounds %struct.axp20x_usb_power, %struct.axp20x_usb_power* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = sext i32 %112 to i64
  %114 = load i64, i64* @AXP223_ID, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %123, label %116

116:                                              ; preds = %109
  %117 = load %struct.axp20x_usb_power*, %struct.axp20x_usb_power** %6, align 8
  %118 = getelementptr inbounds %struct.axp20x_usb_power, %struct.axp20x_usb_power* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = sext i32 %119 to i64
  %121 = load i64, i64* @AXP813_ID, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %124

123:                                              ; preds = %116, %109, %102
  store %struct.power_supply_desc* @axp22x_usb_power_desc, %struct.power_supply_desc** %8, align 8
  store i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @axp20x_usb_power_probe.axp22x_irq_names, i64 0, i64 0), i8*** %7, align 8
  br label %133

124:                                              ; preds = %116
  %125 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %126 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %125, i32 0, i32 0
  %127 = load %struct.axp20x_dev*, %struct.axp20x_dev** %4, align 8
  %128 = getelementptr inbounds %struct.axp20x_dev, %struct.axp20x_dev* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %126, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i32 %129)
  %131 = load i32, i32* @EINVAL, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %2, align 4
  br label %229

133:                                              ; preds = %123
  br label %134

134:                                              ; preds = %133, %101
  %135 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %136 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = getelementptr inbounds %struct.power_supply_config, %struct.power_supply_config* %5, i32 0, i32 1
  store i32 %138, i32* %139, align 8
  %140 = load %struct.axp20x_usb_power*, %struct.axp20x_usb_power** %6, align 8
  %141 = getelementptr inbounds %struct.power_supply_config, %struct.power_supply_config* %5, i32 0, i32 0
  store %struct.axp20x_usb_power* %140, %struct.axp20x_usb_power** %141, align 8
  %142 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %143 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %142, i32 0, i32 0
  %144 = load %struct.power_supply_desc*, %struct.power_supply_desc** %8, align 8
  %145 = call i32 @devm_power_supply_register(%struct.TYPE_7__* %143, %struct.power_supply_desc* %144, %struct.power_supply_config* %5)
  %146 = load %struct.axp20x_usb_power*, %struct.axp20x_usb_power** %6, align 8
  %147 = getelementptr inbounds %struct.axp20x_usb_power, %struct.axp20x_usb_power* %146, i32 0, i32 2
  store i32 %145, i32* %147, align 4
  %148 = load %struct.axp20x_usb_power*, %struct.axp20x_usb_power** %6, align 8
  %149 = getelementptr inbounds %struct.axp20x_usb_power, %struct.axp20x_usb_power* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 4
  %151 = call i64 @IS_ERR(i32 %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %158

153:                                              ; preds = %134
  %154 = load %struct.axp20x_usb_power*, %struct.axp20x_usb_power** %6, align 8
  %155 = getelementptr inbounds %struct.axp20x_usb_power, %struct.axp20x_usb_power* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @PTR_ERR(i32 %156)
  store i32 %157, i32* %2, align 4
  br label %229

158:                                              ; preds = %134
  store i32 0, i32* %9, align 4
  br label %159

159:                                              ; preds = %212, %158
  %160 = load i8**, i8*** %7, align 8
  %161 = load i32, i32* %9, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i8*, i8** %160, i64 %162
  %164 = load i8*, i8** %163, align 8
  %165 = icmp ne i8* %164, null
  br i1 %165, label %166, label %215

166:                                              ; preds = %159
  %167 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %168 = load i8**, i8*** %7, align 8
  %169 = load i32, i32* %9, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i8*, i8** %168, i64 %170
  %172 = load i8*, i8** %171, align 8
  %173 = call i32 @platform_get_irq_byname(%struct.platform_device* %167, i8* %172)
  store i32 %173, i32* %10, align 4
  %174 = load i32, i32* %10, align 4
  %175 = icmp slt i32 %174, 0
  br i1 %175, label %176, label %186

176:                                              ; preds = %166
  %177 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %178 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %177, i32 0, i32 0
  %179 = load i8**, i8*** %7, align 8
  %180 = load i32, i32* %9, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i8*, i8** %179, i64 %181
  %183 = load i8*, i8** %182, align 8
  %184 = load i32, i32* %10, align 4
  %185 = call i32 @dev_warn(%struct.TYPE_7__* %178, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i8* %183, i32 %184)
  br label %212

186:                                              ; preds = %166
  %187 = load %struct.axp20x_dev*, %struct.axp20x_dev** %4, align 8
  %188 = getelementptr inbounds %struct.axp20x_dev, %struct.axp20x_dev* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* %10, align 4
  %191 = call i32 @regmap_irq_get_virq(i32 %189, i32 %190)
  store i32 %191, i32* %10, align 4
  %192 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %193 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %192, i32 0, i32 0
  %194 = load i32, i32* %10, align 4
  %195 = load i32, i32* @axp20x_usb_power_irq, align 4
  %196 = load i32, i32* @DRVNAME, align 4
  %197 = load %struct.axp20x_usb_power*, %struct.axp20x_usb_power** %6, align 8
  %198 = call i32 @devm_request_any_context_irq(%struct.TYPE_7__* %193, i32 %194, i32 %195, i32 0, i32 %196, %struct.axp20x_usb_power* %197)
  store i32 %198, i32* %11, align 4
  %199 = load i32, i32* %11, align 4
  %200 = icmp slt i32 %199, 0
  br i1 %200, label %201, label %211

201:                                              ; preds = %186
  %202 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %203 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %202, i32 0, i32 0
  %204 = load i8**, i8*** %7, align 8
  %205 = load i32, i32* %9, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i8*, i8** %204, i64 %206
  %208 = load i8*, i8** %207, align 8
  %209 = load i32, i32* %11, align 4
  %210 = call i32 @dev_warn(%struct.TYPE_7__* %203, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i8* %208, i32 %209)
  br label %211

211:                                              ; preds = %201, %186
  br label %212

212:                                              ; preds = %211, %176
  %213 = load i32, i32* %9, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %9, align 4
  br label %159

215:                                              ; preds = %159
  %216 = load %struct.axp20x_usb_power*, %struct.axp20x_usb_power** %6, align 8
  %217 = getelementptr inbounds %struct.axp20x_usb_power, %struct.axp20x_usb_power* %216, i32 0, i32 1
  %218 = load i32, i32* @axp20x_usb_power_poll_vbus, align 4
  %219 = call i32 @INIT_DELAYED_WORK(i32* %217, i32 %218)
  %220 = load %struct.axp20x_usb_power*, %struct.axp20x_usb_power** %6, align 8
  %221 = call i64 @axp20x_usb_vbus_needs_polling(%struct.axp20x_usb_power* %220)
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %228

223:                                              ; preds = %215
  %224 = load i32, i32* @system_wq, align 4
  %225 = load %struct.axp20x_usb_power*, %struct.axp20x_usb_power** %6, align 8
  %226 = getelementptr inbounds %struct.axp20x_usb_power, %struct.axp20x_usb_power* %225, i32 0, i32 1
  %227 = call i32 @queue_delayed_work(i32 %224, i32* %226, i32 0)
  br label %228

228:                                              ; preds = %223, %215
  store i32 0, i32* %2, align 4
  br label %229

229:                                              ; preds = %228, %153, %124, %99, %83, %43, %30, %24
  %230 = load i32, i32* %2, align 4
  ret i32 %230
}

declare dso_local %struct.axp20x_dev* @dev_get_drvdata(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @of_device_is_available(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_7__*, i8*, ...) #1

declare dso_local %struct.axp20x_usb_power* @devm_kzalloc(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.axp20x_usb_power*) #1

declare dso_local i64 @of_device_get_match_data(%struct.TYPE_7__*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @configure_iio_channels(%struct.platform_device*, %struct.axp20x_usb_power*) #1

declare dso_local i32 @configure_adc_registers(%struct.axp20x_usb_power*) #1

declare dso_local i32 @devm_power_supply_register(%struct.TYPE_7__*, %struct.power_supply_desc*, %struct.power_supply_config*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @platform_get_irq_byname(%struct.platform_device*, i8*) #1

declare dso_local i32 @dev_warn(%struct.TYPE_7__*, i8*, i8*, i32) #1

declare dso_local i32 @regmap_irq_get_virq(i32, i32) #1

declare dso_local i32 @devm_request_any_context_irq(%struct.TYPE_7__*, i32, i32, i32, i32, %struct.axp20x_usb_power*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i64 @axp20x_usb_vbus_needs_polling(%struct.axp20x_usb_power*) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
