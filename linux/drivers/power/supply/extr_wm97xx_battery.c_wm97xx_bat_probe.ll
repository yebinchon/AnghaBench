; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_wm97xx_battery.c_wm97xx_bat_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_wm97xx_battery.c_wm97xx_bat_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i32, i32* }
%struct.platform_device = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.wm97xx_batt_pdata* }
%struct.wm97xx_batt_pdata = type { i64, i64, i64, i64, i64, i64, i8* }
%struct.power_supply_config = type { %struct.wm97xx_batt_pdata* }

@.str = private unnamed_addr constant [27 x i8] c"No platform data supplied\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"BATT CHRG\00", align 1
@wm97xx_chrg_irq = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"AC Detect\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@prop = common dso_local global i32* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@POWER_SUPPLY_PROP_PRESENT = common dso_local global i32 0, align 4
@POWER_SUPPLY_PROP_STATUS = common dso_local global i32 0, align 4
@POWER_SUPPLY_PROP_TECHNOLOGY = common dso_local global i32 0, align 4
@POWER_SUPPLY_PROP_TEMP = common dso_local global i32 0, align 4
@POWER_SUPPLY_PROP_VOLTAGE_NOW = common dso_local global i32 0, align 4
@POWER_SUPPLY_PROP_VOLTAGE_MAX = common dso_local global i32 0, align 4
@POWER_SUPPLY_PROP_VOLTAGE_MIN = common dso_local global i32 0, align 4
@bat_work = common dso_local global i32 0, align 4
@wm97xx_bat_work = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [109 x i8] c"Please consider setting proper battery name in platform definition file, falling back to name \22wm97xx-batt\22\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"wm97xx-batt\00", align 1
@bat_psy_desc = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@bat_psy = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @wm97xx_bat_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm97xx_bat_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.wm97xx_batt_pdata*, align 8
  %8 = alloca %struct.power_supply_config, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load %struct.wm97xx_batt_pdata*, %struct.wm97xx_batt_pdata** %11, align 8
  store %struct.wm97xx_batt_pdata* %12, %struct.wm97xx_batt_pdata** %7, align 8
  %13 = bitcast %struct.power_supply_config* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 8, i1 false)
  %14 = load %struct.wm97xx_batt_pdata*, %struct.wm97xx_batt_pdata** %7, align 8
  %15 = icmp ne %struct.wm97xx_batt_pdata* %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %1
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 1
  %19 = call i32 @dev_err(%struct.TYPE_6__* %18, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %256

22:                                               ; preds = %1
  %23 = load %struct.wm97xx_batt_pdata*, %struct.wm97xx_batt_pdata** %7, align 8
  %24 = getelementptr inbounds %struct.power_supply_config, %struct.power_supply_config* %8, i32 0, i32 0
  store %struct.wm97xx_batt_pdata* %23, %struct.wm97xx_batt_pdata** %24, align 8
  %25 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %26 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, -1
  br i1 %28, label %29, label %32

29:                                               ; preds = %22
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %256

32:                                               ; preds = %22
  %33 = load %struct.wm97xx_batt_pdata*, %struct.wm97xx_batt_pdata** %7, align 8
  %34 = getelementptr inbounds %struct.wm97xx_batt_pdata, %struct.wm97xx_batt_pdata* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i64 @gpio_is_valid(i64 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %68

38:                                               ; preds = %32
  %39 = load %struct.wm97xx_batt_pdata*, %struct.wm97xx_batt_pdata** %7, align 8
  %40 = getelementptr inbounds %struct.wm97xx_batt_pdata, %struct.wm97xx_batt_pdata* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @gpio_request(i64 %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %4, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  br label %254

46:                                               ; preds = %38
  %47 = load %struct.wm97xx_batt_pdata*, %struct.wm97xx_batt_pdata** %7, align 8
  %48 = getelementptr inbounds %struct.wm97xx_batt_pdata, %struct.wm97xx_batt_pdata* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @gpio_direction_input(i64 %49)
  store i32 %50, i32* %4, align 4
  %51 = load i32, i32* %4, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %46
  br label %242

54:                                               ; preds = %46
  %55 = load %struct.wm97xx_batt_pdata*, %struct.wm97xx_batt_pdata** %7, align 8
  %56 = getelementptr inbounds %struct.wm97xx_batt_pdata, %struct.wm97xx_batt_pdata* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @gpio_to_irq(i64 %57)
  %59 = load i32, i32* @wm97xx_chrg_irq, align 4
  %60 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %61 = call i32 @request_irq(i32 %58, i32 %59, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), %struct.platform_device* %60)
  store i32 %61, i32* %4, align 4
  %62 = load i32, i32* %4, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %54
  br label %242

65:                                               ; preds = %54
  %66 = load i32, i32* %5, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %5, align 4
  br label %68

68:                                               ; preds = %65, %32
  %69 = load %struct.wm97xx_batt_pdata*, %struct.wm97xx_batt_pdata** %7, align 8
  %70 = getelementptr inbounds %struct.wm97xx_batt_pdata, %struct.wm97xx_batt_pdata* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp sge i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  %74 = load i32, i32* %5, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %5, align 4
  br label %76

76:                                               ; preds = %73, %68
  %77 = load %struct.wm97xx_batt_pdata*, %struct.wm97xx_batt_pdata** %7, align 8
  %78 = getelementptr inbounds %struct.wm97xx_batt_pdata, %struct.wm97xx_batt_pdata* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = icmp sge i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %76
  %82 = load i32, i32* %5, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %5, align 4
  br label %84

84:                                               ; preds = %81, %76
  %85 = load %struct.wm97xx_batt_pdata*, %struct.wm97xx_batt_pdata** %7, align 8
  %86 = getelementptr inbounds %struct.wm97xx_batt_pdata, %struct.wm97xx_batt_pdata* %85, i32 0, i32 3
  %87 = load i64, i64* %86, align 8
  %88 = icmp sge i64 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %84
  %90 = load i32, i32* %5, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %5, align 4
  br label %92

92:                                               ; preds = %89, %84
  %93 = load %struct.wm97xx_batt_pdata*, %struct.wm97xx_batt_pdata** %7, align 8
  %94 = getelementptr inbounds %struct.wm97xx_batt_pdata, %struct.wm97xx_batt_pdata* %93, i32 0, i32 4
  %95 = load i64, i64* %94, align 8
  %96 = icmp sge i64 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %92
  %98 = load i32, i32* %5, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %5, align 4
  br label %100

100:                                              ; preds = %97, %92
  %101 = load %struct.wm97xx_batt_pdata*, %struct.wm97xx_batt_pdata** %7, align 8
  %102 = getelementptr inbounds %struct.wm97xx_batt_pdata, %struct.wm97xx_batt_pdata* %101, i32 0, i32 5
  %103 = load i64, i64* %102, align 8
  %104 = icmp sge i64 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %100
  %106 = load i32, i32* %5, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %5, align 4
  br label %108

108:                                              ; preds = %105, %100
  %109 = load i32, i32* %5, align 4
  %110 = load i32, i32* @GFP_KERNEL, align 4
  %111 = call i32* @kcalloc(i32 %109, i32 4, i32 %110)
  store i32* %111, i32** @prop, align 8
  %112 = load i32*, i32** @prop, align 8
  %113 = icmp ne i32* %112, null
  br i1 %113, label %117, label %114

114:                                              ; preds = %108
  %115 = load i32, i32* @ENOMEM, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %4, align 4
  br label %228

117:                                              ; preds = %108
  %118 = load i32, i32* @POWER_SUPPLY_PROP_PRESENT, align 4
  %119 = load i32*, i32** @prop, align 8
  %120 = load i32, i32* %6, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %6, align 4
  %122 = sext i32 %120 to i64
  %123 = getelementptr inbounds i32, i32* %119, i64 %122
  store i32 %118, i32* %123, align 4
  %124 = load %struct.wm97xx_batt_pdata*, %struct.wm97xx_batt_pdata** %7, align 8
  %125 = getelementptr inbounds %struct.wm97xx_batt_pdata, %struct.wm97xx_batt_pdata* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = icmp sge i64 %126, 0
  br i1 %127, label %128, label %135

128:                                              ; preds = %117
  %129 = load i32, i32* @POWER_SUPPLY_PROP_STATUS, align 4
  %130 = load i32*, i32** @prop, align 8
  %131 = load i32, i32* %6, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %6, align 4
  %133 = sext i32 %131 to i64
  %134 = getelementptr inbounds i32, i32* %130, i64 %133
  store i32 %129, i32* %134, align 4
  br label %135

135:                                              ; preds = %128, %117
  %136 = load %struct.wm97xx_batt_pdata*, %struct.wm97xx_batt_pdata** %7, align 8
  %137 = getelementptr inbounds %struct.wm97xx_batt_pdata, %struct.wm97xx_batt_pdata* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = icmp sge i64 %138, 0
  br i1 %139, label %140, label %147

140:                                              ; preds = %135
  %141 = load i32, i32* @POWER_SUPPLY_PROP_TECHNOLOGY, align 4
  %142 = load i32*, i32** @prop, align 8
  %143 = load i32, i32* %6, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %6, align 4
  %145 = sext i32 %143 to i64
  %146 = getelementptr inbounds i32, i32* %142, i64 %145
  store i32 %141, i32* %146, align 4
  br label %147

147:                                              ; preds = %140, %135
  %148 = load %struct.wm97xx_batt_pdata*, %struct.wm97xx_batt_pdata** %7, align 8
  %149 = getelementptr inbounds %struct.wm97xx_batt_pdata, %struct.wm97xx_batt_pdata* %148, i32 0, i32 2
  %150 = load i64, i64* %149, align 8
  %151 = icmp sge i64 %150, 0
  br i1 %151, label %152, label %159

152:                                              ; preds = %147
  %153 = load i32, i32* @POWER_SUPPLY_PROP_TEMP, align 4
  %154 = load i32*, i32** @prop, align 8
  %155 = load i32, i32* %6, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %6, align 4
  %157 = sext i32 %155 to i64
  %158 = getelementptr inbounds i32, i32* %154, i64 %157
  store i32 %153, i32* %158, align 4
  br label %159

159:                                              ; preds = %152, %147
  %160 = load %struct.wm97xx_batt_pdata*, %struct.wm97xx_batt_pdata** %7, align 8
  %161 = getelementptr inbounds %struct.wm97xx_batt_pdata, %struct.wm97xx_batt_pdata* %160, i32 0, i32 3
  %162 = load i64, i64* %161, align 8
  %163 = icmp sge i64 %162, 0
  br i1 %163, label %164, label %171

164:                                              ; preds = %159
  %165 = load i32, i32* @POWER_SUPPLY_PROP_VOLTAGE_NOW, align 4
  %166 = load i32*, i32** @prop, align 8
  %167 = load i32, i32* %6, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %6, align 4
  %169 = sext i32 %167 to i64
  %170 = getelementptr inbounds i32, i32* %166, i64 %169
  store i32 %165, i32* %170, align 4
  br label %171

171:                                              ; preds = %164, %159
  %172 = load %struct.wm97xx_batt_pdata*, %struct.wm97xx_batt_pdata** %7, align 8
  %173 = getelementptr inbounds %struct.wm97xx_batt_pdata, %struct.wm97xx_batt_pdata* %172, i32 0, i32 4
  %174 = load i64, i64* %173, align 8
  %175 = icmp sge i64 %174, 0
  br i1 %175, label %176, label %183

176:                                              ; preds = %171
  %177 = load i32, i32* @POWER_SUPPLY_PROP_VOLTAGE_MAX, align 4
  %178 = load i32*, i32** @prop, align 8
  %179 = load i32, i32* %6, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %6, align 4
  %181 = sext i32 %179 to i64
  %182 = getelementptr inbounds i32, i32* %178, i64 %181
  store i32 %177, i32* %182, align 4
  br label %183

183:                                              ; preds = %176, %171
  %184 = load %struct.wm97xx_batt_pdata*, %struct.wm97xx_batt_pdata** %7, align 8
  %185 = getelementptr inbounds %struct.wm97xx_batt_pdata, %struct.wm97xx_batt_pdata* %184, i32 0, i32 5
  %186 = load i64, i64* %185, align 8
  %187 = icmp sge i64 %186, 0
  br i1 %187, label %188, label %195

188:                                              ; preds = %183
  %189 = load i32, i32* @POWER_SUPPLY_PROP_VOLTAGE_MIN, align 4
  %190 = load i32*, i32** @prop, align 8
  %191 = load i32, i32* %6, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %6, align 4
  %193 = sext i32 %191 to i64
  %194 = getelementptr inbounds i32, i32* %190, i64 %193
  store i32 %189, i32* %194, align 4
  br label %195

195:                                              ; preds = %188, %183
  %196 = load i32, i32* @wm97xx_bat_work, align 4
  %197 = call i32 @INIT_WORK(i32* @bat_work, i32 %196)
  %198 = load %struct.wm97xx_batt_pdata*, %struct.wm97xx_batt_pdata** %7, align 8
  %199 = getelementptr inbounds %struct.wm97xx_batt_pdata, %struct.wm97xx_batt_pdata* %198, i32 0, i32 6
  %200 = load i8*, i8** %199, align 8
  %201 = icmp ne i8* %200, null
  br i1 %201, label %206, label %202

202:                                              ; preds = %195
  %203 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %204 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %203, i32 0, i32 1
  %205 = call i32 @dev_info(%struct.TYPE_6__* %204, i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.3, i64 0, i64 0))
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @bat_psy_desc, i32 0, i32 0), align 8
  br label %210

