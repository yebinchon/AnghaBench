; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-da9063.c_da9063_rtc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-da9063.c_da9063_rtc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.da9063_compatible_rtc_regmap = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.platform_device = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32 }
%struct.da9063_compatible_rtc = type { i32, %struct.TYPE_10__*, i32, i32, %struct.da9063_compatible_rtc_regmap* }
%struct.TYPE_10__ = type { i32, i32, i32, i32* }
%struct.of_device_id = type { %struct.da9063_compatible_rtc_regmap* }
%struct.da9063 = type { i64 }

@RTC_DATA_LEN = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@da9063_compatible_reg_id_table = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"dlg,da9063-rtc\00", align 1
@PMIC_DA9063_AD = common dso_local global i64 0, align 8
@da9063_ad_regs = common dso_local global %struct.da9063_compatible_rtc_regmap zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"Parent regmap unavailable.\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Failed to enable RTC\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Failed to run 32kHz oscillator\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"Failed to access RTC alarm register\0A\00", align 1
@DA9063_ALARM_STATUS_ALARM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [25 x i8] c"Failed to disable TICKs\0A\00", align 1
@RTC_SEC = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [39 x i8] c"Failed to read initial alarm data: %d\0A\00", align 1
@da9063_rtc_ops = common dso_local global i32 0, align 4
@RTC_TIMESTAMP_BEGIN_2000 = common dso_local global i32 0, align 4
@RTC_TIMESTAMP_END_2063 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [6 x i8] c"ALARM\00", align 1
@da9063_alarm_event = common dso_local global i32 0, align 4
@IRQF_TRIGGER_LOW = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [36 x i8] c"Failed to request ALARM IRQ %d: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @da9063_rtc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da9063_rtc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.da9063_compatible_rtc*, align 8
  %5 = alloca %struct.da9063_compatible_rtc_regmap*, align 8
  %6 = alloca %struct.of_device_id*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.da9063*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %13 = load i32, i32* @RTC_DATA_LEN, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %8, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %9, align 8
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %1
  %23 = load i32, i32* @ENXIO, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %284

25:                                               ; preds = %1
  %26 = load i32, i32* @da9063_compatible_reg_id_table, align 4
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call %struct.of_device_id* @of_match_node(i32 %26, i32 %30)
  store %struct.of_device_id* %31, %struct.of_device_id** %6, align 8
  %32 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %33 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %32, i32 0, i32 0
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call %struct.da9063_compatible_rtc* @devm_kzalloc(%struct.TYPE_11__* %33, i32 32, i32 %34)
  store %struct.da9063_compatible_rtc* %35, %struct.da9063_compatible_rtc** %4, align 8
  %36 = load %struct.da9063_compatible_rtc*, %struct.da9063_compatible_rtc** %4, align 8
  %37 = icmp ne %struct.da9063_compatible_rtc* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %25
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %284

