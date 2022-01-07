; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_max77693_charger.c_max77693_set_min_system_volt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_max77693_charger.c_max77693_set_min_system_volt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max77693_charger = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [51 x i8] c"Wrong value for minimum system regulation voltage\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@CHG_CNFG_04_MINVSYS_SHIFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"Minimum system regulation voltage: %u (0x%x)\0A\00", align 1
@MAX77693_CHG_REG_CHG_CNFG_04 = common dso_local global i32 0, align 4
@CHG_CNFG_04_MINVSYS_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.max77693_charger*, i32)* @max77693_set_min_system_volt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max77693_set_min_system_volt(%struct.max77693_charger* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.max77693_charger*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.max77693_charger* %0, %struct.max77693_charger** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp ult i32 %7, 3000000
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* %5, align 4
  %11 = icmp ugt i32 %10, 3700000
  br i1 %11, label %12, label %19

12:                                               ; preds = %9, %2
  %13 = load %struct.max77693_charger*, %struct.max77693_charger** %4, align 8
  %14 = getelementptr inbounds %struct.max77693_charger, %struct.max77693_charger* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @dev_err(i32 %15, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %41

19:                                               ; preds = %9
  %20 = load i32, i32* %5, align 4
  %21 = sub i32 %20, 3000000
  %22 = udiv i32 %21, 100000
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* @CHG_CNFG_04_MINVSYS_SHIFT, align 4
  %24 = load i32, i32* %6, align 4
  %25 = shl i32 %24, %23
  store i32 %25, i32* %6, align 4
  %26 = load %struct.max77693_charger*, %struct.max77693_charger** %4, align 8
  %27 = getelementptr inbounds %struct.max77693_charger, %struct.max77693_charger* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @dev_dbg(i32 %28, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %29, i32 %30)
  %32 = load %struct.max77693_charger*, %struct.max77693_charger** %4, align 8
  %33 = getelementptr inbounds %struct.max77693_charger, %struct.max77693_charger* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @MAX77693_CHG_REG_CHG_CNFG_04, align 4
  %38 = load i32, i32* @CHG_CNFG_04_MINVSYS_MASK, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @regmap_update_bits(i32 %36, i32 %37, i32 %38, i32 %39)
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %19, %12
  %42 = load i32, i32* %3, align 4
  ret i32 %42
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
