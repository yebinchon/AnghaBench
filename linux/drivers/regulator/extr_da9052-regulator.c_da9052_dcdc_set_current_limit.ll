; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_da9052-regulator.c_da9052_dcdc_set_current_limit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_da9052-regulator.c_da9052_dcdc_set_current_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.da9052_regulator = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@DA9052 = common dso_local global i64 0, align 8
@DA9052_CURRENT_RANGE = common dso_local global i32 0, align 4
@da9052_current_limits = common dso_local global i32** null, align 8
@EINVAL = common dso_local global i32 0, align 4
@DA9052_BUCKA_REG = common dso_local global i64 0, align 8
@DA9052_BUCK_ILIM_MASK_EVEN = common dso_local global i32 0, align 4
@DA9052_BUCK_ILIM_MASK_ODD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32, i32)* @da9052_dcdc_set_current_limit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da9052_dcdc_set_current_limit(%struct.regulator_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.regulator_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.da9052_regulator*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %14 = call %struct.da9052_regulator* @rdev_get_drvdata(%struct.regulator_dev* %13)
  store %struct.da9052_regulator* %14, %struct.da9052_regulator** %8, align 8
  %15 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %16 = call i32 @rdev_get_id(%struct.regulator_dev* %15)
  store i32 %16, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 2, i32* %12, align 4
  %17 = load %struct.da9052_regulator*, %struct.da9052_regulator** %8, align 8
  %18 = getelementptr inbounds %struct.da9052_regulator, %struct.da9052_regulator* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @DA9052, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %3
  store i32 0, i32* %12, align 4
  br label %30

25:                                               ; preds = %3
  %26 = load i32, i32* %9, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i32 1, i32* %12, align 4
  br label %29

29:                                               ; preds = %28, %25
  br label %30

30:                                               ; preds = %29, %24
  %31 = load i32, i32* @DA9052_CURRENT_RANGE, align 4
  %32 = sub nsw i32 %31, 1
  store i32 %32, i32* %11, align 4
  br label %33

33:                                               ; preds = %63, %30
  %34 = load i32, i32* %11, align 4
  %35 = icmp sge i32 %34, 0
  br i1 %35, label %36, label %66

36:                                               ; preds = %33
  %37 = load i32, i32* %6, align 4
  %38 = load i32**, i32*** @da9052_current_limits, align 8
  %39 = load i32, i32* %12, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32*, i32** %38, i64 %40
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %11, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = icmp sle i32 %37, %46
  br i1 %47, label %48, label %62

48:                                               ; preds = %36
  %49 = load i32**, i32*** @da9052_current_limits, align 8
  %50 = load i32, i32* %12, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32*, i32** %49, i64 %51
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %11, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp sle i32 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %48
  %61 = load i32, i32* %11, align 4
  store i32 %61, i32* %10, align 4
  br label %66

62:                                               ; preds = %48, %36
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %11, align 4
  %65 = add nsw i32 %64, -1
  store i32 %65, i32* %11, align 4
  br label %33

66:                                               ; preds = %60, %33
  %67 = load i32, i32* %11, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %4, align 4
  br label %102

72:                                               ; preds = %66
  %73 = load i32, i32* %9, align 4
  %74 = srem i32 %73, 2
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %89

76:                                               ; preds = %72
  %77 = load %struct.da9052_regulator*, %struct.da9052_regulator** %8, align 8
  %78 = getelementptr inbounds %struct.da9052_regulator, %struct.da9052_regulator* %77, i32 0, i32 0
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = load i64, i64* @DA9052_BUCKA_REG, align 8
  %81 = load i32, i32* %9, align 4
  %82 = sdiv i32 %81, 2
  %83 = sext i32 %82 to i64
  %84 = add nsw i64 %80, %83
  %85 = load i32, i32* @DA9052_BUCK_ILIM_MASK_EVEN, align 4
  %86 = load i32, i32* %10, align 4
  %87 = shl i32 %86, 2
  %88 = call i32 @da9052_reg_update(%struct.TYPE_2__* %79, i64 %84, i32 %85, i32 %87)
  store i32 %88, i32* %4, align 4
  br label %102

89:                                               ; preds = %72
  %90 = load %struct.da9052_regulator*, %struct.da9052_regulator** %8, align 8
  %91 = getelementptr inbounds %struct.da9052_regulator, %struct.da9052_regulator* %90, i32 0, i32 0
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = load i64, i64* @DA9052_BUCKA_REG, align 8
  %94 = load i32, i32* %9, align 4
  %95 = sdiv i32 %94, 2
  %96 = sext i32 %95 to i64
  %97 = add nsw i64 %93, %96
  %98 = load i32, i32* @DA9052_BUCK_ILIM_MASK_ODD, align 4
  %99 = load i32, i32* %10, align 4
  %100 = shl i32 %99, 6
  %101 = call i32 @da9052_reg_update(%struct.TYPE_2__* %92, i64 %97, i32 %98, i32 %100)
  store i32 %101, i32* %4, align 4
  br label %102

102:                                              ; preds = %89, %76, %69
  %103 = load i32, i32* %4, align 4
  ret i32 %103
}

declare dso_local %struct.da9052_regulator* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @rdev_get_id(%struct.regulator_dev*) #1

declare dso_local i32 @da9052_reg_update(%struct.TYPE_2__*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
