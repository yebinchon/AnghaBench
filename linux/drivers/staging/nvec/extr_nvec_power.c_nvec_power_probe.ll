; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/nvec/extr_nvec_power.c_nvec_power_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/nvec/extr_nvec_power.c_nvec_power_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.power_supply = type { i32 }
%struct.power_supply_desc = type { i32 }
%struct.platform_device = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.nvec_power = type { %struct.TYPE_6__, i32, %struct.nvec_chip* }
%struct.TYPE_6__ = type { i32 }
%struct.nvec_chip = type { i32 }
%struct.power_supply_config = type { i32, i32 }

@GFP_NOWAIT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@nvec_psy = common dso_local global %struct.power_supply* null, align 8
@nvec_psy_desc = common dso_local global %struct.power_supply_desc zeroinitializer, align 4
@nvec_power_supplied_to = common dso_local global i32 0, align 4
@nvec_power_notifier = common dso_local global i32 0, align 4
@nvec_power_poll = common dso_local global i32 0, align 4
@nvec_bat_psy = common dso_local global %struct.power_supply* null, align 8
@nvec_bat_psy_desc = common dso_local global %struct.power_supply_desc zeroinitializer, align 4
@nvec_power_bat_notifier = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@NVEC_SYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @nvec_power_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvec_power_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.power_supply**, align 8
  %5 = alloca %struct.power_supply_desc*, align 8
  %6 = alloca %struct.nvec_power*, align 8
  %7 = alloca %struct.nvec_chip*, align 8
  %8 = alloca %struct.power_supply_config, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.nvec_chip* @dev_get_drvdata(i32 %12)
  store %struct.nvec_chip* %13, %struct.nvec_chip** %7, align 8
  %14 = bitcast %struct.power_supply_config* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %14, i8 0, i64 8, i1 false)
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 1
  %17 = load i32, i32* @GFP_NOWAIT, align 4
  %18 = call %struct.nvec_power* @devm_kzalloc(%struct.TYPE_5__* %16, i32 16, i32 %17)
  store %struct.nvec_power* %18, %struct.nvec_power** %6, align 8
  %19 = load %struct.nvec_power*, %struct.nvec_power** %6, align 8
  %20 = icmp ne %struct.nvec_power* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %83

24:                                               ; preds = %1
  %25 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %26 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %25, i32 0, i32 1
  %27 = load %struct.nvec_power*, %struct.nvec_power** %6, align 8
  %28 = call i32 @dev_set_drvdata(%struct.TYPE_5__* %26, %struct.nvec_power* %27)
  %29 = load %struct.nvec_chip*, %struct.nvec_chip** %7, align 8
  %30 = load %struct.nvec_power*, %struct.nvec_power** %6, align 8
  %31 = getelementptr inbounds %struct.nvec_power, %struct.nvec_power* %30, i32 0, i32 2
  store %struct.nvec_chip* %29, %struct.nvec_chip** %31, align 8
  %32 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %33 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  switch i32 %34, label %58 [
    i32 129, label %35
    i32 128, label %53
  ]

