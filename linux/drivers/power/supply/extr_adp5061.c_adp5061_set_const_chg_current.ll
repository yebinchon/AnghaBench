; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_adp5061.c_adp5061_set_const_chg_current.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_adp5061.c_adp5061_set_const_chg_current.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adp5061_state = type { i32 }

@ADP5061_ICHG_MAX = common dso_local global i32 0, align 4
@adp5061_const_ichg = common dso_local global i32 0, align 4
@ADP5061_CHG_CURR = common dso_local global i32 0, align 4
@ADP5061_CHG_CURR_ICHG_MSK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adp5061_state*, i32)* @adp5061_set_const_chg_current to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adp5061_set_const_chg_current(%struct.adp5061_state* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.adp5061_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.adp5061_state* %0, %struct.adp5061_state** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = sdiv i32 %7, 1000
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @ADP5061_ICHG_MAX, align 4
  %11 = icmp sgt i32 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @ADP5061_ICHG_MAX, align 4
  store i32 %13, i32* %5, align 4
  br label %14

14:                                               ; preds = %12, %2
  %15 = load i32, i32* @adp5061_const_ichg, align 4
  %16 = load i32, i32* @adp5061_const_ichg, align 4
  %17 = call i32 @ARRAY_SIZE(i32 %16)
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @adp5061_get_array_index(i32 %15, i32 %17, i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %14
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %3, align 4
  br label %33

24:                                               ; preds = %14
  %25 = load %struct.adp5061_state*, %struct.adp5061_state** %4, align 8
  %26 = getelementptr inbounds %struct.adp5061_state, %struct.adp5061_state* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @ADP5061_CHG_CURR, align 4
  %29 = load i32, i32* @ADP5061_CHG_CURR_ICHG_MSK, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @ADP5061_CHG_CURR_ICHG_MODE(i32 %30)
  %32 = call i32 @regmap_update_bits(i32 %27, i32 %28, i32 %29, i32 %31)
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %24, %22
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @adp5061_get_array_index(i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @ADP5061_CHG_CURR_ICHG_MODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
