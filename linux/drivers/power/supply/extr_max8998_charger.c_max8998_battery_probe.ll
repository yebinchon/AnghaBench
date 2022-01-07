; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_max8998_charger.c_max8998_battery_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_max8998_charger.c_max8998_battery_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.max8998_dev = type { %struct.i2c_client*, %struct.max8998_platform_data* }
%struct.i2c_client = type { i32 }
%struct.max8998_platform_data = type { i32, i32, i32 }
%struct.power_supply_config = type { %struct.max8998_battery_data* }
%struct.max8998_battery_data = type { %struct.TYPE_5__*, i32, %struct.max8998_dev* }

@.str = private unnamed_addr constant [32 x i8] c"No platform init data supplied\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MAX8998_REG_CHGR1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"EOC value not set: leave it unchanged.\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Invalid EOC value\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"Restart Level not set: leave it unchanged.\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"Invalid Restart Level\0A\00", align 1
@MAX8998_REG_CHGR2 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [43 x i8] c"Full Timeout not set: leave it unchanged.\0A\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"Invalid Full Timeout value\0A\00", align 1
@max8998_battery_desc = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [35 x i8] c"failed: power supply register: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @max8998_battery_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max8998_battery_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.max8998_dev*, align 8
  %5 = alloca %struct.max8998_platform_data*, align 8
  %6 = alloca %struct.power_supply_config, align 8
  %7 = alloca %struct.max8998_battery_data*, align 8
  %8 = alloca %struct.i2c_client*, align 8
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.max8998_dev* @dev_get_drvdata(i32 %13)
  store %struct.max8998_dev* %14, %struct.max8998_dev** %4, align 8
  %15 = load %struct.max8998_dev*, %struct.max8998_dev** %4, align 8
  %16 = getelementptr inbounds %struct.max8998_dev, %struct.max8998_dev* %15, i32 0, i32 1
  %17 = load %struct.max8998_platform_data*, %struct.max8998_platform_data** %16, align 8
  store %struct.max8998_platform_data* %17, %struct.max8998_platform_data** %5, align 8
  %18 = bitcast %struct.power_supply_config* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %18, i8 0, i64 8, i1 false)
  store i32 0, i32* %9, align 4
  %19 = load %struct.max8998_platform_data*, %struct.max8998_platform_data** %5, align 8
  %20 = icmp ne %struct.max8998_platform_data* %19, null
  br i1 %20, label %31, label %21

