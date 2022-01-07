; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_ds2782_battery.c_ds278x_battery_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_ds2782_battery.c_ds278x_battery_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.ds278x_platform_data* }
%struct.ds278x_platform_data = type { i32 }
%struct.i2c_device_id = type { i64 }
%struct.power_supply_config = type { %struct.ds278x_info* }
%struct.ds278x_info = type { i32, i32, %struct.TYPE_6__, i32, i32, i32, i32*, %struct.i2c_client*, i32 }
%struct.TYPE_6__ = type { %struct.ds278x_info* }

@DS2786 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"missing platform data for ds2786\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@battery_lock = common dso_local global i32 0, align 4
@battery_id = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"%s-%d\00", align 1
@ds278x_ops = common dso_local global i32* null, align 8
@POWER_SUPPLY_STATUS_FULL = common dso_local global i32 0, align 4
@ds278x_bat_work = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"failed to register battery\0A\00", align 1
@DS278x_DELAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @ds278x_battery_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds278x_battery_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.ds278x_platform_data*, align 8
  %7 = alloca %struct.power_supply_config, align 8
  %8 = alloca %struct.ds278x_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load %struct.ds278x_platform_data*, %struct.ds278x_platform_data** %13, align 8
  store %struct.ds278x_platform_data* %14, %struct.ds278x_platform_data** %6, align 8
  %15 = bitcast %struct.power_supply_config* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %15, i8 0, i64 8, i1 false)
  %16 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %17 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @DS2786, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %30

21:                                               ; preds = %2
  %22 = load %struct.ds278x_platform_data*, %struct.ds278x_platform_data** %6, align 8
  %23 = icmp ne %struct.ds278x_platform_data* %22, null
  br i1 %23, label %30, label %24

