; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_lp873x-regulator.c_lp873x_buck_set_ramp_delay.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_lp873x-regulator.c_lp873x_buck_set_ramp_delay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.regulator_dev = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.lp873x = type { i32, i32 }

@regulators = common dso_local global %struct.TYPE_4__* null, align 8
@LP873X_BUCK0_CTRL_2_BUCK0_SLEW_RATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"SLEW RATE write failed: %d\0A\00", align 1
@lp873x_buck_ramp_delay = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32)* @lp873x_buck_set_ramp_delay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lp873x_buck_set_ramp_delay(%struct.regulator_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regulator_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.lp873x*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %11 = call i32 @rdev_get_id(%struct.regulator_dev* %10)
  store i32 %11, i32* %6, align 4
  %12 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %13 = call %struct.lp873x* @rdev_get_drvdata(%struct.regulator_dev* %12)
  store %struct.lp873x* %13, %struct.lp873x** %7, align 8
  %14 = load i32, i32* %5, align 4
  %15 = icmp sle i32 %14, 470
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 7, i32* %8, align 4
  br label %48

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = icmp sle i32 %18, 940
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store i32 6, i32* %8, align 4
  br label %47

21:                                               ; preds = %17
  %22 = load i32, i32* %5, align 4
  %23 = icmp sle i32 %22, 1900
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  store i32 5, i32* %8, align 4
  br label %46

25:                                               ; preds = %21
  %26 = load i32, i32* %5, align 4
  %27 = icmp sle i32 %26, 3800
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i32 4, i32* %8, align 4
  br label %45

29:                                               ; preds = %25
  %30 = load i32, i32* %5, align 4
  %31 = icmp sle i32 %30, 7500
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i32 3, i32* %8, align 4
  br label %44

33:                                               ; preds = %29
  %34 = load i32, i32* %5, align 4
  %35 = icmp sle i32 %34, 10000
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  store i32 2, i32* %8, align 4
  br label %43

37:                                               ; preds = %33
  %38 = load i32, i32* %5, align 4
  %39 = icmp sle i32 %38, 15000
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  store i32 1, i32* %8, align 4
  br label %42

41:                                               ; preds = %37
  store i32 0, i32* %8, align 4
  br label %42

42:                                               ; preds = %41, %40
  br label %43

43:                                               ; preds = %42, %36
  br label %44

44:                                               ; preds = %43, %32
  br label %45

45:                                               ; preds = %44, %28
  br label %46

46:                                               ; preds = %45, %24
  br label %47

47:                                               ; preds = %46, %20
  br label %48

48:                                               ; preds = %47, %16
  %49 = load %struct.lp873x*, %struct.lp873x** %7, align 8
  %50 = getelementptr inbounds %struct.lp873x, %struct.lp873x* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** @regulators, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @LP873X_BUCK0_CTRL_2_BUCK0_SLEW_RATE, align 4
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* @LP873X_BUCK0_CTRL_2_BUCK0_SLEW_RATE, align 4
  %61 = call i32 @__ffs(i32 %60)
  %62 = shl i32 %59, %61
  %63 = call i32 @regmap_update_bits(i32 %51, i32 %57, i32 %58, i32 %62)
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %9, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %48
  %67 = load %struct.lp873x*, %struct.lp873x** %7, align 8
  %68 = getelementptr inbounds %struct.lp873x, %struct.lp873x* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @dev_err(i32 %69, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* %9, align 4
  store i32 %72, i32* %3, align 4
  br label %83

73:                                               ; preds = %48
  %74 = load i32*, i32** @lp873x_buck_ramp_delay, align 8
  %75 = load i32, i32* %8, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %80 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %79, i32 0, i32 0
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  store i32 %78, i32* %82, align 4
  store i32 0, i32* %3, align 4
  br label %83

83:                                               ; preds = %73, %66
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32 @rdev_get_id(%struct.regulator_dev*) #1

declare dso_local %struct.lp873x* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @__ffs(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
