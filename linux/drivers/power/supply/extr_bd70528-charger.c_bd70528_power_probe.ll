; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_bd70528-charger.c_bd70528_power_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_bd70528-charger.c_bd70528_power_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.bd70528_psy = type { i32, %struct.TYPE_5__*, i32 }
%struct.power_supply_config = type { i32, %struct.bd70528_psy* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"No regmap found for chip\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@bd70528_charger_desc = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"failed: power supply register\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @bd70528_power_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bd70528_power_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.bd70528_psy*, align 8
  %5 = alloca %struct.power_supply_config, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = bitcast %struct.power_supply_config* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %6, i8 0, i64 16, i1 false)
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.bd70528_psy* @devm_kzalloc(%struct.TYPE_5__* %8, i32 24, i32 %9)
  store %struct.bd70528_psy* %10, %struct.bd70528_psy** %4, align 8
  %11 = load %struct.bd70528_psy*, %struct.bd70528_psy** %4, align 8
  %12 = icmp ne %struct.bd70528_psy* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %73

16:                                               ; preds = %1
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = call i32 @dev_get_regmap(%struct.TYPE_6__* %20, i32* null)
  %22 = load %struct.bd70528_psy*, %struct.bd70528_psy** %4, align 8
  %23 = getelementptr inbounds %struct.bd70528_psy, %struct.bd70528_psy* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 8
  %24 = load %struct.bd70528_psy*, %struct.bd70528_psy** %4, align 8
  %25 = getelementptr inbounds %struct.bd70528_psy, %struct.bd70528_psy* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %16
  %29 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %30 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %29, i32 0, i32 0
  %31 = call i32 @dev_err(%struct.TYPE_5__* %30, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %73

34:                                               ; preds = %16
  %35 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %36 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %35, i32 0, i32 0
  %37 = load %struct.bd70528_psy*, %struct.bd70528_psy** %4, align 8
  %38 = getelementptr inbounds %struct.bd70528_psy, %struct.bd70528_psy* %37, i32 0, i32 1
  store %struct.TYPE_5__* %36, %struct.TYPE_5__** %38, align 8
  %39 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %40 = load %struct.bd70528_psy*, %struct.bd70528_psy** %4, align 8
  %41 = call i32 @platform_set_drvdata(%struct.platform_device* %39, %struct.bd70528_psy* %40)
  %42 = load %struct.bd70528_psy*, %struct.bd70528_psy** %4, align 8
  %43 = getelementptr inbounds %struct.power_supply_config, %struct.power_supply_config* %5, i32 0, i32 1
  store %struct.bd70528_psy* %42, %struct.bd70528_psy** %43, align 8
  %44 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %45 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds %struct.power_supply_config, %struct.power_supply_config* %5, i32 0, i32 0
  store i32 %49, i32* %50, align 8
  %51 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %52 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %51, i32 0, i32 0
  %53 = call i32 @devm_power_supply_register(%struct.TYPE_5__* %52, i32* @bd70528_charger_desc, %struct.power_supply_config* %5)
  %54 = load %struct.bd70528_psy*, %struct.bd70528_psy** %4, align 8
  %55 = getelementptr inbounds %struct.bd70528_psy, %struct.bd70528_psy* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load %struct.bd70528_psy*, %struct.bd70528_psy** %4, align 8
  %57 = getelementptr inbounds %struct.bd70528_psy, %struct.bd70528_psy* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i64 @IS_ERR(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %34
  %62 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %63 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %62, i32 0, i32 0
  %64 = call i32 @dev_err(%struct.TYPE_5__* %63, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %65 = load %struct.bd70528_psy*, %struct.bd70528_psy** %4, align 8
  %66 = getelementptr inbounds %struct.bd70528_psy, %struct.bd70528_psy* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @PTR_ERR(i32 %67)
  store i32 %68, i32* %2, align 4
  br label %73

69:                                               ; preds = %34
  %70 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %71 = load %struct.bd70528_psy*, %struct.bd70528_psy** %4, align 8
  %72 = call i32 @bd70528_get_irqs(%struct.platform_device* %70, %struct.bd70528_psy* %71)
  store i32 %72, i32* %2, align 4
  br label %73

73:                                               ; preds = %69, %61, %28, %13
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.bd70528_psy* @devm_kzalloc(%struct.TYPE_5__*, i32, i32) #2

declare dso_local i32 @dev_get_regmap(%struct.TYPE_6__*, i32*) #2

declare dso_local i32 @dev_err(%struct.TYPE_5__*, i8*) #2

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.bd70528_psy*) #2

declare dso_local i32 @devm_power_supply_register(%struct.TYPE_5__*, i32*, %struct.power_supply_config*) #2

declare dso_local i64 @IS_ERR(i32) #2

declare dso_local i32 @PTR_ERR(i32) #2

declare dso_local i32 @bd70528_get_irqs(%struct.platform_device*, %struct.bd70528_psy*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
