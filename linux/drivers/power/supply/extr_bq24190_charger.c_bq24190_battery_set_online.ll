; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq24190_charger.c_bq24190_battery_set_online.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq24190_charger.c_bq24190_battery_set_online.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bq24190_dev_info = type { i32 }
%union.power_supply_propval = type { i32 }

@BQ24190_REG_MOC = common dso_local global i32 0, align 4
@BQ24190_REG_MOC_BATFET_DISABLE_MASK = common dso_local global i32 0, align 4
@BQ24190_REG_MOC_BATFET_DISABLE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bq24190_dev_info*, %union.power_supply_propval*)* @bq24190_battery_set_online to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bq24190_battery_set_online(%struct.bq24190_dev_info* %0, %union.power_supply_propval* %1) #0 {
  %3 = alloca %struct.bq24190_dev_info*, align 8
  %4 = alloca %union.power_supply_propval*, align 8
  store %struct.bq24190_dev_info* %0, %struct.bq24190_dev_info** %3, align 8
  store %union.power_supply_propval* %1, %union.power_supply_propval** %4, align 8
  %5 = load %struct.bq24190_dev_info*, %struct.bq24190_dev_info** %3, align 8
  %6 = load i32, i32* @BQ24190_REG_MOC, align 4
  %7 = load i32, i32* @BQ24190_REG_MOC_BATFET_DISABLE_MASK, align 4
  %8 = load i32, i32* @BQ24190_REG_MOC_BATFET_DISABLE_SHIFT, align 4
  %9 = load %union.power_supply_propval*, %union.power_supply_propval** %4, align 8
  %10 = bitcast %union.power_supply_propval* %9 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @bq24190_write_mask(%struct.bq24190_dev_info* %5, i32 %6, i32 %7, i32 %8, i32 %14)
  ret i32 %15
}

declare dso_local i32 @bq24190_write_mask(%struct.bq24190_dev_info*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
