; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-hid-sensor-time.c_hid_time_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-hid-sensor-time.c_hid_time_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.hid_sensor_hub_device = type { i32 }
%struct.hid_time_state = type { i32*, %struct.TYPE_3__, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_3__ = type { %struct.platform_device*, i32, i32 }
%struct.TYPE_4__ = type { %struct.platform_device*, %struct.hid_sensor_hub_device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@HID_USAGE_SENSOR_TIME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"failed to setup common attributes!\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"failed to setup attributes!\0A\00", align 1
@hid_time_proc_event = common dso_local global i32 0, align 4
@hid_time_capture_sample = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"register callback failed!\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"failed to open sensor hub device!\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"hid-sensor-time\00", align 1
@hid_time_rtc_ops = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"rtc device register failed!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @hid_time_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hid_time_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hid_sensor_hub_device*, align 8
  %6 = alloca %struct.hid_time_state*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = call %struct.hid_sensor_hub_device* @dev_get_platdata(i32* %8)
  store %struct.hid_sensor_hub_device* %9, %struct.hid_sensor_hub_device** %5, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.hid_time_state* @devm_kzalloc(i32* %11, i32 48, i32 %12)
  store %struct.hid_time_state* %13, %struct.hid_time_state** %6, align 8
  %14 = load %struct.hid_time_state*, %struct.hid_time_state** %6, align 8
  %15 = icmp eq %struct.hid_time_state* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %136

19:                                               ; preds = %1
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = load %struct.hid_time_state*, %struct.hid_time_state** %6, align 8
  %22 = call i32 @platform_set_drvdata(%struct.platform_device* %20, %struct.hid_time_state* %21)
  %23 = load %struct.hid_time_state*, %struct.hid_time_state** %6, align 8
  %24 = getelementptr inbounds %struct.hid_time_state, %struct.hid_time_state* %23, i32 0, i32 4
  %25 = call i32 @spin_lock_init(i32* %24)
  %26 = load %struct.hid_time_state*, %struct.hid_time_state** %6, align 8
  %27 = getelementptr inbounds %struct.hid_time_state, %struct.hid_time_state* %26, i32 0, i32 3
  %28 = call i32 @init_completion(i32* %27)
  %29 = load %struct.hid_sensor_hub_device*, %struct.hid_sensor_hub_device** %5, align 8
  %30 = load %struct.hid_time_state*, %struct.hid_time_state** %6, align 8
  %31 = getelementptr inbounds %struct.hid_time_state, %struct.hid_time_state* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  store %struct.hid_sensor_hub_device* %29, %struct.hid_sensor_hub_device** %32, align 8
  %33 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %34 = load %struct.hid_time_state*, %struct.hid_time_state** %6, align 8
  %35 = getelementptr inbounds %struct.hid_time_state, %struct.hid_time_state* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  store %struct.platform_device* %33, %struct.platform_device** %36, align 8
  %37 = load %struct.hid_sensor_hub_device*, %struct.hid_sensor_hub_device** %5, align 8
  %38 = load i32, i32* @HID_USAGE_SENSOR_TIME, align 4
  %39 = load %struct.hid_time_state*, %struct.hid_time_state** %6, align 8
  %40 = getelementptr inbounds %struct.hid_time_state, %struct.hid_time_state* %39, i32 0, i32 2
  %41 = call i32 @hid_sensor_parse_common_attributes(%struct.hid_sensor_hub_device* %37, i32 %38, %struct.TYPE_4__* %40)
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %19
  %45 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %46 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %45, i32 0, i32 0
  %47 = call i32 @dev_err(i32* %46, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %48 = load i32, i32* %4, align 4
  store i32 %48, i32* %2, align 4
  br label %136

49:                                               ; preds = %19
  %50 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %51 = load %struct.hid_sensor_hub_device*, %struct.hid_sensor_hub_device** %5, align 8
  %52 = load i32, i32* @HID_USAGE_SENSOR_TIME, align 4
  %53 = load %struct.hid_time_state*, %struct.hid_time_state** %6, align 8
  %54 = call i32 @hid_time_parse_report(%struct.platform_device* %50, %struct.hid_sensor_hub_device* %51, i32 %52, %struct.hid_time_state* %53)
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* %4, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %49
  %58 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %59 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %58, i32 0, i32 0
  %60 = call i32 @dev_err(i32* %59, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %61 = load i32, i32* %4, align 4
  store i32 %61, i32* %2, align 4
  br label %136

62:                                               ; preds = %49
  %63 = load i32, i32* @hid_time_proc_event, align 4
  %64 = load %struct.hid_time_state*, %struct.hid_time_state** %6, align 8
  %65 = getelementptr inbounds %struct.hid_time_state, %struct.hid_time_state* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 2
  store i32 %63, i32* %66, align 4
  %67 = load i32, i32* @hid_time_capture_sample, align 4
  %68 = load %struct.hid_time_state*, %struct.hid_time_state** %6, align 8
  %69 = getelementptr inbounds %struct.hid_time_state, %struct.hid_time_state* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 1
  store i32 %67, i32* %70, align 8
  %71 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %72 = load %struct.hid_time_state*, %struct.hid_time_state** %6, align 8
  %73 = getelementptr inbounds %struct.hid_time_state, %struct.hid_time_state* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  store %struct.platform_device* %71, %struct.platform_device** %74, align 8
  %75 = load %struct.hid_sensor_hub_device*, %struct.hid_sensor_hub_device** %5, align 8
  %76 = load i32, i32* @HID_USAGE_SENSOR_TIME, align 4
  %77 = load %struct.hid_time_state*, %struct.hid_time_state** %6, align 8
  %78 = getelementptr inbounds %struct.hid_time_state, %struct.hid_time_state* %77, i32 0, i32 1
  %79 = call i32 @sensor_hub_register_callback(%struct.hid_sensor_hub_device* %75, i32 %76, %struct.TYPE_3__* %78)
  store i32 %79, i32* %4, align 4
  %80 = load i32, i32* %4, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %62
  %83 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %84 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %83, i32 0, i32 0
  %85 = call i32 @dev_err(i32* %84, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %86 = load i32, i32* %4, align 4
  store i32 %86, i32* %2, align 4
  br label %136

87:                                               ; preds = %62
  %88 = load %struct.hid_sensor_hub_device*, %struct.hid_sensor_hub_device** %5, align 8
  %89 = call i32 @sensor_hub_device_open(%struct.hid_sensor_hub_device* %88)
  store i32 %89, i32* %4, align 4
  %90 = load i32, i32* %4, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %87
  %93 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %94 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %93, i32 0, i32 0
  %95 = call i32 @dev_err(i32* %94, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  br label %131

96:                                               ; preds = %87
  %97 = load %struct.hid_sensor_hub_device*, %struct.hid_sensor_hub_device** %5, align 8
  %98 = getelementptr inbounds %struct.hid_sensor_hub_device, %struct.hid_sensor_hub_device* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @hid_device_io_start(i32 %99)
  %101 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %102 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %101, i32 0, i32 0
  %103 = load i32, i32* @THIS_MODULE, align 4
  %104 = call i32* @devm_rtc_device_register(i32* %102, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32* @hid_time_rtc_ops, i32 %103)
  %105 = load %struct.hid_time_state*, %struct.hid_time_state** %6, align 8
  %106 = getelementptr inbounds %struct.hid_time_state, %struct.hid_time_state* %105, i32 0, i32 0
  store i32* %104, i32** %106, align 8
  %107 = load %struct.hid_time_state*, %struct.hid_time_state** %6, align 8
  %108 = getelementptr inbounds %struct.hid_time_state, %struct.hid_time_state* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = call i64 @IS_ERR(i32* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %126

112:                                              ; preds = %96
  %113 = load %struct.hid_sensor_hub_device*, %struct.hid_sensor_hub_device** %5, align 8
  %114 = getelementptr inbounds %struct.hid_sensor_hub_device, %struct.hid_sensor_hub_device* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @hid_device_io_stop(i32 %115)
  %117 = load %struct.hid_time_state*, %struct.hid_time_state** %6, align 8
  %118 = getelementptr inbounds %struct.hid_time_state, %struct.hid_time_state* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = call i32 @PTR_ERR(i32* %119)
  store i32 %120, i32* %4, align 4
  %121 = load %struct.hid_time_state*, %struct.hid_time_state** %6, align 8
  %122 = getelementptr inbounds %struct.hid_time_state, %struct.hid_time_state* %121, i32 0, i32 0
  store i32* null, i32** %122, align 8
  %123 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %124 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %123, i32 0, i32 0
  %125 = call i32 @dev_err(i32* %124, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  br label %128

126:                                              ; preds = %96
  %127 = load i32, i32* %4, align 4
  store i32 %127, i32* %2, align 4
  br label %136

128:                                              ; preds = %112
  %129 = load %struct.hid_sensor_hub_device*, %struct.hid_sensor_hub_device** %5, align 8
  %130 = call i32 @sensor_hub_device_close(%struct.hid_sensor_hub_device* %129)
  br label %131

131:                                              ; preds = %128, %92
  %132 = load %struct.hid_sensor_hub_device*, %struct.hid_sensor_hub_device** %5, align 8
  %133 = load i32, i32* @HID_USAGE_SENSOR_TIME, align 4
  %134 = call i32 @sensor_hub_remove_callback(%struct.hid_sensor_hub_device* %132, i32 %133)
  %135 = load i32, i32* %4, align 4
  store i32 %135, i32* %2, align 4
  br label %136

136:                                              ; preds = %131, %126, %82, %57, %44, %16
  %137 = load i32, i32* %2, align 4
  ret i32 %137
}

declare dso_local %struct.hid_sensor_hub_device* @dev_get_platdata(i32*) #1

declare dso_local %struct.hid_time_state* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.hid_time_state*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @hid_sensor_parse_common_attributes(%struct.hid_sensor_hub_device*, i32, %struct.TYPE_4__*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @hid_time_parse_report(%struct.platform_device*, %struct.hid_sensor_hub_device*, i32, %struct.hid_time_state*) #1

declare dso_local i32 @sensor_hub_register_callback(%struct.hid_sensor_hub_device*, i32, %struct.TYPE_3__*) #1

declare dso_local i32 @sensor_hub_device_open(%struct.hid_sensor_hub_device*) #1

declare dso_local i32 @hid_device_io_start(i32) #1

declare dso_local i32* @devm_rtc_device_register(i32*, i8*, i32*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @hid_device_io_stop(i32) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @sensor_hub_device_close(%struct.hid_sensor_hub_device*) #1

declare dso_local i32 @sensor_hub_remove_callback(%struct.hid_sensor_hub_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
