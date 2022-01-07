; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_ingenic-battery.c_ingenic_battery_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_ingenic-battery.c_ingenic_battery_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.ingenic_battery = type { %struct.TYPE_2__, i32, %struct.power_supply_desc, i32, %struct.device* }
%struct.TYPE_2__ = type { i64, i64 }
%struct.power_supply_desc = type { i8*, i32, i32, i32, i32 }
%struct.power_supply_config = type { i32, %struct.ingenic_battery* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"battery\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"jz-battery\00", align 1
@POWER_SUPPLY_TYPE_BATTERY = common dso_local global i32 0, align 4
@ingenic_battery_properties = common dso_local global i32 0, align 4
@ingenic_battery_get_property = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Unable to register battery\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Unable to get battery info: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"Unable to get voltage min design\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"Unable to get voltage max design\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ingenic_battery_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ingenic_battery_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.ingenic_battery*, align 8
  %6 = alloca %struct.power_supply_config, align 8
  %7 = alloca %struct.power_supply_desc*, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = bitcast %struct.power_supply_config* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 16, i1 false)
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.ingenic_battery* @devm_kzalloc(%struct.device* %12, i32 64, i32 %13)
  store %struct.ingenic_battery* %14, %struct.ingenic_battery** %5, align 8
  %15 = load %struct.ingenic_battery*, %struct.ingenic_battery** %5, align 8
  %16 = icmp ne %struct.ingenic_battery* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %124

