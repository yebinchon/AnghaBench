; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_sc2731_charger.c_sc2731_charger_get_current_limit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_sc2731_charger.c_sc2731_charger_get_current_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc2731_charger_info = type { i64, i32 }

@SC2731_CHG_CFG5 = common dso_local global i64 0, align 8
@SC2731_CUR_LIMIT_MASK = common dso_local global i32 0, align 4
@SC2731_CUR_LIMIT_SHIFT = common dso_local global i32 0, align 4
@SC2731_CURRENT_LIMIT_100 = common dso_local global i32 0, align 4
@SC2731_CURRENT_LIMIT_2000 = common dso_local global i32 0, align 4
@SC2731_CURRENT_LIMIT_900 = common dso_local global i32 0, align 4
@SC2731_CURRENT_LIMIT_500 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sc2731_charger_info*, i32*)* @sc2731_charger_get_current_limit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sc2731_charger_get_current_limit(%struct.sc2731_charger_info* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sc2731_charger_info*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.sc2731_charger_info* %0, %struct.sc2731_charger_info** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.sc2731_charger_info*, %struct.sc2731_charger_info** %4, align 8
  %9 = getelementptr inbounds %struct.sc2731_charger_info, %struct.sc2731_charger_info* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.sc2731_charger_info*, %struct.sc2731_charger_info** %4, align 8
  %12 = getelementptr inbounds %struct.sc2731_charger_info, %struct.sc2731_charger_info* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @SC2731_CHG_CFG5, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @regmap_read(i32 %10, i64 %15, i32* %7)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %3, align 4
  br label %44

21:                                               ; preds = %2
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @SC2731_CUR_LIMIT_MASK, align 4
  %24 = and i32 %22, %23
  %25 = load i32, i32* @SC2731_CUR_LIMIT_SHIFT, align 4
  %26 = ashr i32 %24, %25
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  switch i32 %27, label %40 [
    i32 0, label %28
    i32 1, label %31
    i32 2, label %34
    i32 3, label %37
  ]

28:                                               ; preds = %21
  %29 = load i32, i32* @SC2731_CURRENT_LIMIT_100, align 4
  %30 = load i32*, i32** %5, align 8
  store i32 %29, i32* %30, align 4
  br label %43

31:                                               ; preds = %21
  %32 = load i32, i32* @SC2731_CURRENT_LIMIT_2000, align 4
  %33 = load i32*, i32** %5, align 8
  store i32 %32, i32* %33, align 4
  br label %43

34:                                               ; preds = %21
  %35 = load i32, i32* @SC2731_CURRENT_LIMIT_900, align 4
  %36 = load i32*, i32** %5, align 8
  store i32 %35, i32* %36, align 4
  br label %43

37:                                               ; preds = %21
  %38 = load i32, i32* @SC2731_CURRENT_LIMIT_500, align 4
  %39 = load i32*, i32** %5, align 8
  store i32 %38, i32* %39, align 4
  br label %43

40:                                               ; preds = %21
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %44

43:                                               ; preds = %37, %34, %31, %28
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %43, %40, %19
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @regmap_read(i32, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
