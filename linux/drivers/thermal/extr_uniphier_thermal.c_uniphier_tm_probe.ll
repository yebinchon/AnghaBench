; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/extr_uniphier_thermal.c_uniphier_tm_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/extr_uniphier_thermal.c_uniphier_tm_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.regmap = type { i32 }
%struct.device_node = type { i32 }
%struct.uniphier_tm_dev = type { i32*, %struct.regmap*, %struct.regmap*, i32, %struct.device* }
%struct.thermal_trip = type { i64, i32 }

@INT_MAX = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"failed to get regmap (error %ld)\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"failed to initialize sensor\0A\00", align 1
@uniphier_tm_alarm_irq = common dso_local global i32 0, align 4
@uniphier_tm_alarm_irq_thread = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"thermal\00", align 1
@uniphier_of_thermal_ops = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"failed to register sensor device\0A\00", align 1
@ALERT_CH_NUM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"thermal zone has too many trips\0A\00", align 1
@E2BIG = common dso_local global i32 0, align 4
@THERMAL_TRIP_CRITICAL = common dso_local global i64 0, align 8
@CRITICAL_TEMP_LIMIT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [46 x i8] c"critical trip is over limit(>%d), or not set\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @uniphier_tm_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uniphier_tm_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.regmap*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.uniphier_tm_dev*, align 8
  %8 = alloca %struct.thermal_trip*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  store %struct.device* %15, %struct.device** %4, align 8
  %16 = load i32, i32* @INT_MAX, align 4
  store i32 %16, i32* %13, align 4
  %17 = load %struct.device*, %struct.device** %4, align 8
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.uniphier_tm_dev* @devm_kzalloc(%struct.device* %17, i32 40, i32 %18)
  store %struct.uniphier_tm_dev* %19, %struct.uniphier_tm_dev** %7, align 8
  %20 = load %struct.uniphier_tm_dev*, %struct.uniphier_tm_dev** %7, align 8
  %21 = icmp ne %struct.uniphier_tm_dev* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %1
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %193

25:                                               ; preds = %1
  %26 = load %struct.device*, %struct.device** %4, align 8
  %27 = load %struct.uniphier_tm_dev*, %struct.uniphier_tm_dev** %7, align 8
  %28 = getelementptr inbounds %struct.uniphier_tm_dev, %struct.uniphier_tm_dev* %27, i32 0, i32 4
  store %struct.device* %26, %struct.device** %28, align 8
  %29 = load %struct.device*, %struct.device** %4, align 8
  %30 = call i32 @of_device_get_match_data(%struct.device* %29)
  %31 = load %struct.uniphier_tm_dev*, %struct.uniphier_tm_dev** %7, align 8
  %32 = getelementptr inbounds %struct.uniphier_tm_dev, %struct.uniphier_tm_dev* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 8
  %33 = load %struct.uniphier_tm_dev*, %struct.uniphier_tm_dev** %7, align 8
  %34 = getelementptr inbounds %struct.uniphier_tm_dev, %struct.uniphier_tm_dev* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = call i64 @WARN_ON(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %25
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %193

44:                                               ; preds = %25
  %45 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %46 = call i32 @platform_get_irq(%struct.platform_device* %45, i32 0)
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %11, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = load i32, i32* %11, align 4
  store i32 %50, i32* %2, align 4
  br label %193

51:                                               ; preds = %44
  %52 = load %struct.device*, %struct.device** %4, align 8
  %53 = getelementptr inbounds %struct.device, %struct.device* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call %struct.device_node* @of_get_parent(i32 %54)
  store %struct.device_node* %55, %struct.device_node** %6, align 8
  %56 = load %struct.device_node*, %struct.device_node** %6, align 8
  %57 = call %struct.regmap* @syscon_node_to_regmap(%struct.device_node* %56)
  store %struct.regmap* %57, %struct.regmap** %5, align 8
  %58 = load %struct.device_node*, %struct.device_node** %6, align 8
  %59 = call i32 @of_node_put(%struct.device_node* %58)
  %60 = load %struct.regmap*, %struct.regmap** %5, align 8
  %61 = call i64 @IS_ERR(%struct.regmap* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %51
  %64 = load %struct.device*, %struct.device** %4, align 8
  %65 = load %struct.regmap*, %struct.regmap** %5, align 8
  %66 = call i32 @PTR_ERR(%struct.regmap* %65)
  %67 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %64, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %66)
  %68 = load %struct.regmap*, %struct.regmap** %5, align 8
  %69 = call i32 @PTR_ERR(%struct.regmap* %68)
  store i32 %69, i32* %2, align 4
  br label %193

70:                                               ; preds = %51
  %71 = load %struct.regmap*, %struct.regmap** %5, align 8
  %72 = load %struct.uniphier_tm_dev*, %struct.uniphier_tm_dev** %7, align 8
  %73 = getelementptr inbounds %struct.uniphier_tm_dev, %struct.uniphier_tm_dev* %72, i32 0, i32 2
  store %struct.regmap* %71, %struct.regmap** %73, align 8
  %74 = load %struct.uniphier_tm_dev*, %struct.uniphier_tm_dev** %7, align 8
  %75 = call i32 @uniphier_tm_initialize_sensor(%struct.uniphier_tm_dev* %74)
  store i32 %75, i32* %10, align 4
  %76 = load i32, i32* %10, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %70
  %79 = load %struct.device*, %struct.device** %4, align 8
  %80 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %79, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %81 = load i32, i32* %10, align 4
  store i32 %81, i32* %2, align 4
  br label %193

82:                                               ; preds = %70
  %83 = load %struct.device*, %struct.device** %4, align 8
  %84 = load i32, i32* %11, align 4
  %85 = load i32, i32* @uniphier_tm_alarm_irq, align 4
  %86 = load i32, i32* @uniphier_tm_alarm_irq_thread, align 4
  %87 = load %struct.uniphier_tm_dev*, %struct.uniphier_tm_dev** %7, align 8
  %88 = call i32 @devm_request_threaded_irq(%struct.device* %83, i32 %84, i32 %85, i32 %86, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), %struct.uniphier_tm_dev* %87)
  store i32 %88, i32* %10, align 4
  %89 = load i32, i32* %10, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %82
  %92 = load i32, i32* %10, align 4
  store i32 %92, i32* %2, align 4
  br label %193

