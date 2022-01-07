; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_twl4030_charger.c_twl4030_bci_state_to_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_twl4030_charger.c_twl4030_bci_state_to_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TWL4030_MSTATEC_MASK = common dso_local global i32 0, align 4
@TWL4030_MSTATEC_QUICK1 = common dso_local global i32 0, align 4
@TWL4030_MSTATEC_QUICK7 = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_CHARGING = common dso_local global i32 0, align 4
@TWL4030_MSTATEC_COMPLETE1 = common dso_local global i32 0, align 4
@TWL4030_MSTATEC_COMPLETE4 = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_FULL = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_NOT_CHARGING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @twl4030_bci_state_to_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twl4030_bci_state_to_status(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* @TWL4030_MSTATEC_MASK, align 4
  %5 = load i32, i32* %3, align 4
  %6 = and i32 %5, %4
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* @TWL4030_MSTATEC_QUICK1, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp sle i32 %7, %8
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @TWL4030_MSTATEC_QUICK7, align 4
  %13 = icmp sle i32 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = load i32, i32* @POWER_SUPPLY_STATUS_CHARGING, align 4
  store i32 %15, i32* %2, align 4
  br label %28

16:                                               ; preds = %10, %1
  %17 = load i32, i32* @TWL4030_MSTATEC_COMPLETE1, align 4
  %18 = load i32, i32* %3, align 4
  %19 = icmp sle i32 %17, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %16
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @TWL4030_MSTATEC_COMPLETE4, align 4
  %23 = icmp sle i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i32, i32* @POWER_SUPPLY_STATUS_FULL, align 4
  store i32 %25, i32* %2, align 4
  br label %28

26:                                               ; preds = %20, %16
  %27 = load i32, i32* @POWER_SUPPLY_STATUS_NOT_CHARGING, align 4
  store i32 %27, i32* %2, align 4
  br label %28

28:                                               ; preds = %26, %24, %14
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
