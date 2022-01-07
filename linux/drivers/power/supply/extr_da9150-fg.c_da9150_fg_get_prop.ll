; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_da9150-fg.c_da9150_fg_get_prop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_da9150-fg.c_da9150_fg_get_prop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.power_supply = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%union.power_supply_propval = type { i32 }
%struct.da9150_fg = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.power_supply*, i32, %union.power_supply_propval*)* @da9150_fg_get_prop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da9150_fg_get_prop(%struct.power_supply* %0, i32 %1, %union.power_supply_propval* %2) #0 {
  %4 = alloca %struct.power_supply*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %union.power_supply_propval*, align 8
  %7 = alloca %struct.da9150_fg*, align 8
  %8 = alloca i32, align 4
  store %struct.power_supply* %0, %struct.power_supply** %4, align 8
  store i32 %1, i32* %5, align 4
  store %union.power_supply_propval* %2, %union.power_supply_propval** %6, align 8
  %9 = load %struct.power_supply*, %struct.power_supply** %4, align 8
  %10 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.da9150_fg* @dev_get_drvdata(i32 %12)
  store %struct.da9150_fg* %13, %struct.da9150_fg** %7, align 8
  %14 = load i32, i32* %5, align 4
  switch i32 %14, label %35 [
    i32 132, label %15
    i32 130, label %19
    i32 128, label %23
    i32 131, label %27
    i32 129, label %31
  ]

15:                                               ; preds = %3
  %16 = load %struct.da9150_fg*, %struct.da9150_fg** %7, align 8
  %17 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %18 = call i32 @da9150_fg_capacity(%struct.da9150_fg* %16, %union.power_supply_propval* %17)
  store i32 %18, i32* %8, align 4
  br label %38

19:                                               ; preds = %3
  %20 = load %struct.da9150_fg*, %struct.da9150_fg** %7, align 8
  %21 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %22 = call i32 @da9150_fg_current_avg(%struct.da9150_fg* %20, %union.power_supply_propval* %21)
  store i32 %22, i32* %8, align 4
  br label %38

23:                                               ; preds = %3
  %24 = load %struct.da9150_fg*, %struct.da9150_fg** %7, align 8
  %25 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %26 = call i32 @da9150_fg_voltage_avg(%struct.da9150_fg* %24, %union.power_supply_propval* %25)
  store i32 %26, i32* %8, align 4
  br label %38

27:                                               ; preds = %3
  %28 = load %struct.da9150_fg*, %struct.da9150_fg** %7, align 8
  %29 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %30 = call i32 @da9150_fg_charge_full(%struct.da9150_fg* %28, %union.power_supply_propval* %29)
  store i32 %30, i32* %8, align 4
  br label %38

31:                                               ; preds = %3
  %32 = load %struct.da9150_fg*, %struct.da9150_fg** %7, align 8
  %33 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %34 = call i32 @da9150_fg_temp(%struct.da9150_fg* %32, %union.power_supply_propval* %33)
  store i32 %34, i32* %8, align 4
  br label %38

35:                                               ; preds = %3
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %8, align 4
  br label %38

38:                                               ; preds = %35, %31, %27, %23, %19, %15
  %39 = load i32, i32* %8, align 4
  ret i32 %39
}

declare dso_local %struct.da9150_fg* @dev_get_drvdata(i32) #1

declare dso_local i32 @da9150_fg_capacity(%struct.da9150_fg*, %union.power_supply_propval*) #1

declare dso_local i32 @da9150_fg_current_avg(%struct.da9150_fg*, %union.power_supply_propval*) #1

declare dso_local i32 @da9150_fg_voltage_avg(%struct.da9150_fg*, %union.power_supply_propval*) #1

declare dso_local i32 @da9150_fg_charge_full(%struct.da9150_fg*, %union.power_supply_propval*) #1

declare dso_local i32 @da9150_fg_temp(%struct.da9150_fg*, %union.power_supply_propval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
