; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_axp288_charger.c_axp288_charger_set_vbus_inlmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_axp288_charger.c_axp288_charger_set_vbus_inlmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.axp288_chrg_info = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@CHRG_VBUS_ILIM_4000MA = common dso_local global i32 0, align 4
@CHRG_VBUS_ILIM_BIT_POS = common dso_local global i32 0, align 4
@CHRG_VBUS_ILIM_3500MA = common dso_local global i32 0, align 4
@CHRG_VBUS_ILIM_3000MA = common dso_local global i32 0, align 4
@CHRG_VBUS_ILIM_2500MA = common dso_local global i32 0, align 4
@CHRG_VBUS_ILIM_2000MA = common dso_local global i32 0, align 4
@CHRG_VBUS_ILIM_1500MA = common dso_local global i32 0, align 4
@CHRG_VBUS_ILIM_900MA = common dso_local global i32 0, align 4
@CHRG_VBUS_ILIM_500MA = common dso_local global i32 0, align 4
@CHRG_VBUS_ILIM_100MA = common dso_local global i32 0, align 4
@AXP20X_CHRG_BAK_CTRL = common dso_local global i32 0, align 4
@CHRG_VBUS_ILIM_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"charger BAK control %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.axp288_chrg_info*, i32)* @axp288_charger_set_vbus_inlmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axp288_charger_set_vbus_inlmt(%struct.axp288_chrg_info* %0, i32 %1) #0 {
  %3 = alloca %struct.axp288_chrg_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.axp288_chrg_info* %0, %struct.axp288_chrg_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp sge i32 %7, 4000000
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load i32, i32* @CHRG_VBUS_ILIM_4000MA, align 4
  %11 = load i32, i32* @CHRG_VBUS_ILIM_BIT_POS, align 4
  %12 = shl i32 %10, %11
  store i32 %12, i32* %6, align 4
  br label %73

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = icmp sge i32 %14, 3500000
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = load i32, i32* @CHRG_VBUS_ILIM_3500MA, align 4
  %18 = load i32, i32* @CHRG_VBUS_ILIM_BIT_POS, align 4
  %19 = shl i32 %17, %18
  store i32 %19, i32* %6, align 4
  br label %72

20:                                               ; preds = %13
  %21 = load i32, i32* %4, align 4
  %22 = icmp sge i32 %21, 3000000
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = load i32, i32* @CHRG_VBUS_ILIM_3000MA, align 4
  %25 = load i32, i32* @CHRG_VBUS_ILIM_BIT_POS, align 4
  %26 = shl i32 %24, %25
  store i32 %26, i32* %6, align 4
  br label %71

27:                                               ; preds = %20
  %28 = load i32, i32* %4, align 4
  %29 = icmp sge i32 %28, 2500000
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = load i32, i32* @CHRG_VBUS_ILIM_2500MA, align 4
  %32 = load i32, i32* @CHRG_VBUS_ILIM_BIT_POS, align 4
  %33 = shl i32 %31, %32
  store i32 %33, i32* %6, align 4
  br label %70

34:                                               ; preds = %27
  %35 = load i32, i32* %4, align 4
  %36 = icmp sge i32 %35, 2000000
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load i32, i32* @CHRG_VBUS_ILIM_2000MA, align 4
  %39 = load i32, i32* @CHRG_VBUS_ILIM_BIT_POS, align 4
  %40 = shl i32 %38, %39
  store i32 %40, i32* %6, align 4
  br label %69

41:                                               ; preds = %34
  %42 = load i32, i32* %4, align 4
  %43 = icmp sge i32 %42, 1500000
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = load i32, i32* @CHRG_VBUS_ILIM_1500MA, align 4
  %46 = load i32, i32* @CHRG_VBUS_ILIM_BIT_POS, align 4
  %47 = shl i32 %45, %46
  store i32 %47, i32* %6, align 4
  br label %68

48:                                               ; preds = %41
  %49 = load i32, i32* %4, align 4
  %50 = icmp sge i32 %49, 900000
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = load i32, i32* @CHRG_VBUS_ILIM_900MA, align 4
  %53 = load i32, i32* @CHRG_VBUS_ILIM_BIT_POS, align 4
  %54 = shl i32 %52, %53
  store i32 %54, i32* %6, align 4
  br label %67

55:                                               ; preds = %48
  %56 = load i32, i32* %4, align 4
  %57 = icmp sge i32 %56, 500000
  br i1 %57, label %58, label %62

58:                                               ; preds = %55
  %59 = load i32, i32* @CHRG_VBUS_ILIM_500MA, align 4
  %60 = load i32, i32* @CHRG_VBUS_ILIM_BIT_POS, align 4
  %61 = shl i32 %59, %60
  store i32 %61, i32* %6, align 4
  br label %66

62:                                               ; preds = %55
  %63 = load i32, i32* @CHRG_VBUS_ILIM_100MA, align 4
  %64 = load i32, i32* @CHRG_VBUS_ILIM_BIT_POS, align 4
  %65 = shl i32 %63, %64
  store i32 %65, i32* %6, align 4
  br label %66

66:                                               ; preds = %62, %58
  br label %67

67:                                               ; preds = %66, %51
  br label %68

68:                                               ; preds = %67, %44
  br label %69

69:                                               ; preds = %68, %37
  br label %70

70:                                               ; preds = %69, %30
  br label %71

71:                                               ; preds = %70, %23
  br label %72

72:                                               ; preds = %71, %16
  br label %73

73:                                               ; preds = %72, %9
  %74 = load %struct.axp288_chrg_info*, %struct.axp288_chrg_info** %3, align 8
  %75 = getelementptr inbounds %struct.axp288_chrg_info, %struct.axp288_chrg_info* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @AXP20X_CHRG_BAK_CTRL, align 4
  %78 = load i32, i32* @CHRG_VBUS_ILIM_MASK, align 4
  %79 = load i32, i32* %6, align 4
  %80 = call i32 @regmap_update_bits(i32 %76, i32 %77, i32 %78, i32 %79)
  store i32 %80, i32* %5, align 4
  %81 = load i32, i32* %5, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %73
  %84 = load %struct.axp288_chrg_info*, %struct.axp288_chrg_info** %3, align 8
  %85 = getelementptr inbounds %struct.axp288_chrg_info, %struct.axp288_chrg_info* %84, i32 0, i32 0
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i32, i32* %5, align 4
  %89 = call i32 @dev_err(i32* %87, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %88)
  br label %90

90:                                               ; preds = %83, %73
  %91 = load i32, i32* %5, align 4
  ret i32 %91
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