206:                                              ; preds = %195
  %207 = load %struct.wm97xx_batt_pdata*, %struct.wm97xx_batt_pdata** %7, align 8
  %208 = getelementptr inbounds %struct.wm97xx_batt_pdata, %struct.wm97xx_batt_pdata* %207, i32 0, i32 6
  %209 = load i8*, i8** %208, align 8
  store i8* %209, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @bat_psy_desc, i32 0, i32 0), align 8
  br label %210

210:                                              ; preds = %206, %202
  %211 = load i32*, i32** @prop, align 8
  store i32* %211, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @bat_psy_desc, i32 0, i32 2), align 8
  %212 = load i32, i32* %5, align 4
  store i32 %212, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @bat_psy_desc, i32 0, i32 1), align 8
  %213 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %214 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %213, i32 0, i32 1
  %215 = call i32 @power_supply_register(%struct.TYPE_6__* %214, %struct.TYPE_7__* @bat_psy_desc, %struct.power_supply_config* %8)
  store i32 %215, i32* @bat_psy, align 4
  %216 = load i32, i32* @bat_psy, align 4
  %217 = call i32 @IS_ERR(i32 %216)
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %221, label %219

219:                                              ; preds = %210
  %220 = call i32 @schedule_work(i32* @bat_work)
  br label %224

