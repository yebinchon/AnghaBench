; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-hid-sensor-time.c_hid_time_parse_report.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-hid-sensor-time.c_hid_time_parse_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.hid_sensor_hub_device = type { i32 }
%struct.hid_time_state = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i64, i64, i64 }

@TIME_RTC_CHANNEL_MAX = common dso_local global i32 0, align 4
@HID_INPUT_REPORT = common dso_local global i32 0, align 4
@hid_time_addresses = common dso_local global i32* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"bad report ID!\0A\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"not all needed attributes inside the same report!\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"attribute '%s' not 8, 16 or 32 bits wide!\0A\00", align 1
@HID_USAGE_SENSOR_UNITS_NOT_SPECIFIED = common dso_local global i64 0, align 8
@HID_USAGE_SENSOR_TIME_SECOND = common dso_local global i64 0, align 8
@HID_USAGE_SENSOR_UNITS_SECOND = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [46 x i8] c"attribute '%s' hasn't a unit of type 'none'!\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"attribute '%s' hasn't a unit exponent of 1!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.hid_sensor_hub_device*, i32, %struct.hid_time_state*)* @hid_time_parse_report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hid_time_parse_report(%struct.platform_device* %0, %struct.hid_sensor_hub_device* %1, i32 %2, %struct.hid_time_state* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.platform_device*, align 8
  %7 = alloca %struct.hid_sensor_hub_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.hid_time_state*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %6, align 8
  store %struct.hid_sensor_hub_device* %1, %struct.hid_sensor_hub_device** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.hid_time_state* %3, %struct.hid_time_state** %9, align 8
  store i32 0, i32* %11, align 4
  br label %12

12:                                               ; preds = %37, %4
  %13 = load i32, i32* %11, align 4
  %14 = load i32, i32* @TIME_RTC_CHANNEL_MAX, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %40

16:                                               ; preds = %12
  %17 = load %struct.hid_sensor_hub_device*, %struct.hid_sensor_hub_device** %7, align 8
  %18 = load i32, i32* @HID_INPUT_REPORT, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load i32*, i32** @hid_time_addresses, align 8
  %21 = load i32, i32* %11, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.hid_time_state*, %struct.hid_time_state** %9, align 8
  %26 = getelementptr inbounds %struct.hid_time_state, %struct.hid_time_state* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load i32, i32* %11, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = call i64 @sensor_hub_input_get_attribute_info(%struct.hid_sensor_hub_device* %17, i32 %18, i32 %19, i32 %24, %struct.TYPE_2__* %30)
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %16
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %5, align 4
  br label %190

36:                                               ; preds = %16
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %11, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %11, align 4
  br label %12

