; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_wm831x-ldo.c_wm831x_gp_ldo_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_wm831x-ldo.c_wm831x_gp_ldo_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.wm831x_ldo = type { i32, %struct.wm831x* }
%struct.wm831x = type { i32 }

@WM831X_LDO_CONTROL = common dso_local global i32 0, align 4
@WM831X_LDO_ON_CONTROL = common dso_local global i32 0, align 4
@WM831X_LDO1_ON_MODE = common dso_local global i32 0, align 4
@WM831X_LDO1_LP_MODE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32)* @wm831x_gp_ldo_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm831x_gp_ldo_set_mode(%struct.regulator_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regulator_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.wm831x_ldo*, align 8
  %7 = alloca %struct.wm831x*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %12 = call %struct.wm831x_ldo* @rdev_get_drvdata(%struct.regulator_dev* %11)
  store %struct.wm831x_ldo* %12, %struct.wm831x_ldo** %6, align 8
  %13 = load %struct.wm831x_ldo*, %struct.wm831x_ldo** %6, align 8
  %14 = getelementptr inbounds %struct.wm831x_ldo, %struct.wm831x_ldo* %13, i32 0, i32 1
  %15 = load %struct.wm831x*, %struct.wm831x** %14, align 8
  store %struct.wm831x* %15, %struct.wm831x** %7, align 8
  %16 = load %struct.wm831x_ldo*, %struct.wm831x_ldo** %6, align 8
  %17 = getelementptr inbounds %struct.wm831x_ldo, %struct.wm831x_ldo* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @WM831X_LDO_CONTROL, align 4
  %20 = add nsw i32 %18, %19
  store i32 %20, i32* %8, align 4
  %21 = load %struct.wm831x_ldo*, %struct.wm831x_ldo** %6, align 8
  %22 = getelementptr inbounds %struct.wm831x_ldo, %struct.wm831x_ldo* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @WM831X_LDO_ON_CONTROL, align 4
  %25 = add nsw i32 %23, %24
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %5, align 4
  switch i32 %26, label %78 [
    i32 129, label %27
    i32 130, label %37
    i32 128, label %57
  ]

27:                                               ; preds = %2
  %28 = load %struct.wm831x*, %struct.wm831x** %7, align 8
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @WM831X_LDO1_ON_MODE, align 4
  %31 = call i32 @wm831x_set_bits(%struct.wm831x* %28, i32 %29, i32 %30, i32 0)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = load i32, i32* %10, align 4
  store i32 %35, i32* %3, align 4
  br label %82

36:                                               ; preds = %27
  br label %81

37:                                               ; preds = %2
  %38 = load %struct.wm831x*, %struct.wm831x** %7, align 8
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @WM831X_LDO1_LP_MODE, align 4
  %41 = call i32 @wm831x_set_bits(%struct.wm831x* %38, i32 %39, i32 %40, i32 0)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %37
  %45 = load i32, i32* %10, align 4
  store i32 %45, i32* %3, align 4
  br label %82

46:                                               ; preds = %37
  %47 = load %struct.wm831x*, %struct.wm831x** %7, align 8
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* @WM831X_LDO1_ON_MODE, align 4
  %50 = load i32, i32* @WM831X_LDO1_ON_MODE, align 4
  %51 = call i32 @wm831x_set_bits(%struct.wm831x* %47, i32 %48, i32 %49, i32 %50)
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %46
  %55 = load i32, i32* %10, align 4
  store i32 %55, i32* %3, align 4
  br label %82

56:                                               ; preds = %46
  br label %81

57:                                               ; preds = %2
  %58 = load %struct.wm831x*, %struct.wm831x** %7, align 8
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* @WM831X_LDO1_LP_MODE, align 4
  %61 = load i32, i32* @WM831X_LDO1_LP_MODE, align 4
  %62 = call i32 @wm831x_set_bits(%struct.wm831x* %58, i32 %59, i32 %60, i32 %61)
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %10, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %57
  %66 = load i32, i32* %10, align 4
  store i32 %66, i32* %3, align 4
  br label %82

67:                                               ; preds = %57
  %68 = load %struct.wm831x*, %struct.wm831x** %7, align 8
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* @WM831X_LDO1_ON_MODE, align 4
  %71 = load i32, i32* @WM831X_LDO1_ON_MODE, align 4
  %72 = call i32 @wm831x_set_bits(%struct.wm831x* %68, i32 %69, i32 %70, i32 %71)
  store i32 %72, i32* %10, align 4
  %73 = load i32, i32* %10, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %67
  %76 = load i32, i32* %10, align 4
  store i32 %76, i32* %3, align 4
  br label %82

77:                                               ; preds = %67
  br label %81

78:                                               ; preds = %2
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %3, align 4
  br label %82

81:                                               ; preds = %77, %56, %36
  store i32 0, i32* %3, align 4
  br label %82

82:                                               ; preds = %81, %78, %75, %65, %54, %44, %34
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local %struct.wm831x_ldo* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @wm831x_set_bits(%struct.wm831x*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