35:                                               ; preds = %24
  store %struct.power_supply** @nvec_psy, %struct.power_supply*** %4, align 8
  store %struct.power_supply_desc* @nvec_psy_desc, %struct.power_supply_desc** %5, align 8
  %36 = load i32, i32* @nvec_power_supplied_to, align 4
  %37 = getelementptr inbounds %struct.power_supply_config, %struct.power_supply_config* %8, i32 0, i32 1
  store i32 %36, i32* %37, align 4
  %38 = load i32, i32* @nvec_power_supplied_to, align 4
  %39 = call i32 @ARRAY_SIZE(i32 %38)
  %40 = getelementptr inbounds %struct.power_supply_config, %struct.power_supply_config* %8, i32 0, i32 0
  store i32 %39, i32* %40, align 4
  %41 = load i32, i32* @nvec_power_notifier, align 4
  %42 = load %struct.nvec_power*, %struct.nvec_power** %6, align 8
  %43 = getelementptr inbounds %struct.nvec_power, %struct.nvec_power* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  store i32 %41, i32* %44, align 8
  %45 = load %struct.nvec_power*, %struct.nvec_power** %6, align 8
  %46 = getelementptr inbounds %struct.nvec_power, %struct.nvec_power* %45, i32 0, i32 1
  %47 = load i32, i32* @nvec_power_poll, align 4
  %48 = call i32 @INIT_DELAYED_WORK(i32* %46, i32 %47)
  %49 = load %struct.nvec_power*, %struct.nvec_power** %6, align 8
  %50 = getelementptr inbounds %struct.nvec_power, %struct.nvec_power* %49, i32 0, i32 1
  %51 = call i32 @msecs_to_jiffies(i32 5000)
  %52 = call i32 @schedule_delayed_work(i32* %50, i32 %51)
  br label %61

53:                                               ; preds = %24
  store %struct.power_supply** @nvec_bat_psy, %struct.power_supply*** %4, align 8
  store %struct.power_supply_desc* @nvec_bat_psy_desc, %struct.power_supply_desc** %5, align 8
  %54 = load i32, i32* @nvec_power_bat_notifier, align 4
  %55 = load %struct.nvec_power*, %struct.nvec_power** %6, align 8
  %56 = getelementptr inbounds %struct.nvec_power, %struct.nvec_power* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  store i32 %54, i32* %57, align 8
  br label %61

58:                                               ; preds = %24
  %59 = load i32, i32* @ENODEV, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %2, align 4
  br label %83

61:                                               ; preds = %53, %35
  %62 = load %struct.nvec_chip*, %struct.nvec_chip** %7, align 8
  %63 = load %struct.nvec_power*, %struct.nvec_power** %6, align 8
  %64 = getelementptr inbounds %struct.nvec_power, %struct.nvec_power* %63, i32 0, i32 0
  %65 = load i32, i32* @NVEC_SYS, align 4
  %66 = call i32 @nvec_register_notifier(%struct.nvec_chip* %62, %struct.TYPE_6__* %64, i32 %65)
  %67 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %68 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = icmp eq i32 %69, 128
  br i1 %70, label %71, label %74

71:                                               ; preds = %61
  %72 = load %struct.nvec_power*, %struct.nvec_power** %6, align 8
  %73 = call i32 @get_bat_mfg_data(%struct.nvec_power* %72)
  br label %74

74:                                               ; preds = %71, %61
  %75 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %76 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %75, i32 0, i32 1
  %77 = load %struct.power_supply_desc*, %struct.power_supply_desc** %5, align 8
  %78 = call %struct.power_supply* @power_supply_register(%struct.TYPE_5__* %76, %struct.power_supply_desc* %77, %struct.power_supply_config* %8)
  %79 = load %struct.power_supply**, %struct.power_supply*** %4, align 8
  store %struct.power_supply* %78, %struct.power_supply** %79, align 8
  %80 = load %struct.power_supply**, %struct.power_supply*** %4, align 8
  %81 = load %struct.power_supply*, %struct.power_supply** %80, align 8
  %82 = call i32 @PTR_ERR_OR_ZERO(%struct.power_supply* %81)
  store i32 %82, i32* %2, align 4
  br label %83

83:                                               ; preds = %74, %58, %21
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local %struct.nvec_chip* @dev_get_drvdata(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local %struct.nvec_power* @devm_kzalloc(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.TYPE_5__*, %struct.nvec_power*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @nvec_register_notifier(%struct.nvec_chip*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @get_bat_mfg_data(%struct.nvec_power*) #1

declare dso_local %struct.power_supply* @power_supply_register(%struct.TYPE_5__*, %struct.power_supply_desc*, %struct.power_supply_config*) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.power_supply*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
