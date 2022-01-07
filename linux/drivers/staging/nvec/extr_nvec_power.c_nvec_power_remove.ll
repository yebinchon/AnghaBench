; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/nvec/extr_nvec_power.c_nvec_power_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/nvec/extr_nvec_power.c_nvec_power_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.nvec_power = type { i32, i32, i32 }

@nvec_psy = common dso_local global i32 0, align 4
@nvec_bat_psy = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @nvec_power_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvec_power_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.nvec_power*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = call %struct.nvec_power* @platform_get_drvdata(%struct.platform_device* %4)
  store %struct.nvec_power* %5, %struct.nvec_power** %3, align 8
  %6 = load %struct.nvec_power*, %struct.nvec_power** %3, align 8
  %7 = getelementptr inbounds %struct.nvec_power, %struct.nvec_power* %6, i32 0, i32 2
  %8 = call i32 @cancel_delayed_work_sync(i32* %7)
  %9 = load %struct.nvec_power*, %struct.nvec_power** %3, align 8
  %10 = getelementptr inbounds %struct.nvec_power, %struct.nvec_power* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.nvec_power*, %struct.nvec_power** %3, align 8
  %13 = getelementptr inbounds %struct.nvec_power, %struct.nvec_power* %12, i32 0, i32 0
  %14 = call i32 @nvec_unregister_notifier(i32 %11, i32* %13)
  %15 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %24 [
    i32 129, label %18
    i32 128, label %21
  ]

18:                                               ; preds = %1
  %19 = load i32, i32* @nvec_psy, align 4
  %20 = call i32 @power_supply_unregister(i32 %19)
  br label %24

21:                                               ; preds = %1
  %22 = load i32, i32* @nvec_bat_psy, align 4
  %23 = call i32 @power_supply_unregister(i32 %22)
  br label %24

24:                                               ; preds = %21, %1, %18
  ret i32 0
}

declare dso_local %struct.nvec_power* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @nvec_unregister_notifier(i32, i32*) #1

declare dso_local i32 @power_supply_unregister(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
