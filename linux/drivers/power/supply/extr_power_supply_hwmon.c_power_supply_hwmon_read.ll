; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_power_supply_hwmon.c_power_supply_hwmon_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_power_supply_hwmon.c_power_supply_hwmon_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.power_supply_hwmon = type { %struct.power_supply* }
%struct.power_supply = type { i32 }
%union.power_supply_propval = type { i64 }

@EOVERFLOW = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32, i32, i32, i64*)* @power_supply_hwmon_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @power_supply_hwmon_read(%struct.device* %0, i32 %1, i32 %2, i32 %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca %struct.power_supply_hwmon*, align 8
  %13 = alloca %struct.power_supply*, align 8
  %14 = alloca %union.power_supply_propval, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64* %4, i64** %11, align 8
  %17 = load %struct.device*, %struct.device** %7, align 8
  %18 = call %struct.power_supply_hwmon* @dev_get_drvdata(%struct.device* %17)
  store %struct.power_supply_hwmon* %18, %struct.power_supply_hwmon** %12, align 8
  %19 = load %struct.power_supply_hwmon*, %struct.power_supply_hwmon** %12, align 8
  %20 = getelementptr inbounds %struct.power_supply_hwmon, %struct.power_supply_hwmon* %19, i32 0, i32 0
  %21 = load %struct.power_supply*, %struct.power_supply** %20, align 8
  store %struct.power_supply* %21, %struct.power_supply** %13, align 8
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %10, align 4
  %25 = call i32 @power_supply_hwmon_to_property(i32 %22, i32 %23, i32 %24)
  store i32 %25, i32* %16, align 4
  %26 = load i32, i32* %16, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %5
  %29 = load i32, i32* %16, align 4
  store i32 %29, i32* %6, align 4
  br label %62

30:                                               ; preds = %5
  %31 = load %struct.power_supply*, %struct.power_supply** %13, align 8
  %32 = load i32, i32* %16, align 4
  %33 = call i32 @power_supply_get_property(%struct.power_supply* %31, i32 %32, %union.power_supply_propval* %14)
  store i32 %33, i32* %15, align 4
  %34 = load i32, i32* %15, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i32, i32* %15, align 4
  store i32 %37, i32* %6, align 4
  br label %62

38:                                               ; preds = %30
  %39 = load i32, i32* %8, align 4
  switch i32 %39, label %55 [
    i32 130, label %40
    i32 129, label %40
    i32 128, label %45
  ]

40:                                               ; preds = %38, %38
  %41 = bitcast %union.power_supply_propval* %14 to i64*
  %42 = load i64, i64* %41, align 8
  %43 = call i64 @DIV_ROUND_CLOSEST(i64 %42, i32 1000)
  %44 = bitcast %union.power_supply_propval* %14 to i64*
  store i64 %43, i64* %44, align 8
  br label %58

45:                                               ; preds = %38
  %46 = bitcast %union.power_supply_propval* %14 to i64*
  %47 = load i64, i64* %46, align 8
  %48 = bitcast %union.power_supply_propval* %14 to i64*
  %49 = call i32 @check_mul_overflow(i64 %47, i32 100, i64* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = load i32, i32* @EOVERFLOW, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %6, align 4
  br label %62

54:                                               ; preds = %45
  br label %58

55:                                               ; preds = %38
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %6, align 4
  br label %62

58:                                               ; preds = %54, %40
  %59 = bitcast %union.power_supply_propval* %14 to i64*
  %60 = load i64, i64* %59, align 8
  %61 = load i64*, i64** %11, align 8
  store i64 %60, i64* %61, align 8
  store i32 0, i32* %6, align 4
  br label %62

62:                                               ; preds = %58, %55, %51, %36, %28
  %63 = load i32, i32* %6, align 4
  ret i32 %63
}

declare dso_local %struct.power_supply_hwmon* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @power_supply_hwmon_to_property(i32, i32, i32) #1

declare dso_local i32 @power_supply_get_property(%struct.power_supply*, i32, %union.power_supply_propval*) #1

declare dso_local i64 @DIV_ROUND_CLOSEST(i64, i32) #1

declare dso_local i32 @check_mul_overflow(i64, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
