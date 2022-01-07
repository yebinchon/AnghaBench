; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_max77693_charger.c_max77693_set_thermal_regulation_temp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_max77693_charger.c_max77693_set_thermal_regulation_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max77693_charger = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [53 x i8] c"Wrong value for thermal regulation loop temperature\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@CHG_CNFG_07_REGTEMP_SHIFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"Thermal regulation loop temperature: %u (0x%x)\0A\00", align 1
@MAX77693_CHG_REG_CHG_CNFG_07 = common dso_local global i32 0, align 4
@CHG_CNFG_07_REGTEMP_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.max77693_charger*, i32)* @max77693_set_thermal_regulation_temp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max77693_set_thermal_regulation_temp(%struct.max77693_charger* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.max77693_charger*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.max77693_charger* %0, %struct.max77693_charger** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  switch i32 %7, label %12 [
    i32 70, label %8
    i32 85, label %8
    i32 100, label %8
    i32 115, label %8
  ]

8:                                                ; preds = %2, %2, %2, %2
  %9 = load i32, i32* %5, align 4
  %10 = sub i32 %9, 70
  %11 = udiv i32 %10, 15
  store i32 %11, i32* %6, align 4
  br label %19

12:                                               ; preds = %2
  %13 = load %struct.max77693_charger*, %struct.max77693_charger** %4, align 8
  %14 = getelementptr inbounds %struct.max77693_charger, %struct.max77693_charger* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @dev_err(i32 %15, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %38

19:                                               ; preds = %8
  %20 = load i32, i32* @CHG_CNFG_07_REGTEMP_SHIFT, align 4
  %21 = load i32, i32* %6, align 4
  %22 = shl i32 %21, %20
  store i32 %22, i32* %6, align 4
  %23 = load %struct.max77693_charger*, %struct.max77693_charger** %4, align 8
  %24 = getelementptr inbounds %struct.max77693_charger, %struct.max77693_charger* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @dev_dbg(i32 %25, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %26, i32 %27)
  %29 = load %struct.max77693_charger*, %struct.max77693_charger** %4, align 8
  %30 = getelementptr inbounds %struct.max77693_charger, %struct.max77693_charger* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @MAX77693_CHG_REG_CHG_CNFG_07, align 4
  %35 = load i32, i32* @CHG_CNFG_07_REGTEMP_MASK, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @regmap_update_bits(i32 %33, i32 %34, i32 %35, i32 %36)
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %19, %12
  %39 = load i32, i32* %3, align 4
  ret i32 %39
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
