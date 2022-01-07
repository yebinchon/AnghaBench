; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_sbs-charger.c_sbs_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_sbs-charger.c_sbs_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.TYPE_7__, i64 }
%struct.TYPE_7__ = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.power_supply_config = type { %struct.sbs_info*, i32 }
%struct.sbs_info = type { i32, i32, i32, i32, %struct.i2c_client* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@sbs_regmap = common dso_local global i32 0, align 4
@SBS_CHARGER_REG_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Failed to get device status\0A\00", align 1
@sbs_desc = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Failed to register power supply\0A\00", align 1
@sbs_irq_thread = common dso_local global i32 0, align 4
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Failed to request irq, %d\0A\00", align 1
@sbs_delayed_work = common dso_local global i32 0, align 4
@SBS_CHARGER_POLL_TIME = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"%s: smart charger device registered\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @sbs_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sbs_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.power_supply_config, align 8
  %7 = alloca %struct.sbs_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %10 = bitcast %struct.power_supply_config* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %10, i8 0, i64 16, i1 false)
  %11 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 1
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.sbs_info* @devm_kzalloc(%struct.TYPE_7__* %12, i32 24, i32 %13)
  store %struct.sbs_info* %14, %struct.sbs_info** %7, align 8
  %15 = load %struct.sbs_info*, %struct.sbs_info** %7, align 8
  %16 = icmp ne %struct.sbs_info* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %129

