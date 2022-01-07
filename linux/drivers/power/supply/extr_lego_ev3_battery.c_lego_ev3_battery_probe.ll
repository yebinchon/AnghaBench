; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_lego_ev3_battery.c_lego_ev3_battery_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_lego_ev3_battery.c_lego_ev3_battery_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.lego_ev3_battery = type { i32, i32, i8*, i32, i8*, i8*, i8* }
%struct.power_supply_config = type { %struct.lego_ev3_battery*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"voltage\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Failed to get voltage iio channel\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"current\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Failed to get current iio channel\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"rechargeable\00", align 1
@GPIOD_IN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [33 x i8] c"Failed to get rechargeable gpio\0A\00", align 1
@POWER_SUPPLY_TECHNOLOGY_LION = common dso_local global i32 0, align 4
@POWER_SUPPLY_TECHNOLOGY_UNKNOWN = common dso_local global i32 0, align 4
@lego_ev3_battery_desc = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [33 x i8] c"failed to register power supply\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @lego_ev3_battery_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lego_ev3_battery_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.lego_ev3_battery*, align 8
  %6 = alloca %struct.power_supply_config, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = bitcast %struct.power_supply_config* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %10, i8 0, i64 16, i1 false)
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.lego_ev3_battery* @devm_kzalloc(%struct.device* %11, i32 48, i32 %12)
  store %struct.lego_ev3_battery* %13, %struct.lego_ev3_battery** %5, align 8
  %14 = load %struct.lego_ev3_battery*, %struct.lego_ev3_battery** %5, align 8
  %15 = icmp ne %struct.lego_ev3_battery* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %131

