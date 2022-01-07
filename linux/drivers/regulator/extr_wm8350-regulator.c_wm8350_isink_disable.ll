; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_wm8350-regulator.c_wm8350_isink_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_wm8350-regulator.c_wm8350_isink_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.wm8350 = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@WM8350_DCDC_LDO_REQUESTED = common dso_local global i32 0, align 4
@WM8350_DCDC_1 = common dso_local global i32 0, align 4
@WM8350_POWER_MGMT_7 = common dso_local global i32 0, align 4
@WM8350_CS1_ENA = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@WM8350_CS2_ENA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*)* @wm8350_isink_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8350_isink_disable(%struct.regulator_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.regulator_dev*, align 8
  %4 = alloca %struct.wm8350*, align 8
  %5 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %3, align 8
  %6 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %7 = call %struct.wm8350* @rdev_get_drvdata(%struct.regulator_dev* %6)
  store %struct.wm8350* %7, %struct.wm8350** %4, align 8
  %8 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %9 = call i32 @rdev_get_id(%struct.regulator_dev* %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %59 [
    i32 129, label %11
    i32 128, label %35
  ]

11:                                               ; preds = %1
  %12 = load %struct.wm8350*, %struct.wm8350** %4, align 8
  %13 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %31 [
    i32 131, label %16
    i32 130, label %16
  ]

16:                                               ; preds = %11, %11
  %17 = load %struct.wm8350*, %struct.wm8350** %4, align 8
  %18 = load i32, i32* @WM8350_DCDC_LDO_REQUESTED, align 4
  %19 = load %struct.wm8350*, %struct.wm8350** %4, align 8
  %20 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @WM8350_DCDC_1, align 4
  %24 = sub nsw i32 %22, %23
  %25 = shl i32 1, %24
  %26 = call i32 @wm8350_clear_bits(%struct.wm8350* %17, i32 %18, i32 %25)
  %27 = load %struct.wm8350*, %struct.wm8350** %4, align 8
  %28 = load i32, i32* @WM8350_POWER_MGMT_7, align 4
  %29 = load i32, i32* @WM8350_CS1_ENA, align 4
  %30 = call i32 @wm8350_clear_bits(%struct.wm8350* %27, i32 %28, i32 %29)
  br label %34

31:                                               ; preds = %11
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %63

34:                                               ; preds = %16
  br label %62

35:                                               ; preds = %1
  %36 = load %struct.wm8350*, %struct.wm8350** %4, align 8
  %37 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  switch i32 %39, label %55 [
    i32 131, label %40
    i32 130, label %40
  ]

40:                                               ; preds = %35, %35
  %41 = load %struct.wm8350*, %struct.wm8350** %4, align 8
  %42 = load i32, i32* @WM8350_DCDC_LDO_REQUESTED, align 4
  %43 = load %struct.wm8350*, %struct.wm8350** %4, align 8
  %44 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @WM8350_DCDC_1, align 4
  %48 = sub nsw i32 %46, %47
  %49 = shl i32 1, %48
  %50 = call i32 @wm8350_clear_bits(%struct.wm8350* %41, i32 %42, i32 %49)
  %51 = load %struct.wm8350*, %struct.wm8350** %4, align 8
  %52 = load i32, i32* @WM8350_POWER_MGMT_7, align 4
  %53 = load i32, i32* @WM8350_CS2_ENA, align 4
  %54 = call i32 @wm8350_clear_bits(%struct.wm8350* %51, i32 %52, i32 %53)
  br label %58

55:                                               ; preds = %35
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %2, align 4
  br label %63

58:                                               ; preds = %40
  br label %62

59:                                               ; preds = %1
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %2, align 4
  br label %63

62:                                               ; preds = %58, %34
  store i32 0, i32* %2, align 4
  br label %63

63:                                               ; preds = %62, %59, %55, %31
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local %struct.wm8350* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @rdev_get_id(%struct.regulator_dev*) #1

declare dso_local i32 @wm8350_clear_bits(%struct.wm8350*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
