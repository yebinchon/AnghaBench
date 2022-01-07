; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_tosa_battery.c_tosa_bat_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_tosa_battery.c_tosa_bat_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.platform_device = type { i32 }

@TOSA_GPIO_JACKET_DETECT = common dso_local global i32 0, align 4
@tosa_bat_jacket = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@TOSA_GPIO_BAT1_CRG = common dso_local global i32 0, align 4
@TOSA_GPIO_BAT0_CRG = common dso_local global i32 0, align 4
@tosa_bat_main = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@tosa_bat_bu = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@bat_work = common dso_local global i32 0, align 4
@tosa_bat_gpios = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @tosa_bat_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tosa_bat_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %3 = load i32, i32* @TOSA_GPIO_JACKET_DETECT, align 4
  %4 = call i32 @gpio_to_irq(i32 %3)
  %5 = call i32 @free_irq(i32 %4, %struct.TYPE_5__* @tosa_bat_jacket)
  %6 = load i32, i32* @TOSA_GPIO_BAT1_CRG, align 4
  %7 = call i32 @gpio_to_irq(i32 %6)
  %8 = call i32 @free_irq(i32 %7, %struct.TYPE_5__* @tosa_bat_jacket)
  %9 = load i32, i32* @TOSA_GPIO_BAT0_CRG, align 4
  %10 = call i32 @gpio_to_irq(i32 %9)
  %11 = call i32 @free_irq(i32 %10, %struct.TYPE_5__* @tosa_bat_main)
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @tosa_bat_bu, i32 0, i32 0), align 4
  %13 = call i32 @power_supply_unregister(i32 %12)
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @tosa_bat_jacket, i32 0, i32 0), align 4
  %15 = call i32 @power_supply_unregister(i32 %14)
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @tosa_bat_main, i32 0, i32 0), align 4
  %17 = call i32 @power_supply_unregister(i32 %16)
  %18 = call i32 @cancel_work_sync(i32* @bat_work)
  %19 = load i32, i32* @tosa_bat_gpios, align 4
  %20 = load i32, i32* @tosa_bat_gpios, align 4
  %21 = call i32 @ARRAY_SIZE(i32 %20)
  %22 = call i32 @gpio_free_array(i32 %19, i32 %21)
  ret i32 0
}

declare dso_local i32 @free_irq(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @gpio_to_irq(i32) #1

declare dso_local i32 @power_supply_unregister(i32) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @gpio_free_array(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
