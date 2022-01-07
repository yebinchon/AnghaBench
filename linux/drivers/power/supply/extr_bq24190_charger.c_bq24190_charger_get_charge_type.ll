; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq24190_charger.c_bq24190_charger_get_charge_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq24190_charger.c_bq24190_charger_get_charge_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bq24190_dev_info = type { i32 }
%union.power_supply_propval = type { i32 }

@BQ24190_REG_POC = common dso_local global i32 0, align 4
@BQ24190_REG_POC_CHG_CONFIG_MASK = common dso_local global i32 0, align 4
@BQ24190_REG_POC_CHG_CONFIG_SHIFT = common dso_local global i32 0, align 4
@POWER_SUPPLY_CHARGE_TYPE_NONE = common dso_local global i32 0, align 4
@BQ24190_REG_CCC = common dso_local global i32 0, align 4
@BQ24190_REG_CCC_FORCE_20PCT_MASK = common dso_local global i32 0, align 4
@BQ24190_REG_CCC_FORCE_20PCT_SHIFT = common dso_local global i32 0, align 4
@POWER_SUPPLY_CHARGE_TYPE_TRICKLE = common dso_local global i32 0, align 4
@POWER_SUPPLY_CHARGE_TYPE_FAST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bq24190_dev_info*, %union.power_supply_propval*)* @bq24190_charger_get_charge_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bq24190_charger_get_charge_type(%struct.bq24190_dev_info* %0, %union.power_supply_propval* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bq24190_dev_info*, align 8
  %5 = alloca %union.power_supply_propval*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.bq24190_dev_info* %0, %struct.bq24190_dev_info** %4, align 8
  store %union.power_supply_propval* %1, %union.power_supply_propval** %5, align 8
  %9 = load %struct.bq24190_dev_info*, %struct.bq24190_dev_info** %4, align 8
  %10 = load i32, i32* @BQ24190_REG_POC, align 4
  %11 = load i32, i32* @BQ24190_REG_POC_CHG_CONFIG_MASK, align 4
  %12 = load i32, i32* @BQ24190_REG_POC_CHG_CONFIG_SHIFT, align 4
  %13 = call i32 @bq24190_read_mask(%struct.bq24190_dev_info* %9, i32 %10, i32 %11, i32 %12, i64* %6)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %3, align 4
  br label %46

18:                                               ; preds = %2
  %19 = load i64, i64* %6, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %18
  %22 = load i32, i32* @POWER_SUPPLY_CHARGE_TYPE_NONE, align 4
  store i32 %22, i32* %7, align 4
  br label %42

23:                                               ; preds = %18
  %24 = load %struct.bq24190_dev_info*, %struct.bq24190_dev_info** %4, align 8
  %25 = load i32, i32* @BQ24190_REG_CCC, align 4
  %26 = load i32, i32* @BQ24190_REG_CCC_FORCE_20PCT_MASK, align 4
  %27 = load i32, i32* @BQ24190_REG_CCC_FORCE_20PCT_SHIFT, align 4
  %28 = call i32 @bq24190_read_mask(%struct.bq24190_dev_info* %24, i32 %25, i32 %26, i32 %27, i64* %6)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %23
  %32 = load i32, i32* %8, align 4
  store i32 %32, i32* %3, align 4
  br label %46

33:                                               ; preds = %23
  %34 = load i64, i64* %6, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = load i32, i32* @POWER_SUPPLY_CHARGE_TYPE_TRICKLE, align 4
  br label %40

38:                                               ; preds = %33
  %39 = load i32, i32* @POWER_SUPPLY_CHARGE_TYPE_FAST, align 4
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi i32 [ %37, %36 ], [ %39, %38 ]
  store i32 %41, i32* %7, align 4
  br label %42

42:                                               ; preds = %40, %21
  %43 = load i32, i32* %7, align 4
  %44 = load %union.power_supply_propval*, %union.power_supply_propval** %5, align 8
  %45 = bitcast %union.power_supply_propval* %44 to i32*
  store i32 %43, i32* %45, align 4
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %42, %31, %16
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @bq24190_read_mask(%struct.bq24190_dev_info*, i32, i32, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