20:                                               ; preds = %2
  %21 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %22 = load %struct.sbs_info*, %struct.sbs_info** %7, align 8
  %23 = getelementptr inbounds %struct.sbs_info, %struct.sbs_info* %22, i32 0, i32 4
  store %struct.i2c_client* %21, %struct.i2c_client** %23, align 8
  %24 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %25 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.power_supply_config, %struct.power_supply_config* %6, i32 0, i32 1
  store i32 %27, i32* %28, align 8
  %29 = load %struct.sbs_info*, %struct.sbs_info** %7, align 8
  %30 = getelementptr inbounds %struct.power_supply_config, %struct.power_supply_config* %6, i32 0, i32 0
  store %struct.sbs_info* %29, %struct.sbs_info** %30, align 8
  %31 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %32 = load %struct.sbs_info*, %struct.sbs_info** %7, align 8
  %33 = call i32 @i2c_set_clientdata(%struct.i2c_client* %31, %struct.sbs_info* %32)
  %34 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %35 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %34, i32* @sbs_regmap)
  %36 = load %struct.sbs_info*, %struct.sbs_info** %7, align 8
  %37 = getelementptr inbounds %struct.sbs_info, %struct.sbs_info* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 4
  %38 = load %struct.sbs_info*, %struct.sbs_info** %7, align 8
  %39 = getelementptr inbounds %struct.sbs_info, %struct.sbs_info* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @IS_ERR(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %20
  %44 = load %struct.sbs_info*, %struct.sbs_info** %7, align 8
  %45 = getelementptr inbounds %struct.sbs_info, %struct.sbs_info* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @PTR_ERR(i32 %46)
  store i32 %47, i32* %3, align 4
  br label %129

48:                                               ; preds = %20
  %49 = load %struct.sbs_info*, %struct.sbs_info** %7, align 8
  %50 = getelementptr inbounds %struct.sbs_info, %struct.sbs_info* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @SBS_CHARGER_REG_STATUS, align 4
  %53 = call i32 @regmap_read(i32 %51, i32 %52, i32* %9)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %48
  %57 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %58 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %57, i32 0, i32 1
  %59 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %58, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %60 = load i32, i32* %8, align 4
  store i32 %60, i32* %3, align 4
  br label %129

61:                                               ; preds = %48
  %62 = load i32, i32* %9, align 4
  %63 = load %struct.sbs_info*, %struct.sbs_info** %7, align 8
  %64 = getelementptr inbounds %struct.sbs_info, %struct.sbs_info* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  %65 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %66 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %65, i32 0, i32 1
  %67 = call i32 @devm_power_supply_register(%struct.TYPE_7__* %66, i32* @sbs_desc, %struct.power_supply_config* %6)
  %68 = load %struct.sbs_info*, %struct.sbs_info** %7, align 8
  %69 = getelementptr inbounds %struct.sbs_info, %struct.sbs_info* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 8
  %70 = load %struct.sbs_info*, %struct.sbs_info** %7, align 8
  %71 = getelementptr inbounds %struct.sbs_info, %struct.sbs_info* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = call i64 @IS_ERR(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %61
  %76 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %77 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %76, i32 0, i32 1
  %78 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %77, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %79 = load %struct.sbs_info*, %struct.sbs_info** %7, align 8
  %80 = getelementptr inbounds %struct.sbs_info, %struct.sbs_info* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @PTR_ERR(i32 %81)
  store i32 %82, i32* %3, align 4
  br label %129

83:                                               ; preds = %61
  %84 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %85 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %112

88:                                               ; preds = %83
  %89 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %90 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %89, i32 0, i32 1
  %91 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %92 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = load i32, i32* @sbs_irq_thread, align 4
  %95 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %96 = load i32, i32* @IRQF_ONESHOT, align 4
  %97 = or i32 %95, %96
  %98 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %99 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %98, i32 0, i32 1
  %100 = call i32 @dev_name(%struct.TYPE_7__* %99)
  %101 = load %struct.sbs_info*, %struct.sbs_info** %7, align 8
  %102 = call i32 @devm_request_threaded_irq(%struct.TYPE_7__* %90, i64 %93, i32* null, i32 %94, i32 %97, i32 %100, %struct.sbs_info* %101)
  store i32 %102, i32* %8, align 4
  %103 = load i32, i32* %8, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %88
  %106 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %107 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %106, i32 0, i32 1
  %108 = load i32, i32* %8, align 4
  %109 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %107, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %108)
  %110 = load i32, i32* %8, align 4
  store i32 %110, i32* %3, align 4
  br label %129

111:                                              ; preds = %88
  br label %122

112:                                              ; preds = %83
  %113 = load %struct.sbs_info*, %struct.sbs_info** %7, align 8
  %114 = getelementptr inbounds %struct.sbs_info, %struct.sbs_info* %113, i32 0, i32 1
  %115 = load i32, i32* @sbs_delayed_work, align 4
  %116 = call i32 @INIT_DELAYED_WORK(i32* %114, i32 %115)
  %117 = load %struct.sbs_info*, %struct.sbs_info** %7, align 8
  %118 = getelementptr inbounds %struct.sbs_info, %struct.sbs_info* %117, i32 0, i32 1
  %119 = load i32, i32* @SBS_CHARGER_POLL_TIME, align 4
  %120 = call i32 @msecs_to_jiffies(i32 %119)
  %121 = call i32 @schedule_delayed_work(i32* %118, i32 %120)
  br label %122

122:                                              ; preds = %112, %111
  %123 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %124 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %123, i32 0, i32 1
  %125 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %126 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @dev_info(%struct.TYPE_7__* %124, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %127)
  store i32 0, i32* %3, align 4
  br label %129

129:                                              ; preds = %122, %105, %75, %56, %43, %17
  %130 = load i32, i32* %3, align 4
  ret i32 %130
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.sbs_info* @devm_kzalloc(%struct.TYPE_7__*, i32, i32) #2

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.sbs_info*) #2

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #2

declare dso_local i64 @IS_ERR(i32) #2

declare dso_local i32 @PTR_ERR(i32) #2

declare dso_local i32 @regmap_read(i32, i32, i32*) #2

declare dso_local i32 @dev_err(%struct.TYPE_7__*, i8*, ...) #2

declare dso_local i32 @devm_power_supply_register(%struct.TYPE_7__*, i32*, %struct.power_supply_config*) #2

declare dso_local i32 @devm_request_threaded_irq(%struct.TYPE_7__*, i64, i32*, i32, i32, i32, %struct.sbs_info*) #2

declare dso_local i32 @dev_name(%struct.TYPE_7__*) #2

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #2

declare dso_local i32 @schedule_delayed_work(i32*, i32) #2

declare dso_local i32 @msecs_to_jiffies(i32) #2

declare dso_local i32 @dev_info(%struct.TYPE_7__*, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
