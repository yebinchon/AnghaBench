; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_da9211-regulator.c_da9211_set_current_limit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_da9211-regulator.c_da9211_set_current_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.da9211 = type { i32, i32 }

@da9211_current_limits = common dso_local global i32* null, align 8
@da9213_current_limits = common dso_local global i32* null, align 8
@da9215_current_limits = common dso_local global i32* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@DA9211_REG_BUCK_ILIM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32, i32)* @da9211_set_current_limit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da9211_set_current_limit(%struct.regulator_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.regulator_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.da9211*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store %struct.regulator_dev* %0, %struct.regulator_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %14 = call i32 @rdev_get_id(%struct.regulator_dev* %13)
  store i32 %14, i32* %8, align 4
  %15 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %16 = call %struct.da9211* @rdev_get_drvdata(%struct.regulator_dev* %15)
  store %struct.da9211* %16, %struct.da9211** %9, align 8
  %17 = load %struct.da9211*, %struct.da9211** %9, align 8
  %18 = getelementptr inbounds %struct.da9211, %struct.da9211* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %35 [
    i32 130, label %20
    i32 129, label %25
    i32 128, label %30
  ]

20:                                               ; preds = %3
  %21 = load i32*, i32** @da9211_current_limits, align 8
  store i32* %21, i32** %12, align 8
  %22 = load i32*, i32** @da9211_current_limits, align 8
  %23 = call i32 @ARRAY_SIZE(i32* %22)
  %24 = sub nsw i32 %23, 1
  store i32 %24, i32* %11, align 4
  br label %38

25:                                               ; preds = %3
  %26 = load i32*, i32** @da9213_current_limits, align 8
  store i32* %26, i32** %12, align 8
  %27 = load i32*, i32** @da9213_current_limits, align 8
  %28 = call i32 @ARRAY_SIZE(i32* %27)
  %29 = sub nsw i32 %28, 1
  store i32 %29, i32* %11, align 4
  br label %38

30:                                               ; preds = %3
  %31 = load i32*, i32** @da9215_current_limits, align 8
  store i32* %31, i32** %12, align 8
  %32 = load i32*, i32** @da9215_current_limits, align 8
  %33 = call i32 @ARRAY_SIZE(i32* %32)
  %34 = sub nsw i32 %33, 1
  store i32 %34, i32* %11, align 4
  br label %38

35:                                               ; preds = %3
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %79

38:                                               ; preds = %30, %25, %20
  %39 = load i32, i32* %11, align 4
  store i32 %39, i32* %10, align 4
  br label %40

40:                                               ; preds = %73, %38
  %41 = load i32, i32* %10, align 4
  %42 = icmp sge i32 %41, 0
  br i1 %42, label %43, label %76

43:                                               ; preds = %40
  %44 = load i32, i32* %6, align 4
  %45 = load i32*, i32** %12, align 8
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = icmp sle i32 %44, %49
  br i1 %50, label %51, label %72

51:                                               ; preds = %43
  %52 = load i32, i32* %7, align 4
  %53 = load i32*, i32** %12, align 8
  %54 = load i32, i32* %10, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = icmp sge i32 %52, %57
  br i1 %58, label %59, label %72

59:                                               ; preds = %51
  %60 = load %struct.da9211*, %struct.da9211** %9, align 8
  %61 = getelementptr inbounds %struct.da9211, %struct.da9211* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @DA9211_REG_BUCK_ILIM, align 4
  %64 = load i32, i32* %8, align 4
  %65 = mul nsw i32 %64, 4
  %66 = shl i32 15, %65
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* %8, align 4
  %69 = mul nsw i32 %68, 4
  %70 = shl i32 %67, %69
  %71 = call i32 @regmap_update_bits(i32 %62, i32 %63, i32 %66, i32 %70)
  store i32 %71, i32* %4, align 4
  br label %79

72:                                               ; preds = %51, %43
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %10, align 4
  %75 = add nsw i32 %74, -1
  store i32 %75, i32* %10, align 4
  br label %40

76:                                               ; preds = %40
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %4, align 4
  br label %79

79:                                               ; preds = %76, %59, %35
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local i32 @rdev_get_id(%struct.regulator_dev*) #1

declare dso_local %struct.da9211* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
