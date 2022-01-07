; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_adp5061.c_adp5061_set_const_chg_vmax.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_adp5061.c_adp5061_set_const_chg_vmax.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adp5061_state = type { i32 }

@adp5061_const_chg_vmax = common dso_local global i32 0, align 4
@ADP5061_TERM_SET = common dso_local global i32 0, align 4
@ADP5061_TERM_SET_CHG_VLIM_MSK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adp5061_state*, i32)* @adp5061_set_const_chg_vmax to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adp5061_set_const_chg_vmax(%struct.adp5061_state* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.adp5061_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.adp5061_state* %0, %struct.adp5061_state** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = sdiv i32 %7, 1000
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* @adp5061_const_chg_vmax, align 4
  %10 = load i32, i32* @adp5061_const_chg_vmax, align 4
  %11 = call i32 @ARRAY_SIZE(i32 %10)
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @adp5061_get_array_index(i32 %9, i32 %11, i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %6, align 4
  store i32 %17, i32* %3, align 4
  br label %27

18:                                               ; preds = %2
  %19 = load %struct.adp5061_state*, %struct.adp5061_state** %4, align 8
  %20 = getelementptr inbounds %struct.adp5061_state, %struct.adp5061_state* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @ADP5061_TERM_SET, align 4
  %23 = load i32, i32* @ADP5061_TERM_SET_CHG_VLIM_MSK, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @ADP5061_TERM_SET_CHG_VLIM_MODE(i32 %24)
  %26 = call i32 @regmap_update_bits(i32 %21, i32 %22, i32 %23, i32 %25)
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %18, %16
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @adp5061_get_array_index(i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @ADP5061_TERM_SET_CHG_VLIM_MODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
