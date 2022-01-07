; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_wm8350-regulator.c_wm8350_dcdc_set_suspend_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_wm8350-regulator.c_wm8350_dcdc_set_suspend_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.wm8350 = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@WM8350_DCDC1_LOW_POWER = common dso_local global i32 0, align 4
@WM8350_DCDC_HIB_MODE_MASK = common dso_local global i32 0, align 4
@WM8350_DCDC3_LOW_POWER = common dso_local global i32 0, align 4
@WM8350_DCDC4_LOW_POWER = common dso_local global i32 0, align 4
@WM8350_DCDC6_LOW_POWER = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*)* @wm8350_dcdc_set_suspend_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8350_dcdc_set_suspend_enable(%struct.regulator_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.regulator_dev*, align 8
  %4 = alloca %struct.wm8350*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %3, align 8
  %7 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %8 = call %struct.wm8350* @rdev_get_drvdata(%struct.regulator_dev* %7)
  store %struct.wm8350* %8, %struct.wm8350** %4, align 8
  %9 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %10 = call i32 @rdev_get_id(%struct.regulator_dev* %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  switch i32 %11, label %77 [
    i32 133, label %12
    i32 131, label %28
    i32 130, label %44
    i32 128, label %60
    i32 132, label %76
    i32 129, label %76
  ]

12:                                               ; preds = %1
  %13 = load %struct.wm8350*, %struct.wm8350** %4, align 8
  %14 = load i32, i32* @WM8350_DCDC1_LOW_POWER, align 4
  %15 = call i32 @wm8350_reg_read(%struct.wm8350* %13, i32 %14)
  %16 = load i32, i32* @WM8350_DCDC_HIB_MODE_MASK, align 4
  %17 = xor i32 %16, -1
  %18 = and i32 %15, %17
  store i32 %18, i32* %6, align 4
  %19 = load %struct.wm8350*, %struct.wm8350** %4, align 8
  %20 = load i32, i32* @WM8350_DCDC1_LOW_POWER, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.wm8350*, %struct.wm8350** %4, align 8
  %23 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %21, %25
  %27 = call i32 @wm8350_reg_write(%struct.wm8350* %19, i32 %20, i32 %26)
  br label %80

28:                                               ; preds = %1
  %29 = load %struct.wm8350*, %struct.wm8350** %4, align 8
  %30 = load i32, i32* @WM8350_DCDC3_LOW_POWER, align 4
  %31 = call i32 @wm8350_reg_read(%struct.wm8350* %29, i32 %30)
  %32 = load i32, i32* @WM8350_DCDC_HIB_MODE_MASK, align 4
  %33 = xor i32 %32, -1
  %34 = and i32 %31, %33
  store i32 %34, i32* %6, align 4
  %35 = load %struct.wm8350*, %struct.wm8350** %4, align 8
  %36 = load i32, i32* @WM8350_DCDC3_LOW_POWER, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.wm8350*, %struct.wm8350** %4, align 8
  %39 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %37, %41
  %43 = call i32 @wm8350_reg_write(%struct.wm8350* %35, i32 %36, i32 %42)
  br label %80

44:                                               ; preds = %1
  %45 = load %struct.wm8350*, %struct.wm8350** %4, align 8
  %46 = load i32, i32* @WM8350_DCDC4_LOW_POWER, align 4
  %47 = call i32 @wm8350_reg_read(%struct.wm8350* %45, i32 %46)
  %48 = load i32, i32* @WM8350_DCDC_HIB_MODE_MASK, align 4
  %49 = xor i32 %48, -1
  %50 = and i32 %47, %49
  store i32 %50, i32* %6, align 4
  %51 = load %struct.wm8350*, %struct.wm8350** %4, align 8
  %52 = load i32, i32* @WM8350_DCDC4_LOW_POWER, align 4
  %53 = load i32, i32* %6, align 4
  %54 = load %struct.wm8350*, %struct.wm8350** %4, align 8
  %55 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %53, %57
  %59 = call i32 @wm8350_reg_write(%struct.wm8350* %51, i32 %52, i32 %58)
  br label %80

60:                                               ; preds = %1
  %61 = load %struct.wm8350*, %struct.wm8350** %4, align 8
  %62 = load i32, i32* @WM8350_DCDC6_LOW_POWER, align 4
  %63 = call i32 @wm8350_reg_read(%struct.wm8350* %61, i32 %62)
  %64 = load i32, i32* @WM8350_DCDC_HIB_MODE_MASK, align 4
  %65 = xor i32 %64, -1
  %66 = and i32 %63, %65
  store i32 %66, i32* %6, align 4
  %67 = load %struct.wm8350*, %struct.wm8350** %4, align 8
  %68 = load i32, i32* @WM8350_DCDC6_LOW_POWER, align 4
  %69 = load i32, i32* %6, align 4
  %70 = load %struct.wm8350*, %struct.wm8350** %4, align 8
  %71 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %69, %73
  %75 = call i32 @wm8350_reg_write(%struct.wm8350* %67, i32 %68, i32 %74)
  br label %80

76:                                               ; preds = %1, %1
  br label %77

77:                                               ; preds = %1, %76
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %2, align 4
  br label %81

80:                                               ; preds = %60, %44, %28, %12
  store i32 0, i32* %2, align 4
  br label %81

81:                                               ; preds = %80, %77
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local %struct.wm8350* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @rdev_get_id(%struct.regulator_dev*) #1

declare dso_local i32 @wm8350_reg_read(%struct.wm8350*, i32) #1

declare dso_local i32 @wm8350_reg_write(%struct.wm8350*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
