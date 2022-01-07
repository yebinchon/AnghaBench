; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_qcom_smbb.c_smbb_dcin_get_property.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_qcom_smbb.c_smbb_dcin_get_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.power_supply = type { i32 }
%union.power_supply_propval = type { i32 }
%struct.smbb_charger = type { i32, i32*, i32 }

@STATUS_CHG_GONE = common dso_local global i32 0, align 4
@STATUS_DCIN_VALID = common dso_local global i32 0, align 4
@ATTR_DCIN_IMAX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.power_supply*, i32, %union.power_supply_propval*)* @smbb_dcin_get_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smbb_dcin_get_property(%struct.power_supply* %0, i32 %1, %union.power_supply_propval* %2) #0 {
  %4 = alloca %struct.power_supply*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %union.power_supply_propval*, align 8
  %7 = alloca %struct.smbb_charger*, align 8
  %8 = alloca i32, align 4
  store %struct.power_supply* %0, %struct.power_supply** %4, align 8
  store i32 %1, i32* %5, align 4
  store %union.power_supply_propval* %2, %union.power_supply_propval** %6, align 8
  %9 = load %struct.power_supply*, %struct.power_supply** %4, align 8
  %10 = call %struct.smbb_charger* @power_supply_get_drvdata(%struct.power_supply* %9)
  store %struct.smbb_charger* %10, %struct.smbb_charger** %7, align 8
  store i32 0, i32* %8, align 4
  %11 = load i32, i32* %5, align 4
  switch i32 %11, label %49 [
    i32 128, label %12
    i32 130, label %37
    i32 129, label %46
  ]

12:                                               ; preds = %3
  %13 = load %struct.smbb_charger*, %struct.smbb_charger** %7, align 8
  %14 = getelementptr inbounds %struct.smbb_charger, %struct.smbb_charger* %13, i32 0, i32 2
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.smbb_charger*, %struct.smbb_charger** %7, align 8
  %17 = getelementptr inbounds %struct.smbb_charger, %struct.smbb_charger* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @STATUS_CHG_GONE, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %12
  %23 = load %struct.smbb_charger*, %struct.smbb_charger** %7, align 8
  %24 = getelementptr inbounds %struct.smbb_charger, %struct.smbb_charger* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @STATUS_DCIN_VALID, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br label %29

29:                                               ; preds = %22, %12
  %30 = phi i1 [ false, %12 ], [ %28, %22 ]
  %31 = zext i1 %30 to i32
  %32 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %33 = bitcast %union.power_supply_propval* %32 to i32*
  store i32 %31, i32* %33, align 4
  %34 = load %struct.smbb_charger*, %struct.smbb_charger** %7, align 8
  %35 = getelementptr inbounds %struct.smbb_charger, %struct.smbb_charger* %34, i32 0, i32 2
  %36 = call i32 @mutex_unlock(i32* %35)
  br label %52

37:                                               ; preds = %3
  %38 = load %struct.smbb_charger*, %struct.smbb_charger** %7, align 8
  %39 = getelementptr inbounds %struct.smbb_charger, %struct.smbb_charger* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = load i64, i64* @ATTR_DCIN_IMAX, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %45 = bitcast %union.power_supply_propval* %44 to i32*
  store i32 %43, i32* %45, align 4
  br label %52

46:                                               ; preds = %3
  %47 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %48 = bitcast %union.power_supply_propval* %47 to i32*
  store i32 2500000, i32* %48, align 4
  br label %52

49:                                               ; preds = %3
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %8, align 4
  br label %52

52:                                               ; preds = %49, %46, %37, %29
  %53 = load i32, i32* %8, align 4
  ret i32 %53
}

declare dso_local %struct.smbb_charger* @power_supply_get_drvdata(%struct.power_supply*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
