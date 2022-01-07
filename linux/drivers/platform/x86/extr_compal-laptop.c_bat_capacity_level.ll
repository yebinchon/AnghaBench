; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_compal-laptop.c_bat_capacity_level.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_compal-laptop.c_bat_capacity_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BAT_STATUS0 = common dso_local global i32 0, align 4
@BAT_STATUS1 = common dso_local global i32 0, align 4
@BAT_STATUS2 = common dso_local global i32 0, align 4
@BAT_S0_DISCHRG_CRITICAL = common dso_local global i32 0, align 4
@BAT_S1_EMPTY = common dso_local global i32 0, align 4
@BAT_S2_LOW_LOW = common dso_local global i32 0, align 4
@POWER_SUPPLY_CAPACITY_LEVEL_CRITICAL = common dso_local global i32 0, align 4
@BAT_S0_LOW = common dso_local global i32 0, align 4
@POWER_SUPPLY_CAPACITY_LEVEL_LOW = common dso_local global i32 0, align 4
@BAT_S1_FULL = common dso_local global i32 0, align 4
@POWER_SUPPLY_CAPACITY_LEVEL_FULL = common dso_local global i32 0, align 4
@POWER_SUPPLY_CAPACITY_LEVEL_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @bat_capacity_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bat_capacity_level() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i32, i32* @BAT_STATUS0, align 4
  %6 = call i32 @ec_read_u8(i32 %5)
  store i32 %6, i32* %2, align 4
  %7 = load i32, i32* @BAT_STATUS1, align 4
  %8 = call i32 @ec_read_u8(i32 %7)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* @BAT_STATUS2, align 4
  %10 = call i32 @ec_read_u8(i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %2, align 4
  %12 = load i32, i32* @BAT_S0_DISCHRG_CRITICAL, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %25, label %15

15:                                               ; preds = %0
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @BAT_S1_EMPTY, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %15
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @BAT_S2_LOW_LOW, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20, %15, %0
  %26 = load i32, i32* @POWER_SUPPLY_CAPACITY_LEVEL_CRITICAL, align 4
  store i32 %26, i32* %1, align 4
  br label %43

27:                                               ; preds = %20
  %28 = load i32, i32* %2, align 4
  %29 = load i32, i32* @BAT_S0_LOW, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* @POWER_SUPPLY_CAPACITY_LEVEL_LOW, align 4
  store i32 %33, i32* %1, align 4
  br label %43

34:                                               ; preds = %27
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* @BAT_S1_FULL, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i32, i32* @POWER_SUPPLY_CAPACITY_LEVEL_FULL, align 4
  store i32 %40, i32* %1, align 4
  br label %43

41:                                               ; preds = %34
  %42 = load i32, i32* @POWER_SUPPLY_CAPACITY_LEVEL_NORMAL, align 4
  store i32 %42, i32* %1, align 4
  br label %43

43:                                               ; preds = %41, %39, %32, %25
  %44 = load i32, i32* %1, align 4
  ret i32 %44
}

declare dso_local i32 @ec_read_u8(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
