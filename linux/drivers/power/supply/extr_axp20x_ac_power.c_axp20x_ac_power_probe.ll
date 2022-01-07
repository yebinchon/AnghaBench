; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_axp20x_ac_power.c_axp20x_ac_power_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_axp20x_ac_power.c_axp20x_ac_power_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.axp20x_dev = type { i32 }
%struct.power_supply_config = type { %struct.axp20x_ac_power*, i32 }
%struct.axp20x_ac_power = type { i8*, i32, i8*, i8* }
%struct.axp_data = type { i32, i64 }

@axp20x_ac_power_probe.irq_names = internal constant [3 x i8*] [i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* null], align 16
@.str = private unnamed_addr constant [12 x i8] c"ACIN_PLUGIN\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"ACIN_REMOVAL\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"Parent drvdata not set\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"acin_v\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"acin_i\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"No IRQ for %s: %d\0A\00", align 1
@axp20x_ac_power_irq = common dso_local global i32 0, align 4
@DRVNAME = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [29 x i8] c"Error requesting %s IRQ: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @axp20x_ac_power_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axp20x_ac_power_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.axp20x_dev*, align 8
  %5 = alloca %struct.power_supply_config, align 8
  %6 = alloca %struct.axp20x_ac_power*, align 8
  %7 = alloca %struct.axp_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.axp20x_dev* @dev_get_drvdata(i32 %14)
  store %struct.axp20x_dev* %15, %struct.axp20x_dev** %4, align 8
  %16 = bitcast %struct.power_supply_config* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %16, i8 0, i64 16, i1 false)
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @of_device_is_available(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %1
  %24 = load i32, i32* @ENODEV, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %198

26:                                               ; preds = %1
  %27 = load %struct.axp20x_dev*, %struct.axp20x_dev** %4, align 8
  %28 = icmp ne %struct.axp20x_dev* %27, null
  br i1 %28, label %35, label %29

29:                                               ; preds = %26
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %30, i32 0, i32 0
  %32 = call i32 @dev_err(%struct.TYPE_8__* %31, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %198

35:                                               ; preds = %26
  %36 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %37 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %36, i32 0, i32 0
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call %struct.axp20x_ac_power* @devm_kzalloc(%struct.TYPE_8__* %37, i32 32, i32 %38)
  store %struct.axp20x_ac_power* %39, %struct.axp20x_ac_power** %6, align 8
  %40 = load %struct.axp20x_ac_power*, %struct.axp20x_ac_power** %6, align 8
  %41 = icmp ne %struct.axp20x_ac_power* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %35
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %198

45:                                               ; preds = %35
  %46 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %47 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %46, i32 0, i32 0
  %48 = call %struct.axp_data* @of_device_get_match_data(%struct.TYPE_8__* %47)
  store %struct.axp_data* %48, %struct.axp_data** %7, align 8
  %49 = load %struct.axp_data*, %struct.axp_data** %7, align 8
  %50 = getelementptr inbounds %struct.axp_data, %struct.axp_data* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %108

53:                                               ; preds = %45
  %54 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %55 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %54, i32 0, i32 0
  %56 = call i8* @devm_iio_channel_get(%struct.TYPE_8__* %55, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %57 = load %struct.axp20x_ac_power*, %struct.axp20x_ac_power** %6, align 8
  %58 = getelementptr inbounds %struct.axp20x_ac_power, %struct.axp20x_ac_power* %57, i32 0, i32 3
  store i8* %56, i8** %58, align 8
  %59 = load %struct.axp20x_ac_power*, %struct.axp20x_ac_power** %6, align 8
  %60 = getelementptr inbounds %struct.axp20x_ac_power, %struct.axp20x_ac_power* %59, i32 0, i32 3
  %61 = load i8*, i8** %60, align 8
  %62 = call i64 @IS_ERR(i8* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %80

64:                                               ; preds = %53
  %65 = load %struct.axp20x_ac_power*, %struct.axp20x_ac_power** %6, align 8
  %66 = getelementptr inbounds %struct.axp20x_ac_power, %struct.axp20x_ac_power* %65, i32 0, i32 3
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 @PTR_ERR(i8* %67)
  %69 = load i32, i32* @ENODEV, align 4
  %70 = sub nsw i32 0, %69
  %71 = icmp eq i32 %68, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %64
  %73 = load i32, i32* @EPROBE_DEFER, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %2, align 4
  br label %198

75:                                               ; preds = %64
  %76 = load %struct.axp20x_ac_power*, %struct.axp20x_ac_power** %6, align 8
  %77 = getelementptr inbounds %struct.axp20x_ac_power, %struct.axp20x_ac_power* %76, i32 0, i32 3
  %78 = load i8*, i8** %77, align 8
  %79 = call i32 @PTR_ERR(i8* %78)
  store i32 %79, i32* %2, align 4
  br label %198

80:                                               ; preds = %53
  %81 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %82 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %81, i32 0, i32 0
  %83 = call i8* @devm_iio_channel_get(%struct.TYPE_8__* %82, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %84 = load %struct.axp20x_ac_power*, %struct.axp20x_ac_power** %6, align 8
  %85 = getelementptr inbounds %struct.axp20x_ac_power, %struct.axp20x_ac_power* %84, i32 0, i32 2
  store i8* %83, i8** %85, align 8
  %86 = load %struct.axp20x_ac_power*, %struct.axp20x_ac_power** %6, align 8
  %87 = getelementptr inbounds %struct.axp20x_ac_power, %struct.axp20x_ac_power* %86, i32 0, i32 2
  %88 = load i8*, i8** %87, align 8
  %89 = call i64 @IS_ERR(i8* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %107

91:                                               ; preds = %80
  %92 = load %struct.axp20x_ac_power*, %struct.axp20x_ac_power** %6, align 8
  %93 = getelementptr inbounds %struct.axp20x_ac_power, %struct.axp20x_ac_power* %92, i32 0, i32 2
  %94 = load i8*, i8** %93, align 8
  %95 = call i32 @PTR_ERR(i8* %94)
  %96 = load i32, i32* @ENODEV, align 4
  %97 = sub nsw i32 0, %96
  %98 = icmp eq i32 %95, %97
  br i1 %98, label %99, label %102

99:                                               ; preds = %91
  %100 = load i32, i32* @EPROBE_DEFER, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %2, align 4
  br label %198

102:                                              ; preds = %91
  %103 = load %struct.axp20x_ac_power*, %struct.axp20x_ac_power** %6, align 8
  %104 = getelementptr inbounds %struct.axp20x_ac_power, %struct.axp20x_ac_power* %103, i32 0, i32 2
  %105 = load i8*, i8** %104, align 8
  %106 = call i32 @PTR_ERR(i8* %105)
  store i32 %106, i32* %2, align 4
  br label %198

107:                                              ; preds = %80
  br label %108

108:                                              ; preds = %107, %45
  %109 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %110 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @dev_get_regmap(i32 %112, i32* null)
  %114 = load %struct.axp20x_ac_power*, %struct.axp20x_ac_power** %6, align 8
  %115 = getelementptr inbounds %struct.axp20x_ac_power, %struct.axp20x_ac_power* %114, i32 0, i32 1
  store i32 %113, i32* %115, align 8
  %116 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %117 = load %struct.axp20x_ac_power*, %struct.axp20x_ac_power** %6, align 8
  %118 = call i32 @platform_set_drvdata(%struct.platform_device* %116, %struct.axp20x_ac_power* %117)
  %119 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %120 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = getelementptr inbounds %struct.power_supply_config, %struct.power_supply_config* %5, i32 0, i32 1
  store i32 %122, i32* %123, align 8
  %124 = load %struct.axp20x_ac_power*, %struct.axp20x_ac_power** %6, align 8
  %125 = getelementptr inbounds %struct.power_supply_config, %struct.power_supply_config* %5, i32 0, i32 0
  store %struct.axp20x_ac_power* %124, %struct.axp20x_ac_power** %125, align 8
  %126 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %127 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %126, i32 0, i32 0
  %128 = load %struct.axp_data*, %struct.axp_data** %7, align 8
  %129 = getelementptr inbounds %struct.axp_data, %struct.axp_data* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = call i8* @devm_power_supply_register(%struct.TYPE_8__* %127, i32 %130, %struct.power_supply_config* %5)
  %132 = load %struct.axp20x_ac_power*, %struct.axp20x_ac_power** %6, align 8
  %133 = getelementptr inbounds %struct.axp20x_ac_power, %struct.axp20x_ac_power* %132, i32 0, i32 0
  store i8* %131, i8** %133, align 8
  %134 = load %struct.axp20x_ac_power*, %struct.axp20x_ac_power** %6, align 8
  %135 = getelementptr inbounds %struct.axp20x_ac_power, %struct.axp20x_ac_power* %134, i32 0, i32 0
  %136 = load i8*, i8** %135, align 8
  %137 = call i64 @IS_ERR(i8* %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %108
  %140 = load %struct.axp20x_ac_power*, %struct.axp20x_ac_power** %6, align 8
  %141 = getelementptr inbounds %struct.axp20x_ac_power, %struct.axp20x_ac_power* %140, i32 0, i32 0
  %142 = load i8*, i8** %141, align 8
  %143 = call i32 @PTR_ERR(i8* %142)
  store i32 %143, i32* %2, align 4
  br label %198

144:                                              ; preds = %108
  store i32 0, i32* %8, align 4
  br label %145

145:                                              ; preds = %194, %144
  %146 = load i32, i32* %8, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds [3 x i8*], [3 x i8*]* @axp20x_ac_power_probe.irq_names, i64 0, i64 %147
  %149 = load i8*, i8** %148, align 8
  %150 = icmp ne i8* %149, null
  br i1 %150, label %151, label %197

151:                                              ; preds = %145
  %152 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %153 = load i32, i32* %8, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds [3 x i8*], [3 x i8*]* @axp20x_ac_power_probe.irq_names, i64 0, i64 %154
  %156 = load i8*, i8** %155, align 8
  %157 = call i32 @platform_get_irq_byname(%struct.platform_device* %152, i8* %156)
  store i32 %157, i32* %9, align 4
  %158 = load i32, i32* %9, align 4
  %159 = icmp slt i32 %158, 0
  br i1 %159, label %160, label %169

160:                                              ; preds = %151
  %161 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %162 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %161, i32 0, i32 0
  %163 = load i32, i32* %8, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds [3 x i8*], [3 x i8*]* @axp20x_ac_power_probe.irq_names, i64 0, i64 %164
  %166 = load i8*, i8** %165, align 8
  %167 = load i32, i32* %9, align 4
  %168 = call i32 @dev_warn(%struct.TYPE_8__* %162, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i8* %166, i32 %167)
  br label %194

169:                                              ; preds = %151
  %170 = load %struct.axp20x_dev*, %struct.axp20x_dev** %4, align 8
  %171 = getelementptr inbounds %struct.axp20x_dev, %struct.axp20x_dev* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* %9, align 4
  %174 = call i32 @regmap_irq_get_virq(i32 %172, i32 %173)
  store i32 %174, i32* %9, align 4
  %175 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %176 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %175, i32 0, i32 0
  %177 = load i32, i32* %9, align 4
  %178 = load i32, i32* @axp20x_ac_power_irq, align 4
  %179 = load i32, i32* @DRVNAME, align 4
  %180 = load %struct.axp20x_ac_power*, %struct.axp20x_ac_power** %6, align 8
  %181 = call i32 @devm_request_any_context_irq(%struct.TYPE_8__* %176, i32 %177, i32 %178, i32 0, i32 %179, %struct.axp20x_ac_power* %180)
  store i32 %181, i32* %10, align 4
  %182 = load i32, i32* %10, align 4
  %183 = icmp slt i32 %182, 0
  br i1 %183, label %184, label %193

184:                                              ; preds = %169
  %185 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %186 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %185, i32 0, i32 0
  %187 = load i32, i32* %8, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds [3 x i8*], [3 x i8*]* @axp20x_ac_power_probe.irq_names, i64 0, i64 %188
  %190 = load i8*, i8** %189, align 8
  %191 = load i32, i32* %10, align 4
  %192 = call i32 @dev_warn(%struct.TYPE_8__* %186, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i8* %190, i32 %191)
  br label %193

193:                                              ; preds = %184, %169
  br label %194

194:                                              ; preds = %193, %160
  %195 = load i32, i32* %8, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %8, align 4
  br label %145

197:                                              ; preds = %145
  store i32 0, i32* %2, align 4
  br label %198

198:                                              ; preds = %197, %139, %102, %99, %75, %72, %42, %29, %23
  %199 = load i32, i32* %2, align 4
  ret i32 %199
}

declare dso_local %struct.axp20x_dev* @dev_get_drvdata(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @of_device_is_available(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_8__*, i8*) #1

declare dso_local %struct.axp20x_ac_power* @devm_kzalloc(%struct.TYPE_8__*, i32, i32) #1

declare dso_local %struct.axp_data* @of_device_get_match_data(%struct.TYPE_8__*) #1

declare dso_local i8* @devm_iio_channel_get(%struct.TYPE_8__*, i8*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @dev_get_regmap(i32, i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.axp20x_ac_power*) #1

declare dso_local i8* @devm_power_supply_register(%struct.TYPE_8__*, i32, %struct.power_supply_config*) #1

declare dso_local i32 @platform_get_irq_byname(%struct.platform_device*, i8*) #1

declare dso_local i32 @dev_warn(%struct.TYPE_8__*, i8*, i8*, i32) #1

declare dso_local i32 @regmap_irq_get_virq(i32, i32) #1

declare dso_local i32 @devm_request_any_context_irq(%struct.TYPE_8__*, i32, i32, i32, i32, %struct.axp20x_ac_power*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
