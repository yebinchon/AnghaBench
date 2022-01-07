; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_collie_battery.c_collie_bat_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_collie_battery.c_collie_bat_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i8*, i32 }
%struct.ucb1x00_dev = type { %struct.TYPE_5__* }
%struct.power_supply_config = type { %struct.TYPE_6__* }

@ENODEV = common dso_local global i32 0, align 4
@ucb = common dso_local global %struct.TYPE_5__* null, align 8
@collie_batt_gpios = common dso_local global i32 0, align 4
@collie_bat_main = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@bat_work = common dso_local global i32 0, align 4
@collie_bat_work = common dso_local global i32 0, align 4
@collie_bat_main_desc = common dso_local global i32 0, align 4
@collie_bat_bu = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@collie_bat_bu_desc = common dso_local global i32 0, align 4
@COLLIE_GPIO_CO = common dso_local global i32 0, align 4
@collie_bat_gpio_isr = common dso_local global i32 0, align 4
@IRQF_TRIGGER_RISING = common dso_local global i32 0, align 4
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"main full\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ucb1x00_dev*)* @collie_bat_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @collie_bat_probe(%struct.ucb1x00_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ucb1x00_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.power_supply_config, align 8
  %6 = alloca %struct.power_supply_config, align 8
  store %struct.ucb1x00_dev* %0, %struct.ucb1x00_dev** %3, align 8
  %7 = bitcast %struct.power_supply_config* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %7, i8 0, i64 8, i1 false)
  %8 = bitcast %struct.power_supply_config* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %8, i8 0, i64 8, i1 false)
  %9 = call i32 (...) @machine_is_collie()
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENODEV, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %84

14:                                               ; preds = %1
  %15 = load %struct.ucb1x00_dev*, %struct.ucb1x00_dev** %3, align 8
  %16 = getelementptr inbounds %struct.ucb1x00_dev, %struct.ucb1x00_dev* %15, i32 0, i32 0
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  store %struct.TYPE_5__* %17, %struct.TYPE_5__** @ucb, align 8
  %18 = load i32, i32* @collie_batt_gpios, align 4
  %19 = load i32, i32* @collie_batt_gpios, align 4
  %20 = call i32 @ARRAY_SIZE(i32 %19)
  %21 = call i32 @gpio_request_array(i32 %18, i32 %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %14
  %25 = load i32, i32* %4, align 4
  store i32 %25, i32* %2, align 4
  br label %84

26:                                               ; preds = %14
  %27 = call i32 @mutex_init(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @collie_bat_main, i32 0, i32 1))
  %28 = load i32, i32* @collie_bat_work, align 4
  %29 = call i32 @INIT_WORK(i32* @bat_work, i32 %28)
  %30 = getelementptr inbounds %struct.power_supply_config, %struct.power_supply_config* %5, i32 0, i32 0
  store %struct.TYPE_6__* @collie_bat_main, %struct.TYPE_6__** %30, align 8
  %31 = load %struct.ucb1x00_dev*, %struct.ucb1x00_dev** %3, align 8
  %32 = getelementptr inbounds %struct.ucb1x00_dev, %struct.ucb1x00_dev* %31, i32 0, i32 0
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = call i8* @power_supply_register(i32* %34, i32* @collie_bat_main_desc, %struct.power_supply_config* %5)
  store i8* %35, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @collie_bat_main, i32 0, i32 0), align 8
  %36 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @collie_bat_main, i32 0, i32 0), align 8
  %37 = call i64 @IS_ERR(i8* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %26
  %40 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @collie_bat_main, i32 0, i32 0), align 8
  %41 = call i32 @PTR_ERR(i8* %40)
  store i32 %41, i32* %4, align 4
  br label %77

42:                                               ; preds = %26
  %43 = getelementptr inbounds %struct.power_supply_config, %struct.power_supply_config* %6, i32 0, i32 0
  store %struct.TYPE_6__* @collie_bat_bu, %struct.TYPE_6__** %43, align 8
  %44 = load %struct.ucb1x00_dev*, %struct.ucb1x00_dev** %3, align 8
  %45 = getelementptr inbounds %struct.ucb1x00_dev, %struct.ucb1x00_dev* %44, i32 0, i32 0
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = call i8* @power_supply_register(i32* %47, i32* @collie_bat_bu_desc, %struct.power_supply_config* %6)
  store i8* %48, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @collie_bat_bu, i32 0, i32 0), align 8
  %49 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @collie_bat_bu, i32 0, i32 0), align 8
  %50 = call i64 @IS_ERR(i8* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %42
  %53 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @collie_bat_bu, i32 0, i32 0), align 8
  %54 = call i32 @PTR_ERR(i8* %53)
  store i32 %54, i32* %4, align 4
  br label %74

55:                                               ; preds = %42
  %56 = load i32, i32* @COLLIE_GPIO_CO, align 4
  %57 = call i32 @gpio_to_irq(i32 %56)
  %58 = load i32, i32* @collie_bat_gpio_isr, align 4
  %59 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %60 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %61 = or i32 %59, %60
  %62 = call i32 @request_irq(i32 %57, i32 %58, i32 %61, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), %struct.TYPE_6__* @collie_bat_main)
  store i32 %62, i32* %4, align 4
  %63 = load i32, i32* %4, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %55
  br label %71

66:                                               ; preds = %55
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ucb, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = call i32 @device_init_wakeup(i32* %68, i32 1)
  %70 = call i32 @schedule_work(i32* @bat_work)
  store i32 0, i32* %2, align 4
  br label %84

71:                                               ; preds = %65
  %72 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @collie_bat_bu, i32 0, i32 0), align 8
  %73 = call i32 @power_supply_unregister(i8* %72)
  br label %74

74:                                               ; preds = %71, %52
  %75 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @collie_bat_main, i32 0, i32 0), align 8
  %76 = call i32 @power_supply_unregister(i8* %75)
  br label %77

77:                                               ; preds = %74, %39
  %78 = call i32 @cancel_work_sync(i32* @bat_work)
  %79 = load i32, i32* @collie_batt_gpios, align 4
  %80 = load i32, i32* @collie_batt_gpios, align 4
  %81 = call i32 @ARRAY_SIZE(i32 %80)
  %82 = call i32 @gpio_free_array(i32 %79, i32 %81)
  %83 = load i32, i32* %4, align 4
  store i32 %83, i32* %2, align 4
  br label %84

84:                                               ; preds = %77, %66, %24, %11
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @machine_is_collie(...) #2

declare dso_local i32 @gpio_request_array(i32, i32) #2

declare dso_local i32 @ARRAY_SIZE(i32) #2

declare dso_local i32 @mutex_init(i32*) #2

declare dso_local i32 @INIT_WORK(i32*, i32) #2

declare dso_local i8* @power_supply_register(i32*, i32*, %struct.power_supply_config*) #2

declare dso_local i64 @IS_ERR(i8*) #2

declare dso_local i32 @PTR_ERR(i8*) #2

declare dso_local i32 @request_irq(i32, i32, i32, i8*, %struct.TYPE_6__*) #2

declare dso_local i32 @gpio_to_irq(i32) #2

declare dso_local i32 @device_init_wakeup(i32*, i32) #2

declare dso_local i32 @schedule_work(i32*) #2

declare dso_local i32 @power_supply_unregister(i8*) #2

declare dso_local i32 @cancel_work_sync(i32*) #2

declare dso_local i32 @gpio_free_array(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
