; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_power_supply_hwmon.c_power_supply_hwmon_temp_to_property.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_power_supply_hwmon.c_power_supply_hwmon_temp_to_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@POWER_SUPPLY_PROP_TEMP_AMBIENT = common dso_local global i32 0, align 4
@POWER_SUPPLY_PROP_TEMP_AMBIENT_ALERT_MIN = common dso_local global i32 0, align 4
@POWER_SUPPLY_PROP_TEMP_AMBIENT_ALERT_MAX = common dso_local global i32 0, align 4
@POWER_SUPPLY_PROP_TEMP = common dso_local global i32 0, align 4
@POWER_SUPPLY_PROP_TEMP_MAX = common dso_local global i32 0, align 4
@POWER_SUPPLY_PROP_TEMP_MIN = common dso_local global i32 0, align 4
@POWER_SUPPLY_PROP_TEMP_ALERT_MIN = common dso_local global i32 0, align 4
@POWER_SUPPLY_PROP_TEMP_ALERT_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @power_supply_hwmon_temp_to_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @power_supply_hwmon_temp_to_property(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %18

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  switch i32 %9, label %16 [
    i32 132, label %10
    i32 128, label %12
    i32 130, label %14
  ]

10:                                               ; preds = %8
  %11 = load i32, i32* @POWER_SUPPLY_PROP_TEMP_AMBIENT, align 4
  store i32 %11, i32* %3, align 4
  br label %35

12:                                               ; preds = %8
  %13 = load i32, i32* @POWER_SUPPLY_PROP_TEMP_AMBIENT_ALERT_MIN, align 4
  store i32 %13, i32* %3, align 4
  br label %35

14:                                               ; preds = %8
  %15 = load i32, i32* @POWER_SUPPLY_PROP_TEMP_AMBIENT_ALERT_MAX, align 4
  store i32 %15, i32* %3, align 4
  br label %35

16:                                               ; preds = %8
  br label %17

17:                                               ; preds = %16
  br label %32

18:                                               ; preds = %2
  %19 = load i32, i32* %4, align 4
  switch i32 %19, label %30 [
    i32 132, label %20
    i32 131, label %22
    i32 129, label %24
    i32 128, label %26
    i32 130, label %28
  ]

20:                                               ; preds = %18
  %21 = load i32, i32* @POWER_SUPPLY_PROP_TEMP, align 4
  store i32 %21, i32* %3, align 4
  br label %35

22:                                               ; preds = %18
  %23 = load i32, i32* @POWER_SUPPLY_PROP_TEMP_MAX, align 4
  store i32 %23, i32* %3, align 4
  br label %35

24:                                               ; preds = %18
  %25 = load i32, i32* @POWER_SUPPLY_PROP_TEMP_MIN, align 4
  store i32 %25, i32* %3, align 4
  br label %35

26:                                               ; preds = %18
  %27 = load i32, i32* @POWER_SUPPLY_PROP_TEMP_ALERT_MIN, align 4
  store i32 %27, i32* %3, align 4
  br label %35

28:                                               ; preds = %18
  %29 = load i32, i32* @POWER_SUPPLY_PROP_TEMP_ALERT_MAX, align 4
  store i32 %29, i32* %3, align 4
  br label %35

30:                                               ; preds = %18
  br label %31

31:                                               ; preds = %30
  br label %32

32:                                               ; preds = %31, %17
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %32, %28, %26, %24, %22, %20, %14, %12, %10
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
