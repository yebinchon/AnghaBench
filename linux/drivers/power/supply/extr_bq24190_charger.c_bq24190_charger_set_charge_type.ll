; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq24190_charger.c_bq24190_charger_set_charge_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq24190_charger.c_bq24190_charger_set_charge_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bq24190_dev_info = type { i32 }
%union.power_supply_propval = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@BQ24190_REG_CCC = common dso_local global i32 0, align 4
@BQ24190_REG_CCC_FORCE_20PCT_MASK = common dso_local global i32 0, align 4
@BQ24190_REG_CCC_FORCE_20PCT_SHIFT = common dso_local global i32 0, align 4
@BQ24190_REG_CTTC = common dso_local global i32 0, align 4
@BQ24190_REG_CTTC_EN_TERM_MASK = common dso_local global i32 0, align 4
@BQ24190_REG_CTTC_EN_TERM_SHIFT = common dso_local global i32 0, align 4
@BQ24190_REG_POC = common dso_local global i32 0, align 4
@BQ24190_REG_POC_CHG_CONFIG_MASK = common dso_local global i32 0, align 4
@BQ24190_REG_POC_CHG_CONFIG_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bq24190_dev_info*, %union.power_supply_propval*)* @bq24190_charger_set_charge_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bq24190_charger_set_charge_type(%struct.bq24190_dev_info* %0, %union.power_supply_propval* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bq24190_dev_info*, align 8
  %5 = alloca %union.power_supply_propval*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.bq24190_dev_info* %0, %struct.bq24190_dev_info** %4, align 8
  store %union.power_supply_propval* %1, %union.power_supply_propval** %5, align 8
  %10 = load %union.power_supply_propval*, %union.power_supply_propval** %5, align 8
  %11 = bitcast %union.power_supply_propval* %10 to i32*
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %16 [
    i32 129, label %13
    i32 128, label %14
    i32 130, label %15
  ]

13:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %19

14:                                               ; preds = %2
  store i32 1, i32* %6, align 4
  store i32 1, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %19

15:                                               ; preds = %2
  store i32 1, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 1, i32* %8, align 4
  br label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %52

19:                                               ; preds = %15, %14, %13
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %45

22:                                               ; preds = %19
  %23 = load %struct.bq24190_dev_info*, %struct.bq24190_dev_info** %4, align 8
  %24 = load i32, i32* @BQ24190_REG_CCC, align 4
  %25 = load i32, i32* @BQ24190_REG_CCC_FORCE_20PCT_MASK, align 4
  %26 = load i32, i32* @BQ24190_REG_CCC_FORCE_20PCT_SHIFT, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @bq24190_write_mask(%struct.bq24190_dev_info* %23, i32 %24, i32 %25, i32 %26, i32 %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %22
  %32 = load i32, i32* %9, align 4
  store i32 %32, i32* %3, align 4
  br label %52

33:                                               ; preds = %22
  %34 = load %struct.bq24190_dev_info*, %struct.bq24190_dev_info** %4, align 8
  %35 = load i32, i32* @BQ24190_REG_CTTC, align 4
  %36 = load i32, i32* @BQ24190_REG_CTTC_EN_TERM_MASK, align 4
  %37 = load i32, i32* @BQ24190_REG_CTTC_EN_TERM_SHIFT, align 4
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @bq24190_write_mask(%struct.bq24190_dev_info* %34, i32 %35, i32 %36, i32 %37, i32 %38)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %33
  %43 = load i32, i32* %9, align 4
  store i32 %43, i32* %3, align 4
  br label %52

44:                                               ; preds = %33
  br label %45

45:                                               ; preds = %44, %19
  %46 = load %struct.bq24190_dev_info*, %struct.bq24190_dev_info** %4, align 8
  %47 = load i32, i32* @BQ24190_REG_POC, align 4
  %48 = load i32, i32* @BQ24190_REG_POC_CHG_CONFIG_MASK, align 4
  %49 = load i32, i32* @BQ24190_REG_POC_CHG_CONFIG_SHIFT, align 4
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @bq24190_write_mask(%struct.bq24190_dev_info* %46, i32 %47, i32 %48, i32 %49, i32 %50)
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %45, %42, %31, %16
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @bq24190_write_mask(%struct.bq24190_dev_info*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
