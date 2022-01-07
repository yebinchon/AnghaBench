; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_wm97xx_battery.c_wm97xx_bat_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_wm97xx_battery.c_wm97xx_bat_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.wm97xx_batt_pdata* }
%struct.wm97xx_batt_pdata = type { i32 }

@bat_work = common dso_local global i32 0, align 4
@bat_psy = common dso_local global i32 0, align 4
@prop = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @wm97xx_bat_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm97xx_bat_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.wm97xx_batt_pdata*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load %struct.wm97xx_batt_pdata*, %struct.wm97xx_batt_pdata** %6, align 8
  store %struct.wm97xx_batt_pdata* %7, %struct.wm97xx_batt_pdata** %3, align 8
  %8 = load %struct.wm97xx_batt_pdata*, %struct.wm97xx_batt_pdata** %3, align 8
  %9 = icmp ne %struct.wm97xx_batt_pdata* %8, null
  br i1 %9, label %10, label %27

10:                                               ; preds = %1
  %11 = load %struct.wm97xx_batt_pdata*, %struct.wm97xx_batt_pdata** %3, align 8
  %12 = getelementptr inbounds %struct.wm97xx_batt_pdata, %struct.wm97xx_batt_pdata* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @gpio_is_valid(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %10
  %17 = load %struct.wm97xx_batt_pdata*, %struct.wm97xx_batt_pdata** %3, align 8
  %18 = getelementptr inbounds %struct.wm97xx_batt_pdata, %struct.wm97xx_batt_pdata* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @gpio_to_irq(i32 %19)
  %21 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %22 = call i32 @free_irq(i32 %20, %struct.platform_device* %21)
  %23 = load %struct.wm97xx_batt_pdata*, %struct.wm97xx_batt_pdata** %3, align 8
  %24 = getelementptr inbounds %struct.wm97xx_batt_pdata, %struct.wm97xx_batt_pdata* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @gpio_free(i32 %25)
  br label %27

27:                                               ; preds = %16, %10, %1
  %28 = call i32 @cancel_work_sync(i32* @bat_work)
  %29 = load i32, i32* @bat_psy, align 4
  %30 = call i32 @power_supply_unregister(i32 %29)
  %31 = load i32, i32* @prop, align 4
  %32 = call i32 @kfree(i32 %31)
  ret i32 0
}

declare dso_local i64 @gpio_is_valid(i32) #1

declare dso_local i32 @free_irq(i32, %struct.platform_device*) #1

declare dso_local i32 @gpio_to_irq(i32) #1

declare dso_local i32 @gpio_free(i32) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @power_supply_unregister(i32) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
