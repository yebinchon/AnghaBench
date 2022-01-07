; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_olpc_battery.c_olpc_bat_get_charge_full_design.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_olpc_battery.c_olpc_bat_get_charge_full_design.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.power_supply_propval = type { i32 }

@BAT_ADDR_MFR_TYPE = common dso_local global i32 0, align 4
@EC_BAT_EEPROM = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%union.power_supply_propval*)* @olpc_bat_get_charge_full_design to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @olpc_bat_get_charge_full_design(%union.power_supply_propval* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %union.power_supply_propval*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %union.power_supply_propval, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %union.power_supply_propval* %0, %union.power_supply_propval** %3, align 8
  %8 = call i32 @olpc_bat_get_tech(%union.power_supply_propval* %5)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %6, align 4
  store i32 %12, i32* %2, align 4
  br label %49

13:                                               ; preds = %1
  %14 = load i32, i32* @BAT_ADDR_MFR_TYPE, align 4
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* @EC_BAT_EEPROM, align 4
  %16 = call i32 @olpc_ec_cmd(i32 %15, i32* %4, i32 1, i32* %4, i32 1)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %2, align 4
  br label %49

21:                                               ; preds = %13
  %22 = load i32, i32* %4, align 4
  %23 = ashr i32 %22, 4
  store i32 %23, i32* %7, align 4
  %24 = bitcast %union.power_supply_propval* %5 to i32*
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %44 [
    i32 128, label %26
    i32 129, label %35
  ]

26:                                               ; preds = %21
  %27 = load i32, i32* %7, align 4
  switch i32 %27, label %31 [
    i32 1, label %28
  ]

28:                                               ; preds = %26
  %29 = load %union.power_supply_propval*, %union.power_supply_propval** %3, align 8
  %30 = bitcast %union.power_supply_propval* %29 to i32*
  store i32 2400000, i32* %30, align 4
  br label %34

31:                                               ; preds = %26
  %32 = load i32, i32* @EIO, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %49

34:                                               ; preds = %28
  br label %47

35:                                               ; preds = %21
  %36 = load i32, i32* %7, align 4
  switch i32 %36, label %40 [
    i32 1, label %37
    i32 2, label %37
  ]

37:                                               ; preds = %35, %35
  %38 = load %union.power_supply_propval*, %union.power_supply_propval** %3, align 8
  %39 = bitcast %union.power_supply_propval* %38 to i32*
  store i32 2800000, i32* %39, align 4
  br label %43

40:                                               ; preds = %35
  %41 = load i32, i32* @EIO, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %49

43:                                               ; preds = %37
  br label %47

44:                                               ; preds = %21
  %45 = load i32, i32* @EIO, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %49

47:                                               ; preds = %43, %34
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %2, align 4
  br label %49

49:                                               ; preds = %47, %44, %40, %31, %19, %11
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i32 @olpc_bat_get_tech(%union.power_supply_propval*) #1

declare dso_local i32 @olpc_ec_cmd(i32, i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
