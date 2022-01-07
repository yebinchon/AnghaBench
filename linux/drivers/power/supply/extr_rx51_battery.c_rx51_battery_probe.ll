; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_rx51_battery.c_rx51_battery_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_rx51_battery.c_rx51_battery_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.power_supply_config = type { %struct.rx51_device_info* }
%struct.rx51_device_info = type { i8*, i8*, i8*, i8*, %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { i8*, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"rx51-battery\00", align 1
@POWER_SUPPLY_TYPE_BATTERY = common dso_local global i32 0, align 4
@rx51_battery_props = common dso_local global i32 0, align 4
@rx51_battery_get_property = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"temp\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"bsi\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"vbat\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @rx51_battery_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rx51_battery_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.power_supply_config, align 8
  %5 = alloca %struct.rx51_device_info*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = bitcast %struct.power_supply_config* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %7, i8 0, i64 8, i1 false)
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.rx51_device_info* @devm_kzalloc(i32* %9, i32 64, i32 %10)
  store %struct.rx51_device_info* %11, %struct.rx51_device_info** %5, align 8
  %12 = load %struct.rx51_device_info*, %struct.rx51_device_info** %5, align 8
  %13 = icmp ne %struct.rx51_device_info* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %134

17:                                               ; preds = %1
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = load %struct.rx51_device_info*, %struct.rx51_device_info** %5, align 8
  %20 = call i32 @platform_set_drvdata(%struct.platform_device* %18, %struct.rx51_device_info* %19)
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  %23 = load %struct.rx51_device_info*, %struct.rx51_device_info** %5, align 8
  %24 = getelementptr inbounds %struct.rx51_device_info, %struct.rx51_device_info* %23, i32 0, i32 5
  store i32* %22, i32** %24, align 8
  %25 = load %struct.rx51_device_info*, %struct.rx51_device_info** %5, align 8
  %26 = getelementptr inbounds %struct.rx51_device_info, %struct.rx51_device_info* %25, i32 0, i32 4
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %27, align 8
  %28 = load i32, i32* @POWER_SUPPLY_TYPE_BATTERY, align 4
  %29 = load %struct.rx51_device_info*, %struct.rx51_device_info** %5, align 8
  %30 = getelementptr inbounds %struct.rx51_device_info, %struct.rx51_device_info* %29, i32 0, i32 4
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 4
  store i32 %28, i32* %31, align 4
  %32 = load i32, i32* @rx51_battery_props, align 4
  %33 = load %struct.rx51_device_info*, %struct.rx51_device_info** %5, align 8
  %34 = getelementptr inbounds %struct.rx51_device_info, %struct.rx51_device_info* %33, i32 0, i32 4
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 3
  store i32 %32, i32* %35, align 8
  %36 = load i32, i32* @rx51_battery_props, align 4
  %37 = call i32 @ARRAY_SIZE(i32 %36)
  %38 = load %struct.rx51_device_info*, %struct.rx51_device_info** %5, align 8
  %39 = getelementptr inbounds %struct.rx51_device_info, %struct.rx51_device_info* %38, i32 0, i32 4
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 2
  store i32 %37, i32* %40, align 4
  %41 = load i32, i32* @rx51_battery_get_property, align 4
  %42 = load %struct.rx51_device_info*, %struct.rx51_device_info** %5, align 8
  %43 = getelementptr inbounds %struct.rx51_device_info, %struct.rx51_device_info* %42, i32 0, i32 4
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  store i32 %41, i32* %44, align 8
  %45 = load %struct.rx51_device_info*, %struct.rx51_device_info** %5, align 8
  %46 = getelementptr inbounds %struct.power_supply_config, %struct.power_supply_config* %4, i32 0, i32 0
  store %struct.rx51_device_info* %45, %struct.rx51_device_info** %46, align 8
  %47 = load %struct.rx51_device_info*, %struct.rx51_device_info** %5, align 8
  %48 = getelementptr inbounds %struct.rx51_device_info, %struct.rx51_device_info* %47, i32 0, i32 5
  %49 = load i32*, i32** %48, align 8
  %50 = call i8* @iio_channel_get(i32* %49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %51 = load %struct.rx51_device_info*, %struct.rx51_device_info** %5, align 8
  %52 = getelementptr inbounds %struct.rx51_device_info, %struct.rx51_device_info* %51, i32 0, i32 0
  store i8* %50, i8** %52, align 8
  %53 = load %struct.rx51_device_info*, %struct.rx51_device_info** %5, align 8
  %54 = getelementptr inbounds %struct.rx51_device_info, %struct.rx51_device_info* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = call i64 @IS_ERR(i8* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %17
  %59 = load %struct.rx51_device_info*, %struct.rx51_device_info** %5, align 8
  %60 = getelementptr inbounds %struct.rx51_device_info, %struct.rx51_device_info* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 @PTR_ERR(i8* %61)
  store i32 %62, i32* %6, align 4
  br label %132

63:                                               ; preds = %17
  %64 = load %struct.rx51_device_info*, %struct.rx51_device_info** %5, align 8
  %65 = getelementptr inbounds %struct.rx51_device_info, %struct.rx51_device_info* %64, i32 0, i32 5
  %66 = load i32*, i32** %65, align 8
  %67 = call i8* @iio_channel_get(i32* %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %68 = load %struct.rx51_device_info*, %struct.rx51_device_info** %5, align 8
  %69 = getelementptr inbounds %struct.rx51_device_info, %struct.rx51_device_info* %68, i32 0, i32 1
  store i8* %67, i8** %69, align 8
  %70 = load %struct.rx51_device_info*, %struct.rx51_device_info** %5, align 8
  %71 = getelementptr inbounds %struct.rx51_device_info, %struct.rx51_device_info* %70, i32 0, i32 1
  %72 = load i8*, i8** %71, align 8
  %73 = call i64 @IS_ERR(i8* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %63
  %76 = load %struct.rx51_device_info*, %struct.rx51_device_info** %5, align 8
  %77 = getelementptr inbounds %struct.rx51_device_info, %struct.rx51_device_info* %76, i32 0, i32 1
  %78 = load i8*, i8** %77, align 8
  %79 = call i32 @PTR_ERR(i8* %78)
  store i32 %79, i32* %6, align 4
  br label %127

80:                                               ; preds = %63
  %81 = load %struct.rx51_device_info*, %struct.rx51_device_info** %5, align 8
  %82 = getelementptr inbounds %struct.rx51_device_info, %struct.rx51_device_info* %81, i32 0, i32 5
  %83 = load i32*, i32** %82, align 8
  %84 = call i8* @iio_channel_get(i32* %83, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %85 = load %struct.rx51_device_info*, %struct.rx51_device_info** %5, align 8
  %86 = getelementptr inbounds %struct.rx51_device_info, %struct.rx51_device_info* %85, i32 0, i32 2
  store i8* %84, i8** %86, align 8
  %87 = load %struct.rx51_device_info*, %struct.rx51_device_info** %5, align 8
  %88 = getelementptr inbounds %struct.rx51_device_info, %struct.rx51_device_info* %87, i32 0, i32 2
  %89 = load i8*, i8** %88, align 8
  %90 = call i64 @IS_ERR(i8* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %80
  %93 = load %struct.rx51_device_info*, %struct.rx51_device_info** %5, align 8
  %94 = getelementptr inbounds %struct.rx51_device_info, %struct.rx51_device_info* %93, i32 0, i32 2
  %95 = load i8*, i8** %94, align 8
  %96 = call i32 @PTR_ERR(i8* %95)
  store i32 %96, i32* %6, align 4
  br label %122

97:                                               ; preds = %80
  %98 = load %struct.rx51_device_info*, %struct.rx51_device_info** %5, align 8
  %99 = getelementptr inbounds %struct.rx51_device_info, %struct.rx51_device_info* %98, i32 0, i32 5
  %100 = load i32*, i32** %99, align 8
  %101 = load %struct.rx51_device_info*, %struct.rx51_device_info** %5, align 8
  %102 = getelementptr inbounds %struct.rx51_device_info, %struct.rx51_device_info* %101, i32 0, i32 4
  %103 = call i8* @power_supply_register(i32* %100, %struct.TYPE_2__* %102, %struct.power_supply_config* %4)
  %104 = load %struct.rx51_device_info*, %struct.rx51_device_info** %5, align 8
  %105 = getelementptr inbounds %struct.rx51_device_info, %struct.rx51_device_info* %104, i32 0, i32 3
  store i8* %103, i8** %105, align 8
  %106 = load %struct.rx51_device_info*, %struct.rx51_device_info** %5, align 8
  %107 = getelementptr inbounds %struct.rx51_device_info, %struct.rx51_device_info* %106, i32 0, i32 3
  %108 = load i8*, i8** %107, align 8
  %109 = call i64 @IS_ERR(i8* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %97
  %112 = load %struct.rx51_device_info*, %struct.rx51_device_info** %5, align 8
  %113 = getelementptr inbounds %struct.rx51_device_info, %struct.rx51_device_info* %112, i32 0, i32 3
  %114 = load i8*, i8** %113, align 8
  %115 = call i32 @PTR_ERR(i8* %114)
  store i32 %115, i32* %6, align 4
  br label %117

116:                                              ; preds = %97
  store i32 0, i32* %2, align 4
  br label %134

117:                                              ; preds = %111
  %118 = load %struct.rx51_device_info*, %struct.rx51_device_info** %5, align 8
  %119 = getelementptr inbounds %struct.rx51_device_info, %struct.rx51_device_info* %118, i32 0, i32 2
  %120 = load i8*, i8** %119, align 8
  %121 = call i32 @iio_channel_release(i8* %120)
  br label %122

122:                                              ; preds = %117, %92
  %123 = load %struct.rx51_device_info*, %struct.rx51_device_info** %5, align 8
  %124 = getelementptr inbounds %struct.rx51_device_info, %struct.rx51_device_info* %123, i32 0, i32 1
  %125 = load i8*, i8** %124, align 8
  %126 = call i32 @iio_channel_release(i8* %125)
  br label %127

127:                                              ; preds = %122, %75
  %128 = load %struct.rx51_device_info*, %struct.rx51_device_info** %5, align 8
  %129 = getelementptr inbounds %struct.rx51_device_info, %struct.rx51_device_info* %128, i32 0, i32 0
  %130 = load i8*, i8** %129, align 8
  %131 = call i32 @iio_channel_release(i8* %130)
  br label %132

132:                                              ; preds = %127, %58
  %133 = load i32, i32* %6, align 4
  store i32 %133, i32* %2, align 4
  br label %134

134:                                              ; preds = %132, %116, %14
  %135 = load i32, i32* %2, align 4
  ret i32 %135
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.rx51_device_info* @devm_kzalloc(i32*, i32, i32) #2

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.rx51_device_info*) #2

declare dso_local i32 @ARRAY_SIZE(i32) #2

declare dso_local i8* @iio_channel_get(i32*, i8*) #2

declare dso_local i64 @IS_ERR(i8*) #2

declare dso_local i32 @PTR_ERR(i8*) #2

declare dso_local i8* @power_supply_register(i32*, %struct.TYPE_2__*, %struct.power_supply_config*) #2

declare dso_local i32 @iio_channel_release(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
