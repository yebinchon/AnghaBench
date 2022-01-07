; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_tps65090-charger.c_tps65090_charger_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_tps65090-charger.c_tps65090_charger_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.tps65090_charger = type { i32, i32, i32 }

@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @tps65090_charger_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tps65090_charger_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.tps65090_charger*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = call %struct.tps65090_charger* @platform_get_drvdata(%struct.platform_device* %4)
  store %struct.tps65090_charger* %5, %struct.tps65090_charger** %3, align 8
  %6 = load %struct.tps65090_charger*, %struct.tps65090_charger** %3, align 8
  %7 = getelementptr inbounds %struct.tps65090_charger, %struct.tps65090_charger* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @ENXIO, align 4
  %10 = sub nsw i32 0, %9
  %11 = icmp eq i32 %8, %10
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load %struct.tps65090_charger*, %struct.tps65090_charger** %3, align 8
  %14 = getelementptr inbounds %struct.tps65090_charger, %struct.tps65090_charger* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @kthread_stop(i32 %15)
  br label %17

17:                                               ; preds = %12, %1
  %18 = load %struct.tps65090_charger*, %struct.tps65090_charger** %3, align 8
  %19 = getelementptr inbounds %struct.tps65090_charger, %struct.tps65090_charger* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @power_supply_unregister(i32 %20)
  ret i32 0
}

declare dso_local %struct.tps65090_charger* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @kthread_stop(i32) #1

declare dso_local i32 @power_supply_unregister(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