20:                                               ; preds = %1
  %21 = load %struct.device*, %struct.device** %4, align 8
  %22 = load %struct.ingenic_battery*, %struct.ingenic_battery** %5, align 8
  %23 = getelementptr inbounds %struct.ingenic_battery, %struct.ingenic_battery* %22, i32 0, i32 4
  store %struct.device* %21, %struct.device** %23, align 8
  %24 = load %struct.device*, %struct.device** %4, align 8
  %25 = call i32 @devm_iio_channel_get(%struct.device* %24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.ingenic_battery*, %struct.ingenic_battery** %5, align 8
  %27 = getelementptr inbounds %struct.ingenic_battery, %struct.ingenic_battery* %26, i32 0, i32 3
  store i32 %25, i32* %27, align 8
  %28 = load %struct.ingenic_battery*, %struct.ingenic_battery** %5, align 8
  %29 = getelementptr inbounds %struct.ingenic_battery, %struct.ingenic_battery* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = call i64 @IS_ERR(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %20
  %34 = load %struct.ingenic_battery*, %struct.ingenic_battery** %5, align 8
  %35 = getelementptr inbounds %struct.ingenic_battery, %struct.ingenic_battery* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @PTR_ERR(i32 %36)
  store i32 %37, i32* %2, align 4
  br label %124

38:                                               ; preds = %20
  %39 = load %struct.ingenic_battery*, %struct.ingenic_battery** %5, align 8
  %40 = getelementptr inbounds %struct.ingenic_battery, %struct.ingenic_battery* %39, i32 0, i32 2
  store %struct.power_supply_desc* %40, %struct.power_supply_desc** %7, align 8
  %41 = load %struct.power_supply_desc*, %struct.power_supply_desc** %7, align 8
  %42 = getelementptr inbounds %struct.power_supply_desc, %struct.power_supply_desc* %41, i32 0, i32 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8** %42, align 8
  %43 = load i32, i32* @POWER_SUPPLY_TYPE_BATTERY, align 4
  %44 = load %struct.power_supply_desc*, %struct.power_supply_desc** %7, align 8
  %45 = getelementptr inbounds %struct.power_supply_desc, %struct.power_supply_desc* %44, i32 0, i32 4
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* @ingenic_battery_properties, align 4
  %47 = load %struct.power_supply_desc*, %struct.power_supply_desc** %7, align 8
  %48 = getelementptr inbounds %struct.power_supply_desc, %struct.power_supply_desc* %47, i32 0, i32 3
  store i32 %46, i32* %48, align 8
  %49 = load i32, i32* @ingenic_battery_properties, align 4
  %50 = call i32 @ARRAY_SIZE(i32 %49)
  %51 = load %struct.power_supply_desc*, %struct.power_supply_desc** %7, align 8
  %52 = getelementptr inbounds %struct.power_supply_desc, %struct.power_supply_desc* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* @ingenic_battery_get_property, align 4
  %54 = load %struct.power_supply_desc*, %struct.power_supply_desc** %7, align 8
  %55 = getelementptr inbounds %struct.power_supply_desc, %struct.power_supply_desc* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 8
  %56 = load %struct.ingenic_battery*, %struct.ingenic_battery** %5, align 8
  %57 = getelementptr inbounds %struct.power_supply_config, %struct.power_supply_config* %6, i32 0, i32 1
  store %struct.ingenic_battery* %56, %struct.ingenic_battery** %57, align 8
  %58 = load %struct.device*, %struct.device** %4, align 8
  %59 = getelementptr inbounds %struct.device, %struct.device* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = getelementptr inbounds %struct.power_supply_config, %struct.power_supply_config* %6, i32 0, i32 0
  store i32 %60, i32* %61, align 8
  %62 = load %struct.device*, %struct.device** %4, align 8
  %63 = load %struct.power_supply_desc*, %struct.power_supply_desc** %7, align 8
  %64 = call i32 @devm_power_supply_register(%struct.device* %62, %struct.power_supply_desc* %63, %struct.power_supply_config* %6)
  %65 = load %struct.ingenic_battery*, %struct.ingenic_battery** %5, align 8
  %66 = getelementptr inbounds %struct.ingenic_battery, %struct.ingenic_battery* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 8
  %67 = load %struct.ingenic_battery*, %struct.ingenic_battery** %5, align 8
  %68 = getelementptr inbounds %struct.ingenic_battery, %struct.ingenic_battery* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = call i64 @IS_ERR(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %38
  %73 = load %struct.device*, %struct.device** %4, align 8
  %74 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %73, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %75 = load %struct.ingenic_battery*, %struct.ingenic_battery** %5, align 8
  %76 = getelementptr inbounds %struct.ingenic_battery, %struct.ingenic_battery* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @PTR_ERR(i32 %77)
  store i32 %78, i32* %2, align 4
  br label %124

79:                                               ; preds = %38
  %80 = load %struct.ingenic_battery*, %struct.ingenic_battery** %5, align 8
  %81 = getelementptr inbounds %struct.ingenic_battery, %struct.ingenic_battery* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.ingenic_battery*, %struct.ingenic_battery** %5, align 8
  %84 = getelementptr inbounds %struct.ingenic_battery, %struct.ingenic_battery* %83, i32 0, i32 0
  %85 = call i32 @power_supply_get_battery_info(i32 %82, %struct.TYPE_2__* %84)
  store i32 %85, i32* %8, align 4
  %86 = load i32, i32* %8, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %79
  %89 = load %struct.device*, %struct.device** %4, align 8
  %90 = load i32, i32* %8, align 4
  %91 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %89, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %90)
  %92 = load i32, i32* %8, align 4
  store i32 %92, i32* %2, align 4
  br label %124

93:                                               ; preds = %79
  %94 = load %struct.ingenic_battery*, %struct.ingenic_battery** %5, align 8
  %95 = getelementptr inbounds %struct.ingenic_battery, %struct.ingenic_battery* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp slt i64 %97, 0
  br i1 %98, label %99, label %107

99:                                               ; preds = %93
  %100 = load %struct.device*, %struct.device** %4, align 8
  %101 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %100, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  %102 = load %struct.ingenic_battery*, %struct.ingenic_battery** %5, align 8
  %103 = getelementptr inbounds %struct.ingenic_battery, %struct.ingenic_battery* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = trunc i64 %105 to i32
  store i32 %106, i32* %2, align 4
  br label %124

107:                                              ; preds = %93
  %108 = load %struct.ingenic_battery*, %struct.ingenic_battery** %5, align 8
  %109 = getelementptr inbounds %struct.ingenic_battery, %struct.ingenic_battery* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = icmp slt i64 %111, 0
  br i1 %112, label %113, label %121

113:                                              ; preds = %107
  %114 = load %struct.device*, %struct.device** %4, align 8
  %115 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %114, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  %116 = load %struct.ingenic_battery*, %struct.ingenic_battery** %5, align 8
  %117 = getelementptr inbounds %struct.ingenic_battery, %struct.ingenic_battery* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = trunc i64 %119 to i32
  store i32 %120, i32* %2, align 4
  br label %124

121:                                              ; preds = %107
  %122 = load %struct.ingenic_battery*, %struct.ingenic_battery** %5, align 8
  %123 = call i32 @ingenic_battery_set_scale(%struct.ingenic_battery* %122)
  store i32 %123, i32* %2, align 4
  br label %124

124:                                              ; preds = %121, %113, %99, %88, %72, %33, %17
  %125 = load i32, i32* %2, align 4
  ret i32 %125
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.ingenic_battery* @devm_kzalloc(%struct.device*, i32, i32) #2

declare dso_local i32 @devm_iio_channel_get(%struct.device*, i8*) #2

declare dso_local i64 @IS_ERR(i32) #2

declare dso_local i32 @PTR_ERR(i32) #2

declare dso_local i32 @ARRAY_SIZE(i32) #2

declare dso_local i32 @devm_power_supply_register(%struct.device*, %struct.power_supply_desc*, %struct.power_supply_config*) #2

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #2

declare dso_local i32 @power_supply_get_battery_info(i32, %struct.TYPE_2__*) #2

declare dso_local i32 @ingenic_battery_set_scale(%struct.ingenic_battery*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
