; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_wilco-charger.c_wilco_charge_set_property.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_wilco-charger.c_wilco_charge_set_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.power_supply = type { i32 }
%union.power_supply_propval = type { i32 }
%struct.wilco_ec_device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@PID_CHARGE_MODE = common dso_local global i32 0, align 4
@CHARGE_LOWER_LIMIT_MIN = common dso_local global i32 0, align 4
@CHARGE_LOWER_LIMIT_MAX = common dso_local global i32 0, align 4
@PID_CHARGE_LOWER_LIMIT = common dso_local global i32 0, align 4
@CHARGE_UPPER_LIMIT_MIN = common dso_local global i32 0, align 4
@CHARGE_UPPER_LIMIT_MAX = common dso_local global i32 0, align 4
@PID_CHARGE_UPPER_LIMIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.power_supply*, i32, %union.power_supply_propval*)* @wilco_charge_set_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wilco_charge_set_property(%struct.power_supply* %0, i32 %1, %union.power_supply_propval* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.power_supply*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.power_supply_propval*, align 8
  %8 = alloca %struct.wilco_ec_device*, align 8
  %9 = alloca i32, align 4
  store %struct.power_supply* %0, %struct.power_supply** %5, align 8
  store i32 %1, i32* %6, align 4
  store %union.power_supply_propval* %2, %union.power_supply_propval** %7, align 8
  %10 = load %struct.power_supply*, %struct.power_supply** %5, align 8
  %11 = call %struct.wilco_ec_device* @power_supply_get_drvdata(%struct.power_supply* %10)
  store %struct.wilco_ec_device* %11, %struct.wilco_ec_device** %8, align 8
  %12 = load i32, i32* %6, align 4
  switch i32 %12, label %72 [
    i32 128, label %13
    i32 129, label %28
    i32 130, label %50
  ]

13:                                               ; preds = %3
  %14 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %15 = bitcast %union.power_supply_propval* %14 to i32*
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @psp_val_to_charge_mode(i32 %16)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %13
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %75

23:                                               ; preds = %13
  %24 = load %struct.wilco_ec_device*, %struct.wilco_ec_device** %8, align 8
  %25 = load i32, i32* @PID_CHARGE_MODE, align 4
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @wilco_ec_set_byte_property(%struct.wilco_ec_device* %24, i32 %25, i32 %26)
  store i32 %27, i32* %4, align 4
  br label %75

28:                                               ; preds = %3
  %29 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %30 = bitcast %union.power_supply_propval* %29 to i32*
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @CHARGE_LOWER_LIMIT_MIN, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %40, label %34

34:                                               ; preds = %28
  %35 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %36 = bitcast %union.power_supply_propval* %35 to i32*
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @CHARGE_LOWER_LIMIT_MAX, align 4
  %39 = icmp sgt i32 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %34, %28
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %75

43:                                               ; preds = %34
  %44 = load %struct.wilco_ec_device*, %struct.wilco_ec_device** %8, align 8
  %45 = load i32, i32* @PID_CHARGE_LOWER_LIMIT, align 4
  %46 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %47 = bitcast %union.power_supply_propval* %46 to i32*
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @wilco_ec_set_byte_property(%struct.wilco_ec_device* %44, i32 %45, i32 %48)
  store i32 %49, i32* %4, align 4
  br label %75

50:                                               ; preds = %3
  %51 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %52 = bitcast %union.power_supply_propval* %51 to i32*
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @CHARGE_UPPER_LIMIT_MIN, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %62, label %56

56:                                               ; preds = %50
  %57 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %58 = bitcast %union.power_supply_propval* %57 to i32*
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @CHARGE_UPPER_LIMIT_MAX, align 4
  %61 = icmp sgt i32 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %56, %50
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %4, align 4
  br label %75

65:                                               ; preds = %56
  %66 = load %struct.wilco_ec_device*, %struct.wilco_ec_device** %8, align 8
  %67 = load i32, i32* @PID_CHARGE_UPPER_LIMIT, align 4
  %68 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %69 = bitcast %union.power_supply_propval* %68 to i32*
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @wilco_ec_set_byte_property(%struct.wilco_ec_device* %66, i32 %67, i32 %70)
  store i32 %71, i32* %4, align 4
  br label %75

72:                                               ; preds = %3
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %4, align 4
  br label %75

75:                                               ; preds = %72, %65, %62, %43, %40, %23, %20
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local %struct.wilco_ec_device* @power_supply_get_drvdata(%struct.power_supply*) #1

declare dso_local i32 @psp_val_to_charge_mode(i32) #1

declare dso_local i32 @wilco_ec_set_byte_property(%struct.wilco_ec_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