221:                                              ; preds = %210
  %222 = load i32, i32* @bat_psy, align 4
  %223 = call i32 @PTR_ERR(i32 %222)
  store i32 %223, i32* %4, align 4
  br label %225

224:                                              ; preds = %219
  store i32 0, i32* %2, align 4
  br label %256

225:                                              ; preds = %221
  %226 = load i32*, i32** @prop, align 8
  %227 = call i32 @kfree(i32* %226)
  br label %228

228:                                              ; preds = %225, %114
  %229 = load %struct.wm97xx_batt_pdata*, %struct.wm97xx_batt_pdata** %7, align 8
  %230 = getelementptr inbounds %struct.wm97xx_batt_pdata, %struct.wm97xx_batt_pdata* %229, i32 0, i32 0
  %231 = load i64, i64* %230, align 8
  %232 = call i64 @gpio_is_valid(i64 %231)
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %241

234:                                              ; preds = %228
  %235 = load %struct.wm97xx_batt_pdata*, %struct.wm97xx_batt_pdata** %7, align 8
  %236 = getelementptr inbounds %struct.wm97xx_batt_pdata, %struct.wm97xx_batt_pdata* %235, i32 0, i32 0
  %237 = load i64, i64* %236, align 8
  %238 = call i32 @gpio_to_irq(i64 %237)
  %239 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %240 = call i32 @free_irq(i32 %238, %struct.platform_device* %239)
  br label %241

