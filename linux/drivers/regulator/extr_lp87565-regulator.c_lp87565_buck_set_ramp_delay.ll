; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_lp87565-regulator.c_lp87565_buck_set_ramp_delay.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_lp87565-regulator.c_lp87565_buck_set_ramp_delay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.regulator_dev = type { %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@regulators = common dso_local global %struct.TYPE_4__* null, align 8
@LP87565_BUCK_CTRL_2_SLEW_RATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"SLEW RATE write failed: %d\0A\00", align 1
@lp87565_buck_ramp_delay = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32)* @lp87565_buck_set_ramp_delay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lp87565_buck_set_ramp_delay(%struct.regulator_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regulator_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %10 = call i32 @rdev_get_id(%struct.regulator_dev* %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp sle i32 %11, 470
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 7, i32* %7, align 4
  br label %45

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = icmp sle i32 %15, 940
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  store i32 6, i32* %7, align 4
  br label %44

18:                                               ; preds = %14
  %19 = load i32, i32* %5, align 4
  %20 = icmp sle i32 %19, 1900
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  store i32 5, i32* %7, align 4
  br label %43

22:                                               ; preds = %18
  %23 = load i32, i32* %5, align 4
  %24 = icmp sle i32 %23, 3800
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store i32 4, i32* %7, align 4
  br label %42

26:                                               ; preds = %22
  %27 = load i32, i32* %5, align 4
  %28 = icmp sle i32 %27, 7500
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  store i32 3, i32* %7, align 4
  br label %41

30:                                               ; preds = %26
  %31 = load i32, i32* %5, align 4
  %32 = icmp sle i32 %31, 10000
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  store i32 2, i32* %7, align 4
  br label %40

34:                                               ; preds = %30
  %35 = load i32, i32* %5, align 4
  %36 = icmp sle i32 %35, 15000
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  store i32 1, i32* %7, align 4
  br label %39

38:                                               ; preds = %34
  store i32 0, i32* %7, align 4
  br label %39

39:                                               ; preds = %38, %37
  br label %40

40:                                               ; preds = %39, %33
  br label %41

41:                                               ; preds = %40, %29
  br label %42

42:                                               ; preds = %41, %25
  br label %43

43:                                               ; preds = %42, %21
  br label %44

44:                                               ; preds = %43, %17
  br label %45

45:                                               ; preds = %44, %13
  %46 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %47 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** @regulators, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @LP87565_BUCK_CTRL_2_SLEW_RATE, align 4
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @LP87565_BUCK_CTRL_2_SLEW_RATE, align 4
  %58 = call i32 @__ffs(i32 %57)
  %59 = shl i32 %56, %58
  %60 = call i32 @regmap_update_bits(i32 %48, i32 %54, i32 %55, i32 %59)
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %45
  %64 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %65 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %64, i32 0, i32 1
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @dev_err(i32* %65, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %66)
  %68 = load i32, i32* %8, align 4
  store i32 %68, i32* %3, align 4
  br label %90

69:                                               ; preds = %45
  %70 = load i32*, i32** @lp87565_buck_ramp_delay, align 8
  %71 = load i32, i32* %7, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %76 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %75, i32 0, i32 0
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  store i32 %74, i32* %78, align 4
  %79 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %80 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %79, i32 0, i32 0
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = mul nsw i32 %83, 85
  %85 = sdiv i32 %84, 100
  %86 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %87 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %86, i32 0, i32 0
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  store i32 %85, i32* %89, align 4
  store i32 0, i32* %3, align 4
  br label %90

90:                                               ; preds = %69, %63
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i32 @rdev_get_id(%struct.regulator_dev*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @__ffs(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
