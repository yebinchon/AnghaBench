; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_max1721x_battery.c_devm_w1_max1721x_add_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_max1721x_battery.c_devm_w1_max1721x_add_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.w1_slave = type { i32, %struct.TYPE_3__, i8* }
%struct.TYPE_3__ = type { i64 }
%struct.power_supply_config = type { %struct.max17211_device_info* }
%struct.max17211_device_info = type { i32, i32, i32*, %struct.TYPE_4__, i32, i32*, i32, i32*, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"max1721x-%012X\00", align 1
@POWER_SUPPLY_TYPE_BATTERY = common dso_local global i32 0, align 4
@max1721x_battery_props = common dso_local global i32 0, align 4
@max1721x_battery_get_property = common dso_local global i32 0, align 4
@max1721x_regmap_w1_config = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Failed to allocate register map: %d\0A\00", align 1
@MAX1721X_REG_NRSENSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Can't read RSense. Hardware error.\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"RSense not calibrated, set 10 mOhms!\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"RSense: %d mOhms.\0A\00", align 1
@MAX1721X_REG_MFG_STR = common dso_local global i32 0, align 4
@MAX1721X_REG_MFG_NUMB = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [42 x i8] c"Can't read manufacturer. Hardware error.\0A\00", align 1
@DEF_MFG_NAME = common dso_local global i32 0, align 4
@MAX1721X_REG_DEV_STR = common dso_local global i32 0, align 4
@MAX1721X_REG_DEV_NUMB = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [36 x i8] c"Can't read device. Hardware error.\0A\00", align 1
@MAX172XX_REG_DEVNAME = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [29 x i8] c"Can't read device name reg.\0A\00", align 1
@MAX172XX_DEV_MASK = common dso_local global i32 0, align 4
@DEF_DEV_NAME_MAX17211 = common dso_local global i32 0, align 4
@DEF_DEV_NAME_MAX17215 = common dso_local global i32 0, align 4
@DEF_DEV_NAME_UNKNOWN = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [36 x i8] c"Can't read serial. Hardware error.\0A\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"failed to register battery\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.w1_slave*)* @devm_w1_max1721x_add_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devm_w1_max1721x_add_device(%struct.w1_slave* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.w1_slave*, align 8
  %4 = alloca %struct.power_supply_config, align 8
  %5 = alloca %struct.max17211_device_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.w1_slave* %0, %struct.w1_slave** %3, align 8
  %8 = bitcast %struct.power_supply_config* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %8, i8 0, i64 8, i1 false)
  %9 = load %struct.w1_slave*, %struct.w1_slave** %3, align 8
  %10 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %9, i32 0, i32 0
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.max17211_device_info* @devm_kzalloc(i32* %10, i32 80, i32 %11)
  store %struct.max17211_device_info* %12, %struct.max17211_device_info** %5, align 8
  %13 = load %struct.max17211_device_info*, %struct.max17211_device_info** %5, align 8
  %14 = icmp ne %struct.max17211_device_info* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %258

