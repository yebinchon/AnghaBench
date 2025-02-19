; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq24735-charger.c_bq24735_charger_set_property.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq24735-charger.c_bq24735_charger_set_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.power_supply = type { i32 }
%union.power_supply_propval = type { i32 }
%struct.bq24735 = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.power_supply*, i32, %union.power_supply_propval*)* @bq24735_charger_set_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bq24735_charger_set_property(%struct.power_supply* %0, i32 %1, %union.power_supply_propval* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.power_supply*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.power_supply_propval*, align 8
  %8 = alloca %struct.bq24735*, align 8
  %9 = alloca i32, align 4
  store %struct.power_supply* %0, %struct.power_supply** %5, align 8
  store i32 %1, i32* %6, align 4
  store %union.power_supply_propval* %2, %union.power_supply_propval** %7, align 8
  %10 = load %struct.power_supply*, %struct.power_supply** %5, align 8
  %11 = call %struct.bq24735* @to_bq24735(%struct.power_supply* %10)
  store %struct.bq24735* %11, %struct.bq24735** %8, align 8
  %12 = load i32, i32* %6, align 4
  switch i32 %12, label %55 [
    i32 131, label %13
  ]

13:                                               ; preds = %3
  %14 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %15 = bitcast %union.power_supply_propval* %14 to i32*
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %49 [
    i32 130, label %17
    i32 129, label %33
    i32 128, label %33
  ]

17:                                               ; preds = %13
  %18 = load %struct.bq24735*, %struct.bq24735** %8, align 8
  %19 = getelementptr inbounds %struct.bq24735, %struct.bq24735* %18, i32 0, i32 1
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load %struct.bq24735*, %struct.bq24735** %8, align 8
  %22 = getelementptr inbounds %struct.bq24735, %struct.bq24735* %21, i32 0, i32 0
  store i32 1, i32* %22, align 4
  %23 = load %struct.bq24735*, %struct.bq24735** %8, align 8
  %24 = call i32 @bq24735_enable_charging(%struct.bq24735* %23)
  store i32 %24, i32* %9, align 4
  %25 = load %struct.bq24735*, %struct.bq24735** %8, align 8
  %26 = getelementptr inbounds %struct.bq24735, %struct.bq24735* %25, i32 0, i32 1
  %27 = call i32 @mutex_unlock(i32* %26)
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %17
  %31 = load i32, i32* %9, align 4
  store i32 %31, i32* %4, align 4
  br label %59

32:                                               ; preds = %17
  br label %52

33:                                               ; preds = %13, %13
  %34 = load %struct.bq24735*, %struct.bq24735** %8, align 8
  %35 = getelementptr inbounds %struct.bq24735, %struct.bq24735* %34, i32 0, i32 1
  %36 = call i32 @mutex_lock(i32* %35)
  %37 = load %struct.bq24735*, %struct.bq24735** %8, align 8
  %38 = getelementptr inbounds %struct.bq24735, %struct.bq24735* %37, i32 0, i32 0
  store i32 0, i32* %38, align 4
  %39 = load %struct.bq24735*, %struct.bq24735** %8, align 8
  %40 = call i32 @bq24735_disable_charging(%struct.bq24735* %39)
  store i32 %40, i32* %9, align 4
  %41 = load %struct.bq24735*, %struct.bq24735** %8, align 8
  %42 = getelementptr inbounds %struct.bq24735, %struct.bq24735* %41, i32 0, i32 1
  %43 = call i32 @mutex_unlock(i32* %42)
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %33
  %47 = load i32, i32* %9, align 4
  store i32 %47, i32* %4, align 4
  br label %59

48:                                               ; preds = %33
  br label %52

49:                                               ; preds = %13
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %59

52:                                               ; preds = %48, %32
  %53 = load %struct.power_supply*, %struct.power_supply** %5, align 8
  %54 = call i32 @power_supply_changed(%struct.power_supply* %53)
  br label %58

55:                                               ; preds = %3
  %56 = load i32, i32* @EPERM, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %4, align 4
  br label %59

58:                                               ; preds = %52
  store i32 0, i32* %4, align 4
  br label %59

59:                                               ; preds = %58, %55, %49, %46, %30
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local %struct.bq24735* @to_bq24735(%struct.power_supply*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @bq24735_enable_charging(%struct.bq24735*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @bq24735_disable_charging(%struct.bq24735*) #1

declare dso_local i32 @power_supply_changed(%struct.power_supply*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
