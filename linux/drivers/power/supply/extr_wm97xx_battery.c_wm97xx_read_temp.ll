; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_wm97xx_battery.c_wm97xx_read_temp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_wm97xx_battery.c_wm97xx_read_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.power_supply = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.wm97xx_batt_pdata = type { i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.power_supply*)* @wm97xx_read_temp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @wm97xx_read_temp(%struct.power_supply* %0) #0 {
  %2 = alloca %struct.power_supply*, align 8
  %3 = alloca %struct.wm97xx_batt_pdata*, align 8
  store %struct.power_supply* %0, %struct.power_supply** %2, align 8
  %4 = load %struct.power_supply*, %struct.power_supply** %2, align 8
  %5 = call %struct.wm97xx_batt_pdata* @power_supply_get_drvdata(%struct.power_supply* %4)
  store %struct.wm97xx_batt_pdata* %5, %struct.wm97xx_batt_pdata** %3, align 8
  %6 = load %struct.power_supply*, %struct.power_supply** %2, align 8
  %7 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @dev_get_drvdata(i32 %9)
  %11 = load %struct.wm97xx_batt_pdata*, %struct.wm97xx_batt_pdata** %3, align 8
  %12 = getelementptr inbounds %struct.wm97xx_batt_pdata, %struct.wm97xx_batt_pdata* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = call i64 @wm97xx_read_aux_adc(i32 %10, i32 %13)
  %15 = load %struct.wm97xx_batt_pdata*, %struct.wm97xx_batt_pdata** %3, align 8
  %16 = getelementptr inbounds %struct.wm97xx_batt_pdata, %struct.wm97xx_batt_pdata* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = mul i64 %14, %17
  %19 = load %struct.wm97xx_batt_pdata*, %struct.wm97xx_batt_pdata** %3, align 8
  %20 = getelementptr inbounds %struct.wm97xx_batt_pdata, %struct.wm97xx_batt_pdata* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = udiv i64 %18, %21
  ret i64 %22
}

declare dso_local %struct.wm97xx_batt_pdata* @power_supply_get_drvdata(%struct.power_supply*) #1

declare dso_local i64 @wm97xx_read_aux_adc(i32, i32) #1

declare dso_local i32 @dev_get_drvdata(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