18:                                               ; preds = %1
  %19 = load %struct.max17211_device_info*, %struct.max17211_device_info** %5, align 8
  %20 = bitcast %struct.max17211_device_info* %19 to i8*
  %21 = load %struct.w1_slave*, %struct.w1_slave** %3, align 8
  %22 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %21, i32 0, i32 2
  store i8* %20, i8** %22, align 8
  %23 = load %struct.w1_slave*, %struct.w1_slave** %3, align 8
  %24 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %23, i32 0, i32 0
  %25 = load %struct.max17211_device_info*, %struct.max17211_device_info** %5, align 8
  %26 = getelementptr inbounds %struct.max17211_device_info, %struct.max17211_device_info* %25, i32 0, i32 2
  store i32* %24, i32** %26, align 8
  %27 = load %struct.max17211_device_info*, %struct.max17211_device_info** %5, align 8
  %28 = getelementptr inbounds %struct.max17211_device_info, %struct.max17211_device_info* %27, i32 0, i32 8
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.w1_slave*, %struct.w1_slave** %3, align 8
  %31 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = trunc i64 %33 to i32
  %35 = call i32 @snprintf(i32 %29, i32 4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load %struct.max17211_device_info*, %struct.max17211_device_info** %5, align 8
  %37 = getelementptr inbounds %struct.max17211_device_info, %struct.max17211_device_info* %36, i32 0, i32 8
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.max17211_device_info*, %struct.max17211_device_info** %5, align 8
  %40 = getelementptr inbounds %struct.max17211_device_info, %struct.max17211_device_info* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 5
  store i32 %38, i32* %41, align 4
  %42 = load %struct.max17211_device_info*, %struct.max17211_device_info** %5, align 8
  %43 = getelementptr inbounds %struct.max17211_device_info, %struct.max17211_device_info* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  store i32 1, i32* %44, align 8
  %45 = load i32, i32* @POWER_SUPPLY_TYPE_BATTERY, align 4
  %46 = load %struct.max17211_device_info*, %struct.max17211_device_info** %5, align 8
  %47 = getelementptr inbounds %struct.max17211_device_info, %struct.max17211_device_info* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 4
  store i32 %45, i32* %48, align 8
  %49 = load i32, i32* @max1721x_battery_props, align 4
  %50 = load %struct.max17211_device_info*, %struct.max17211_device_info** %5, align 8
  %51 = getelementptr inbounds %struct.max17211_device_info, %struct.max17211_device_info* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 3
  store i32 %49, i32* %52, align 4
  %53 = load i32, i32* @max1721x_battery_props, align 4
  %54 = call i32 @ARRAY_SIZE(i32 %53)
  %55 = load %struct.max17211_device_info*, %struct.max17211_device_info** %5, align 8
  %56 = getelementptr inbounds %struct.max17211_device_info, %struct.max17211_device_info* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 2
  store i32 %54, i32* %57, align 8
  %58 = load i32, i32* @max1721x_battery_get_property, align 4
  %59 = load %struct.max17211_device_info*, %struct.max17211_device_info** %5, align 8
  %60 = getelementptr inbounds %struct.max17211_device_info, %struct.max17211_device_info* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  store i32 %58, i32* %61, align 4
  %62 = load %struct.max17211_device_info*, %struct.max17211_device_info** %5, align 8
  %63 = getelementptr inbounds %struct.power_supply_config, %struct.power_supply_config* %4, i32 0, i32 0
  store %struct.max17211_device_info* %62, %struct.max17211_device_info** %63, align 8
  %64 = load %struct.max17211_device_info*, %struct.max17211_device_info** %5, align 8
  %65 = getelementptr inbounds %struct.max17211_device_info, %struct.max17211_device_info* %64, i32 0, i32 2
  %66 = load i32*, i32** %65, align 8
  %67 = call i32 @devm_regmap_init_w1(i32* %66, i32* @max1721x_regmap_w1_config)
  %68 = load %struct.max17211_device_info*, %struct.max17211_device_info** %5, align 8
  %69 = getelementptr inbounds %struct.max17211_device_info, %struct.max17211_device_info* %68, i32 0, i32 6
  store i32 %67, i32* %69, align 8
  %70 = load %struct.max17211_device_info*, %struct.max17211_device_info** %5, align 8
  %71 = getelementptr inbounds %struct.max17211_device_info, %struct.max17211_device_info* %70, i32 0, i32 6
  %72 = load i32, i32* %71, align 8
  %73 = call i64 @IS_ERR(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %86

75:                                               ; preds = %18
  %76 = load %struct.max17211_device_info*, %struct.max17211_device_info** %5, align 8
  %77 = getelementptr inbounds %struct.max17211_device_info, %struct.max17211_device_info* %76, i32 0, i32 6
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @PTR_ERR(i32 %78)
  store i32 %79, i32* %6, align 4
  %80 = load %struct.max17211_device_info*, %struct.max17211_device_info** %5, align 8
  %81 = getelementptr inbounds %struct.max17211_device_info, %struct.max17211_device_info* %80, i32 0, i32 2
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %6, align 4
  %84 = call i32 (i32*, i8*, ...) @dev_err(i32* %82, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %83)
  %85 = load i32, i32* %6, align 4
  store i32 %85, i32* %2, align 4
  br label %258

86:                                               ; preds = %18
  %87 = load %struct.max17211_device_info*, %struct.max17211_device_info** %5, align 8
  %88 = getelementptr inbounds %struct.max17211_device_info, %struct.max17211_device_info* %87, i32 0, i32 0
  store i32 0, i32* %88, align 8
  %89 = load %struct.max17211_device_info*, %struct.max17211_device_info** %5, align 8
  %90 = getelementptr inbounds %struct.max17211_device_info, %struct.max17211_device_info* %89, i32 0, i32 6
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @MAX1721X_REG_NRSENSE, align 4
  %93 = load %struct.max17211_device_info*, %struct.max17211_device_info** %5, align 8
  %94 = getelementptr inbounds %struct.max17211_device_info, %struct.max17211_device_info* %93, i32 0, i32 0
  %95 = call i64 @regmap_read(i32 %91, i32 %92, i32* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %86
  %98 = load %struct.max17211_device_info*, %struct.max17211_device_info** %5, align 8
  %99 = getelementptr inbounds %struct.max17211_device_info, %struct.max17211_device_info* %98, i32 0, i32 2
  %100 = load i32*, i32** %99, align 8
  %101 = call i32 (i32*, i8*, ...) @dev_err(i32* %100, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %102 = load i32, i32* @ENODEV, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %2, align 4
  br label %258

104:                                              ; preds = %86
  %105 = load %struct.max17211_device_info*, %struct.max17211_device_info** %5, align 8
  %106 = getelementptr inbounds %struct.max17211_device_info, %struct.max17211_device_info* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %116, label %109

109:                                              ; preds = %104
  %110 = load %struct.max17211_device_info*, %struct.max17211_device_info** %5, align 8
  %111 = getelementptr inbounds %struct.max17211_device_info, %struct.max17211_device_info* %110, i32 0, i32 2
  %112 = load i32*, i32** %111, align 8
  %113 = call i32 @dev_warn(i32* %112, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %114 = load %struct.max17211_device_info*, %struct.max17211_device_info** %5, align 8
  %115 = getelementptr inbounds %struct.max17211_device_info, %struct.max17211_device_info* %114, i32 0, i32 0
  store i32 1000, i32* %115, align 8
  br label %116

116:                                              ; preds = %109, %104
  %117 = load %struct.max17211_device_info*, %struct.max17211_device_info** %5, align 8
  %118 = getelementptr inbounds %struct.max17211_device_info, %struct.max17211_device_info* %117, i32 0, i32 2
  %119 = load i32*, i32** %118, align 8
  %120 = load %struct.max17211_device_info*, %struct.max17211_device_info** %5, align 8
  %121 = getelementptr inbounds %struct.max17211_device_info, %struct.max17211_device_info* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = udiv i32 %122, 100
  %124 = call i32 @dev_info(i32* %119, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 %123)
  %125 = load %struct.max17211_device_info*, %struct.max17211_device_info** %5, align 8
  %126 = load i32, i32* @MAX1721X_REG_MFG_STR, align 4
  %127 = load i32, i32* @MAX1721X_REG_MFG_NUMB, align 4
  %128 = load %struct.max17211_device_info*, %struct.max17211_device_info** %5, align 8
  %129 = getelementptr inbounds %struct.max17211_device_info, %struct.max17211_device_info* %128, i32 0, i32 7
  %130 = load i32*, i32** %129, align 8
  %131 = call i64 @get_string(%struct.max17211_device_info* %125, i32 %126, i32 %127, i32* %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %140

133:                                              ; preds = %116
  %134 = load %struct.max17211_device_info*, %struct.max17211_device_info** %5, align 8
  %135 = getelementptr inbounds %struct.max17211_device_info, %struct.max17211_device_info* %134, i32 0, i32 2
  %136 = load i32*, i32** %135, align 8
  %137 = call i32 (i32*, i8*, ...) @dev_err(i32* %136, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0))
  %138 = load i32, i32* @ENODEV, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %2, align 4
  br label %258

140:                                              ; preds = %116
  %141 = load %struct.max17211_device_info*, %struct.max17211_device_info** %5, align 8
  %142 = getelementptr inbounds %struct.max17211_device_info, %struct.max17211_device_info* %141, i32 0, i32 7
  %143 = load i32*, i32** %142, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 0
  %145 = load i32, i32* %144, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %155, label %147

147:                                              ; preds = %140
  %148 = load %struct.max17211_device_info*, %struct.max17211_device_info** %5, align 8
  %149 = getelementptr inbounds %struct.max17211_device_info, %struct.max17211_device_info* %148, i32 0, i32 7
  %150 = load i32*, i32** %149, align 8
  %151 = load i32, i32* @DEF_MFG_NAME, align 4
  %152 = load i32, i32* @MAX1721X_REG_MFG_NUMB, align 4
  %153 = mul nsw i32 2, %152
  %154 = call i32 @strncpy(i32* %150, i32 %151, i32 %153)
  br label %155

155:                                              ; preds = %147, %140
  %156 = load %struct.max17211_device_info*, %struct.max17211_device_info** %5, align 8
  %157 = load i32, i32* @MAX1721X_REG_DEV_STR, align 4
  %158 = load i32, i32* @MAX1721X_REG_DEV_NUMB, align 4
  %159 = load %struct.max17211_device_info*, %struct.max17211_device_info** %5, align 8
  %160 = getelementptr inbounds %struct.max17211_device_info, %struct.max17211_device_info* %159, i32 0, i32 5
  %161 = load i32*, i32** %160, align 8
  %162 = call i64 @get_string(%struct.max17211_device_info* %156, i32 %157, i32 %158, i32* %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %171

164:                                              ; preds = %155
  %165 = load %struct.max17211_device_info*, %struct.max17211_device_info** %5, align 8
  %166 = getelementptr inbounds %struct.max17211_device_info, %struct.max17211_device_info* %165, i32 0, i32 2
  %167 = load i32*, i32** %166, align 8
  %168 = call i32 (i32*, i8*, ...) @dev_err(i32* %167, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0))
  %169 = load i32, i32* @ENODEV, align 4
  %170 = sub nsw i32 0, %169
  store i32 %170, i32* %2, align 4
  br label %258

171:                                              ; preds = %155
  %172 = load %struct.max17211_device_info*, %struct.max17211_device_info** %5, align 8
  %173 = getelementptr inbounds %struct.max17211_device_info, %struct.max17211_device_info* %172, i32 0, i32 5
  %174 = load i32*, i32** %173, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 0
  %176 = load i32, i32* %175, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %221, label %178

178:                                              ; preds = %171
  %179 = load %struct.max17211_device_info*, %struct.max17211_device_info** %5, align 8
  %180 = getelementptr inbounds %struct.max17211_device_info, %struct.max17211_device_info* %179, i32 0, i32 6
  %181 = load i32, i32* %180, align 8
  %182 = load i32, i32* @MAX172XX_REG_DEVNAME, align 4
  %183 = call i64 @regmap_read(i32 %181, i32 %182, i32* %7)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %192

185:                                              ; preds = %178
  %186 = load %struct.max17211_device_info*, %struct.max17211_device_info** %5, align 8
  %187 = getelementptr inbounds %struct.max17211_device_info, %struct.max17211_device_info* %186, i32 0, i32 2
  %188 = load i32*, i32** %187, align 8
  %189 = call i32 (i32*, i8*, ...) @dev_err(i32* %188, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  %190 = load i32, i32* @ENODEV, align 4
  %191 = sub nsw i32 0, %190
  store i32 %191, i32* %2, align 4
  br label %258

192:                                              ; preds = %178
  %193 = load i32, i32* %7, align 4
  %194 = load i32, i32* @MAX172XX_DEV_MASK, align 4
  %195 = and i32 %193, %194
  switch i32 %195, label %212 [
    i32 129, label %196
    i32 128, label %204
  ]

196:                                              ; preds = %192
  %197 = load %struct.max17211_device_info*, %struct.max17211_device_info** %5, align 8
  %198 = getelementptr inbounds %struct.max17211_device_info, %struct.max17211_device_info* %197, i32 0, i32 5
  %199 = load i32*, i32** %198, align 8
  %200 = load i32, i32* @DEF_DEV_NAME_MAX17211, align 4
  %201 = load i32, i32* @MAX1721X_REG_DEV_NUMB, align 4
  %202 = mul nsw i32 2, %201
  %203 = call i32 @strncpy(i32* %199, i32 %200, i32 %202)
  br label %220

204:                                              ; preds = %192
  %205 = load %struct.max17211_device_info*, %struct.max17211_device_info** %5, align 8
  %206 = getelementptr inbounds %struct.max17211_device_info, %struct.max17211_device_info* %205, i32 0, i32 5
  %207 = load i32*, i32** %206, align 8
  %208 = load i32, i32* @DEF_DEV_NAME_MAX17215, align 4
  %209 = load i32, i32* @MAX1721X_REG_DEV_NUMB, align 4
  %210 = mul nsw i32 2, %209
  %211 = call i32 @strncpy(i32* %207, i32 %208, i32 %210)
  br label %220

212:                                              ; preds = %192
  %213 = load %struct.max17211_device_info*, %struct.max17211_device_info** %5, align 8
  %214 = getelementptr inbounds %struct.max17211_device_info, %struct.max17211_device_info* %213, i32 0, i32 5
  %215 = load i32*, i32** %214, align 8
  %216 = load i32, i32* @DEF_DEV_NAME_UNKNOWN, align 4
  %217 = load i32, i32* @MAX1721X_REG_DEV_NUMB, align 4
  %218 = mul nsw i32 2, %217
  %219 = call i32 @strncpy(i32* %215, i32 %216, i32 %218)
  br label %220

220:                                              ; preds = %212, %204, %196
  br label %221

221:                                              ; preds = %220, %171
  %222 = load %struct.max17211_device_info*, %struct.max17211_device_info** %5, align 8
  %223 = load %struct.max17211_device_info*, %struct.max17211_device_info** %5, align 8
  %224 = getelementptr inbounds %struct.max17211_device_info, %struct.max17211_device_info* %223, i32 0, i32 4
  %225 = load i32, i32* %224, align 8
  %226 = call i64 @get_sn_string(%struct.max17211_device_info* %222, i32 %225)
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %235

228:                                              ; preds = %221
  %229 = load %struct.max17211_device_info*, %struct.max17211_device_info** %5, align 8
  %230 = getelementptr inbounds %struct.max17211_device_info, %struct.max17211_device_info* %229, i32 0, i32 2
  %231 = load i32*, i32** %230, align 8
  %232 = call i32 (i32*, i8*, ...) @dev_err(i32* %231, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0))
  %233 = load i32, i32* @ENODEV, align 4
  %234 = sub nsw i32 0, %233
  store i32 %234, i32* %2, align 4
  br label %258

235:                                              ; preds = %221
  %236 = load %struct.w1_slave*, %struct.w1_slave** %3, align 8
  %237 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %236, i32 0, i32 0
  %238 = load %struct.max17211_device_info*, %struct.max17211_device_info** %5, align 8
  %239 = getelementptr inbounds %struct.max17211_device_info, %struct.max17211_device_info* %238, i32 0, i32 3
  %240 = call i32 @devm_power_supply_register(i32* %237, %struct.TYPE_4__* %239, %struct.power_supply_config* %4)
  %241 = load %struct.max17211_device_info*, %struct.max17211_device_info** %5, align 8
  %242 = getelementptr inbounds %struct.max17211_device_info, %struct.max17211_device_info* %241, i32 0, i32 1
  store i32 %240, i32* %242, align 4
  %243 = load %struct.max17211_device_info*, %struct.max17211_device_info** %5, align 8
  %244 = getelementptr inbounds %struct.max17211_device_info, %struct.max17211_device_info* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 4
  %246 = call i64 @IS_ERR(i32 %245)
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %248, label %257

248:                                              ; preds = %235
  %249 = load %struct.max17211_device_info*, %struct.max17211_device_info** %5, align 8
  %250 = getelementptr inbounds %struct.max17211_device_info, %struct.max17211_device_info* %249, i32 0, i32 2
  %251 = load i32*, i32** %250, align 8
  %252 = call i32 (i32*, i8*, ...) @dev_err(i32* %251, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0))
  %253 = load %struct.max17211_device_info*, %struct.max17211_device_info** %5, align 8
  %254 = getelementptr inbounds %struct.max17211_device_info, %struct.max17211_device_info* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 4
  %256 = call i32 @PTR_ERR(i32 %255)
  store i32 %256, i32* %2, align 4
  br label %258

257:                                              ; preds = %235
  store i32 0, i32* %2, align 4
  br label %258

258:                                              ; preds = %257, %248, %228, %185, %164, %133, %97, %75, %15
  %259 = load i32, i32* %2, align 4
  ret i32 %259
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.max17211_device_info* @devm_kzalloc(i32*, i32, i32) #2

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #2

declare dso_local i32 @ARRAY_SIZE(i32) #2

declare dso_local i32 @devm_regmap_init_w1(i32*, i32*) #2

declare dso_local i64 @IS_ERR(i32) #2

declare dso_local i32 @PTR_ERR(i32) #2

declare dso_local i32 @dev_err(i32*, i8*, ...) #2

declare dso_local i64 @regmap_read(i32, i32, i32*) #2

declare dso_local i32 @dev_warn(i32*, i8*) #2

declare dso_local i32 @dev_info(i32*, i8*, i32) #2

declare dso_local i64 @get_string(%struct.max17211_device_info*, i32, i32, i32*) #2

declare dso_local i32 @strncpy(i32*, i32, i32) #2

declare dso_local i64 @get_sn_string(%struct.max17211_device_info*, i32) #2

declare dso_local i32 @devm_power_supply_register(i32*, %struct.TYPE_4__*, %struct.power_supply_config*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
