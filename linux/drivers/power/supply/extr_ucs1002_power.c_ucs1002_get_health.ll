; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_ucs1002_power.c_ucs1002_get_health.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_ucs1002_power.c_ucs1002_get_health.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucs1002_info = type { i32 }
%union.power_supply_propval = type { i32 }

@UCS1002_REG_INTERRUPT_STATUS = common dso_local global i32 0, align 4
@F_TSD = common dso_local global i32 0, align 4
@POWER_SUPPLY_HEALTH_OVERHEAT = common dso_local global i32 0, align 4
@F_OVER_VOLT = common dso_local global i32 0, align 4
@F_BACK_VOLT = common dso_local global i32 0, align 4
@POWER_SUPPLY_HEALTH_OVERVOLTAGE = common dso_local global i32 0, align 4
@F_OVER_ILIM = common dso_local global i32 0, align 4
@POWER_SUPPLY_HEALTH_OVERCURRENT = common dso_local global i32 0, align 4
@F_DISCHARGE_ERR = common dso_local global i32 0, align 4
@F_MIN_KEEP_OUT = common dso_local global i32 0, align 4
@POWER_SUPPLY_HEALTH_UNSPEC_FAILURE = common dso_local global i32 0, align 4
@POWER_SUPPLY_HEALTH_GOOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ucs1002_info*, %union.power_supply_propval*)* @ucs1002_get_health to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucs1002_get_health(%struct.ucs1002_info* %0, %union.power_supply_propval* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ucs1002_info*, align 8
  %5 = alloca %union.power_supply_propval*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ucs1002_info* %0, %struct.ucs1002_info** %4, align 8
  store %union.power_supply_propval* %1, %union.power_supply_propval** %5, align 8
  %9 = load %struct.ucs1002_info*, %struct.ucs1002_info** %4, align 8
  %10 = getelementptr inbounds %struct.ucs1002_info, %struct.ucs1002_info* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @UCS1002_REG_INTERRUPT_STATUS, align 4
  %13 = call i32 @regmap_read(i32 %11, i32 %12, i32* %6)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %7, align 4
  store i32 %17, i32* %3, align 4
  br label %59

18:                                               ; preds = %2
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @F_TSD, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* @POWER_SUPPLY_HEALTH_OVERHEAT, align 4
  store i32 %24, i32* %8, align 4
  br label %55

25:                                               ; preds = %18
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @F_OVER_VOLT, align 4
  %28 = load i32, i32* @F_BACK_VOLT, align 4
  %29 = or i32 %27, %28
  %30 = and i32 %26, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = load i32, i32* @POWER_SUPPLY_HEALTH_OVERVOLTAGE, align 4
  store i32 %33, i32* %8, align 4
  br label %54

34:                                               ; preds = %25
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @F_OVER_ILIM, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i32, i32* @POWER_SUPPLY_HEALTH_OVERCURRENT, align 4
  store i32 %40, i32* %8, align 4
  br label %53

41:                                               ; preds = %34
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @F_DISCHARGE_ERR, align 4
  %44 = load i32, i32* @F_MIN_KEEP_OUT, align 4
  %45 = or i32 %43, %44
  %46 = and i32 %42, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %41
  %49 = load i32, i32* @POWER_SUPPLY_HEALTH_UNSPEC_FAILURE, align 4
  store i32 %49, i32* %8, align 4
  br label %52

50:                                               ; preds = %41
  %51 = load i32, i32* @POWER_SUPPLY_HEALTH_GOOD, align 4
  store i32 %51, i32* %8, align 4
  br label %52

52:                                               ; preds = %50, %48
  br label %53

53:                                               ; preds = %52, %39
  br label %54

54:                                               ; preds = %53, %32
  br label %55

55:                                               ; preds = %54, %23
  %56 = load i32, i32* %8, align 4
  %57 = load %union.power_supply_propval*, %union.power_supply_propval** %5, align 8
  %58 = bitcast %union.power_supply_propval* %57 to i32*
  store i32 %56, i32* %58, align 4
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %55, %16
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
