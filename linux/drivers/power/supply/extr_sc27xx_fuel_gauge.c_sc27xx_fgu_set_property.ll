; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_sc27xx_fuel_gauge.c_sc27xx_fgu_set_property.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_sc27xx_fuel_gauge.c_sc27xx_fgu_set_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.power_supply = type { i32 }
%union.power_supply_propval = type { i32 }
%struct.sc27xx_fgu_data = type { i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"failed to save battery capacity\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.power_supply*, i32, %union.power_supply_propval*)* @sc27xx_fgu_set_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sc27xx_fgu_set_property(%struct.power_supply* %0, i32 %1, %union.power_supply_propval* %2) #0 {
  %4 = alloca %struct.power_supply*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %union.power_supply_propval*, align 8
  %7 = alloca %struct.sc27xx_fgu_data*, align 8
  %8 = alloca i32, align 4
  store %struct.power_supply* %0, %struct.power_supply** %4, align 8
  store i32 %1, i32* %5, align 4
  store %union.power_supply_propval* %2, %union.power_supply_propval** %6, align 8
  %9 = load %struct.power_supply*, %struct.power_supply** %4, align 8
  %10 = call %struct.sc27xx_fgu_data* @power_supply_get_drvdata(%struct.power_supply* %9)
  store %struct.sc27xx_fgu_data* %10, %struct.sc27xx_fgu_data** %7, align 8
  %11 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %7, align 8
  %12 = getelementptr inbounds %struct.sc27xx_fgu_data, %struct.sc27xx_fgu_data* %11, i32 0, i32 0
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load i32, i32* %5, align 4
  switch i32 %14, label %35 [
    i32 128, label %15
    i32 129, label %29
  ]

15:                                               ; preds = %3
  %16 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %7, align 8
  %17 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %18 = bitcast %union.power_supply_propval* %17 to i32*
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @sc27xx_fgu_save_last_cap(%struct.sc27xx_fgu_data* %16, i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %15
  %24 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %7, align 8
  %25 = getelementptr inbounds %struct.sc27xx_fgu_data, %struct.sc27xx_fgu_data* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @dev_err(i32 %26, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %28

28:                                               ; preds = %23, %15
  br label %38

29:                                               ; preds = %3
  %30 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %7, align 8
  %31 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %32 = bitcast %union.power_supply_propval* %31 to i32*
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @sc27xx_fgu_adjust_cap(%struct.sc27xx_fgu_data* %30, i32 %33)
  store i32 0, i32* %8, align 4
  br label %38

35:                                               ; preds = %3
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %8, align 4
  br label %38

38:                                               ; preds = %35, %29, %28
  %39 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %7, align 8
  %40 = getelementptr inbounds %struct.sc27xx_fgu_data, %struct.sc27xx_fgu_data* %39, i32 0, i32 0
  %41 = call i32 @mutex_unlock(i32* %40)
  %42 = load i32, i32* %8, align 4
  ret i32 %42
}

declare dso_local %struct.sc27xx_fgu_data* @power_supply_get_drvdata(%struct.power_supply*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @sc27xx_fgu_save_last_cap(%struct.sc27xx_fgu_data*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @sc27xx_fgu_adjust_cap(%struct.sc27xx_fgu_data*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
