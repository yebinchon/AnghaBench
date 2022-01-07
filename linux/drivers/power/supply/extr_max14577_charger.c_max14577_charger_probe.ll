; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_max14577_charger.c_max14577_charger_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_max14577_charger.c_max14577_charger_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.max14577_charger = type { i32, i32, %struct.max14577*, %struct.TYPE_6__* }
%struct.max14577 = type { i32 }
%struct.power_supply_config = type { %struct.max14577_charger* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@dev_attr_fast_charge_timer = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"failed: create sysfs entry\0A\00", align 1
@max14577_charger_desc = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"failed: power supply register\0A\00", align 1
@MAX14577_CHARGER_EOC_CURRENT_LIMIT_MIN = common dso_local global i64 0, align 8
@MAX14577_CHARGER_EOC_CURRENT_LIMIT_STEP = common dso_local global i32 0, align 4
@MAX14577_CHARGER_EOC_CURRENT_LIMIT_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @max14577_charger_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max14577_charger_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.max14577_charger*, align 8
  %5 = alloca %struct.power_supply_config, align 8
  %6 = alloca %struct.max14577*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = bitcast %struct.power_supply_config* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %8, i8 0, i64 8, i1 false)
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.max14577* @dev_get_drvdata(i32 %12)
  store %struct.max14577* %13, %struct.max14577** %6, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.max14577_charger* @devm_kzalloc(%struct.TYPE_6__* %15, i32 24, i32 %16)
  store %struct.max14577_charger* %17, %struct.max14577_charger** %4, align 8
  %18 = load %struct.max14577_charger*, %struct.max14577_charger** %4, align 8
  %19 = icmp ne %struct.max14577_charger* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %102

