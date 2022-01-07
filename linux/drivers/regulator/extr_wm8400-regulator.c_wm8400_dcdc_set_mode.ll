; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_wm8400-regulator.c_wm8400_dcdc_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_wm8400-regulator.c_wm8400_dcdc_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.regmap = type { i32 }

@WM8400_DCDC1 = common dso_local global i32 0, align 4
@WM8400_DCDC1_CONTROL_2 = common dso_local global i32 0, align 4
@WM8400_DC1_FRC_PWM = common dso_local global i32 0, align 4
@WM8400_DCDC1_CONTROL_1 = common dso_local global i32 0, align 4
@WM8400_DC1_ACTIVE = common dso_local global i32 0, align 4
@WM8400_DC1_SLEEP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32)* @wm8400_dcdc_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8400_dcdc_set_mode(%struct.regulator_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regulator_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.regmap*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %10 = call %struct.regmap* @rdev_get_regmap(%struct.regulator_dev* %9)
  store %struct.regmap* %10, %struct.regmap** %6, align 8
  %11 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %12 = call i32 @rdev_get_id(%struct.regulator_dev* %11)
  %13 = load i32, i32* @WM8400_DCDC1, align 4
  %14 = sub nsw i32 %12, %13
  %15 = mul nsw i32 %14, 2
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %5, align 4
  switch i32 %16, label %69 [
    i32 130, label %17
    i32 128, label %39
    i32 129, label %60
  ]

17:                                               ; preds = %2
  %18 = load %struct.regmap*, %struct.regmap** %6, align 8
  %19 = load i32, i32* @WM8400_DCDC1_CONTROL_2, align 4
  %20 = load i32, i32* %7, align 4
  %21 = add nsw i32 %19, %20
  %22 = load i32, i32* @WM8400_DC1_FRC_PWM, align 4
  %23 = load i32, i32* @WM8400_DC1_FRC_PWM, align 4
  %24 = call i32 @regmap_update_bits(%struct.regmap* %18, i32 %21, i32 %22, i32 %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %17
  %28 = load i32, i32* %8, align 4
  store i32 %28, i32* %3, align 4
  br label %72

29:                                               ; preds = %17
  %30 = load %struct.regmap*, %struct.regmap** %6, align 8
  %31 = load i32, i32* @WM8400_DCDC1_CONTROL_1, align 4
  %32 = load i32, i32* %7, align 4
  %33 = add nsw i32 %31, %32
  %34 = load i32, i32* @WM8400_DC1_ACTIVE, align 4
  %35 = load i32, i32* @WM8400_DC1_SLEEP, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @WM8400_DC1_ACTIVE, align 4
  %38 = call i32 @regmap_update_bits(%struct.regmap* %30, i32 %33, i32 %36, i32 %37)
  store i32 %38, i32* %3, align 4
  br label %72

39:                                               ; preds = %2
  %40 = load %struct.regmap*, %struct.regmap** %6, align 8
  %41 = load i32, i32* @WM8400_DCDC1_CONTROL_2, align 4
  %42 = load i32, i32* %7, align 4
  %43 = add nsw i32 %41, %42
  %44 = load i32, i32* @WM8400_DC1_FRC_PWM, align 4
  %45 = call i32 @regmap_update_bits(%struct.regmap* %40, i32 %43, i32 %44, i32 0)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %39
  %49 = load i32, i32* %8, align 4
  store i32 %49, i32* %3, align 4
  br label %72

50:                                               ; preds = %39
  %51 = load %struct.regmap*, %struct.regmap** %6, align 8
  %52 = load i32, i32* @WM8400_DCDC1_CONTROL_1, align 4
  %53 = load i32, i32* %7, align 4
  %54 = add nsw i32 %52, %53
  %55 = load i32, i32* @WM8400_DC1_ACTIVE, align 4
  %56 = load i32, i32* @WM8400_DC1_SLEEP, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @WM8400_DC1_ACTIVE, align 4
  %59 = call i32 @regmap_update_bits(%struct.regmap* %51, i32 %54, i32 %57, i32 %58)
  store i32 %59, i32* %3, align 4
  br label %72

60:                                               ; preds = %2
  %61 = load %struct.regmap*, %struct.regmap** %6, align 8
  %62 = load i32, i32* @WM8400_DCDC1_CONTROL_1, align 4
  %63 = load i32, i32* %7, align 4
  %64 = add nsw i32 %62, %63
  %65 = load i32, i32* @WM8400_DC1_ACTIVE, align 4
  %66 = load i32, i32* @WM8400_DC1_SLEEP, align 4
  %67 = or i32 %65, %66
  %68 = call i32 @regmap_update_bits(%struct.regmap* %61, i32 %64, i32 %67, i32 0)
  store i32 %68, i32* %3, align 4
  br label %72

69:                                               ; preds = %2
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %69, %60, %50, %48, %29, %27
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local %struct.regmap* @rdev_get_regmap(%struct.regulator_dev*) #1

declare dso_local i32 @rdev_get_id(%struct.regulator_dev*) #1

declare dso_local i32 @regmap_update_bits(%struct.regmap*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
