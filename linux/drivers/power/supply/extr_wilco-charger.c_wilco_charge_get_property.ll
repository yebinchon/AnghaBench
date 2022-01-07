; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_wilco-charger.c_wilco_charge_get_property.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_wilco-charger.c_wilco_charge_get_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.power_supply = type { i32 }
%union.power_supply_propval = type { i32 }
%struct.wilco_ec_device = type { i32 }

@PID_CHARGE_MODE = common dso_local global i64 0, align 8
@PID_CHARGE_LOWER_LIMIT = common dso_local global i64 0, align 8
@PID_CHARGE_UPPER_LIMIT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@EBADMSG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.power_supply*, i32, %union.power_supply_propval*)* @wilco_charge_get_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wilco_charge_get_property(%struct.power_supply* %0, i32 %1, %union.power_supply_propval* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.power_supply*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.power_supply_propval*, align 8
  %8 = alloca %struct.wilco_ec_device*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.power_supply* %0, %struct.power_supply** %5, align 8
  store i32 %1, i32* %6, align 4
  store %union.power_supply_propval* %2, %union.power_supply_propval** %7, align 8
  %12 = load %struct.power_supply*, %struct.power_supply** %5, align 8
  %13 = call %struct.wilco_ec_device* @power_supply_get_drvdata(%struct.power_supply* %12)
  store %struct.wilco_ec_device* %13, %struct.wilco_ec_device** %8, align 8
  %14 = load i32, i32* %6, align 4
  switch i32 %14, label %21 [
    i32 128, label %15
    i32 129, label %17
    i32 130, label %19
  ]

15:                                               ; preds = %3
  %16 = load i64, i64* @PID_CHARGE_MODE, align 8
  store i64 %16, i64* %9, align 8
  br label %24

17:                                               ; preds = %3
  %18 = load i64, i64* @PID_CHARGE_LOWER_LIMIT, align 8
  store i64 %18, i64* %9, align 8
  br label %24

19:                                               ; preds = %3
  %20 = load i64, i64* @PID_CHARGE_UPPER_LIMIT, align 8
  store i64 %20, i64* %9, align 8
  br label %24

21:                                               ; preds = %3
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %50

24:                                               ; preds = %19, %17, %15
  %25 = load %struct.wilco_ec_device*, %struct.wilco_ec_device** %8, align 8
  %26 = load i64, i64* %9, align 8
  %27 = call i32 @wilco_ec_get_byte_property(%struct.wilco_ec_device* %25, i64 %26, i32* %11)
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i32, i32* %10, align 4
  store i32 %31, i32* %4, align 4
  br label %50

32:                                               ; preds = %24
  %33 = load i64, i64* %9, align 8
  %34 = load i64, i64* @PID_CHARGE_MODE, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %46

36:                                               ; preds = %32
  %37 = load i32, i32* %11, align 4
  %38 = call i32 @charge_mode_to_psp_val(i32 %37)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load i32, i32* @EBADMSG, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %50

44:                                               ; preds = %36
  %45 = load i32, i32* %10, align 4
  store i32 %45, i32* %11, align 4
  br label %46

46:                                               ; preds = %44, %32
  %47 = load i32, i32* %11, align 4
  %48 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %49 = bitcast %union.power_supply_propval* %48 to i32*
  store i32 %47, i32* %49, align 4
  store i32 0, i32* %4, align 4
  br label %50

50:                                               ; preds = %46, %41, %30, %21
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local %struct.wilco_ec_device* @power_supply_get_drvdata(%struct.power_supply*) #1

declare dso_local i32 @wilco_ec_get_byte_property(%struct.wilco_ec_device*, i64, i32*) #1

declare dso_local i32 @charge_mode_to_psp_val(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