21:                                               ; preds = %1
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = sext i32 %25 to i64
  %27 = inttoptr i64 %26 to %struct.TYPE_5__*
  %28 = call i32 (%struct.TYPE_5__*, i8*, ...) @dev_err(%struct.TYPE_5__* %27, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @ENODEV, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %184

31:                                               ; preds = %1
  %32 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %33 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %32, i32 0, i32 0
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call %struct.max8998_battery_data* @devm_kzalloc(%struct.TYPE_5__* %33, i32 24, i32 %34)
  store %struct.max8998_battery_data* %35, %struct.max8998_battery_data** %7, align 8
  %36 = load %struct.max8998_battery_data*, %struct.max8998_battery_data** %7, align 8
  %37 = icmp ne %struct.max8998_battery_data* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %31
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %184

41:                                               ; preds = %31
  %42 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %43 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %42, i32 0, i32 0
  %44 = load %struct.max8998_battery_data*, %struct.max8998_battery_data** %7, align 8
  %45 = getelementptr inbounds %struct.max8998_battery_data, %struct.max8998_battery_data* %44, i32 0, i32 0
  store %struct.TYPE_5__* %43, %struct.TYPE_5__** %45, align 8
  %46 = load %struct.max8998_dev*, %struct.max8998_dev** %4, align 8
  %47 = load %struct.max8998_battery_data*, %struct.max8998_battery_data** %7, align 8
  %48 = getelementptr inbounds %struct.max8998_battery_data, %struct.max8998_battery_data* %47, i32 0, i32 2
  store %struct.max8998_dev* %46, %struct.max8998_dev** %48, align 8
  %49 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %50 = load %struct.max8998_battery_data*, %struct.max8998_battery_data** %7, align 8
  %51 = call i32 @platform_set_drvdata(%struct.platform_device* %49, %struct.max8998_battery_data* %50)
  %52 = load %struct.max8998_battery_data*, %struct.max8998_battery_data** %7, align 8
  %53 = getelementptr inbounds %struct.max8998_battery_data, %struct.max8998_battery_data* %52, i32 0, i32 2
  %54 = load %struct.max8998_dev*, %struct.max8998_dev** %53, align 8
  %55 = getelementptr inbounds %struct.max8998_dev, %struct.max8998_dev* %54, i32 0, i32 0
  %56 = load %struct.i2c_client*, %struct.i2c_client** %55, align 8
  store %struct.i2c_client* %56, %struct.i2c_client** %8, align 8
  %57 = load %struct.max8998_platform_data*, %struct.max8998_platform_data** %5, align 8
  %58 = getelementptr inbounds %struct.max8998_platform_data, %struct.max8998_platform_data* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp sge i32 %59, 10
  br i1 %60, label %61, label %76

61:                                               ; preds = %41
  %62 = load %struct.max8998_platform_data*, %struct.max8998_platform_data** %5, align 8
  %63 = getelementptr inbounds %struct.max8998_platform_data, %struct.max8998_platform_data* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp sle i32 %64, 45
  br i1 %65, label %66, label %76

66:                                               ; preds = %61
  %67 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %68 = load i32, i32* @MAX8998_REG_CHGR1, align 4
  %69 = load %struct.max8998_platform_data*, %struct.max8998_platform_data** %5, align 8
  %70 = getelementptr inbounds %struct.max8998_platform_data, %struct.max8998_platform_data* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = sdiv i32 %71, 5
  %73 = sub nsw i32 %72, 2
  %74 = shl i32 %73, 5
  %75 = call i32 @max8998_update_reg(%struct.i2c_client* %67, i32 %68, i32 %74, i32 224)
  br label %94

76:                                               ; preds = %61, %41
  %77 = load %struct.max8998_platform_data*, %struct.max8998_platform_data** %5, align 8
  %78 = getelementptr inbounds %struct.max8998_platform_data, %struct.max8998_platform_data* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %76
  %82 = load %struct.max8998_battery_data*, %struct.max8998_battery_data** %7, align 8
  %83 = getelementptr inbounds %struct.max8998_battery_data, %struct.max8998_battery_data* %82, i32 0, i32 0
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %83, align 8
  %85 = call i32 @dev_dbg(%struct.TYPE_5__* %84, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %93

86:                                               ; preds = %76
  %87 = load %struct.max8998_battery_data*, %struct.max8998_battery_data** %7, align 8
  %88 = getelementptr inbounds %struct.max8998_battery_data, %struct.max8998_battery_data* %87, i32 0, i32 0
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %88, align 8
  %90 = call i32 (%struct.TYPE_5__*, i8*, ...) @dev_err(%struct.TYPE_5__* %89, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %91 = load i32, i32* @EINVAL, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %2, align 4
  br label %184

93:                                               ; preds = %81
  br label %94

94:                                               ; preds = %93, %66
  %95 = load %struct.max8998_platform_data*, %struct.max8998_platform_data** %5, align 8
  %96 = getelementptr inbounds %struct.max8998_platform_data, %struct.max8998_platform_data* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  switch i32 %97, label %119 [
    i32 100, label %98
    i32 150, label %102
    i32 200, label %106
    i32 -1, label %110
    i32 0, label %114
  ]

98:                                               ; preds = %94
  %99 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %100 = load i32, i32* @MAX8998_REG_CHGR1, align 4
  %101 = call i32 @max8998_update_reg(%struct.i2c_client* %99, i32 %100, i32 8, i32 24)
  br label %126

102:                                              ; preds = %94
  %103 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %104 = load i32, i32* @MAX8998_REG_CHGR1, align 4
  %105 = call i32 @max8998_update_reg(%struct.i2c_client* %103, i32 %104, i32 0, i32 24)
  br label %126

106:                                              ; preds = %94
  %107 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %108 = load i32, i32* @MAX8998_REG_CHGR1, align 4
  %109 = call i32 @max8998_update_reg(%struct.i2c_client* %107, i32 %108, i32 16, i32 24)
  br label %126

110:                                              ; preds = %94
  %111 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %112 = load i32, i32* @MAX8998_REG_CHGR1, align 4
  %113 = call i32 @max8998_update_reg(%struct.i2c_client* %111, i32 %112, i32 24, i32 24)
  br label %126

114:                                              ; preds = %94
  %115 = load %struct.max8998_battery_data*, %struct.max8998_battery_data** %7, align 8
  %116 = getelementptr inbounds %struct.max8998_battery_data, %struct.max8998_battery_data* %115, i32 0, i32 0
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %116, align 8
  %118 = call i32 @dev_dbg(%struct.TYPE_5__* %117, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  br label %126

119:                                              ; preds = %94
  %120 = load %struct.max8998_battery_data*, %struct.max8998_battery_data** %7, align 8
  %121 = getelementptr inbounds %struct.max8998_battery_data, %struct.max8998_battery_data* %120, i32 0, i32 0
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %121, align 8
  %123 = call i32 (%struct.TYPE_5__*, i8*, ...) @dev_err(%struct.TYPE_5__* %122, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %124 = load i32, i32* @EINVAL, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %2, align 4
  br label %184

126:                                              ; preds = %114, %110, %106, %102, %98
  %127 = load %struct.max8998_platform_data*, %struct.max8998_platform_data** %5, align 8
  %128 = getelementptr inbounds %struct.max8998_platform_data, %struct.max8998_platform_data* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  switch i32 %129, label %151 [
    i32 5, label %130
    i32 6, label %134
    i32 7, label %138
    i32 -1, label %142
    i32 0, label %146
  ]

130:                                              ; preds = %126
  %131 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %132 = load i32, i32* @MAX8998_REG_CHGR2, align 4
  %133 = call i32 @max8998_update_reg(%struct.i2c_client* %131, i32 %132, i32 0, i32 48)
  br label %158

134:                                              ; preds = %126
  %135 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %136 = load i32, i32* @MAX8998_REG_CHGR2, align 4
  %137 = call i32 @max8998_update_reg(%struct.i2c_client* %135, i32 %136, i32 16, i32 48)
  br label %158

138:                                              ; preds = %126
  %139 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %140 = load i32, i32* @MAX8998_REG_CHGR2, align 4
  %141 = call i32 @max8998_update_reg(%struct.i2c_client* %139, i32 %140, i32 32, i32 48)
  br label %158

142:                                              ; preds = %126
  %143 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %144 = load i32, i32* @MAX8998_REG_CHGR2, align 4
  %145 = call i32 @max8998_update_reg(%struct.i2c_client* %143, i32 %144, i32 48, i32 48)
  br label %158

146:                                              ; preds = %126
  %147 = load %struct.max8998_battery_data*, %struct.max8998_battery_data** %7, align 8
  %148 = getelementptr inbounds %struct.max8998_battery_data, %struct.max8998_battery_data* %147, i32 0, i32 0
  %149 = load %struct.TYPE_5__*, %struct.TYPE_5__** %148, align 8
  %150 = call i32 @dev_dbg(%struct.TYPE_5__* %149, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0))
  br label %158

151:                                              ; preds = %126
  %152 = load %struct.max8998_battery_data*, %struct.max8998_battery_data** %7, align 8
  %153 = getelementptr inbounds %struct.max8998_battery_data, %struct.max8998_battery_data* %152, i32 0, i32 0
  %154 = load %struct.TYPE_5__*, %struct.TYPE_5__** %153, align 8
  %155 = call i32 (%struct.TYPE_5__*, i8*, ...) @dev_err(%struct.TYPE_5__* %154, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  %156 = load i32, i32* @EINVAL, align 4
  %157 = sub nsw i32 0, %156
  store i32 %157, i32* %2, align 4
  br label %184

158:                                              ; preds = %146, %142, %138, %134, %130
  %159 = load %struct.max8998_battery_data*, %struct.max8998_battery_data** %7, align 8
  %160 = getelementptr inbounds %struct.power_supply_config, %struct.power_supply_config* %6, i32 0, i32 0
  store %struct.max8998_battery_data* %159, %struct.max8998_battery_data** %160, align 8
  %161 = load %struct.max8998_battery_data*, %struct.max8998_battery_data** %7, align 8
  %162 = getelementptr inbounds %struct.max8998_battery_data, %struct.max8998_battery_data* %161, i32 0, i32 0
  %163 = load %struct.TYPE_5__*, %struct.TYPE_5__** %162, align 8
  %164 = call i32 @devm_power_supply_register(%struct.TYPE_5__* %163, i32* @max8998_battery_desc, %struct.power_supply_config* %6)
  %165 = load %struct.max8998_battery_data*, %struct.max8998_battery_data** %7, align 8
  %166 = getelementptr inbounds %struct.max8998_battery_data, %struct.max8998_battery_data* %165, i32 0, i32 1
  store i32 %164, i32* %166, align 8
  %167 = load %struct.max8998_battery_data*, %struct.max8998_battery_data** %7, align 8
  %168 = getelementptr inbounds %struct.max8998_battery_data, %struct.max8998_battery_data* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 8
  %170 = call i64 @IS_ERR(i32 %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %183

172:                                              ; preds = %158
  %173 = load %struct.max8998_battery_data*, %struct.max8998_battery_data** %7, align 8
  %174 = getelementptr inbounds %struct.max8998_battery_data, %struct.max8998_battery_data* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 8
  %176 = call i32 @PTR_ERR(i32 %175)
  store i32 %176, i32* %9, align 4
  %177 = load %struct.max8998_battery_data*, %struct.max8998_battery_data** %7, align 8
  %178 = getelementptr inbounds %struct.max8998_battery_data, %struct.max8998_battery_data* %177, i32 0, i32 0
  %179 = load %struct.TYPE_5__*, %struct.TYPE_5__** %178, align 8
  %180 = load i32, i32* %9, align 4
  %181 = call i32 (%struct.TYPE_5__*, i8*, ...) @dev_err(%struct.TYPE_5__* %179, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0), i32 %180)
  %182 = load i32, i32* %9, align 4
  store i32 %182, i32* %2, align 4
  br label %184

183:                                              ; preds = %158
  store i32 0, i32* %2, align 4
  br label %184

184:                                              ; preds = %183, %172, %151, %119, %86, %38, %21
  %185 = load i32, i32* %2, align 4
  ret i32 %185
}

declare dso_local %struct.max8998_dev* @dev_get_drvdata(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @dev_err(%struct.TYPE_5__*, i8*, ...) #1

declare dso_local %struct.max8998_battery_data* @devm_kzalloc(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.max8998_battery_data*) #1

declare dso_local i32 @max8998_update_reg(%struct.i2c_client*, i32, i32, i32) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_5__*, i8*) #1

declare dso_local i32 @devm_power_supply_register(%struct.TYPE_5__*, i32*, %struct.power_supply_config*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