241:                                              ; preds = %234, %228
  br label %242

242:                                              ; preds = %241, %64, %53
  %243 = load %struct.wm97xx_batt_pdata*, %struct.wm97xx_batt_pdata** %7, align 8
  %244 = getelementptr inbounds %struct.wm97xx_batt_pdata, %struct.wm97xx_batt_pdata* %243, i32 0, i32 0
  %245 = load i64, i64* %244, align 8
  %246 = call i64 @gpio_is_valid(i64 %245)
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %248, label %253

248:                                              ; preds = %242
  %249 = load %struct.wm97xx_batt_pdata*, %struct.wm97xx_batt_pdata** %7, align 8
  %250 = getelementptr inbounds %struct.wm97xx_batt_pdata, %struct.wm97xx_batt_pdata* %249, i32 0, i32 0
  %251 = load i64, i64* %250, align 8
  %252 = call i32 @gpio_free(i64 %251)
  br label %253

253:                                              ; preds = %248, %242
  br label %254

254:                                              ; preds = %253, %45
  %255 = load i32, i32* %4, align 4
  store i32 %255, i32* %2, align 4
  br label %256

256:                                              ; preds = %254, %224, %29, %16
  %257 = load i32, i32* %2, align 4
  ret i32 %257
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @dev_err(%struct.TYPE_6__*, i8*) #2

declare dso_local i64 @gpio_is_valid(i64) #2

declare dso_local i32 @gpio_request(i64, i8*) #2

declare dso_local i32 @gpio_direction_input(i64) #2

declare dso_local i32 @request_irq(i32, i32, i32, i8*, %struct.platform_device*) #2

declare dso_local i32 @gpio_to_irq(i64) #2

declare dso_local i32* @kcalloc(i32, i32, i32) #2

declare dso_local i32 @INIT_WORK(i32*, i32) #2

declare dso_local i32 @dev_info(%struct.TYPE_6__*, i8*) #2

declare dso_local i32 @power_supply_register(%struct.TYPE_6__*, %struct.TYPE_7__*, %struct.power_supply_config*) #2

declare dso_local i32 @IS_ERR(i32) #2

declare dso_local i32 @schedule_work(i32*) #2

declare dso_local i32 @PTR_ERR(i32) #2

declare dso_local i32 @kfree(i32*) #2

declare dso_local i32 @free_irq(i32, %struct.platform_device*) #2

declare dso_local i32 @gpio_free(i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
