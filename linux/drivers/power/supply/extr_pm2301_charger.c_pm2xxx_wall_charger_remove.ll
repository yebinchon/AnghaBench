; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_pm2301_charger.c_pm2xxx_wall_charger_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_pm2301_charger.c_pm2xxx_wall_charger_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.pm2xxx_charger = type { i32, %struct.TYPE_4__, i32, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @pm2xxx_wall_charger_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm2xxx_wall_charger_remove(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.pm2xxx_charger*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %4 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %5 = call %struct.pm2xxx_charger* @i2c_get_clientdata(%struct.i2c_client* %4)
  store %struct.pm2xxx_charger* %5, %struct.pm2xxx_charger** %3, align 8
  %6 = load %struct.pm2xxx_charger*, %struct.pm2xxx_charger** %3, align 8
  %7 = getelementptr inbounds %struct.pm2xxx_charger, %struct.pm2xxx_charger* %6, i32 0, i32 5
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @pm_runtime_disable(i32 %8)
  %10 = load %struct.pm2xxx_charger*, %struct.pm2xxx_charger** %3, align 8
  %11 = getelementptr inbounds %struct.pm2xxx_charger, %struct.pm2xxx_charger* %10, i32 0, i32 1
  %12 = call i32 @pm2xxx_charger_ac_en(%struct.TYPE_4__* %11, i32 0, i32 0, i32 0)
  %13 = load %struct.pm2xxx_charger*, %struct.pm2xxx_charger** %3, align 8
  %14 = getelementptr inbounds %struct.pm2xxx_charger, %struct.pm2xxx_charger* %13, i32 0, i32 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @gpio_to_irq(i32 %17)
  %19 = call i32 @disable_irq_wake(i32 %18)
  %20 = load %struct.pm2xxx_charger*, %struct.pm2xxx_charger** %3, align 8
  %21 = getelementptr inbounds %struct.pm2xxx_charger, %struct.pm2xxx_charger* %20, i32 0, i32 4
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @gpio_to_irq(i32 %24)
  %26 = load %struct.pm2xxx_charger*, %struct.pm2xxx_charger** %3, align 8
  %27 = call i32 @free_irq(i32 %25, %struct.pm2xxx_charger* %26)
  %28 = load %struct.pm2xxx_charger*, %struct.pm2xxx_charger** %3, align 8
  %29 = getelementptr inbounds %struct.pm2xxx_charger, %struct.pm2xxx_charger* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @destroy_workqueue(i32 %30)
  %32 = call i32 (...) @flush_scheduled_work()
  %33 = load %struct.pm2xxx_charger*, %struct.pm2xxx_charger** %3, align 8
  %34 = getelementptr inbounds %struct.pm2xxx_charger, %struct.pm2xxx_charger* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @regulator_put(i32 %35)
  %37 = load %struct.pm2xxx_charger*, %struct.pm2xxx_charger** %3, align 8
  %38 = getelementptr inbounds %struct.pm2xxx_charger, %struct.pm2xxx_charger* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @power_supply_unregister(i32 %40)
  %42 = load %struct.pm2xxx_charger*, %struct.pm2xxx_charger** %3, align 8
  %43 = getelementptr inbounds %struct.pm2xxx_charger, %struct.pm2xxx_charger* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i64 @gpio_is_valid(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %1
  %48 = load %struct.pm2xxx_charger*, %struct.pm2xxx_charger** %3, align 8
  %49 = getelementptr inbounds %struct.pm2xxx_charger, %struct.pm2xxx_charger* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @gpio_free(i32 %50)
  br label %52

52:                                               ; preds = %47, %1
  %53 = load %struct.pm2xxx_charger*, %struct.pm2xxx_charger** %3, align 8
  %54 = call i32 @kfree(%struct.pm2xxx_charger* %53)
  ret i32 0
}

declare dso_local %struct.pm2xxx_charger* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @pm_runtime_disable(i32) #1

declare dso_local i32 @pm2xxx_charger_ac_en(%struct.TYPE_4__*, i32, i32, i32) #1

declare dso_local i32 @disable_irq_wake(i32) #1

declare dso_local i32 @gpio_to_irq(i32) #1

declare dso_local i32 @free_irq(i32, %struct.pm2xxx_charger*) #1

declare dso_local i32 @destroy_workqueue(i32) #1

declare dso_local i32 @flush_scheduled_work(...) #1

declare dso_local i32 @regulator_put(i32) #1

declare dso_local i32 @power_supply_unregister(i32) #1

declare dso_local i64 @gpio_is_valid(i32) #1

declare dso_local i32 @gpio_free(i32) #1

declare dso_local i32 @kfree(%struct.pm2xxx_charger*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
