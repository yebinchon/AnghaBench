; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_power_supply_hwmon.c_power_supply_hwmon_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_power_supply_hwmon.c_power_supply_hwmon_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.power_supply_hwmon = type { %struct.power_supply* }
%struct.power_supply = type { i32 }
%union.power_supply_propval = type { i64 }

@EOVERFLOW = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32, i32, i32, i64)* @power_supply_hwmon_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @power_supply_hwmon_write(%struct.device* %0, i32 %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.power_supply_hwmon*, align 8
  %13 = alloca %struct.power_supply*, align 8
  %14 = alloca %union.power_supply_propval, align 8
  %15 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %16 = load %struct.device*, %struct.device** %7, align 8
  %17 = call %struct.power_supply_hwmon* @dev_get_drvdata(%struct.device* %16)
  store %struct.power_supply_hwmon* %17, %struct.power_supply_hwmon** %12, align 8
  %18 = load %struct.power_supply_hwmon*, %struct.power_supply_hwmon** %12, align 8
  %19 = getelementptr inbounds %struct.power_supply_hwmon, %struct.power_supply_hwmon* %18, i32 0, i32 0
  %20 = load %struct.power_supply*, %struct.power_supply** %19, align 8
  store %struct.power_supply* %20, %struct.power_supply** %13, align 8
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %10, align 4
  %24 = call i32 @power_supply_hwmon_to_property(i32 %21, i32 %22, i32 %23)
  store i32 %24, i32* %15, align 4
  %25 = load i32, i32* %15, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %5
  %28 = load i32, i32* %15, align 4
  store i32 %28, i32* %6, align 4
  br label %55

29:                                               ; preds = %5
  %30 = load i64, i64* %11, align 8
  %31 = bitcast %union.power_supply_propval* %14 to i64*
  store i64 %30, i64* %31, align 8
  %32 = load i32, i32* %8, align 4
  switch i32 %32, label %48 [
    i32 130, label %33
    i32 129, label %33
    i32 128, label %43
  ]

33:                                               ; preds = %29, %29
  %34 = bitcast %union.power_supply_propval* %14 to i64*
  %35 = load i64, i64* %34, align 8
  %36 = bitcast %union.power_supply_propval* %14 to i64*
  %37 = call i32 @check_mul_overflow(i64 %35, i32 1000, i64* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load i32, i32* @EOVERFLOW, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %6, align 4
  br label %55

42:                                               ; preds = %33
  br label %51

43:                                               ; preds = %29
  %44 = bitcast %union.power_supply_propval* %14 to i64*
  %45 = load i64, i64* %44, align 8
  %46 = call i64 @DIV_ROUND_CLOSEST(i64 %45, i32 100)
  %47 = bitcast %union.power_supply_propval* %14 to i64*
  store i64 %46, i64* %47, align 8
  br label %51

48:                                               ; preds = %29
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %6, align 4
  br label %55

51:                                               ; preds = %43, %42
  %52 = load %struct.power_supply*, %struct.power_supply** %13, align 8
  %53 = load i32, i32* %15, align 4
  %54 = call i32 @power_supply_set_property(%struct.power_supply* %52, i32 %53, %union.power_supply_propval* %14)
  store i32 %54, i32* %6, align 4
  br label %55

55:                                               ; preds = %51, %48, %39, %27
  %56 = load i32, i32* %6, align 4
  ret i32 %56
}

declare dso_local %struct.power_supply_hwmon* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @power_supply_hwmon_to_property(i32, i32, i32) #1

declare dso_local i32 @check_mul_overflow(i64, i32, i64*) #1

declare dso_local i64 @DIV_ROUND_CLOSEST(i64, i32) #1

declare dso_local i32 @power_supply_set_property(%struct.power_supply*, i32, %union.power_supply_propval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
