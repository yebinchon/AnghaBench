; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_power_supply_core.c_power_supply_batinfo_ocv2cap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_power_supply_core.c_power_supply_batinfo_ocv2cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.power_supply_battery_info = type { i32 }
%struct.power_supply_battery_ocv_table = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @power_supply_batinfo_ocv2cap(%struct.power_supply_battery_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.power_supply_battery_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.power_supply_battery_ocv_table*, align 8
  %9 = alloca i32, align 4
  store %struct.power_supply_battery_info* %0, %struct.power_supply_battery_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.power_supply_battery_info*, %struct.power_supply_battery_info** %5, align 8
  %11 = load i32, i32* %7, align 4
  %12 = call %struct.power_supply_battery_ocv_table* @power_supply_find_ocv2cap_table(%struct.power_supply_battery_info* %10, i32 %11, i32* %9)
  store %struct.power_supply_battery_ocv_table* %12, %struct.power_supply_battery_ocv_table** %8, align 8
  %13 = load %struct.power_supply_battery_ocv_table*, %struct.power_supply_battery_ocv_table** %8, align 8
  %14 = icmp ne %struct.power_supply_battery_ocv_table* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %23

18:                                               ; preds = %3
  %19 = load %struct.power_supply_battery_ocv_table*, %struct.power_supply_battery_ocv_table** %8, align 8
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @power_supply_ocv2cap_simple(%struct.power_supply_battery_ocv_table* %19, i32 %20, i32 %21)
  store i32 %22, i32* %4, align 4
  br label %23

23:                                               ; preds = %18, %15
  %24 = load i32, i32* %4, align 4
  ret i32 %24
}

declare dso_local %struct.power_supply_battery_ocv_table* @power_supply_find_ocv2cap_table(%struct.power_supply_battery_info*, i32, i32*) #1

declare dso_local i32 @power_supply_ocv2cap_simple(%struct.power_supply_battery_ocv_table*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
