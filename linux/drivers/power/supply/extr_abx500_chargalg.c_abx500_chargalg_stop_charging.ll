; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_abx500_chargalg.c_abx500_chargalg_stop_charging.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_abx500_chargalg.c_abx500_chargalg_stop_charging.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.abx500_chargalg = type { i32, i32, i32, i32 }

@POWER_SUPPLY_STATUS_NOT_CHARGING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.abx500_chargalg*)* @abx500_chargalg_stop_charging to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @abx500_chargalg_stop_charging(%struct.abx500_chargalg* %0) #0 {
  %2 = alloca %struct.abx500_chargalg*, align 8
  store %struct.abx500_chargalg* %0, %struct.abx500_chargalg** %2, align 8
  %3 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %4 = call i32 @abx500_chargalg_ac_en(%struct.abx500_chargalg* %3, i32 0, i32 0, i32 0)
  %5 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %6 = call i32 @abx500_chargalg_usb_en(%struct.abx500_chargalg* %5, i32 0, i32 0, i32 0)
  %7 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %8 = call i32 @abx500_chargalg_stop_safety_timer(%struct.abx500_chargalg* %7)
  %9 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %10 = call i32 @abx500_chargalg_stop_maintenance_timer(%struct.abx500_chargalg* %9)
  %11 = load i32, i32* @POWER_SUPPLY_STATUS_NOT_CHARGING, align 4
  %12 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %13 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %12, i32 0, i32 3
  store i32 %11, i32* %13, align 4
  %14 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %15 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %14, i32 0, i32 0
  store i32 0, i32* %15, align 4
  %16 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %17 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %16, i32 0, i32 2
  %18 = call i32 @cancel_delayed_work(i32* %17)
  %19 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %20 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @power_supply_changed(i32 %21)
  ret void
}

declare dso_local i32 @abx500_chargalg_ac_en(%struct.abx500_chargalg*, i32, i32, i32) #1

declare dso_local i32 @abx500_chargalg_usb_en(%struct.abx500_chargalg*, i32, i32, i32) #1

declare dso_local i32 @abx500_chargalg_stop_safety_timer(%struct.abx500_chargalg*) #1

declare dso_local i32 @abx500_chargalg_stop_maintenance_timer(%struct.abx500_chargalg*) #1

declare dso_local i32 @cancel_delayed_work(i32*) #1

declare dso_local i32 @power_supply_changed(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