41:                                               ; preds = %25
  %42 = load %struct.of_device_id*, %struct.of_device_id** %6, align 8
  %43 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %42, i32 0, i32 0
  %44 = load %struct.da9063_compatible_rtc_regmap*, %struct.da9063_compatible_rtc_regmap** %43, align 8
  %45 = load %struct.da9063_compatible_rtc*, %struct.da9063_compatible_rtc** %4, align 8
  %46 = getelementptr inbounds %struct.da9063_compatible_rtc, %struct.da9063_compatible_rtc* %45, i32 0, i32 4
  store %struct.da9063_compatible_rtc_regmap* %44, %struct.da9063_compatible_rtc_regmap** %46, align 8
  %47 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %48 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @of_device_is_compatible(i32 %50, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %68

53:                                               ; preds = %41
  %54 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %55 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call %struct.da9063* @dev_get_drvdata(i32 %57)
  store %struct.da9063* %58, %struct.da9063** %12, align 8
  %59 = load %struct.da9063*, %struct.da9063** %12, align 8
  %60 = getelementptr inbounds %struct.da9063, %struct.da9063* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @PMIC_DA9063_AD, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %53
  %65 = load %struct.da9063_compatible_rtc*, %struct.da9063_compatible_rtc** %4, align 8
  %66 = getelementptr inbounds %struct.da9063_compatible_rtc, %struct.da9063_compatible_rtc* %65, i32 0, i32 4
  store %struct.da9063_compatible_rtc_regmap* @da9063_ad_regs, %struct.da9063_compatible_rtc_regmap** %66, align 8
  br label %67

67:                                               ; preds = %64, %53
  br label %68

68:                                               ; preds = %67, %41
  %69 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %70 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @dev_get_regmap(i32 %72, i32* null)
  %74 = load %struct.da9063_compatible_rtc*, %struct.da9063_compatible_rtc** %4, align 8
  %75 = getelementptr inbounds %struct.da9063_compatible_rtc, %struct.da9063_compatible_rtc* %74, i32 0, i32 3
  store i32 %73, i32* %75, align 4
  %76 = load %struct.da9063_compatible_rtc*, %struct.da9063_compatible_rtc** %4, align 8
  %77 = getelementptr inbounds %struct.da9063_compatible_rtc, %struct.da9063_compatible_rtc* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %86, label %80

80:                                               ; preds = %68
  %81 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %82 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %81, i32 0, i32 0
  %83 = call i32 @dev_warn(%struct.TYPE_11__* %82, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %84 = load i32, i32* @ENXIO, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %284

86:                                               ; preds = %68
  %87 = load %struct.da9063_compatible_rtc*, %struct.da9063_compatible_rtc** %4, align 8
  %88 = getelementptr inbounds %struct.da9063_compatible_rtc, %struct.da9063_compatible_rtc* %87, i32 0, i32 4
  %89 = load %struct.da9063_compatible_rtc_regmap*, %struct.da9063_compatible_rtc_regmap** %88, align 8
  store %struct.da9063_compatible_rtc_regmap* %89, %struct.da9063_compatible_rtc_regmap** %5, align 8
  %90 = load %struct.da9063_compatible_rtc*, %struct.da9063_compatible_rtc** %4, align 8
  %91 = getelementptr inbounds %struct.da9063_compatible_rtc, %struct.da9063_compatible_rtc* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.da9063_compatible_rtc_regmap*, %struct.da9063_compatible_rtc_regmap** %5, align 8
  %94 = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, %struct.da9063_compatible_rtc_regmap* %93, i32 0, i32 9
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.da9063_compatible_rtc_regmap*, %struct.da9063_compatible_rtc_regmap** %5, align 8
  %97 = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, %struct.da9063_compatible_rtc_regmap* %96, i32 0, i32 8
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.da9063_compatible_rtc_regmap*, %struct.da9063_compatible_rtc_regmap** %5, align 8
  %100 = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, %struct.da9063_compatible_rtc_regmap* %99, i32 0, i32 8
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @regmap_update_bits(i32 %92, i32 %95, i32 %98, i32 %101)
  store i32 %102, i32* %10, align 4
  %103 = load i32, i32* %10, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %86
  %106 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %107 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %106, i32 0, i32 0
  %108 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_err(%struct.TYPE_11__* %107, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %109 = load i32, i32* %10, align 4
  store i32 %109, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %284

110:                                              ; preds = %86
  %111 = load %struct.da9063_compatible_rtc*, %struct.da9063_compatible_rtc** %4, align 8
  %112 = getelementptr inbounds %struct.da9063_compatible_rtc, %struct.da9063_compatible_rtc* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.da9063_compatible_rtc_regmap*, %struct.da9063_compatible_rtc_regmap** %5, align 8
  %115 = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, %struct.da9063_compatible_rtc_regmap* %114, i32 0, i32 7
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.da9063_compatible_rtc_regmap*, %struct.da9063_compatible_rtc_regmap** %5, align 8
  %118 = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, %struct.da9063_compatible_rtc_regmap* %117, i32 0, i32 6
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.da9063_compatible_rtc_regmap*, %struct.da9063_compatible_rtc_regmap** %5, align 8
  %121 = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, %struct.da9063_compatible_rtc_regmap* %120, i32 0, i32 6
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @regmap_update_bits(i32 %113, i32 %116, i32 %119, i32 %122)
  store i32 %123, i32* %10, align 4
  %124 = load i32, i32* %10, align 4
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %110
  %127 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %128 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %127, i32 0, i32 0
  %129 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_err(%struct.TYPE_11__* %128, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %130 = load i32, i32* %10, align 4
  store i32 %130, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %284

131:                                              ; preds = %110
  %132 = load %struct.da9063_compatible_rtc*, %struct.da9063_compatible_rtc** %4, align 8
  %133 = getelementptr inbounds %struct.da9063_compatible_rtc, %struct.da9063_compatible_rtc* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.da9063_compatible_rtc_regmap*, %struct.da9063_compatible_rtc_regmap** %5, align 8
  %136 = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, %struct.da9063_compatible_rtc_regmap* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.da9063_compatible_rtc_regmap*, %struct.da9063_compatible_rtc_regmap** %5, align 8
  %139 = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, %struct.da9063_compatible_rtc_regmap* %138, i32 0, i32 5
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @regmap_update_bits(i32 %134, i32 %137, i32 %140, i32 0)
  store i32 %141, i32* %10, align 4
  %142 = load i32, i32* %10, align 4
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %144, label %149

144:                                              ; preds = %131
  %145 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %146 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %145, i32 0, i32 0
  %147 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_err(%struct.TYPE_11__* %146, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  %148 = load i32, i32* %10, align 4
  store i32 %148, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %284

149:                                              ; preds = %131
  %150 = load %struct.da9063_compatible_rtc*, %struct.da9063_compatible_rtc** %4, align 8
  %151 = getelementptr inbounds %struct.da9063_compatible_rtc, %struct.da9063_compatible_rtc* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.da9063_compatible_rtc_regmap*, %struct.da9063_compatible_rtc_regmap** %5, align 8
  %154 = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, %struct.da9063_compatible_rtc_regmap* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* @DA9063_ALARM_STATUS_ALARM, align 4
  %157 = load i32, i32* @DA9063_ALARM_STATUS_ALARM, align 4
  %158 = call i32 @regmap_update_bits(i32 %152, i32 %155, i32 %156, i32 %157)
  store i32 %158, i32* %10, align 4
  %159 = load i32, i32* %10, align 4
  %160 = icmp slt i32 %159, 0
  br i1 %160, label %161, label %166

161:                                              ; preds = %149
  %162 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %163 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %162, i32 0, i32 0
  %164 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_err(%struct.TYPE_11__* %163, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  %165 = load i32, i32* %10, align 4
  store i32 %165, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %284

166:                                              ; preds = %149
  %167 = load %struct.da9063_compatible_rtc*, %struct.da9063_compatible_rtc** %4, align 8
  %168 = getelementptr inbounds %struct.da9063_compatible_rtc, %struct.da9063_compatible_rtc* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.da9063_compatible_rtc_regmap*, %struct.da9063_compatible_rtc_regmap** %5, align 8
  %171 = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, %struct.da9063_compatible_rtc_regmap* %170, i32 0, i32 4
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.da9063_compatible_rtc_regmap*, %struct.da9063_compatible_rtc_regmap** %5, align 8
  %174 = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, %struct.da9063_compatible_rtc_regmap* %173, i32 0, i32 3
  %175 = load i32, i32* %174, align 8
  %176 = call i32 @regmap_update_bits(i32 %169, i32 %172, i32 %175, i32 0)
  store i32 %176, i32* %10, align 4
  %177 = load i32, i32* %10, align 4
  %178 = icmp slt i32 %177, 0
  br i1 %178, label %179, label %184

179:                                              ; preds = %166
  %180 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %181 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %180, i32 0, i32 0
  %182 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_err(%struct.TYPE_11__* %181, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  %183 = load i32, i32* %10, align 4
  store i32 %183, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %284

184:                                              ; preds = %166
  %185 = load i64, i64* @RTC_SEC, align 8
  %186 = getelementptr inbounds i32, i32* %16, i64 %185
  store i32 0, i32* %186, align 4
  %187 = load %struct.da9063_compatible_rtc*, %struct.da9063_compatible_rtc** %4, align 8
  %188 = getelementptr inbounds %struct.da9063_compatible_rtc, %struct.da9063_compatible_rtc* %187, i32 0, i32 3
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.da9063_compatible_rtc_regmap*, %struct.da9063_compatible_rtc_regmap** %5, align 8
  %191 = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, %struct.da9063_compatible_rtc_regmap* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.da9063_compatible_rtc_regmap*, %struct.da9063_compatible_rtc_regmap** %5, align 8
  %194 = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, %struct.da9063_compatible_rtc_regmap* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = getelementptr inbounds i32, i32* %16, i64 %195
  %197 = load %struct.da9063_compatible_rtc_regmap*, %struct.da9063_compatible_rtc_regmap** %5, align 8
  %198 = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, %struct.da9063_compatible_rtc_regmap* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 8
  %200 = call i32 @regmap_bulk_read(i32 %189, i32 %192, i32* %196, i32 %199)
  store i32 %200, i32* %10, align 4
  %201 = load i32, i32* %10, align 4
  %202 = icmp slt i32 %201, 0
  br i1 %202, label %203, label %209

203:                                              ; preds = %184
  %204 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %205 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %204, i32 0, i32 0
  %206 = load i32, i32* %10, align 4
  %207 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_err(%struct.TYPE_11__* %205, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i32 %206)
  %208 = load i32, i32* %10, align 4
  store i32 %208, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %284

209:                                              ; preds = %184
  %210 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %211 = load %struct.da9063_compatible_rtc*, %struct.da9063_compatible_rtc** %4, align 8
  %212 = call i32 @platform_set_drvdata(%struct.platform_device* %210, %struct.da9063_compatible_rtc* %211)
  %213 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %214 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %213, i32 0, i32 0
  %215 = call %struct.TYPE_10__* @devm_rtc_allocate_device(%struct.TYPE_11__* %214)
  %216 = load %struct.da9063_compatible_rtc*, %struct.da9063_compatible_rtc** %4, align 8
  %217 = getelementptr inbounds %struct.da9063_compatible_rtc, %struct.da9063_compatible_rtc* %216, i32 0, i32 1
  store %struct.TYPE_10__* %215, %struct.TYPE_10__** %217, align 8
  %218 = load %struct.da9063_compatible_rtc*, %struct.da9063_compatible_rtc** %4, align 8
  %219 = getelementptr inbounds %struct.da9063_compatible_rtc, %struct.da9063_compatible_rtc* %218, i32 0, i32 1
  %220 = load %struct.TYPE_10__*, %struct.TYPE_10__** %219, align 8
  %221 = call i64 @IS_ERR(%struct.TYPE_10__* %220)
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %228

223:                                              ; preds = %209
  %224 = load %struct.da9063_compatible_rtc*, %struct.da9063_compatible_rtc** %4, align 8
  %225 = getelementptr inbounds %struct.da9063_compatible_rtc, %struct.da9063_compatible_rtc* %224, i32 0, i32 1
  %226 = load %struct.TYPE_10__*, %struct.TYPE_10__** %225, align 8
  %227 = call i32 @PTR_ERR(%struct.TYPE_10__* %226)
  store i32 %227, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %284

228:                                              ; preds = %209
  %229 = load %struct.da9063_compatible_rtc*, %struct.da9063_compatible_rtc** %4, align 8
  %230 = getelementptr inbounds %struct.da9063_compatible_rtc, %struct.da9063_compatible_rtc* %229, i32 0, i32 1
  %231 = load %struct.TYPE_10__*, %struct.TYPE_10__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %231, i32 0, i32 3
  store i32* @da9063_rtc_ops, i32** %232, align 8
  %233 = load i32, i32* @RTC_TIMESTAMP_BEGIN_2000, align 4
  %234 = load %struct.da9063_compatible_rtc*, %struct.da9063_compatible_rtc** %4, align 8
  %235 = getelementptr inbounds %struct.da9063_compatible_rtc, %struct.da9063_compatible_rtc* %234, i32 0, i32 1
  %236 = load %struct.TYPE_10__*, %struct.TYPE_10__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %236, i32 0, i32 2
  store i32 %233, i32* %237, align 8
  %238 = load i32, i32* @RTC_TIMESTAMP_END_2063, align 4
  %239 = load %struct.da9063_compatible_rtc*, %struct.da9063_compatible_rtc** %4, align 8
  %240 = getelementptr inbounds %struct.da9063_compatible_rtc, %struct.da9063_compatible_rtc* %239, i32 0, i32 1
  %241 = load %struct.TYPE_10__*, %struct.TYPE_10__** %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %241, i32 0, i32 1
  store i32 %238, i32* %242, align 4
  %243 = load %struct.da9063_compatible_rtc*, %struct.da9063_compatible_rtc** %4, align 8
  %244 = getelementptr inbounds %struct.da9063_compatible_rtc, %struct.da9063_compatible_rtc* %243, i32 0, i32 2
  %245 = load %struct.da9063_compatible_rtc*, %struct.da9063_compatible_rtc** %4, align 8
  %246 = call i32 @da9063_data_to_tm(i32* %16, i32* %244, %struct.da9063_compatible_rtc* %245)
  %247 = load %struct.da9063_compatible_rtc*, %struct.da9063_compatible_rtc** %4, align 8
  %248 = getelementptr inbounds %struct.da9063_compatible_rtc, %struct.da9063_compatible_rtc* %247, i32 0, i32 0
  store i32 0, i32* %248, align 8
  %249 = load %struct.da9063_compatible_rtc_regmap*, %struct.da9063_compatible_rtc_regmap** %5, align 8
  %250 = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, %struct.da9063_compatible_rtc_regmap* %249, i32 0, i32 0
  %251 = load i64, i64* %250, align 8
  %252 = load i64, i64* @RTC_SEC, align 8
  %253 = icmp ne i64 %251, %252
  br i1 %253, label %254, label %259

254:                                              ; preds = %228
  %255 = load %struct.da9063_compatible_rtc*, %struct.da9063_compatible_rtc** %4, align 8
  %256 = getelementptr inbounds %struct.da9063_compatible_rtc, %struct.da9063_compatible_rtc* %255, i32 0, i32 1
  %257 = load %struct.TYPE_10__*, %struct.TYPE_10__** %256, align 8
  %258 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %257, i32 0, i32 0
  store i32 1, i32* %258, align 8
  br label %259

259:                                              ; preds = %254, %228
  %260 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %261 = call i32 @platform_get_irq_byname(%struct.platform_device* %260, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  store i32 %261, i32* %7, align 4
  %262 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %263 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %262, i32 0, i32 0
  %264 = load i32, i32* %7, align 4
  %265 = load i32, i32* @da9063_alarm_event, align 4
  %266 = load i32, i32* @IRQF_TRIGGER_LOW, align 4
  %267 = load i32, i32* @IRQF_ONESHOT, align 4
  %268 = or i32 %266, %267
  %269 = load %struct.da9063_compatible_rtc*, %struct.da9063_compatible_rtc** %4, align 8
  %270 = call i32 @devm_request_threaded_irq(%struct.TYPE_11__* %263, i32 %264, i32* null, i32 %265, i32 %268, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), %struct.da9063_compatible_rtc* %269)
  store i32 %270, i32* %10, align 4
  %271 = load i32, i32* %10, align 4
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %279

273:                                              ; preds = %259
  %274 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %275 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %274, i32 0, i32 0
  %276 = load i32, i32* %7, align 4
  %277 = load i32, i32* %10, align 4
  %278 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_err(%struct.TYPE_11__* %275, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0), i32 %276, i32 %277)
  br label %279

279:                                              ; preds = %273, %259
  %280 = load %struct.da9063_compatible_rtc*, %struct.da9063_compatible_rtc** %4, align 8
  %281 = getelementptr inbounds %struct.da9063_compatible_rtc, %struct.da9063_compatible_rtc* %280, i32 0, i32 1
  %282 = load %struct.TYPE_10__*, %struct.TYPE_10__** %281, align 8
  %283 = call i32 @rtc_register_device(%struct.TYPE_10__* %282)
  store i32 %283, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %284

284:                                              ; preds = %279, %223, %203, %179, %161, %144, %126, %105, %80, %38, %22
  %285 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %285)
  %286 = load i32, i32* %2, align 4
  ret i32 %286
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.of_device_id* @of_match_node(i32, i32) #2

declare dso_local %struct.da9063_compatible_rtc* @devm_kzalloc(%struct.TYPE_11__*, i32, i32) #2

declare dso_local i64 @of_device_is_compatible(i32, i8*) #2

declare dso_local %struct.da9063* @dev_get_drvdata(i32) #2

declare dso_local i32 @dev_get_regmap(i32, i32*) #2

declare dso_local i32 @dev_warn(%struct.TYPE_11__*, i8*) #2

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #2

declare dso_local i32 @dev_err(%struct.TYPE_11__*, i8*, ...) #2

declare dso_local i32 @regmap_bulk_read(i32, i32, i32*, i32) #2

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.da9063_compatible_rtc*) #2

declare dso_local %struct.TYPE_10__* @devm_rtc_allocate_device(%struct.TYPE_11__*) #2

declare dso_local i64 @IS_ERR(%struct.TYPE_10__*) #2

declare dso_local i32 @PTR_ERR(%struct.TYPE_10__*) #2

declare dso_local i32 @da9063_data_to_tm(i32*, i32*, %struct.da9063_compatible_rtc*) #2

declare dso_local i32 @platform_get_irq_byname(%struct.platform_device*, i8*) #2

declare dso_local i32 @devm_request_threaded_irq(%struct.TYPE_11__*, i32, i32*, i32, i32, i8*, %struct.da9063_compatible_rtc*) #2

declare dso_local i32 @rtc_register_device(%struct.TYPE_10__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
