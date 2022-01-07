; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_sc2731_charger.c_sc2731_charger_set_current_limit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_sc2731_charger.c_sc2731_charger_set_current_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc2731_charger_info = type { i64, i32 }

@SC2731_CURRENT_LIMIT_100 = common dso_local global i64 0, align 8
@SC2731_CURRENT_LIMIT_500 = common dso_local global i64 0, align 8
@SC2731_CURRENT_LIMIT_900 = common dso_local global i64 0, align 8
@SC2731_CHG_CFG5 = common dso_local global i64 0, align 8
@SC2731_CUR_LIMIT_MASK = common dso_local global i32 0, align 4
@SC2731_CUR_LIMIT_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sc2731_charger_info*, i64)* @sc2731_charger_set_current_limit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sc2731_charger_set_current_limit(%struct.sc2731_charger_info* %0, i64 %1) #0 {
  %3 = alloca %struct.sc2731_charger_info*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.sc2731_charger_info* %0, %struct.sc2731_charger_info** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %4, align 8
  %7 = load i64, i64* @SC2731_CURRENT_LIMIT_100, align 8
  %8 = icmp sle i64 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i64 0, i64* %5, align 8
  br label %23

10:                                               ; preds = %2
  %11 = load i64, i64* %4, align 8
  %12 = load i64, i64* @SC2731_CURRENT_LIMIT_500, align 8
  %13 = icmp sle i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  store i64 3, i64* %5, align 8
  br label %22

15:                                               ; preds = %10
  %16 = load i64, i64* %4, align 8
  %17 = load i64, i64* @SC2731_CURRENT_LIMIT_900, align 8
  %18 = icmp sle i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store i64 2, i64* %5, align 8
  br label %21

20:                                               ; preds = %15
  store i64 1, i64* %5, align 8
  br label %21

21:                                               ; preds = %20, %19
  br label %22

22:                                               ; preds = %21, %14
  br label %23

23:                                               ; preds = %22, %9
  %24 = load %struct.sc2731_charger_info*, %struct.sc2731_charger_info** %3, align 8
  %25 = getelementptr inbounds %struct.sc2731_charger_info, %struct.sc2731_charger_info* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.sc2731_charger_info*, %struct.sc2731_charger_info** %3, align 8
  %28 = getelementptr inbounds %struct.sc2731_charger_info, %struct.sc2731_charger_info* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @SC2731_CHG_CFG5, align 8
  %31 = add nsw i64 %29, %30
  %32 = load i32, i32* @SC2731_CUR_LIMIT_MASK, align 4
  %33 = load i64, i64* %5, align 8
  %34 = load i64, i64* @SC2731_CUR_LIMIT_SHIFT, align 8
  %35 = shl i64 %33, %34
  %36 = call i32 @regmap_update_bits(i32 %26, i64 %31, i32 %32, i64 %35)
  ret i32 %36
}

declare dso_local i32 @regmap_update_bits(i32, i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
