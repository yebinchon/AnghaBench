; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_max77693_charger.c_max77693_set_constant_volt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_max77693_charger.c_max77693_set_constant_volt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max77693_charger = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [43 x i8] c"Wrong value for charging constant voltage\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@CHG_CNFG_04_CHGCVPRM_SHIFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Charging constant voltage: %u (0x%x)\0A\00", align 1
@MAX77693_CHG_REG_CHG_CNFG_04 = common dso_local global i32 0, align 4
@CHG_CNFG_04_CHGCVPRM_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.max77693_charger*, i32)* @max77693_set_constant_volt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max77693_set_constant_volt(%struct.max77693_charger* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.max77693_charger*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.max77693_charger* %0, %struct.max77693_charger** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp uge i32 %7, 3650000
  br i1 %8, label %9, label %16

9:                                                ; preds = %2
  %10 = load i32, i32* %5, align 4
  %11 = icmp ult i32 %10, 4340000
  br i1 %11, label %12, label %16

12:                                               ; preds = %9
  %13 = load i32, i32* %5, align 4
  %14 = sub i32 %13, 3650000
  %15 = udiv i32 %14, 25000
  store i32 %15, i32* %6, align 4
  br label %43

16:                                               ; preds = %9, %2
  %17 = load i32, i32* %5, align 4
  %18 = icmp uge i32 %17, 4340000
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = load i32, i32* %5, align 4
  %21 = icmp ult i32 %20, 4350000
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store i32 28, i32* %6, align 4
  br label %42

23:                                               ; preds = %19, %16
  %24 = load i32, i32* %5, align 4
  %25 = icmp uge i32 %24, 4350000
  br i1 %25, label %26, label %34

26:                                               ; preds = %23
  %27 = load i32, i32* %5, align 4
  %28 = icmp ule i32 %27, 4400000
  br i1 %28, label %29, label %34

29:                                               ; preds = %26
  %30 = load i32, i32* %5, align 4
  %31 = sub i32 %30, 4350000
  %32 = udiv i32 %31, 25000
  %33 = add i32 29, %32
  store i32 %33, i32* %6, align 4
  br label %41

34:                                               ; preds = %26, %23
  %35 = load %struct.max77693_charger*, %struct.max77693_charger** %4, align 8
  %36 = getelementptr inbounds %struct.max77693_charger, %struct.max77693_charger* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @dev_err(i32 %37, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %62

41:                                               ; preds = %29
  br label %42

42:                                               ; preds = %41, %22
  br label %43

43:                                               ; preds = %42, %12
  %44 = load i32, i32* @CHG_CNFG_04_CHGCVPRM_SHIFT, align 4
  %45 = load i32, i32* %6, align 4
  %46 = shl i32 %45, %44
  store i32 %46, i32* %6, align 4
  %47 = load %struct.max77693_charger*, %struct.max77693_charger** %4, align 8
  %48 = getelementptr inbounds %struct.max77693_charger, %struct.max77693_charger* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @dev_dbg(i32 %49, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %50, i32 %51)
  %53 = load %struct.max77693_charger*, %struct.max77693_charger** %4, align 8
  %54 = getelementptr inbounds %struct.max77693_charger, %struct.max77693_charger* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @MAX77693_CHG_REG_CHG_CNFG_04, align 4
  %59 = load i32, i32* @CHG_CNFG_04_CHGCVPRM_MASK, align 4
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @regmap_update_bits(i32 %57, i32 %58, i32 %59, i32 %60)
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %43, %34
  %63 = load i32, i32* %3, align 4
  ret i32 %63
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
