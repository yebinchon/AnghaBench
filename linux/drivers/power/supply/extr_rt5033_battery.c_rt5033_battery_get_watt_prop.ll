; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_rt5033_battery.c_rt5033_battery_get_watt_prop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_rt5033_battery.c_rt5033_battery_get_watt_prop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.rt5033_battery = type { i32 }

@RT5033_FUEL_REG_VBAT_H = common dso_local global i32 0, align 4
@RT5033_FUEL_REG_VBAT_L = common dso_local global i32 0, align 4
@RT5033_FUEL_REG_AVG_VOLT_H = common dso_local global i32 0, align 4
@RT5033_FUEL_REG_AVG_VOLT_L = common dso_local global i32 0, align 4
@RT5033_FUEL_REG_OCV_H = common dso_local global i32 0, align 4
@RT5033_FUEL_REG_OCV_L = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32)* @rt5033_battery_get_watt_prop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt5033_battery_get_watt_prop(%struct.i2c_client* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rt5033_battery*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %13 = call %struct.rt5033_battery* @i2c_get_clientdata(%struct.i2c_client* %12)
  store %struct.rt5033_battery* %13, %struct.rt5033_battery** %6, align 8
  %14 = load i32, i32* %5, align 4
  switch i32 %14, label %24 [
    i32 129, label %15
    i32 130, label %18
    i32 128, label %21
  ]

15:                                               ; preds = %2
  %16 = load i32, i32* @RT5033_FUEL_REG_VBAT_H, align 4
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* @RT5033_FUEL_REG_VBAT_L, align 4
  store i32 %17, i32* %8, align 4
  br label %27

18:                                               ; preds = %2
  %19 = load i32, i32* @RT5033_FUEL_REG_AVG_VOLT_H, align 4
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* @RT5033_FUEL_REG_AVG_VOLT_L, align 4
  store i32 %20, i32* %8, align 4
  br label %27

21:                                               ; preds = %2
  %22 = load i32, i32* @RT5033_FUEL_REG_OCV_H, align 4
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* @RT5033_FUEL_REG_OCV_L, align 4
  store i32 %23, i32* %8, align 4
  br label %27

24:                                               ; preds = %2
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %46

27:                                               ; preds = %21, %18, %15
  %28 = load %struct.rt5033_battery*, %struct.rt5033_battery** %6, align 8
  %29 = getelementptr inbounds %struct.rt5033_battery, %struct.rt5033_battery* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @regmap_read(i32 %30, i32 %31, i32* %10)
  %33 = load %struct.rt5033_battery*, %struct.rt5033_battery** %6, align 8
  %34 = getelementptr inbounds %struct.rt5033_battery, %struct.rt5033_battery* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @regmap_read(i32 %35, i32 %36, i32* %11)
  %38 = load i32, i32* %10, align 4
  %39 = shl i32 %38, 4
  %40 = load i32, i32* %11, align 4
  %41 = ashr i32 %40, 4
  %42 = add nsw i32 %39, %41
  %43 = mul nsw i32 %42, 1250
  %44 = sdiv i32 %43, 1000
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %27, %24
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local %struct.rt5033_battery* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