19:                                               ; preds = %1
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = load %struct.lego_ev3_battery*, %struct.lego_ev3_battery** %5, align 8
  %22 = call i32 @platform_set_drvdata(%struct.platform_device* %20, %struct.lego_ev3_battery* %21)
  %23 = load %struct.device*, %struct.device** %4, align 8
  %24 = call i8* @devm_iio_channel_get(%struct.device* %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.lego_ev3_battery*, %struct.lego_ev3_battery** %5, align 8
  %26 = getelementptr inbounds %struct.lego_ev3_battery, %struct.lego_ev3_battery* %25, i32 0, i32 6
  store i8* %24, i8** %26, align 8
  %27 = load %struct.lego_ev3_battery*, %struct.lego_ev3_battery** %5, align 8
  %28 = getelementptr inbounds %struct.lego_ev3_battery, %struct.lego_ev3_battery* %27, i32 0, i32 6
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 @PTR_ERR_OR_ZERO(i8* %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %19
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @EPROBE_DEFER, align 4
  %36 = sub nsw i32 0, %35
  %37 = icmp ne i32 %34, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load %struct.device*, %struct.device** %4, align 8
  %40 = call i32 @dev_err(%struct.device* %39, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %41

41:                                               ; preds = %38, %33
  %42 = load i32, i32* %7, align 4
  store i32 %42, i32* %2, align 4
  br label %131

43:                                               ; preds = %19
  %44 = load %struct.device*, %struct.device** %4, align 8
  %45 = call i8* @devm_iio_channel_get(%struct.device* %44, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %46 = load %struct.lego_ev3_battery*, %struct.lego_ev3_battery** %5, align 8
  %47 = getelementptr inbounds %struct.lego_ev3_battery, %struct.lego_ev3_battery* %46, i32 0, i32 5
  store i8* %45, i8** %47, align 8
  %48 = load %struct.lego_ev3_battery*, %struct.lego_ev3_battery** %5, align 8
  %49 = getelementptr inbounds %struct.lego_ev3_battery, %struct.lego_ev3_battery* %48, i32 0, i32 5
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 @PTR_ERR_OR_ZERO(i8* %50)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %43
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @EPROBE_DEFER, align 4
  %57 = sub nsw i32 0, %56
  %58 = icmp ne i32 %55, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load %struct.device*, %struct.device** %4, align 8
  %61 = call i32 @dev_err(%struct.device* %60, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  br label %62

62:                                               ; preds = %59, %54
  %63 = load i32, i32* %7, align 4
  store i32 %63, i32* %2, align 4
  br label %131

64:                                               ; preds = %43
  %65 = load %struct.device*, %struct.device** %4, align 8
  %66 = load i32, i32* @GPIOD_IN, align 4
  %67 = call i8* @devm_gpiod_get(%struct.device* %65, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 %66)
  %68 = load %struct.lego_ev3_battery*, %struct.lego_ev3_battery** %5, align 8
  %69 = getelementptr inbounds %struct.lego_ev3_battery, %struct.lego_ev3_battery* %68, i32 0, i32 4
  store i8* %67, i8** %69, align 8
  %70 = load %struct.lego_ev3_battery*, %struct.lego_ev3_battery** %5, align 8
  %71 = getelementptr inbounds %struct.lego_ev3_battery, %struct.lego_ev3_battery* %70, i32 0, i32 4
  %72 = load i8*, i8** %71, align 8
  %73 = call i32 @PTR_ERR_OR_ZERO(i8* %72)
  store i32 %73, i32* %7, align 4
  %74 = load i32, i32* %7, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %86

76:                                               ; preds = %64
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* @EPROBE_DEFER, align 4
  %79 = sub nsw i32 0, %78
  %80 = icmp ne i32 %77, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %76
  %82 = load %struct.device*, %struct.device** %4, align 8
  %83 = call i32 @dev_err(%struct.device* %82, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  br label %84

84:                                               ; preds = %81, %76
  %85 = load i32, i32* %7, align 4
  store i32 %85, i32* %2, align 4
  br label %131

86:                                               ; preds = %64
  %87 = load %struct.lego_ev3_battery*, %struct.lego_ev3_battery** %5, align 8
  %88 = getelementptr inbounds %struct.lego_ev3_battery, %struct.lego_ev3_battery* %87, i32 0, i32 4
  %89 = load i8*, i8** %88, align 8
  %90 = call i64 @gpiod_get_value(i8* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %100

92:                                               ; preds = %86
  %93 = load i32, i32* @POWER_SUPPLY_TECHNOLOGY_LION, align 4
  %94 = load %struct.lego_ev3_battery*, %struct.lego_ev3_battery** %5, align 8
  %95 = getelementptr inbounds %struct.lego_ev3_battery, %struct.lego_ev3_battery* %94, i32 0, i32 3
  store i32 %93, i32* %95, align 8
  %96 = load %struct.lego_ev3_battery*, %struct.lego_ev3_battery** %5, align 8
  %97 = getelementptr inbounds %struct.lego_ev3_battery, %struct.lego_ev3_battery* %96, i32 0, i32 0
  store i32 84000000, i32* %97, align 8
  %98 = load %struct.lego_ev3_battery*, %struct.lego_ev3_battery** %5, align 8
  %99 = getelementptr inbounds %struct.lego_ev3_battery, %struct.lego_ev3_battery* %98, i32 0, i32 1
  store i32 60000000, i32* %99, align 4
  br label %108

100:                                              ; preds = %86
  %101 = load i32, i32* @POWER_SUPPLY_TECHNOLOGY_UNKNOWN, align 4
  %102 = load %struct.lego_ev3_battery*, %struct.lego_ev3_battery** %5, align 8
  %103 = getelementptr inbounds %struct.lego_ev3_battery, %struct.lego_ev3_battery* %102, i32 0, i32 3
  store i32 %101, i32* %103, align 8
  %104 = load %struct.lego_ev3_battery*, %struct.lego_ev3_battery** %5, align 8
  %105 = getelementptr inbounds %struct.lego_ev3_battery, %struct.lego_ev3_battery* %104, i32 0, i32 0
  store i32 90000000, i32* %105, align 8
  %106 = load %struct.lego_ev3_battery*, %struct.lego_ev3_battery** %5, align 8
  %107 = getelementptr inbounds %struct.lego_ev3_battery, %struct.lego_ev3_battery* %106, i32 0, i32 1
  store i32 48000000, i32* %107, align 4
  br label %108

108:                                              ; preds = %100, %92
  %109 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %110 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.device, %struct.device* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = getelementptr inbounds %struct.power_supply_config, %struct.power_supply_config* %6, i32 0, i32 1
  store i32 %112, i32* %113, align 8
  %114 = load %struct.lego_ev3_battery*, %struct.lego_ev3_battery** %5, align 8
  %115 = getelementptr inbounds %struct.power_supply_config, %struct.power_supply_config* %6, i32 0, i32 0
  store %struct.lego_ev3_battery* %114, %struct.lego_ev3_battery** %115, align 8
  %116 = load %struct.device*, %struct.device** %4, align 8
  %117 = call i8* @devm_power_supply_register(%struct.device* %116, i32* @lego_ev3_battery_desc, %struct.power_supply_config* %6)
  %118 = load %struct.lego_ev3_battery*, %struct.lego_ev3_battery** %5, align 8
  %119 = getelementptr inbounds %struct.lego_ev3_battery, %struct.lego_ev3_battery* %118, i32 0, i32 2
  store i8* %117, i8** %119, align 8
  %120 = load %struct.lego_ev3_battery*, %struct.lego_ev3_battery** %5, align 8
  %121 = getelementptr inbounds %struct.lego_ev3_battery, %struct.lego_ev3_battery* %120, i32 0, i32 2
  %122 = load i8*, i8** %121, align 8
  %123 = call i32 @PTR_ERR_OR_ZERO(i8* %122)
  store i32 %123, i32* %7, align 4
  %124 = load i32, i32* %7, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %108
  %127 = load %struct.device*, %struct.device** %4, align 8
  %128 = call i32 @dev_err(%struct.device* %127, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  %129 = load i32, i32* %7, align 4
  store i32 %129, i32* %2, align 4
  br label %131

130:                                              ; preds = %108
  store i32 0, i32* %2, align 4
  br label %131

131:                                              ; preds = %130, %126, %84, %62, %41, %16
  %132 = load i32, i32* %2, align 4
  ret i32 %132
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.lego_ev3_battery* @devm_kzalloc(%struct.device*, i32, i32) #2

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.lego_ev3_battery*) #2

declare dso_local i8* @devm_iio_channel_get(%struct.device*, i8*) #2

declare dso_local i32 @PTR_ERR_OR_ZERO(i8*) #2

declare dso_local i32 @dev_err(%struct.device*, i8*) #2

declare dso_local i8* @devm_gpiod_get(%struct.device*, i8*, i32) #2

declare dso_local i64 @gpiod_get_value(i8*) #2

declare dso_local i8* @devm_power_supply_register(%struct.device*, i32*, %struct.power_supply_config*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