23:                                               ; preds = %1
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = load %struct.max14577_charger*, %struct.max14577_charger** %4, align 8
  %26 = call i32 @platform_set_drvdata(%struct.platform_device* %24, %struct.max14577_charger* %25)
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %27, i32 0, i32 0
  %29 = load %struct.max14577_charger*, %struct.max14577_charger** %4, align 8
  %30 = getelementptr inbounds %struct.max14577_charger, %struct.max14577_charger* %29, i32 0, i32 3
  store %struct.TYPE_6__* %28, %struct.TYPE_6__** %30, align 8
  %31 = load %struct.max14577*, %struct.max14577** %6, align 8
  %32 = load %struct.max14577_charger*, %struct.max14577_charger** %4, align 8
  %33 = getelementptr inbounds %struct.max14577_charger, %struct.max14577_charger* %32, i32 0, i32 2
  store %struct.max14577* %31, %struct.max14577** %33, align 8
  %34 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %35 = call i32 @max14577_charger_dt_init(%struct.platform_device* %34)
  %36 = load %struct.max14577_charger*, %struct.max14577_charger** %4, align 8
  %37 = getelementptr inbounds %struct.max14577_charger, %struct.max14577_charger* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load %struct.max14577_charger*, %struct.max14577_charger** %4, align 8
  %39 = getelementptr inbounds %struct.max14577_charger, %struct.max14577_charger* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @IS_ERR_OR_NULL(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %23
  %44 = load %struct.max14577_charger*, %struct.max14577_charger** %4, align 8
  %45 = getelementptr inbounds %struct.max14577_charger, %struct.max14577_charger* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @PTR_ERR(i32 %46)
  store i32 %47, i32* %2, align 4
  br label %102

48:                                               ; preds = %23
  %49 = load %struct.max14577_charger*, %struct.max14577_charger** %4, align 8
  %50 = call i32 @max14577_charger_reg_init(%struct.max14577_charger* %49)
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = load i32, i32* %7, align 4
  store i32 %54, i32* %2, align 4
  br label %102

55:                                               ; preds = %48
  %56 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %57 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %56, i32 0, i32 0
  %58 = call i32 @device_create_file(%struct.TYPE_6__* %57, i32* @dev_attr_fast_charge_timer)
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %55
  %62 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %63 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %62, i32 0, i32 0
  %64 = call i32 @dev_err(%struct.TYPE_6__* %63, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %65 = load i32, i32* %7, align 4
  store i32 %65, i32* %2, align 4
  br label %102

66:                                               ; preds = %55
  %67 = load %struct.max14577_charger*, %struct.max14577_charger** %4, align 8
  %68 = getelementptr inbounds %struct.power_supply_config, %struct.power_supply_config* %5, i32 0, i32 0
  store %struct.max14577_charger* %67, %struct.max14577_charger** %68, align 8
  %69 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %70 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %69, i32 0, i32 0
  %71 = call i32 @power_supply_register(%struct.TYPE_6__* %70, i32* @max14577_charger_desc, %struct.power_supply_config* %5)
  %72 = load %struct.max14577_charger*, %struct.max14577_charger** %4, align 8
  %73 = getelementptr inbounds %struct.max14577_charger, %struct.max14577_charger* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  %74 = load %struct.max14577_charger*, %struct.max14577_charger** %4, align 8
  %75 = getelementptr inbounds %struct.max14577_charger, %struct.max14577_charger* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i64 @IS_ERR(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %87

79:                                               ; preds = %66
  %80 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %81 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %80, i32 0, i32 0
  %82 = call i32 @dev_err(%struct.TYPE_6__* %81, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %83 = load %struct.max14577_charger*, %struct.max14577_charger** %4, align 8
  %84 = getelementptr inbounds %struct.max14577_charger, %struct.max14577_charger* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @PTR_ERR(i32 %85)
  store i32 %86, i32* %7, align 4
  br label %97

87:                                               ; preds = %66
  %88 = load i64, i64* @MAX14577_CHARGER_EOC_CURRENT_LIMIT_MIN, align 8
  %89 = load i32, i32* @MAX14577_CHARGER_EOC_CURRENT_LIMIT_STEP, align 4
  %90 = mul nsw i32 %89, 15
  %91 = sext i32 %90 to i64
  %92 = add nsw i64 %88, %91
  %93 = load i64, i64* @MAX14577_CHARGER_EOC_CURRENT_LIMIT_MAX, align 8
  %94 = icmp ne i64 %92, %93
  %95 = zext i1 %94 to i32
  %96 = call i32 @BUILD_BUG_ON(i32 %95)
  store i32 0, i32* %2, align 4
  br label %102

97:                                               ; preds = %79
  %98 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %99 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %98, i32 0, i32 0
  %100 = call i32 @device_remove_file(%struct.TYPE_6__* %99, i32* @dev_attr_fast_charge_timer)
  %101 = load i32, i32* %7, align 4
  store i32 %101, i32* %2, align 4
  br label %102

102:                                              ; preds = %97, %87, %61, %53, %43, %20
  %103 = load i32, i32* %2, align 4
  ret i32 %103
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.max14577* @dev_get_drvdata(i32) #2

declare dso_local %struct.max14577_charger* @devm_kzalloc(%struct.TYPE_6__*, i32, i32) #2

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.max14577_charger*) #2

declare dso_local i32 @max14577_charger_dt_init(%struct.platform_device*) #2

declare dso_local i64 @IS_ERR_OR_NULL(i32) #2

declare dso_local i32 @PTR_ERR(i32) #2

declare dso_local i32 @max14577_charger_reg_init(%struct.max14577_charger*) #2

declare dso_local i32 @device_create_file(%struct.TYPE_6__*, i32*) #2

declare dso_local i32 @dev_err(%struct.TYPE_6__*, i8*) #2

declare dso_local i32 @power_supply_register(%struct.TYPE_6__*, i32*, %struct.power_supply_config*) #2

declare dso_local i64 @IS_ERR(i32) #2

declare dso_local i32 @BUILD_BUG_ON(i32) #2

declare dso_local i32 @device_remove_file(%struct.TYPE_6__*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
