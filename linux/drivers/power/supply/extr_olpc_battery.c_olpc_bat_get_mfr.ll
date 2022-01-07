; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_olpc_battery.c_olpc_bat_get_mfr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_olpc_battery.c_olpc_bat_get_mfr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.power_supply_propval = type { i8* }

@BAT_ADDR_MFR_TYPE = common dso_local global i32 0, align 4
@EC_BAT_EEPROM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"Gold Peak\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"BYD\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%union.power_supply_propval*)* @olpc_bat_get_mfr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @olpc_bat_get_mfr(%union.power_supply_propval* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %union.power_supply_propval*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %union.power_supply_propval* %0, %union.power_supply_propval** %3, align 8
  %6 = load i32, i32* @BAT_ADDR_MFR_TYPE, align 4
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* @EC_BAT_EEPROM, align 4
  %8 = call i32 @olpc_ec_cmd(i32 %7, i32* %4, i32 1, i32* %4, i32 1)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %5, align 4
  store i32 %12, i32* %2, align 4
  br label %27

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  %15 = ashr i32 %14, 4
  switch i32 %15, label %22 [
    i32 1, label %16
    i32 2, label %19
  ]

16:                                               ; preds = %13
  %17 = load %union.power_supply_propval*, %union.power_supply_propval** %3, align 8
  %18 = bitcast %union.power_supply_propval* %17 to i8**
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %18, align 8
  br label %25

19:                                               ; preds = %13
  %20 = load %union.power_supply_propval*, %union.power_supply_propval** %3, align 8
  %21 = bitcast %union.power_supply_propval* %20 to i8**
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %21, align 8
  br label %25

22:                                               ; preds = %13
  %23 = load %union.power_supply_propval*, %union.power_supply_propval** %3, align 8
  %24 = bitcast %union.power_supply_propval* %23 to i8**
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8** %24, align 8
  br label %25

25:                                               ; preds = %22, %19, %16
  %26 = load i32, i32* %5, align 4
  store i32 %26, i32* %2, align 4
  br label %27

27:                                               ; preds = %25, %11
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i32 @olpc_ec_cmd(i32, i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
