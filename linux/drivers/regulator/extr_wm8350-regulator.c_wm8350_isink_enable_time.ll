; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_wm8350-regulator.c_wm8350_isink_enable_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_wm8350-regulator.c_wm8350_isink_enable_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.wm8350 = type { i32 }

@WM8350_CSA_FLASH_CONTROL = common dso_local global i32 0, align 4
@WM8350_CSB_FLASH_CONTROL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@WM8350_CS1_FLASH_MODE = common dso_local global i32 0, align 4
@WM8350_CS1_ON_RAMP_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*)* @wm8350_isink_enable_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8350_isink_enable_time(%struct.regulator_dev* %0) #0 {
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
  switch i32 %11, label %20 [
    i32 129, label %12
    i32 128, label %16
  ]

12:                                               ; preds = %1
  %13 = load %struct.wm8350*, %struct.wm8350** %4, align 8
  %14 = load i32, i32* @WM8350_CSA_FLASH_CONTROL, align 4
  %15 = call i32 @wm8350_reg_read(%struct.wm8350* %13, i32 %14)
  store i32 %15, i32* %6, align 4
  br label %23

16:                                               ; preds = %1
  %17 = load %struct.wm8350*, %struct.wm8350** %4, align 8
  %18 = load i32, i32* @WM8350_CSB_FLASH_CONTROL, align 4
  %19 = call i32 @wm8350_reg_read(%struct.wm8350* %17, i32 %18)
  store i32 %19, i32* %6, align 4
  br label %23

20:                                               ; preds = %1
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %49

23:                                               ; preds = %16, %12
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @WM8350_CS1_FLASH_MODE, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %23
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @WM8350_CS1_ON_RAMP_MASK, align 4
  %31 = and i32 %29, %30
  switch i32 %31, label %36 [
    i32 0, label %32
    i32 1, label %33
    i32 2, label %34
    i32 3, label %35
  ]

32:                                               ; preds = %28
  store i32 0, i32* %2, align 4
  br label %49

33:                                               ; preds = %28
  store i32 1950, i32* %2, align 4
  br label %49

34:                                               ; preds = %28
  store i32 3910, i32* %2, align 4
  br label %49

35:                                               ; preds = %28
  store i32 7800, i32* %2, align 4
  br label %49

36:                                               ; preds = %28
  br label %46

37:                                               ; preds = %23
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @WM8350_CS1_ON_RAMP_MASK, align 4
  %40 = and i32 %38, %39
  switch i32 %40, label %45 [
    i32 0, label %41
    i32 1, label %42
    i32 2, label %43
    i32 3, label %44
  ]

41:                                               ; preds = %37
  store i32 0, i32* %2, align 4
  br label %49

42:                                               ; preds = %37
  store i32 250000, i32* %2, align 4
  br label %49

43:                                               ; preds = %37
  store i32 500000, i32* %2, align 4
  br label %49

44:                                               ; preds = %37
  store i32 1000000, i32* %2, align 4
  br label %49

45:                                               ; preds = %37
  br label %46

46:                                               ; preds = %45, %36
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %49

49:                                               ; preds = %46, %44, %43, %42, %41, %35, %34, %33, %32, %20
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local %struct.wm8350* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @rdev_get_id(%struct.regulator_dev*) #1

declare dso_local i32 @wm8350_reg_read(%struct.wm8350*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