93:                                               ; preds = %82
  %94 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %95 = load %struct.uniphier_tm_dev*, %struct.uniphier_tm_dev** %7, align 8
  %96 = call i32 @platform_set_drvdata(%struct.platform_device* %94, %struct.uniphier_tm_dev* %95)
  %97 = load %struct.device*, %struct.device** %4, align 8
  %98 = load %struct.uniphier_tm_dev*, %struct.uniphier_tm_dev** %7, align 8
  %99 = call %struct.regmap* @devm_thermal_zone_of_sensor_register(%struct.device* %97, i32 0, %struct.uniphier_tm_dev* %98, i32* @uniphier_of_thermal_ops)
  %100 = load %struct.uniphier_tm_dev*, %struct.uniphier_tm_dev** %7, align 8
  %101 = getelementptr inbounds %struct.uniphier_tm_dev, %struct.uniphier_tm_dev* %100, i32 0, i32 1
  store %struct.regmap* %99, %struct.regmap** %101, align 8
  %102 = load %struct.uniphier_tm_dev*, %struct.uniphier_tm_dev** %7, align 8
  %103 = getelementptr inbounds %struct.uniphier_tm_dev, %struct.uniphier_tm_dev* %102, i32 0, i32 1
  %104 = load %struct.regmap*, %struct.regmap** %103, align 8
  %105 = call i64 @IS_ERR(%struct.regmap* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %114

107:                                              ; preds = %93
  %108 = load %struct.device*, %struct.device** %4, align 8
  %109 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %108, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %110 = load %struct.uniphier_tm_dev*, %struct.uniphier_tm_dev** %7, align 8
  %111 = getelementptr inbounds %struct.uniphier_tm_dev, %struct.uniphier_tm_dev* %110, i32 0, i32 1
  %112 = load %struct.regmap*, %struct.regmap** %111, align 8
  %113 = call i32 @PTR_ERR(%struct.regmap* %112)
  store i32 %113, i32* %2, align 4
  br label %193

114:                                              ; preds = %93
  %115 = load %struct.uniphier_tm_dev*, %struct.uniphier_tm_dev** %7, align 8
  %116 = getelementptr inbounds %struct.uniphier_tm_dev, %struct.uniphier_tm_dev* %115, i32 0, i32 1
  %117 = load %struct.regmap*, %struct.regmap** %116, align 8
  %118 = call %struct.thermal_trip* @of_thermal_get_trip_points(%struct.regmap* %117)
  store %struct.thermal_trip* %118, %struct.thermal_trip** %8, align 8
  %119 = load %struct.uniphier_tm_dev*, %struct.uniphier_tm_dev** %7, align 8
  %120 = getelementptr inbounds %struct.uniphier_tm_dev, %struct.uniphier_tm_dev* %119, i32 0, i32 1
  %121 = load %struct.regmap*, %struct.regmap** %120, align 8
  %122 = call i32 @of_thermal_get_ntrips(%struct.regmap* %121)
  store i32 %122, i32* %12, align 4
  %123 = load i32, i32* %12, align 4
  %124 = load i32, i32* @ALERT_CH_NUM, align 4
  %125 = icmp sgt i32 %123, %124
  br i1 %125, label %126, label %131

126:                                              ; preds = %114
  %127 = load %struct.device*, %struct.device** %4, align 8
  %128 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %127, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  %129 = load i32, i32* @E2BIG, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %2, align 4
  br label %193

131:                                              ; preds = %114
  store i32 0, i32* %9, align 4
  br label %132

132:                                              ; preds = %177, %131
  %133 = load i32, i32* %9, align 4
  %134 = load i32, i32* %12, align 4
  %135 = icmp slt i32 %133, %134
  br i1 %135, label %136, label %180

136:                                              ; preds = %132
  %137 = load %struct.thermal_trip*, %struct.thermal_trip** %8, align 8
  %138 = load i32, i32* %9, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.thermal_trip, %struct.thermal_trip* %137, i64 %139
  %141 = getelementptr inbounds %struct.thermal_trip, %struct.thermal_trip* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @THERMAL_TRIP_CRITICAL, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %145, label %161

145:                                              ; preds = %136
  %146 = load %struct.thermal_trip*, %struct.thermal_trip** %8, align 8
  %147 = load i32, i32* %9, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.thermal_trip, %struct.thermal_trip* %146, i64 %148
  %150 = getelementptr inbounds %struct.thermal_trip, %struct.thermal_trip* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* %13, align 4
  %153 = icmp slt i32 %151, %152
  br i1 %153, label %154, label %161

154:                                              ; preds = %145
  %155 = load %struct.thermal_trip*, %struct.thermal_trip** %8, align 8
  %156 = load i32, i32* %9, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.thermal_trip, %struct.thermal_trip* %155, i64 %157
  %159 = getelementptr inbounds %struct.thermal_trip, %struct.thermal_trip* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 8
  store i32 %160, i32* %13, align 4
  br label %161

161:                                              ; preds = %154, %145, %136
  %162 = load %struct.uniphier_tm_dev*, %struct.uniphier_tm_dev** %7, align 8
  %163 = load i32, i32* %9, align 4
  %164 = load %struct.thermal_trip*, %struct.thermal_trip** %8, align 8
  %165 = load i32, i32* %9, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.thermal_trip, %struct.thermal_trip* %164, i64 %166
  %168 = getelementptr inbounds %struct.thermal_trip, %struct.thermal_trip* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 8
  %170 = call i32 @uniphier_tm_set_alert(%struct.uniphier_tm_dev* %162, i32 %163, i32 %169)
  %171 = load %struct.uniphier_tm_dev*, %struct.uniphier_tm_dev** %7, align 8
  %172 = getelementptr inbounds %struct.uniphier_tm_dev, %struct.uniphier_tm_dev* %171, i32 0, i32 0
  %173 = load i32*, i32** %172, align 8
  %174 = load i32, i32* %9, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %173, i64 %175
  store i32 1, i32* %176, align 4
  br label %177

177:                                              ; preds = %161
  %178 = load i32, i32* %9, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %9, align 4
  br label %132

180:                                              ; preds = %132
  %181 = load i32, i32* %13, align 4
  %182 = load i32, i32* @CRITICAL_TEMP_LIMIT, align 4
  %183 = icmp sgt i32 %181, %182
  br i1 %183, label %184, label %190

184:                                              ; preds = %180
  %185 = load %struct.device*, %struct.device** %4, align 8
  %186 = load i32, i32* @CRITICAL_TEMP_LIMIT, align 4
  %187 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %185, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0), i32 %186)
  %188 = load i32, i32* @EINVAL, align 4
  %189 = sub nsw i32 0, %188
  store i32 %189, i32* %2, align 4
  br label %193

