; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_axp20x_battery.c_axp20x_set_constant_charge_current.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_axp20x_battery.c_axp20x_set_constant_charge_current.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.axp20x_batt_ps = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@AXP20X_CHRG_CTRL1_TGT_CURR = common dso_local global i32 0, align 4
@AXP20X_CHRG_CTRL1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.axp20x_batt_ps*, i32)* @axp20x_set_constant_charge_current to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axp20x_set_constant_charge_current(%struct.axp20x_batt_ps* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.axp20x_batt_ps*, align 8
  %5 = alloca i32, align 4
  store %struct.axp20x_batt_ps* %0, %struct.axp20x_batt_ps** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.axp20x_batt_ps*, %struct.axp20x_batt_ps** %4, align 8
  %8 = getelementptr inbounds %struct.axp20x_batt_ps, %struct.axp20x_batt_ps* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp sgt i32 %6, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %45

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.axp20x_batt_ps*, %struct.axp20x_batt_ps** %4, align 8
  %17 = getelementptr inbounds %struct.axp20x_batt_ps, %struct.axp20x_batt_ps* %16, i32 0, i32 2
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = sub nsw i32 %15, %20
  %22 = load %struct.axp20x_batt_ps*, %struct.axp20x_batt_ps** %4, align 8
  %23 = getelementptr inbounds %struct.axp20x_batt_ps, %struct.axp20x_batt_ps* %22, i32 0, i32 2
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = sdiv i32 %21, %26
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @AXP20X_CHRG_CTRL1_TGT_CURR, align 4
  %30 = icmp sgt i32 %28, %29
  br i1 %30, label %34, label %31

31:                                               ; preds = %14
  %32 = load i32, i32* %5, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %31, %14
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %45

37:                                               ; preds = %31
  %38 = load %struct.axp20x_batt_ps*, %struct.axp20x_batt_ps** %4, align 8
  %39 = getelementptr inbounds %struct.axp20x_batt_ps, %struct.axp20x_batt_ps* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @AXP20X_CHRG_CTRL1, align 4
  %42 = load i32, i32* @AXP20X_CHRG_CTRL1_TGT_CURR, align 4
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @regmap_update_bits(i32 %40, i32 %41, i32 %42, i32 %43)
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %37, %34, %11
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