24:                                               ; preds = %21
  %25 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %26 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %25, i32 0, i32 0
  %27 = call i32 @dev_err(%struct.TYPE_5__* %26, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %151

30:                                               ; preds = %21, %2
  %31 = call i32 @mutex_lock(i32* @battery_lock)
  %32 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call i32 @idr_alloc(i32* @battery_id, %struct.i2c_client* %32, i32 0, i32 0, i32 %33)
  store i32 %34, i32* %9, align 4
  %35 = call i32 @mutex_unlock(i32* @battery_lock)
  %36 = load i32, i32* %9, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  br label %149

39:                                               ; preds = %30
  %40 = load i32, i32* %9, align 4
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = call %struct.ds278x_info* @kzalloc(i32 56, i32 %41)
  store %struct.ds278x_info* %42, %struct.ds278x_info** %8, align 8
  %43 = load %struct.ds278x_info*, %struct.ds278x_info** %8, align 8
  %44 = icmp ne %struct.ds278x_info* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %39
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %9, align 4
  br label %144

48:                                               ; preds = %39
  %49 = load i32, i32* @GFP_KERNEL, align 4
  %50 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %51 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %10, align 4
  %54 = call %struct.ds278x_info* @kasprintf(i32 %49, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %52, i32 %53)
  %55 = load %struct.ds278x_info*, %struct.ds278x_info** %8, align 8
  %56 = getelementptr inbounds %struct.ds278x_info, %struct.ds278x_info* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  store %struct.ds278x_info* %54, %struct.ds278x_info** %57, align 8
  %58 = load %struct.ds278x_info*, %struct.ds278x_info** %8, align 8
  %59 = getelementptr inbounds %struct.ds278x_info, %struct.ds278x_info* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load %struct.ds278x_info*, %struct.ds278x_info** %60, align 8
  %62 = icmp ne %struct.ds278x_info* %61, null
  br i1 %62, label %66, label %63

63:                                               ; preds = %48
  %64 = load i32, i32* @ENOMEM, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %9, align 4
  br label %141

66:                                               ; preds = %48
  %67 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %68 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @DS2786, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %78

72:                                               ; preds = %66
  %73 = load %struct.ds278x_platform_data*, %struct.ds278x_platform_data** %6, align 8
  %74 = getelementptr inbounds %struct.ds278x_platform_data, %struct.ds278x_platform_data* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.ds278x_info*, %struct.ds278x_info** %8, align 8
  %77 = getelementptr inbounds %struct.ds278x_info, %struct.ds278x_info* %76, i32 0, i32 8
  store i32 %75, i32* %77, align 8
  br label %78

78:                                               ; preds = %72, %66
  %79 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %80 = load %struct.ds278x_info*, %struct.ds278x_info** %8, align 8
  %81 = call i32 @i2c_set_clientdata(%struct.i2c_client* %79, %struct.ds278x_info* %80)
  %82 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %83 = load %struct.ds278x_info*, %struct.ds278x_info** %8, align 8
  %84 = getelementptr inbounds %struct.ds278x_info, %struct.ds278x_info* %83, i32 0, i32 7
  store %struct.i2c_client* %82, %struct.i2c_client** %84, align 8
  %85 = load i32, i32* %10, align 4
  %86 = load %struct.ds278x_info*, %struct.ds278x_info** %8, align 8
  %87 = getelementptr inbounds %struct.ds278x_info, %struct.ds278x_info* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  %88 = load i32*, i32** @ds278x_ops, align 8
  %89 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %90 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = getelementptr inbounds i32, i32* %88, i64 %91
  %93 = load %struct.ds278x_info*, %struct.ds278x_info** %8, align 8
  %94 = getelementptr inbounds %struct.ds278x_info, %struct.ds278x_info* %93, i32 0, i32 6
  store i32* %92, i32** %94, align 8
  %95 = load %struct.ds278x_info*, %struct.ds278x_info** %8, align 8
  %96 = getelementptr inbounds %struct.ds278x_info, %struct.ds278x_info* %95, i32 0, i32 2
  %97 = call i32 @ds278x_power_supply_init(%struct.TYPE_6__* %96)
  %98 = load %struct.ds278x_info*, %struct.ds278x_info** %8, align 8
  %99 = getelementptr inbounds %struct.power_supply_config, %struct.power_supply_config* %7, i32 0, i32 0
  store %struct.ds278x_info* %98, %struct.ds278x_info** %99, align 8
  %100 = load %struct.ds278x_info*, %struct.ds278x_info** %8, align 8
  %101 = getelementptr inbounds %struct.ds278x_info, %struct.ds278x_info* %100, i32 0, i32 1
  store i32 100, i32* %101, align 4
  %102 = load i32, i32* @POWER_SUPPLY_STATUS_FULL, align 4
  %103 = load %struct.ds278x_info*, %struct.ds278x_info** %8, align 8
  %104 = getelementptr inbounds %struct.ds278x_info, %struct.ds278x_info* %103, i32 0, i32 5
  store i32 %102, i32* %104, align 8
  %105 = load %struct.ds278x_info*, %struct.ds278x_info** %8, align 8
  %106 = getelementptr inbounds %struct.ds278x_info, %struct.ds278x_info* %105, i32 0, i32 3
  %107 = load i32, i32* @ds278x_bat_work, align 4
  %108 = call i32 @INIT_DELAYED_WORK(i32* %106, i32 %107)
  %109 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %110 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %109, i32 0, i32 0
  %111 = load %struct.ds278x_info*, %struct.ds278x_info** %8, align 8
  %112 = getelementptr inbounds %struct.ds278x_info, %struct.ds278x_info* %111, i32 0, i32 2
  %113 = call i32 @power_supply_register(%struct.TYPE_5__* %110, %struct.TYPE_6__* %112, %struct.power_supply_config* %7)
  %114 = load %struct.ds278x_info*, %struct.ds278x_info** %8, align 8
  %115 = getelementptr inbounds %struct.ds278x_info, %struct.ds278x_info* %114, i32 0, i32 4
  store i32 %113, i32* %115, align 4
  %116 = load %struct.ds278x_info*, %struct.ds278x_info** %8, align 8
  %117 = getelementptr inbounds %struct.ds278x_info, %struct.ds278x_info* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 4
  %119 = call i64 @IS_ERR(i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %129

121:                                              ; preds = %78
  %122 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %123 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %122, i32 0, i32 0
  %124 = call i32 @dev_err(%struct.TYPE_5__* %123, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %125 = load %struct.ds278x_info*, %struct.ds278x_info** %8, align 8
  %126 = getelementptr inbounds %struct.ds278x_info, %struct.ds278x_info* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @PTR_ERR(i32 %127)
  store i32 %128, i32* %9, align 4
  br label %135

129:                                              ; preds = %78
  %130 = load %struct.ds278x_info*, %struct.ds278x_info** %8, align 8
  %131 = getelementptr inbounds %struct.ds278x_info, %struct.ds278x_info* %130, i32 0, i32 3
  %132 = load i32, i32* @DS278x_DELAY, align 4
  %133 = call i32 @schedule_delayed_work(i32* %131, i32 %132)
  br label %134

134:                                              ; preds = %129
  store i32 0, i32* %3, align 4
  br label %151

135:                                              ; preds = %121
  %136 = load %struct.ds278x_info*, %struct.ds278x_info** %8, align 8
  %137 = getelementptr inbounds %struct.ds278x_info, %struct.ds278x_info* %136, i32 0, i32 2
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 0
  %139 = load %struct.ds278x_info*, %struct.ds278x_info** %138, align 8
  %140 = call i32 @kfree(%struct.ds278x_info* %139)
  br label %141

141:                                              ; preds = %135, %63
  %142 = load %struct.ds278x_info*, %struct.ds278x_info** %8, align 8
  %143 = call i32 @kfree(%struct.ds278x_info* %142)
  br label %144

144:                                              ; preds = %141, %45
  %145 = call i32 @mutex_lock(i32* @battery_lock)
  %146 = load i32, i32* %10, align 4
  %147 = call i32 @idr_remove(i32* @battery_id, i32 %146)
  %148 = call i32 @mutex_unlock(i32* @battery_lock)
  br label %149

149:                                              ; preds = %144, %38
  %150 = load i32, i32* %9, align 4
  store i32 %150, i32* %3, align 4
  br label %151

151:                                              ; preds = %149, %134, %24
  %152 = load i32, i32* %3, align 4
  ret i32 %152
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @dev_err(%struct.TYPE_5__*, i8*) #2

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local i32 @idr_alloc(i32*, %struct.i2c_client*, i32, i32, i32) #2

declare dso_local i32 @mutex_unlock(i32*) #2

declare dso_local %struct.ds278x_info* @kzalloc(i32, i32) #2

declare dso_local %struct.ds278x_info* @kasprintf(i32, i8*, i32, i32) #2

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.ds278x_info*) #2

declare dso_local i32 @ds278x_power_supply_init(%struct.TYPE_6__*) #2

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #2

declare dso_local i32 @power_supply_register(%struct.TYPE_5__*, %struct.TYPE_6__*, %struct.power_supply_config*) #2

declare dso_local i64 @IS_ERR(i32) #2

declare dso_local i32 @PTR_ERR(i32) #2

declare dso_local i32 @schedule_delayed_work(i32*, i32) #2

declare dso_local i32 @kfree(%struct.ds278x_info*) #2

declare dso_local i32 @idr_remove(i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
