; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_max77693_charger.c_max77693_set_charge_input_threshold_volt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_max77693_charger.c_max77693_set_charge_input_threshold_volt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max77693_charger = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [59 x i8] c"Wrong value for charge input voltage regulation threshold\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@CHG_CNFG_12_VCHGINREG_SHIFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"Charge input voltage regulation threshold: %u (0x%x)\0A\00", align 1
@MAX77693_CHG_REG_CHG_CNFG_12 = common dso_local global i32 0, align 4
@CHG_CNFG_12_VCHGINREG_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.max77693_charger*, i32)* @max77693_set_charge_input_threshold_volt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max77693_set_charge_input_threshold_volt(%struct.max77693_charger* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.max77693_charger*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.max77693_charger* %0, %struct.max77693_charger** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  switch i32 %7, label %13 [
    i32 4300000, label %8
    i32 4700000, label %9
    i32 4800000, label %9
    i32 4900000, label %9
  ]

8:                                                ; preds = %2
  store i32 0, i32* %6, align 4
  br label %20

9:                                                ; preds = %2, %2, %2
  %10 = load i32, i32* %5, align 4
  %11 = sub i32 %10, 4700000
  %12 = udiv i32 %11, 100000
  store i32 %12, i32* %6, align 4
  br label %20

13:                                               ; preds = %2
  %14 = load %struct.max77693_charger*, %struct.max77693_charger** %4, align 8
  %15 = getelementptr inbounds %struct.max77693_charger, %struct.max77693_charger* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @dev_err(i32 %16, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %39

20:                                               ; preds = %9, %8
  %21 = load i32, i32* @CHG_CNFG_12_VCHGINREG_SHIFT, align 4
  %22 = load i32, i32* %6, align 4
  %23 = shl i32 %22, %21
  store i32 %23, i32* %6, align 4
  %24 = load %struct.max77693_charger*, %struct.max77693_charger** %4, align 8
  %25 = getelementptr inbounds %struct.max77693_charger, %struct.max77693_charger* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @dev_dbg(i32 %26, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %27, i32 %28)
  %30 = load %struct.max77693_charger*, %struct.max77693_charger** %4, align 8
  %31 = getelementptr inbounds %struct.max77693_charger, %struct.max77693_charger* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @MAX77693_CHG_REG_CHG_CNFG_12, align 4
  %36 = load i32, i32* @CHG_CNFG_12_VCHGINREG_MASK, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @regmap_update_bits(i32 %34, i32 %35, i32 %36, i32 %37)
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %20, %13
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
