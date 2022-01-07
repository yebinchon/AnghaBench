; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_axp20x_battery.c_axp20x_set_max_constant_charge_current.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_axp20x_battery.c_axp20x_set_max_constant_charge_current.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.axp20x_batt_ps = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@AXP20X_CHRG_CTRL1_TGT_CURR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [143 x i8] c"Setting max constant charge current higher than previously defined. Note that increasing the constant charge current may damage your battery.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.axp20x_batt_ps*, i32)* @axp20x_set_max_constant_charge_current to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axp20x_set_max_constant_charge_current(%struct.axp20x_batt_ps* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.axp20x_batt_ps*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.axp20x_batt_ps* %0, %struct.axp20x_batt_ps** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.axp20x_batt_ps*, %struct.axp20x_batt_ps** %4, align 8
  %10 = getelementptr inbounds %struct.axp20x_batt_ps, %struct.axp20x_batt_ps* %9, i32 0, i32 2
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = sub nsw i32 %8, %13
  %15 = load %struct.axp20x_batt_ps*, %struct.axp20x_batt_ps** %4, align 8
  %16 = getelementptr inbounds %struct.axp20x_batt_ps, %struct.axp20x_batt_ps* %15, i32 0, i32 2
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = sdiv i32 %14, %19
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @AXP20X_CHRG_CTRL1_TGT_CURR, align 4
  %23 = icmp sgt i32 %21, %22
  br i1 %23, label %27, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* %5, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24, %2
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %73

30:                                               ; preds = %24
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.axp20x_batt_ps*, %struct.axp20x_batt_ps** %4, align 8
  %33 = getelementptr inbounds %struct.axp20x_batt_ps, %struct.axp20x_batt_ps* %32, i32 0, i32 2
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = mul nsw i32 %31, %36
  %38 = load %struct.axp20x_batt_ps*, %struct.axp20x_batt_ps** %4, align 8
  %39 = getelementptr inbounds %struct.axp20x_batt_ps, %struct.axp20x_batt_ps* %38, i32 0, i32 2
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %37, %42
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = load %struct.axp20x_batt_ps*, %struct.axp20x_batt_ps** %4, align 8
  %46 = getelementptr inbounds %struct.axp20x_batt_ps, %struct.axp20x_batt_ps* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp sgt i32 %44, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %30
  %50 = load %struct.axp20x_batt_ps*, %struct.axp20x_batt_ps** %4, align 8
  %51 = getelementptr inbounds %struct.axp20x_batt_ps, %struct.axp20x_batt_ps* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @dev_warn(i32 %52, i8* getelementptr inbounds ([143 x i8], [143 x i8]* @.str, i64 0, i64 0))
  br label %55

54:                                               ; preds = %30
  store i32 1, i32* %6, align 4
  br label %55

55:                                               ; preds = %54, %49
  %56 = load i32, i32* %5, align 4
  %57 = load %struct.axp20x_batt_ps*, %struct.axp20x_batt_ps** %4, align 8
  %58 = getelementptr inbounds %struct.axp20x_batt_ps, %struct.axp20x_batt_ps* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load i32, i32* %6, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %72

61:                                               ; preds = %55
  %62 = load %struct.axp20x_batt_ps*, %struct.axp20x_batt_ps** %4, align 8
  %63 = call i32 @axp20x_get_constant_charge_current(%struct.axp20x_batt_ps* %62, i32* %7)
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* %5, align 4
  %66 = icmp sgt i32 %64, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %61
  %68 = load %struct.axp20x_batt_ps*, %struct.axp20x_batt_ps** %4, align 8
  %69 = load i32, i32* %5, align 4
  %70 = call i32 @axp20x_set_constant_charge_current(%struct.axp20x_batt_ps* %68, i32 %69)
  br label %71

71:                                               ; preds = %67, %61
  br label %72

72:                                               ; preds = %71, %55
  store i32 0, i32* %3, align 4
  br label %73

73:                                               ; preds = %72, %27
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @axp20x_get_constant_charge_current(%struct.axp20x_batt_ps*, i32*) #1

declare dso_local i32 @axp20x_set_constant_charge_current(%struct.axp20x_batt_ps*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
