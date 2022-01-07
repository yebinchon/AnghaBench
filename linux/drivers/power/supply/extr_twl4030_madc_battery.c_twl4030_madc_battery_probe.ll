; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_twl4030_madc_battery.c_twl4030_madc_battery_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_twl4030_madc_battery.c_twl4030_madc_battery_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.twl4030_madc_bat_platform_data* }
%struct.twl4030_madc_bat_platform_data = type { i32, i32, i32, i32 }
%struct.twl4030_madc_battery = type { i8*, i8*, i8*, i8*, %struct.twl4030_madc_bat_platform_data* }
%struct.power_supply_config = type { %struct.twl4030_madc_battery* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"temp\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"ichg\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"vbat\00", align 1
@twl4030_cmp = common dso_local global i32 0, align 4
@twl4030_madc_bat_desc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @twl4030_madc_battery_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twl4030_madc_battery_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.twl4030_madc_battery*, align 8
  %5 = alloca %struct.twl4030_madc_bat_platform_data*, align 8
  %6 = alloca %struct.power_supply_config, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.twl4030_madc_bat_platform_data*, %struct.twl4030_madc_bat_platform_data** %10, align 8
  store %struct.twl4030_madc_bat_platform_data* %11, %struct.twl4030_madc_bat_platform_data** %5, align 8
  %12 = bitcast %struct.power_supply_config* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 8, i1 false)
  store i32 0, i32* %7, align 4
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.twl4030_madc_battery* @devm_kzalloc(%struct.TYPE_4__* %14, i32 40, i32 %15)
  store %struct.twl4030_madc_battery* %16, %struct.twl4030_madc_battery** %4, align 8
  %17 = load %struct.twl4030_madc_battery*, %struct.twl4030_madc_battery** %4, align 8
  %18 = icmp ne %struct.twl4030_madc_battery* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %128

