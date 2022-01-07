; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_max77693_charger.c_max77693_charger_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_max77693_charger.c_max77693_charger_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.max77693_charger = type { i32, %struct.max77693_dev*, %struct.TYPE_7__* }
%struct.max77693_dev = type { i32 }
%struct.power_supply_config = type { %struct.max77693_charger* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@dev_attr_fast_charge_timer = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"failed: create fast charge timer sysfs entry\0A\00", align 1
@dev_attr_top_off_threshold_current = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"failed: create top off current sysfs entry\0A\00", align 1
@dev_attr_top_off_timer = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"failed: create top off timer sysfs entry\0A\00", align 1
@max77693_charger_desc = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"failed: power supply register\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @max77693_charger_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max77693_charger_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.max77693_charger*, align 8
  %5 = alloca %struct.power_supply_config, align 8
  %6 = alloca %struct.max77693_dev*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = bitcast %struct.power_supply_config* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %8, i8 0, i64 8, i1 false)
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.max77693_dev* @dev_get_drvdata(i32 %12)
  store %struct.max77693_dev* %13, %struct.max77693_dev** %6, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.max77693_charger* @devm_kzalloc(%struct.TYPE_7__* %15, i32 24, i32 %16)
  store %struct.max77693_charger* %17, %struct.max77693_charger** %4, align 8
  %18 = load %struct.max77693_charger*, %struct.max77693_charger** %4, align 8
  %19 = icmp ne %struct.max77693_charger* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %112

23:                                               ; preds = %1
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = load %struct.max77693_charger*, %struct.max77693_charger** %4, align 8
  %26 = call i32 @platform_set_drvdata(%struct.platform_device* %24, %struct.max77693_charger* %25)
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %27, i32 0, i32 0
  %29 = load %struct.max77693_charger*, %struct.max77693_charger** %4, align 8
  %30 = getelementptr inbounds %struct.max77693_charger, %struct.max77693_charger* %29, i32 0, i32 2
  store %struct.TYPE_7__* %28, %struct.TYPE_7__** %30, align 8
  %31 = load %struct.max77693_dev*, %struct.max77693_dev** %6, align 8
  %32 = load %struct.max77693_charger*, %struct.max77693_charger** %4, align 8
  %33 = getelementptr inbounds %struct.max77693_charger, %struct.max77693_charger* %32, i32 0, i32 1
  store %struct.max77693_dev* %31, %struct.max77693_dev** %33, align 8
  %34 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %35 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %34, i32 0, i32 0
  %36 = load %struct.max77693_charger*, %struct.max77693_charger** %4, align 8
  %37 = call i32 @max77693_dt_init(%struct.TYPE_7__* %35, %struct.max77693_charger* %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %23
  %41 = load i32, i32* %7, align 4
  store i32 %41, i32* %2, align 4
  br label %112

42:                                               ; preds = %23
  %43 = load %struct.max77693_charger*, %struct.max77693_charger** %4, align 8
  %44 = call i32 @max77693_reg_init(%struct.max77693_charger* %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load i32, i32* %7, align 4
  store i32 %48, i32* %2, align 4
  br label %112

49:                                               ; preds = %42
  %50 = load %struct.max77693_charger*, %struct.max77693_charger** %4, align 8
  %51 = getelementptr inbounds %struct.power_supply_config, %struct.power_supply_config* %5, i32 0, i32 0
  store %struct.max77693_charger* %50, %struct.max77693_charger** %51, align 8
  %52 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %53 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %52, i32 0, i32 0
  %54 = call i32 @device_create_file(%struct.TYPE_7__* %53, i32* @dev_attr_fast_charge_timer)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %49
  %58 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %59 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %58, i32 0, i32 0
  %60 = call i32 @dev_err(%struct.TYPE_7__* %59, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %101

61:                                               ; preds = %49
  %62 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %63 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %62, i32 0, i32 0
  %64 = call i32 @device_create_file(%struct.TYPE_7__* %63, i32* @dev_attr_top_off_threshold_current)
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %7, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %61
  %68 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %69 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %68, i32 0, i32 0
  %70 = call i32 @dev_err(%struct.TYPE_7__* %69, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  br label %101

71:                                               ; preds = %61
  %72 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %73 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %72, i32 0, i32 0
  %74 = call i32 @device_create_file(%struct.TYPE_7__* %73, i32* @dev_attr_top_off_timer)
  store i32 %74, i32* %7, align 4
  %75 = load i32, i32* %7, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %71
  %78 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %79 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %78, i32 0, i32 0
  %80 = call i32 @dev_err(%struct.TYPE_7__* %79, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  br label %101

81:                                               ; preds = %71
  %82 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %83 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %82, i32 0, i32 0
  %84 = call i32 @power_supply_register(%struct.TYPE_7__* %83, i32* @max77693_charger_desc, %struct.power_supply_config* %5)
  %85 = load %struct.max77693_charger*, %struct.max77693_charger** %4, align 8
  %86 = getelementptr inbounds %struct.max77693_charger, %struct.max77693_charger* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 8
  %87 = load %struct.max77693_charger*, %struct.max77693_charger** %4, align 8
  %88 = getelementptr inbounds %struct.max77693_charger, %struct.max77693_charger* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i64 @IS_ERR(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %100

92:                                               ; preds = %81
  %93 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %94 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %93, i32 0, i32 0
  %95 = call i32 @dev_err(%struct.TYPE_7__* %94, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %96 = load %struct.max77693_charger*, %struct.max77693_charger** %4, align 8
  %97 = getelementptr inbounds %struct.max77693_charger, %struct.max77693_charger* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @PTR_ERR(i32 %98)
  store i32 %99, i32* %7, align 4
  br label %101

100:                                              ; preds = %81
  store i32 0, i32* %2, align 4
  br label %112

101:                                              ; preds = %92, %77, %67, %57
  %102 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %103 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %102, i32 0, i32 0
  %104 = call i32 @device_remove_file(%struct.TYPE_7__* %103, i32* @dev_attr_top_off_timer)
  %105 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %106 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %105, i32 0, i32 0
  %107 = call i32 @device_remove_file(%struct.TYPE_7__* %106, i32* @dev_attr_top_off_threshold_current)
  %108 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %109 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %108, i32 0, i32 0
  %110 = call i32 @device_remove_file(%struct.TYPE_7__* %109, i32* @dev_attr_fast_charge_timer)
  %111 = load i32, i32* %7, align 4
  store i32 %111, i32* %2, align 4
  br label %112

112:                                              ; preds = %101, %100, %47, %40, %20
  %113 = load i32, i32* %2, align 4
  ret i32 %113
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.max77693_dev* @dev_get_drvdata(i32) #2

declare dso_local %struct.max77693_charger* @devm_kzalloc(%struct.TYPE_7__*, i32, i32) #2

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.max77693_charger*) #2

declare dso_local i32 @max77693_dt_init(%struct.TYPE_7__*, %struct.max77693_charger*) #2

declare dso_local i32 @max77693_reg_init(%struct.max77693_charger*) #2

declare dso_local i32 @device_create_file(%struct.TYPE_7__*, i32*) #2

declare dso_local i32 @dev_err(%struct.TYPE_7__*, i8*) #2

declare dso_local i32 @power_supply_register(%struct.TYPE_7__*, i32*, %struct.power_supply_config*) #2

declare dso_local i64 @IS_ERR(i32) #2

declare dso_local i32 @PTR_ERR(i32) #2

declare dso_local i32 @device_remove_file(%struct.TYPE_7__*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