40:                                               ; preds = %12
  %41 = load %struct.hid_time_state*, %struct.hid_time_state** %9, align 8
  %42 = getelementptr inbounds %struct.hid_time_state, %struct.hid_time_state* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %40
  %50 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %51 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %50, i32 0, i32 0
  %52 = call i32 (i32*, i8*, ...) @dev_err(i32* %51, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %5, align 4
  br label %190

55:                                               ; preds = %40
  store i32 0, i32* %11, align 4
  br label %56

56:                                               ; preds = %186, %55
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* @TIME_RTC_CHANNEL_MAX, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %189

60:                                               ; preds = %56
  %61 = load %struct.hid_time_state*, %struct.hid_time_state** %9, align 8
  %62 = getelementptr inbounds %struct.hid_time_state, %struct.hid_time_state* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = load i32, i32* %11, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* %10, align 4
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %71, label %77

71:                                               ; preds = %60
  %72 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %73 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %72, i32 0, i32 0
  %74 = call i32 (i32*, i8*, ...) @dev_err(i32* %73, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %5, align 4
  br label %190

77:                                               ; preds = %60
  %78 = load %struct.hid_time_state*, %struct.hid_time_state** %9, align 8
  %79 = getelementptr inbounds %struct.hid_time_state, %struct.hid_time_state* %78, i32 0, i32 0
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = load i32, i32* %11, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = icmp eq i32 %85, 3
  br i1 %86, label %97, label %87

87:                                               ; preds = %77
  %88 = load %struct.hid_time_state*, %struct.hid_time_state** %9, align 8
  %89 = getelementptr inbounds %struct.hid_time_state, %struct.hid_time_state* %88, i32 0, i32 0
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = load i32, i32* %11, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = icmp sgt i32 %95, 4
  br i1 %96, label %97, label %112

97:                                               ; preds = %87, %77
  %98 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %99 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %98, i32 0, i32 0
  %100 = load %struct.hid_time_state*, %struct.hid_time_state** %9, align 8
  %101 = getelementptr inbounds %struct.hid_time_state, %struct.hid_time_state* %100, i32 0, i32 0
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %101, align 8
  %103 = load i32, i32* %11, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = call i32 @hid_time_attrib_name(i64 %107)
  %109 = call i32 (i32*, i8*, ...) @dev_err(i32* %99, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %108)
  %110 = load i32, i32* @EINVAL, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %5, align 4
  br label %190

112:                                              ; preds = %87
  %113 = load %struct.hid_time_state*, %struct.hid_time_state** %9, align 8
  %114 = getelementptr inbounds %struct.hid_time_state, %struct.hid_time_state* %113, i32 0, i32 0
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** %114, align 8
  %116 = load i32, i32* %11, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 3
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @HID_USAGE_SENSOR_UNITS_NOT_SPECIFIED, align 8
  %122 = icmp ne i64 %120, %121
  br i1 %122, label %123, label %160

123:                                              ; preds = %112
  %124 = load %struct.hid_time_state*, %struct.hid_time_state** %9, align 8
  %125 = getelementptr inbounds %struct.hid_time_state, %struct.hid_time_state* %124, i32 0, i32 0
  %126 = load %struct.TYPE_2__*, %struct.TYPE_2__** %125, align 8
  %127 = load i32, i32* %11, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @HID_USAGE_SENSOR_TIME_SECOND, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %145

134:                                              ; preds = %123
  %135 = load %struct.hid_time_state*, %struct.hid_time_state** %9, align 8
  %136 = getelementptr inbounds %struct.hid_time_state, %struct.hid_time_state* %135, i32 0, i32 0
  %137 = load %struct.TYPE_2__*, %struct.TYPE_2__** %136, align 8
  %138 = load i32, i32* %11, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 3
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @HID_USAGE_SENSOR_UNITS_SECOND, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %160, label %145

145:                                              ; preds = %134, %123
  %146 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %147 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %146, i32 0, i32 0
  %148 = load %struct.hid_time_state*, %struct.hid_time_state** %9, align 8
  %149 = getelementptr inbounds %struct.hid_time_state, %struct.hid_time_state* %148, i32 0, i32 0
  %150 = load %struct.TYPE_2__*, %struct.TYPE_2__** %149, align 8
  %151 = load i32, i32* %11, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 2
  %155 = load i64, i64* %154, align 8
  %156 = call i32 @hid_time_attrib_name(i64 %155)
  %157 = call i32 (i32*, i8*, ...) @dev_err(i32* %147, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i32 %156)
  %158 = load i32, i32* @EINVAL, align 4
  %159 = sub nsw i32 0, %158
  store i32 %159, i32* %5, align 4
  br label %190

160:                                              ; preds = %134, %112
  %161 = load %struct.hid_time_state*, %struct.hid_time_state** %9, align 8
  %162 = getelementptr inbounds %struct.hid_time_state, %struct.hid_time_state* %161, i32 0, i32 0
  %163 = load %struct.TYPE_2__*, %struct.TYPE_2__** %162, align 8
  %164 = load i32, i32* %11, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %166, i32 0, i32 4
  %168 = load i64, i64* %167, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %185

170:                                              ; preds = %160
  %171 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %172 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %171, i32 0, i32 0
  %173 = load %struct.hid_time_state*, %struct.hid_time_state** %9, align 8
  %174 = getelementptr inbounds %struct.hid_time_state, %struct.hid_time_state* %173, i32 0, i32 0
  %175 = load %struct.TYPE_2__*, %struct.TYPE_2__** %174, align 8
  %176 = load i32, i32* %11, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %175, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %178, i32 0, i32 2
  %180 = load i64, i64* %179, align 8
  %181 = call i32 @hid_time_attrib_name(i64 %180)
  %182 = call i32 (i32*, i8*, ...) @dev_err(i32* %172, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 %181)
  %183 = load i32, i32* @EINVAL, align 4
  %184 = sub nsw i32 0, %183
  store i32 %184, i32* %5, align 4
  br label %190

185:                                              ; preds = %160
  br label %186

186:                                              ; preds = %185
  %187 = load i32, i32* %11, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %11, align 4
  br label %56

189:                                              ; preds = %56
  store i32 0, i32* %5, align 4
  br label %190

190:                                              ; preds = %189, %170, %145, %97, %71, %49, %33
  %191 = load i32, i32* %5, align 4
  ret i32 %191
}

declare dso_local i64 @sensor_hub_input_get_attribute_info(%struct.hid_sensor_hub_device*, i32, i32, i32, %struct.TYPE_2__*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @hid_time_attrib_name(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