22:                                               ; preds = %1
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 0
  %25 = call i8* @iio_channel_get(%struct.TYPE_4__* %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.twl4030_madc_battery*, %struct.twl4030_madc_battery** %4, align 8
  %27 = getelementptr inbounds %struct.twl4030_madc_battery, %struct.twl4030_madc_battery* %26, i32 0, i32 0
  store i8* %25, i8** %27, align 8
  %28 = load %struct.twl4030_madc_battery*, %struct.twl4030_madc_battery** %4, align 8
  %29 = getelementptr inbounds %struct.twl4030_madc_battery, %struct.twl4030_madc_battery* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = call i64 @IS_ERR(i8* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %22
  %34 = load %struct.twl4030_madc_battery*, %struct.twl4030_madc_battery** %4, align 8
  %35 = getelementptr inbounds %struct.twl4030_madc_battery, %struct.twl4030_madc_battery* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 @PTR_ERR(i8* %36)
  store i32 %37, i32* %7, align 4
  br label %126

38:                                               ; preds = %22
  %39 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %40 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %39, i32 0, i32 0
  %41 = call i8* @iio_channel_get(%struct.TYPE_4__* %40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %42 = load %struct.twl4030_madc_battery*, %struct.twl4030_madc_battery** %4, align 8
  %43 = getelementptr inbounds %struct.twl4030_madc_battery, %struct.twl4030_madc_battery* %42, i32 0, i32 1
  store i8* %41, i8** %43, align 8
  %44 = load %struct.twl4030_madc_battery*, %struct.twl4030_madc_battery** %4, align 8
  %45 = getelementptr inbounds %struct.twl4030_madc_battery, %struct.twl4030_madc_battery* %44, i32 0, i32 1
  %46 = load i8*, i8** %45, align 8
  %47 = call i64 @IS_ERR(i8* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %38
  %50 = load %struct.twl4030_madc_battery*, %struct.twl4030_madc_battery** %4, align 8
  %51 = getelementptr inbounds %struct.twl4030_madc_battery, %struct.twl4030_madc_battery* %50, i32 0, i32 1
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 @PTR_ERR(i8* %52)
  store i32 %53, i32* %7, align 4
  br label %121

54:                                               ; preds = %38
  %55 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %56 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %55, i32 0, i32 0
  %57 = call i8* @iio_channel_get(%struct.TYPE_4__* %56, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %58 = load %struct.twl4030_madc_battery*, %struct.twl4030_madc_battery** %4, align 8
  %59 = getelementptr inbounds %struct.twl4030_madc_battery, %struct.twl4030_madc_battery* %58, i32 0, i32 2
  store i8* %57, i8** %59, align 8
  %60 = load %struct.twl4030_madc_battery*, %struct.twl4030_madc_battery** %4, align 8
  %61 = getelementptr inbounds %struct.twl4030_madc_battery, %struct.twl4030_madc_battery* %60, i32 0, i32 2
  %62 = load i8*, i8** %61, align 8
  %63 = call i64 @IS_ERR(i8* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %54
  %66 = load %struct.twl4030_madc_battery*, %struct.twl4030_madc_battery** %4, align 8
  %67 = getelementptr inbounds %struct.twl4030_madc_battery, %struct.twl4030_madc_battery* %66, i32 0, i32 2
  %68 = load i8*, i8** %67, align 8
  %69 = call i32 @PTR_ERR(i8* %68)
  store i32 %69, i32* %7, align 4
  br label %116

70:                                               ; preds = %54
  %71 = load %struct.twl4030_madc_bat_platform_data*, %struct.twl4030_madc_bat_platform_data** %5, align 8
  %72 = getelementptr inbounds %struct.twl4030_madc_bat_platform_data, %struct.twl4030_madc_bat_platform_data* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.twl4030_madc_bat_platform_data*, %struct.twl4030_madc_bat_platform_data** %5, align 8
  %75 = getelementptr inbounds %struct.twl4030_madc_bat_platform_data, %struct.twl4030_madc_bat_platform_data* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @twl4030_cmp, align 4
  %78 = call i32 @sort(i32 %73, i32 %76, i32 4, i32 %77, i32* null)
  %79 = load %struct.twl4030_madc_bat_platform_data*, %struct.twl4030_madc_bat_platform_data** %5, align 8
  %80 = getelementptr inbounds %struct.twl4030_madc_bat_platform_data, %struct.twl4030_madc_bat_platform_data* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.twl4030_madc_bat_platform_data*, %struct.twl4030_madc_bat_platform_data** %5, align 8
  %83 = getelementptr inbounds %struct.twl4030_madc_bat_platform_data, %struct.twl4030_madc_bat_platform_data* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @twl4030_cmp, align 4
  %86 = call i32 @sort(i32 %81, i32 %84, i32 4, i32 %85, i32* null)
  %87 = load %struct.twl4030_madc_bat_platform_data*, %struct.twl4030_madc_bat_platform_data** %5, align 8
  %88 = load %struct.twl4030_madc_battery*, %struct.twl4030_madc_battery** %4, align 8
  %89 = getelementptr inbounds %struct.twl4030_madc_battery, %struct.twl4030_madc_battery* %88, i32 0, i32 4
  store %struct.twl4030_madc_bat_platform_data* %87, %struct.twl4030_madc_bat_platform_data** %89, align 8
  %90 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %91 = load %struct.twl4030_madc_battery*, %struct.twl4030_madc_battery** %4, align 8
  %92 = call i32 @platform_set_drvdata(%struct.platform_device* %90, %struct.twl4030_madc_battery* %91)
  %93 = load %struct.twl4030_madc_battery*, %struct.twl4030_madc_battery** %4, align 8
  %94 = getelementptr inbounds %struct.power_supply_config, %struct.power_supply_config* %6, i32 0, i32 0
  store %struct.twl4030_madc_battery* %93, %struct.twl4030_madc_battery** %94, align 8
  %95 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %96 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %95, i32 0, i32 0
  %97 = call i8* @power_supply_register(%struct.TYPE_4__* %96, i32* @twl4030_madc_bat_desc, %struct.power_supply_config* %6)
  %98 = load %struct.twl4030_madc_battery*, %struct.twl4030_madc_battery** %4, align 8
  %99 = getelementptr inbounds %struct.twl4030_madc_battery, %struct.twl4030_madc_battery* %98, i32 0, i32 3
  store i8* %97, i8** %99, align 8
  %100 = load %struct.twl4030_madc_battery*, %struct.twl4030_madc_battery** %4, align 8
  %101 = getelementptr inbounds %struct.twl4030_madc_battery, %struct.twl4030_madc_battery* %100, i32 0, i32 3
  %102 = load i8*, i8** %101, align 8
  %103 = call i64 @IS_ERR(i8* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %70
  %106 = load %struct.twl4030_madc_battery*, %struct.twl4030_madc_battery** %4, align 8
  %107 = getelementptr inbounds %struct.twl4030_madc_battery, %struct.twl4030_madc_battery* %106, i32 0, i32 3
  %108 = load i8*, i8** %107, align 8
  %109 = call i32 @PTR_ERR(i8* %108)
  store i32 %109, i32* %7, align 4
  br label %111

110:                                              ; preds = %70
  store i32 0, i32* %2, align 4
  br label %128

111:                                              ; preds = %105
  %112 = load %struct.twl4030_madc_battery*, %struct.twl4030_madc_battery** %4, align 8
  %113 = getelementptr inbounds %struct.twl4030_madc_battery, %struct.twl4030_madc_battery* %112, i32 0, i32 2
  %114 = load i8*, i8** %113, align 8
  %115 = call i32 @iio_channel_release(i8* %114)
  br label %116

116:                                              ; preds = %111, %65
  %117 = load %struct.twl4030_madc_battery*, %struct.twl4030_madc_battery** %4, align 8
  %118 = getelementptr inbounds %struct.twl4030_madc_battery, %struct.twl4030_madc_battery* %117, i32 0, i32 1
  %119 = load i8*, i8** %118, align 8
  %120 = call i32 @iio_channel_release(i8* %119)
  br label %121

121:                                              ; preds = %116, %49
  %122 = load %struct.twl4030_madc_battery*, %struct.twl4030_madc_battery** %4, align 8
  %123 = getelementptr inbounds %struct.twl4030_madc_battery, %struct.twl4030_madc_battery* %122, i32 0, i32 0
  %124 = load i8*, i8** %123, align 8
  %125 = call i32 @iio_channel_release(i8* %124)
  br label %126

126:                                              ; preds = %121, %33
  %127 = load i32, i32* %7, align 4
  store i32 %127, i32* %2, align 4
  br label %128

128:                                              ; preds = %126, %110, %19
  %129 = load i32, i32* %2, align 4
  ret i32 %129
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.twl4030_madc_battery* @devm_kzalloc(%struct.TYPE_4__*, i32, i32) #2

declare dso_local i8* @iio_channel_get(%struct.TYPE_4__*, i8*) #2

declare dso_local i64 @IS_ERR(i8*) #2

declare dso_local i32 @PTR_ERR(i8*) #2

declare dso_local i32 @sort(i32, i32, i32, i32, i32*) #2

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.twl4030_madc_battery*) #2

declare dso_local i8* @power_supply_register(%struct.TYPE_4__*, i32*, %struct.power_supply_config*) #2

declare dso_local i32 @iio_channel_release(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
