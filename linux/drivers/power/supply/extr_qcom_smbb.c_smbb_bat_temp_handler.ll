; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_qcom_smbb.c_smbb_bat_temp_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_qcom_smbb.c_smbb_bat_temp_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smbb_charger = type { i32, i32, i32, i64, i32 }

@SMBB_BAT_TEMP_STATUS = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@TEMP_STATUS_OK = common dso_local global i32 0, align 4
@STATUS_BAT_OK = common dso_local global i32 0, align 4
@TEMP_STATUS_HOT = common dso_local global i32 0, align 4
@STATUS_BAT_HOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @smbb_bat_temp_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smbb_bat_temp_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.smbb_charger*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.smbb_charger*
  store %struct.smbb_charger* %10, %struct.smbb_charger** %6, align 8
  %11 = load %struct.smbb_charger*, %struct.smbb_charger** %6, align 8
  %12 = getelementptr inbounds %struct.smbb_charger, %struct.smbb_charger* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.smbb_charger*, %struct.smbb_charger** %6, align 8
  %15 = getelementptr inbounds %struct.smbb_charger, %struct.smbb_charger* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @SMBB_BAT_TEMP_STATUS, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @regmap_read(i32 %13, i64 %18, i32* %7)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %23, i32* %3, align 4
  br label %65

24:                                               ; preds = %2
  %25 = load %struct.smbb_charger*, %struct.smbb_charger** %6, align 8
  %26 = getelementptr inbounds %struct.smbb_charger, %struct.smbb_charger* %25, i32 0, i32 1
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @TEMP_STATUS_OK, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %24
  %33 = load i32, i32* @STATUS_BAT_OK, align 4
  %34 = load %struct.smbb_charger*, %struct.smbb_charger** %6, align 8
  %35 = getelementptr inbounds %struct.smbb_charger, %struct.smbb_charger* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 8
  br label %56

38:                                               ; preds = %24
  %39 = load i32, i32* @STATUS_BAT_OK, align 4
  %40 = xor i32 %39, -1
  %41 = load %struct.smbb_charger*, %struct.smbb_charger** %6, align 8
  %42 = getelementptr inbounds %struct.smbb_charger, %struct.smbb_charger* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = and i32 %43, %40
  store i32 %44, i32* %42, align 8
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @TEMP_STATUS_HOT, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %38
  %50 = load i32, i32* @STATUS_BAT_HOT, align 4
  %51 = load %struct.smbb_charger*, %struct.smbb_charger** %6, align 8
  %52 = getelementptr inbounds %struct.smbb_charger, %struct.smbb_charger* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 8
  br label %55

55:                                               ; preds = %49, %38
  br label %56

56:                                               ; preds = %55, %32
  %57 = load %struct.smbb_charger*, %struct.smbb_charger** %6, align 8
  %58 = getelementptr inbounds %struct.smbb_charger, %struct.smbb_charger* %57, i32 0, i32 1
  %59 = call i32 @mutex_unlock(i32* %58)
  %60 = load %struct.smbb_charger*, %struct.smbb_charger** %6, align 8
  %61 = getelementptr inbounds %struct.smbb_charger, %struct.smbb_charger* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @power_supply_changed(i32 %62)
  %64 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %56, %22
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @regmap_read(i32, i64, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @power_supply_changed(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
