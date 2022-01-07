; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_max77650-charger.c_max77650_charger_set_ichgin_lim.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_max77650-charger.c_max77650_charger_set_ichgin_lim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max77650_charger_data = type { i32 }

@max77650_charger_ichgin_lim_table = common dso_local global i32* null, align 8
@MAX77650_REG_CNFG_CHG_B = common dso_local global i32 0, align 4
@MAX77650_CHARGER_ICHGIN_LIM_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.max77650_charger_data*, i32)* @max77650_charger_set_ichgin_lim to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max77650_charger_set_ichgin_lim(%struct.max77650_charger_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.max77650_charger_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.max77650_charger_data* %0, %struct.max77650_charger_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %36, %2
  %9 = load i32, i32* %6, align 4
  %10 = load i32*, i32** @max77650_charger_ichgin_lim_table, align 8
  %11 = call i32 @ARRAY_SIZE(i32* %10)
  %12 = icmp slt i32 %9, %11
  br i1 %12, label %13, label %39

13:                                               ; preds = %8
  %14 = load i32, i32* %5, align 4
  %15 = load i32*, i32** @max77650_charger_ichgin_lim_table, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %14, %19
  br i1 %20, label %21, label %35

21:                                               ; preds = %13
  %22 = load %struct.max77650_charger_data*, %struct.max77650_charger_data** %4, align 8
  %23 = getelementptr inbounds %struct.max77650_charger_data, %struct.max77650_charger_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @MAX77650_REG_CNFG_CHG_B, align 4
  %26 = load i32, i32* @MAX77650_CHARGER_ICHGIN_LIM_MASK, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @MAX77650_CHARGER_ICHGIN_LIM_SHIFT(i32 %27)
  %29 = call i32 @regmap_update_bits(i32 %24, i32 %25, i32 %26, i32 %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %21
  %33 = load i32, i32* %7, align 4
  store i32 %33, i32* %3, align 4
  br label %42

34:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %42

35:                                               ; preds = %13
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %6, align 4
  br label %8

39:                                               ; preds = %8
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %39, %34, %32
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @MAX77650_CHARGER_ICHGIN_LIM_SHIFT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
