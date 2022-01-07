; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_compal-laptop.c_bat_health.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_compal-laptop.c_bat_health.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BAT_STOP_CHARGE1 = common dso_local global i32 0, align 4
@BAT_STOP_CHRG1_OVERTEMPERATURE = common dso_local global i32 0, align 4
@POWER_SUPPLY_HEALTH_OVERHEAT = common dso_local global i32 0, align 4
@BAT_STOP_CHRG1_OVERVOLTAGE = common dso_local global i32 0, align 4
@POWER_SUPPLY_HEALTH_OVERVOLTAGE = common dso_local global i32 0, align 4
@BAT_STOP_CHRG1_BAD_CELL = common dso_local global i32 0, align 4
@POWER_SUPPLY_HEALTH_DEAD = common dso_local global i32 0, align 4
@BAT_STOP_CHRG1_COMM_FAIL = common dso_local global i32 0, align 4
@POWER_SUPPLY_HEALTH_UNKNOWN = common dso_local global i32 0, align 4
@POWER_SUPPLY_HEALTH_GOOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @bat_health to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bat_health() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @BAT_STOP_CHARGE1, align 4
  %4 = call i32 @ec_read_u8(i32 %3)
  store i32 %4, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* @BAT_STOP_CHRG1_OVERTEMPERATURE, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %0
  %10 = load i32, i32* @POWER_SUPPLY_HEALTH_OVERHEAT, align 4
  store i32 %10, i32* %1, align 4
  br label %34

11:                                               ; preds = %0
  %12 = load i32, i32* %2, align 4
  %13 = load i32, i32* @BAT_STOP_CHRG1_OVERVOLTAGE, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = load i32, i32* @POWER_SUPPLY_HEALTH_OVERVOLTAGE, align 4
  store i32 %17, i32* %1, align 4
  br label %34

18:                                               ; preds = %11
  %19 = load i32, i32* %2, align 4
  %20 = load i32, i32* @BAT_STOP_CHRG1_BAD_CELL, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* @POWER_SUPPLY_HEALTH_DEAD, align 4
  store i32 %24, i32* %1, align 4
  br label %34

25:                                               ; preds = %18
  %26 = load i32, i32* %2, align 4
  %27 = load i32, i32* @BAT_STOP_CHRG1_COMM_FAIL, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* @POWER_SUPPLY_HEALTH_UNKNOWN, align 4
  store i32 %31, i32* %1, align 4
  br label %34

32:                                               ; preds = %25
  %33 = load i32, i32* @POWER_SUPPLY_HEALTH_GOOD, align 4
  store i32 %33, i32* %1, align 4
  br label %34

34:                                               ; preds = %32, %30, %23, %16, %9
  %35 = load i32, i32* %1, align 4
  ret i32 %35
}

declare dso_local i32 @ec_read_u8(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
