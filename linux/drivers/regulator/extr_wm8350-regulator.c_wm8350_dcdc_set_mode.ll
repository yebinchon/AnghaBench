; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_wm8350-regulator.c_wm8350_dcdc_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_wm8350-regulator.c_wm8350_dcdc_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.wm8350 = type { i32 }

@WM8350_DCDC_1 = common dso_local global i32 0, align 4
@WM8350_DCDC_6 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@WM8350_DCDC_2 = common dso_local global i32 0, align 4
@WM8350_DCDC_5 = common dso_local global i32 0, align 4
@WM8350_DCDC_ACTIVE_OPTIONS = common dso_local global i32 0, align 4
@WM8350_DCDC_SLEEP_OPTIONS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32)* @wm8350_dcdc_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8350_dcdc_set_mode(%struct.regulator_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regulator_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.wm8350*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %10 = call %struct.wm8350* @rdev_get_drvdata(%struct.regulator_dev* %9)
  store %struct.wm8350* %10, %struct.wm8350** %6, align 8
  %11 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %12 = call i32 @rdev_get_id(%struct.regulator_dev* %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @WM8350_DCDC_1, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %20, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @WM8350_DCDC_6, align 4
  %19 = icmp sgt i32 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %16, %2
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %85

23:                                               ; preds = %16
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @WM8350_DCDC_2, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @WM8350_DCDC_5, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %27, %23
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %85

34:                                               ; preds = %27
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @WM8350_DCDC_1, align 4
  %37 = sub nsw i32 %35, %36
  %38 = shl i32 1, %37
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %5, align 4
  switch i32 %39, label %84 [
    i32 131, label %40
    i32 129, label %52
    i32 130, label %64
    i32 128, label %76
  ]

40:                                               ; preds = %34
  %41 = load %struct.wm8350*, %struct.wm8350** %6, align 8
  %42 = load i32, i32* @WM8350_DCDC_ACTIVE_OPTIONS, align 4
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @wm8350_set_bits(%struct.wm8350* %41, i32 %42, i32 %43)
  %45 = load %struct.wm8350*, %struct.wm8350** %6, align 8
  %46 = load i32, i32* @WM8350_DCDC_SLEEP_OPTIONS, align 4
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @wm8350_clear_bits(%struct.wm8350* %45, i32 %46, i32 %47)
  %49 = load %struct.wm8350*, %struct.wm8350** %6, align 8
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @force_continuous_enable(%struct.wm8350* %49, i32 %50, i32 1)
  br label %84

52:                                               ; preds = %34
  %53 = load %struct.wm8350*, %struct.wm8350** %6, align 8
  %54 = load i32, i32* @WM8350_DCDC_ACTIVE_OPTIONS, align 4
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @wm8350_set_bits(%struct.wm8350* %53, i32 %54, i32 %55)
  %57 = load %struct.wm8350*, %struct.wm8350** %6, align 8
  %58 = load i32, i32* @WM8350_DCDC_SLEEP_OPTIONS, align 4
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @wm8350_clear_bits(%struct.wm8350* %57, i32 %58, i32 %59)
  %61 = load %struct.wm8350*, %struct.wm8350** %6, align 8
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @force_continuous_enable(%struct.wm8350* %61, i32 %62, i32 0)
  br label %84

64:                                               ; preds = %34
  %65 = load %struct.wm8350*, %struct.wm8350** %6, align 8
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @force_continuous_enable(%struct.wm8350* %65, i32 %66, i32 0)
  %68 = load %struct.wm8350*, %struct.wm8350** %6, align 8
  %69 = load i32, i32* @WM8350_DCDC_SLEEP_OPTIONS, align 4
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @wm8350_clear_bits(%struct.wm8350* %68, i32 %69, i32 %70)
  %72 = load %struct.wm8350*, %struct.wm8350** %6, align 8
  %73 = load i32, i32* @WM8350_DCDC_ACTIVE_OPTIONS, align 4
  %74 = load i32, i32* %8, align 4
  %75 = call i32 @wm8350_clear_bits(%struct.wm8350* %72, i32 %73, i32 %74)
  br label %84

76:                                               ; preds = %34
  %77 = load %struct.wm8350*, %struct.wm8350** %6, align 8
  %78 = load i32, i32* %7, align 4
  %79 = call i32 @force_continuous_enable(%struct.wm8350* %77, i32 %78, i32 0)
  %80 = load %struct.wm8350*, %struct.wm8350** %6, align 8
  %81 = load i32, i32* @WM8350_DCDC_SLEEP_OPTIONS, align 4
  %82 = load i32, i32* %8, align 4
  %83 = call i32 @wm8350_set_bits(%struct.wm8350* %80, i32 %81, i32 %82)
  br label %84

84:                                               ; preds = %34, %76, %64, %52, %40
  store i32 0, i32* %3, align 4
  br label %85

85:                                               ; preds = %84, %31, %20
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local %struct.wm8350* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @rdev_get_id(%struct.regulator_dev*) #1

declare dso_local i32 @wm8350_set_bits(%struct.wm8350*, i32, i32) #1

declare dso_local i32 @wm8350_clear_bits(%struct.wm8350*, i32, i32) #1

declare dso_local i32 @force_continuous_enable(%struct.wm8350*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