190:                                              ; preds = %180
  %191 = load %struct.uniphier_tm_dev*, %struct.uniphier_tm_dev** %7, align 8
  %192 = call i32 @uniphier_tm_enable_sensor(%struct.uniphier_tm_dev* %191)
  store i32 0, i32* %2, align 4
  br label %193

193:                                              ; preds = %190, %184, %126, %107, %91, %78, %63, %49, %41, %22
  %194 = load i32, i32* %2, align 4
  ret i32 %194
}

declare dso_local %struct.uniphier_tm_dev* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @of_device_get_match_data(%struct.device*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local %struct.device_node* @of_get_parent(i32) #1

declare dso_local %struct.regmap* @syscon_node_to_regmap(%struct.device_node*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i64 @IS_ERR(%struct.regmap*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @PTR_ERR(%struct.regmap*) #1

declare dso_local i32 @uniphier_tm_initialize_sensor(%struct.uniphier_tm_dev*) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.device*, i32, i32, i32, i32, i8*, %struct.uniphier_tm_dev*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.uniphier_tm_dev*) #1

declare dso_local %struct.regmap* @devm_thermal_zone_of_sensor_register(%struct.device*, i32, %struct.uniphier_tm_dev*, i32*) #1

declare dso_local %struct.thermal_trip* @of_thermal_get_trip_points(%struct.regmap*) #1

declare dso_local i32 @of_thermal_get_ntrips(%struct.regmap*) #1

declare dso_local i32 @uniphier_tm_set_alert(%struct.uniphier_tm_dev*, i32, i32) #1

declare dso_local i32 @uniphier_tm_enable_sensor(%struct.uniphier_tm_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
