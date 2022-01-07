; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq2415x_charger.c_bq2415x_power_supply_get_property.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq2415x_charger.c_bq2415x_power_supply_get_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.power_supply = type { i32 }
%union.power_supply_propval = type { i32 }
%struct.bq2415x_device = type { i32 }

@BQ2415X_CHARGE_STATUS = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_NOT_CHARGING = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_CHARGING = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_FULL = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_UNKNOWN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.power_supply*, i32, %union.power_supply_propval*)* @bq2415x_power_supply_get_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bq2415x_power_supply_get_property(%struct.power_supply* %0, i32 %1, %union.power_supply_propval* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.power_supply*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.power_supply_propval*, align 8
  %8 = alloca %struct.bq2415x_device*, align 8
  %9 = alloca i32, align 4
  store %struct.power_supply* %0, %struct.power_supply** %5, align 8
  store i32 %1, i32* %6, align 4
  store %union.power_supply_propval* %2, %union.power_supply_propval** %7, align 8
  %10 = load %struct.power_supply*, %struct.power_supply** %5, align 8
  %11 = call %struct.bq2415x_device* @power_supply_get_drvdata(%struct.power_supply* %10)
  store %struct.bq2415x_device* %11, %struct.bq2415x_device** %8, align 8
  %12 = load i32, i32* %6, align 4
  switch i32 %12, label %56 [
    i32 128, label %13
    i32 129, label %50
  ]

13:                                               ; preds = %3
  %14 = load %struct.bq2415x_device*, %struct.bq2415x_device** %8, align 8
  %15 = load i32, i32* @BQ2415X_CHARGE_STATUS, align 4
  %16 = call i32 @bq2415x_exec_command(%struct.bq2415x_device* %14, i32 %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = load i32, i32* %9, align 4
  store i32 %20, i32* %4, align 4
  br label %60

21:                                               ; preds = %13
  %22 = load i32, i32* %9, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load i32, i32* @POWER_SUPPLY_STATUS_NOT_CHARGING, align 4
  %26 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %27 = bitcast %union.power_supply_propval* %26 to i32*
  store i32 %25, i32* %27, align 4
  br label %48

28:                                               ; preds = %21
  %29 = load i32, i32* %9, align 4
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load i32, i32* @POWER_SUPPLY_STATUS_CHARGING, align 4
  %33 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %34 = bitcast %union.power_supply_propval* %33 to i32*
  store i32 %32, i32* %34, align 4
  br label %47

35:                                               ; preds = %28
  %36 = load i32, i32* %9, align 4
  %37 = icmp eq i32 %36, 2
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load i32, i32* @POWER_SUPPLY_STATUS_FULL, align 4
  %40 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %41 = bitcast %union.power_supply_propval* %40 to i32*
  store i32 %39, i32* %41, align 4
  br label %46

42:                                               ; preds = %35
  %43 = load i32, i32* @POWER_SUPPLY_STATUS_UNKNOWN, align 4
  %44 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %45 = bitcast %union.power_supply_propval* %44 to i32*
  store i32 %43, i32* %45, align 4
  br label %46

46:                                               ; preds = %42, %38
  br label %47

47:                                               ; preds = %46, %31
  br label %48

48:                                               ; preds = %47, %24
  br label %49

49:                                               ; preds = %48
  br label %59

50:                                               ; preds = %3
  %51 = load %struct.bq2415x_device*, %struct.bq2415x_device** %8, align 8
  %52 = getelementptr inbounds %struct.bq2415x_device, %struct.bq2415x_device* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %55 = bitcast %union.power_supply_propval* %54 to i32*
  store i32 %53, i32* %55, align 4
  br label %59

56:                                               ; preds = %3
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %4, align 4
  br label %60

59:                                               ; preds = %50, %49
  store i32 0, i32* %4, align 4
  br label %60

60:                                               ; preds = %59, %56, %19
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local %struct.bq2415x_device* @power_supply_get_drvdata(%struct.power_supply*) #1

declare dso_local i32 @bq2415x_exec_command(%struct.bq2415x_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
