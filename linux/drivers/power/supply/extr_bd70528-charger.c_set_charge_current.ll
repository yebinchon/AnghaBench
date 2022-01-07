; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_bd70528-charger.c_set_charge_current.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_bd70528-charger.c_set_charge_current.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bd70528_psy = type { i32, i32 }

@.str = private unnamed_addr constant [52 x i8] c"Requested charge current %u exceed maximum (500mA)\0A\00", align 1
@MAX_WARM_CHG_CURR_SEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"Requested charge current %u smaller than min (10mA)\0A\00", align 1
@MIN_CHG_CURR_SEL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@warm_charge_curr = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [34 x i8] c"Unsupported charge current %u mA\0A\00", align 1
@BD70528_REG_CHG_CHG_CURR_WARM = common dso_local global i32 0, align 4
@BD70528_MASK_CHG_CHG_CURR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"Charge current write failure (%d)\0A\00", align 1
@MAX_COLD_CHG_CURR_SEL = common dso_local global i32 0, align 4
@BD70528_REG_CHG_CHG_CURR_COLD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bd70528_psy*, i32)* @set_charge_current to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_charge_current(%struct.bd70528_psy* %0, i32 %1) #0 {
  %3 = alloca %struct.bd70528_psy*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.bd70528_psy* %0, %struct.bd70528_psy** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp sgt i32 %9, 500
  br i1 %10, label %11, label %18

11:                                               ; preds = %2
  %12 = load %struct.bd70528_psy*, %struct.bd70528_psy** %3, align 8
  %13 = getelementptr inbounds %struct.bd70528_psy, %struct.bd70528_psy* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @dev_warn(i32 %14, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* @MAX_WARM_CHG_CURR_SEL, align 4
  store i32 %17, i32* %5, align 4
  br label %51

18:                                               ; preds = %2
  %19 = load i32, i32* %4, align 4
  %20 = icmp slt i32 %19, 10
  br i1 %20, label %21, label %30

21:                                               ; preds = %18
  %22 = load %struct.bd70528_psy*, %struct.bd70528_psy** %3, align 8
  %23 = getelementptr inbounds %struct.bd70528_psy, %struct.bd70528_psy* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @dev_err(i32 %24, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* @MIN_CHG_CURR_SEL, align 4
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %6, align 4
  br label %51

30:                                               ; preds = %18
  %31 = load i32*, i32** @warm_charge_curr, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32*, i32** @warm_charge_curr, align 8
  %34 = call i32 @ARRAY_SIZE(i32* %33)
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @find_selector_for_value_low(i32* %32, i32 %34, i32 %35, i32* %5, i32* %8)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %30
  %40 = load i32, i32* @MIN_CHG_CURR_SEL, align 4
  store i32 %40, i32* %5, align 4
  br label %51

41:                                               ; preds = %30
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %41
  %45 = load %struct.bd70528_psy*, %struct.bd70528_psy** %3, align 8
  %46 = getelementptr inbounds %struct.bd70528_psy, %struct.bd70528_psy* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @dev_warn(i32 %47, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %48)
  br label %50

50:                                               ; preds = %44, %41
  br label %51

51:                                               ; preds = %50, %39, %21, %11
  %52 = load %struct.bd70528_psy*, %struct.bd70528_psy** %3, align 8
  %53 = getelementptr inbounds %struct.bd70528_psy, %struct.bd70528_psy* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @BD70528_REG_CHG_CHG_CURR_WARM, align 4
  %56 = load i32, i32* @BD70528_MASK_CHG_CHG_CURR, align 4
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @regmap_update_bits(i32 %54, i32 %55, i32 %56, i32 %57)
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %51
  %62 = load %struct.bd70528_psy*, %struct.bd70528_psy** %3, align 8
  %63 = getelementptr inbounds %struct.bd70528_psy, %struct.bd70528_psy* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @dev_err(i32 %64, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %65)
  br label %67

67:                                               ; preds = %61, %51
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* @MAX_COLD_CHG_CURR_SEL, align 4
  %70 = icmp ugt i32 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %67
  %72 = load i32, i32* @MAX_COLD_CHG_CURR_SEL, align 4
  store i32 %72, i32* %5, align 4
  br label %73

73:                                               ; preds = %71, %67
  %74 = load i32, i32* %7, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %84, label %76

76:                                               ; preds = %73
  %77 = load %struct.bd70528_psy*, %struct.bd70528_psy** %3, align 8
  %78 = getelementptr inbounds %struct.bd70528_psy, %struct.bd70528_psy* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @BD70528_REG_CHG_CHG_CURR_COLD, align 4
  %81 = load i32, i32* @BD70528_MASK_CHG_CHG_CURR, align 4
  %82 = load i32, i32* %5, align 4
  %83 = call i32 @regmap_update_bits(i32 %79, i32 %80, i32 %81, i32 %82)
  store i32 %83, i32* %7, align 4
  br label %84

84:                                               ; preds = %76, %73
  %85 = load i32, i32* %6, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %89, label %87

87:                                               ; preds = %84
  %88 = load i32, i32* %7, align 4
  store i32 %88, i32* %6, align 4
  br label %89

89:                                               ; preds = %87, %84
  %90 = load i32, i32* %6, align 4
  ret i32 %90
}

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @find_selector_for_value_low(i32*, i32, i32, i32*, i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
