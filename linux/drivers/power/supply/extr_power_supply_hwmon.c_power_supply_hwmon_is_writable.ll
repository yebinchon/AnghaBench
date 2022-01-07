; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_power_supply_hwmon.c_power_supply_hwmon_is_writable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_power_supply_hwmon.c_power_supply_hwmon_is_writable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hwmon_in_min = common dso_local global i32 0, align 4
@hwmon_in_max = common dso_local global i32 0, align 4
@hwmon_curr_max = common dso_local global i32 0, align 4
@hwmon_temp_max = common dso_local global i32 0, align 4
@hwmon_temp_min = common dso_local global i32 0, align 4
@hwmon_temp_min_alarm = common dso_local global i32 0, align 4
@hwmon_temp_max_alarm = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @power_supply_hwmon_is_writable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @power_supply_hwmon_is_writable(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %42 [
    i32 129, label %7
    i32 130, label %18
    i32 128, label %23
  ]

7:                                                ; preds = %2
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @hwmon_in_min, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %15, label %11

11:                                               ; preds = %7
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @hwmon_in_max, align 4
  %14 = icmp eq i32 %12, %13
  br label %15

15:                                               ; preds = %11, %7
  %16 = phi i1 [ true, %7 ], [ %14, %11 ]
  %17 = zext i1 %16 to i32
  store i32 %17, i32* %3, align 4
  br label %43

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @hwmon_curr_max, align 4
  %21 = icmp eq i32 %19, %20
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %3, align 4
  br label %43

23:                                               ; preds = %2
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @hwmon_temp_max, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %39, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @hwmon_temp_min, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %39, label %31

31:                                               ; preds = %27
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @hwmon_temp_min_alarm, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @hwmon_temp_max_alarm, align 4
  %38 = icmp eq i32 %36, %37
  br label %39

39:                                               ; preds = %35, %31, %27, %23
  %40 = phi i1 [ true, %31 ], [ true, %27 ], [ true, %23 ], [ %38, %35 ]
  %41 = zext i1 %40 to i32
  store i32 %41, i32* %3, align 4
  br label %43

42:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %42, %39, %18, %15
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
