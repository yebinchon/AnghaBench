; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_sc27xx_fuel_gauge.c_sc27xx_fgu_get_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_sc27xx_fuel_gauge.c_sc27xx_fgu_get_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc27xx_fgu_data = type { i32 }
%union.power_supply_propval = type { i32 }
%struct.power_supply = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@sc27xx_charger_supply_name = common dso_local global i32* null, align 8
@POWER_SUPPLY_PROP_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sc27xx_fgu_data*, i32*)* @sc27xx_fgu_get_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sc27xx_fgu_get_status(%struct.sc27xx_fgu_data* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sc27xx_fgu_data*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %union.power_supply_propval, align 4
  %7 = alloca %struct.power_supply*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.sc27xx_fgu_data* %0, %struct.sc27xx_fgu_data** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %12

12:                                               ; preds = %41, %2
  %13 = load i32, i32* %8, align 4
  %14 = load i32*, i32** @sc27xx_charger_supply_name, align 8
  %15 = call i32 @ARRAY_SIZE(i32* %14)
  %16 = icmp slt i32 %13, %15
  br i1 %16, label %17, label %44

17:                                               ; preds = %12
  %18 = load i32*, i32** @sc27xx_charger_supply_name, align 8
  %19 = load i32, i32* %8, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.power_supply* @power_supply_get_by_name(i32 %22)
  store %struct.power_supply* %23, %struct.power_supply** %7, align 8
  %24 = load %struct.power_supply*, %struct.power_supply** %7, align 8
  %25 = icmp ne %struct.power_supply* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %17
  br label %41

27:                                               ; preds = %17
  %28 = load %struct.power_supply*, %struct.power_supply** %7, align 8
  %29 = load i32, i32* @POWER_SUPPLY_PROP_STATUS, align 4
  %30 = call i32 @power_supply_get_property(%struct.power_supply* %28, i32 %29, %union.power_supply_propval* %6)
  store i32 %30, i32* %9, align 4
  %31 = load %struct.power_supply*, %struct.power_supply** %7, align 8
  %32 = call i32 @power_supply_put(%struct.power_supply* %31)
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %27
  %36 = load i32, i32* %9, align 4
  store i32 %36, i32* %3, align 4
  br label %46

37:                                               ; preds = %27
  %38 = bitcast %union.power_supply_propval* %6 to i32*
  %39 = load i32, i32* %38, align 4
  %40 = load i32*, i32** %5, align 8
  store i32 %39, i32* %40, align 4
  br label %41

41:                                               ; preds = %37, %26
  %42 = load i32, i32* %8, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %8, align 4
  br label %12

44:                                               ; preds = %12
  %45 = load i32, i32* %9, align 4
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %44, %35
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local %struct.power_supply* @power_supply_get_by_name(i32) #1

declare dso_local i32 @power_supply_get_property(%struct.power_supply*, i32, %union.power_supply_propval*) #1

declare dso_local i32 @power_supply_put(%struct.power_supply*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
