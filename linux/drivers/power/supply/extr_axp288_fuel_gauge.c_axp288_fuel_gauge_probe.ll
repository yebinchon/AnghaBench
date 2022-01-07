; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_axp288_fuel_gauge.c_axp288_fuel_gauge_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_axp288_fuel_gauge.c_axp288_fuel_gauge_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.axp288_fg_info = type { i32, i32*, i32, i32, i32, i32, i32, %struct.platform_device* }
%struct.axp20x_dev = type { i32, i32 }
%struct.power_supply_config = type { %struct.axp288_fg_info* }

@axp288_fuel_gauge_probe.iio_chan_name = internal constant [138 x i8*] [i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0), i8* null, i8* null, i8* null, i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [19 x i8] c"axp288-system-temp\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"axp288-pmic-temp\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"axp288-batt-volt\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"axp288-batt-temp\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"axp288-chrg-d-curr\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"axp288-chrg-curr\00", align 1
@axp288_fuel_gauge_blacklist = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@AXP20X_CC_CTRL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_UNKNOWN = common dso_local global i32 0, align 4
@IIO_CHANNEL_NUM = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [30 x i8] c"error getting iiochan %s: %d\0A\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@AXP288_FG_DES_CAP1_REG = common dso_local global i32 0, align 4
@FG_DES_CAP1_VALID = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [35 x i8] c"axp288 not configured by firmware\0A\00", align 1
@AXP20X_CHRG_CTRL1 = common dso_local global i32 0, align 4
@CHRG_CCCV_CV_MASK = common dso_local global i32 0, align 4
@CHRG_CCCV_CV_BIT_POS = common dso_local global i32 0, align 4
@fuel_gauge_desc = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [32 x i8] c"failed to register battery: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @axp288_fuel_gauge_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axp288_fuel_gauge_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.axp288_fg_info*, align 8
  %7 = alloca %struct.axp20x_dev*, align 8
  %8 = alloca %struct.power_supply_config, align 8
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i32 0, i32* %5, align 4
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.axp20x_dev* @dev_get_drvdata(i32 %13)
  store %struct.axp20x_dev* %14, %struct.axp20x_dev** %7, align 8
  %15 = bitcast %struct.power_supply_config* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %15, i8 0, i64 8, i1 false)
  %16 = load i32, i32* @axp288_fuel_gauge_blacklist, align 4
  %17 = call i64 @dmi_check_system(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %225

22:                                               ; preds = %1
  %23 = load %struct.axp20x_dev*, %struct.axp20x_dev** %7, align 8
  %24 = getelementptr inbounds %struct.axp20x_dev, %struct.axp20x_dev* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @AXP20X_CC_CTRL, align 4
  %27 = call i32 @regmap_read(i32 %25, i32 %26, i32* %9)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %22
  %31 = load i32, i32* %5, align 4
  store i32 %31, i32* %2, align 4
  br label %225

32:                                               ; preds = %22
  %33 = load i32, i32* %9, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load i32, i32* @ENODEV, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %225

38:                                               ; preds = %32
  %39 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %40 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %39, i32 0, i32 0
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = call %struct.axp288_fg_info* @devm_kzalloc(%struct.TYPE_5__* %40, i32 48, i32 %41)
  store %struct.axp288_fg_info* %42, %struct.axp288_fg_info** %6, align 8
  %43 = load %struct.axp288_fg_info*, %struct.axp288_fg_info** %6, align 8
  %44 = icmp ne %struct.axp288_fg_info* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %38
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %225

48:                                               ; preds = %38
  %49 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %50 = load %struct.axp288_fg_info*, %struct.axp288_fg_info** %6, align 8
  %51 = getelementptr inbounds %struct.axp288_fg_info, %struct.axp288_fg_info* %50, i32 0, i32 7
  store %struct.platform_device* %49, %struct.platform_device** %51, align 8
  %52 = load %struct.axp20x_dev*, %struct.axp20x_dev** %7, align 8
  %53 = getelementptr inbounds %struct.axp20x_dev, %struct.axp20x_dev* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.axp288_fg_info*, %struct.axp288_fg_info** %6, align 8
  %56 = getelementptr inbounds %struct.axp288_fg_info, %struct.axp288_fg_info* %55, i32 0, i32 6
  store i32 %54, i32* %56, align 8
  %57 = load %struct.axp20x_dev*, %struct.axp20x_dev** %7, align 8
  %58 = getelementptr inbounds %struct.axp20x_dev, %struct.axp20x_dev* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.axp288_fg_info*, %struct.axp288_fg_info** %6, align 8
  %61 = getelementptr inbounds %struct.axp288_fg_info, %struct.axp288_fg_info* %60, i32 0, i32 5
  store i32 %59, i32* %61, align 4
  %62 = load i32, i32* @POWER_SUPPLY_STATUS_UNKNOWN, align 4
  %63 = load %struct.axp288_fg_info*, %struct.axp288_fg_info** %6, align 8
  %64 = getelementptr inbounds %struct.axp288_fg_info, %struct.axp288_fg_info* %63, i32 0, i32 4
  store i32 %62, i32* %64, align 8
  %65 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %66 = load %struct.axp288_fg_info*, %struct.axp288_fg_info** %6, align 8
  %67 = call i32 @platform_set_drvdata(%struct.platform_device* %65, %struct.axp288_fg_info* %66)
  %68 = load %struct.axp288_fg_info*, %struct.axp288_fg_info** %6, align 8
  %69 = getelementptr inbounds %struct.axp288_fg_info, %struct.axp288_fg_info* %68, i32 0, i32 3
  %70 = call i32 @mutex_init(i32* %69)
  store i32 0, i32* %4, align 4
  br label %71

71:                                               ; preds = %122, %48
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* @IIO_CHANNEL_NUM, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %125

75:                                               ; preds = %71
  %76 = load i32, i32* %4, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [138 x i8*], [138 x i8*]* @axp288_fuel_gauge_probe.iio_chan_name, i64 0, i64 %77
  %79 = load i8*, i8** %78, align 8
  %80 = call i32 @iio_channel_get(i32* null, i8* %79)
  %81 = load %struct.axp288_fg_info*, %struct.axp288_fg_info** %6, align 8
  %82 = getelementptr inbounds %struct.axp288_fg_info, %struct.axp288_fg_info* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %4, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  store i32 %80, i32* %86, align 4
  %87 = load %struct.axp288_fg_info*, %struct.axp288_fg_info** %6, align 8
  %88 = getelementptr inbounds %struct.axp288_fg_info, %struct.axp288_fg_info* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %4, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = call i64 @IS_ERR(i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %121

96:                                               ; preds = %75
  %97 = load %struct.axp288_fg_info*, %struct.axp288_fg_info** %6, align 8
  %98 = getelementptr inbounds %struct.axp288_fg_info, %struct.axp288_fg_info* %97, i32 0, i32 1
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %4, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @PTR_ERR(i32 %103)
  store i32 %104, i32* %5, align 4
  %105 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %106 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %105, i32 0, i32 0
  %107 = load i32, i32* %4, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds [138 x i8*], [138 x i8*]* @axp288_fuel_gauge_probe.iio_chan_name, i64 0, i64 %108
  %110 = load i8*, i8** %109, align 8
  %111 = load i32, i32* %5, align 4
  %112 = call i32 @dev_dbg(%struct.TYPE_5__* %106, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i8* %110, i32 %111)
  %113 = load i32, i32* %5, align 4
  %114 = load i32, i32* @ENODEV, align 4
  %115 = sub nsw i32 0, %114
  %116 = icmp eq i32 %113, %115
  br i1 %116, label %117, label %120

117:                                              ; preds = %96
  %118 = load i32, i32* @EPROBE_DEFER, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %5, align 4
  br label %120

120:                                              ; preds = %117, %96
  br label %195

121:                                              ; preds = %75
  br label %122

122:                                              ; preds = %121
  %123 = load i32, i32* %4, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %4, align 4
  br label %71

125:                                              ; preds = %71
  %126 = load %struct.axp288_fg_info*, %struct.axp288_fg_info** %6, align 8
  %127 = load i32, i32* @AXP288_FG_DES_CAP1_REG, align 4
  %128 = call i32 @fuel_gauge_reg_readb(%struct.axp288_fg_info* %126, i32 %127)
  store i32 %128, i32* %5, align 4
  %129 = load i32, i32* %5, align 4
  %130 = icmp slt i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %125
  br label %195

132:                                              ; preds = %125
  %133 = load i32, i32* %5, align 4
  %134 = load i32, i32* @FG_DES_CAP1_VALID, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %143, label %137

137:                                              ; preds = %132
  %138 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %139 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %138, i32 0, i32 0
  %140 = call i32 (%struct.TYPE_5__*, i8*, ...) @dev_err(%struct.TYPE_5__* %139, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0))
  %141 = load i32, i32* @ENODEV, align 4
  %142 = sub nsw i32 0, %141
  store i32 %142, i32* %5, align 4
  br label %195

143:                                              ; preds = %132
  %144 = load %struct.axp288_fg_info*, %struct.axp288_fg_info** %6, align 8
  %145 = load i32, i32* @AXP20X_CHRG_CTRL1, align 4
  %146 = call i32 @fuel_gauge_reg_readb(%struct.axp288_fg_info* %144, i32 %145)
  store i32 %146, i32* %5, align 4
  %147 = load i32, i32* %5, align 4
  %148 = icmp slt i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %143
  br label %195

150:                                              ; preds = %143
  %151 = load i32, i32* %5, align 4
  %152 = load i32, i32* @CHRG_CCCV_CV_MASK, align 4
  %153 = and i32 %151, %152
  %154 = load i32, i32* @CHRG_CCCV_CV_BIT_POS, align 4
  %155 = ashr i32 %153, %154
  switch i32 %155, label %168 [
    i32 133, label %156
    i32 132, label %159
    i32 131, label %162
    i32 130, label %165
  ]

156:                                              ; preds = %150
  %157 = load %struct.axp288_fg_info*, %struct.axp288_fg_info** %6, align 8
  %158 = getelementptr inbounds %struct.axp288_fg_info, %struct.axp288_fg_info* %157, i32 0, i32 0
  store i32 4100, i32* %158, align 8
  br label %168

159:                                              ; preds = %150
  %160 = load %struct.axp288_fg_info*, %struct.axp288_fg_info** %6, align 8
  %161 = getelementptr inbounds %struct.axp288_fg_info, %struct.axp288_fg_info* %160, i32 0, i32 0
  store i32 4150, i32* %161, align 8
  br label %168

162:                                              ; preds = %150
  %163 = load %struct.axp288_fg_info*, %struct.axp288_fg_info** %6, align 8
  %164 = getelementptr inbounds %struct.axp288_fg_info, %struct.axp288_fg_info* %163, i32 0, i32 0
  store i32 4200, i32* %164, align 8
  br label %168

165:                                              ; preds = %150
  %166 = load %struct.axp288_fg_info*, %struct.axp288_fg_info** %6, align 8
  %167 = getelementptr inbounds %struct.axp288_fg_info, %struct.axp288_fg_info* %166, i32 0, i32 0
  store i32 4350, i32* %167, align 8
  br label %168

168:                                              ; preds = %150, %165, %162, %159, %156
  %169 = load %struct.axp288_fg_info*, %struct.axp288_fg_info** %6, align 8
  %170 = getelementptr inbounds %struct.power_supply_config, %struct.power_supply_config* %8, i32 0, i32 0
  store %struct.axp288_fg_info* %169, %struct.axp288_fg_info** %170, align 8
  %171 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %172 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %171, i32 0, i32 0
  %173 = call i32 @power_supply_register(%struct.TYPE_5__* %172, i32* @fuel_gauge_desc, %struct.power_supply_config* %8)
  %174 = load %struct.axp288_fg_info*, %struct.axp288_fg_info** %6, align 8
  %175 = getelementptr inbounds %struct.axp288_fg_info, %struct.axp288_fg_info* %174, i32 0, i32 2
  store i32 %173, i32* %175, align 8
  %176 = load %struct.axp288_fg_info*, %struct.axp288_fg_info** %6, align 8
  %177 = getelementptr inbounds %struct.axp288_fg_info, %struct.axp288_fg_info* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 8
  %179 = call i64 @IS_ERR(i32 %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %190

181:                                              ; preds = %168
  %182 = load %struct.axp288_fg_info*, %struct.axp288_fg_info** %6, align 8
  %183 = getelementptr inbounds %struct.axp288_fg_info, %struct.axp288_fg_info* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 8
  %185 = call i32 @PTR_ERR(i32 %184)
  store i32 %185, i32* %5, align 4
  %186 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %187 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %186, i32 0, i32 0
  %188 = load i32, i32* %5, align 4
  %189 = call i32 (%struct.TYPE_5__*, i8*, ...) @dev_err(%struct.TYPE_5__* %187, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0), i32 %188)
  br label %195

190:                                              ; preds = %168
  %191 = load %struct.axp288_fg_info*, %struct.axp288_fg_info** %6, align 8
  %192 = call i32 @fuel_gauge_create_debugfs(%struct.axp288_fg_info* %191)
  %193 = load %struct.axp288_fg_info*, %struct.axp288_fg_info** %6, align 8
  %194 = call i32 @fuel_gauge_init_irq(%struct.axp288_fg_info* %193)
  store i32 0, i32* %2, align 4
  br label %225

195:                                              ; preds = %181, %149, %137, %131, %120
  store i32 0, i32* %4, align 4
  br label %196

196:                                              ; preds = %220, %195
  %197 = load i32, i32* %4, align 4
  %198 = load i32, i32* @IIO_CHANNEL_NUM, align 4
  %199 = icmp slt i32 %197, %198
  br i1 %199, label %200, label %223

200:                                              ; preds = %196
  %201 = load %struct.axp288_fg_info*, %struct.axp288_fg_info** %6, align 8
  %202 = getelementptr inbounds %struct.axp288_fg_info, %struct.axp288_fg_info* %201, i32 0, i32 1
  %203 = load i32*, i32** %202, align 8
  %204 = load i32, i32* %4, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i32, i32* %203, i64 %205
  %207 = load i32, i32* %206, align 4
  %208 = call i32 @IS_ERR_OR_NULL(i32 %207)
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %219, label %210

210:                                              ; preds = %200
  %211 = load %struct.axp288_fg_info*, %struct.axp288_fg_info** %6, align 8
  %212 = getelementptr inbounds %struct.axp288_fg_info, %struct.axp288_fg_info* %211, i32 0, i32 1
  %213 = load i32*, i32** %212, align 8
  %214 = load i32, i32* %4, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i32, i32* %213, i64 %215
  %217 = load i32, i32* %216, align 4
  %218 = call i32 @iio_channel_release(i32 %217)
  br label %219

219:                                              ; preds = %210, %200
  br label %220

220:                                              ; preds = %219
  %221 = load i32, i32* %4, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %4, align 4
  br label %196

223:                                              ; preds = %196
  %224 = load i32, i32* %5, align 4
  store i32 %224, i32* %2, align 4
  br label %225

225:                                              ; preds = %223, %190, %45, %35, %30, %19
  %226 = load i32, i32* %2, align 4
  ret i32 %226
}

declare dso_local %struct.axp20x_dev* @dev_get_drvdata(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @dmi_check_system(i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local %struct.axp288_fg_info* @devm_kzalloc(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.axp288_fg_info*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @iio_channel_get(i32*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_5__*, i8*, i8*, i32) #1

declare dso_local i32 @fuel_gauge_reg_readb(%struct.axp288_fg_info*, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_5__*, i8*, ...) #1

declare dso_local i32 @power_supply_register(%struct.TYPE_5__*, i32*, %struct.power_supply_config*) #1

declare dso_local i32 @fuel_gauge_create_debugfs(%struct.axp288_fg_info*) #1

declare dso_local i32 @fuel_gauge_init_irq(%struct.axp288_fg_info*) #1

declare dso_local i32 @IS_ERR_OR_NULL(i32) #1

declare dso_local i32 @iio_channel_release(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
