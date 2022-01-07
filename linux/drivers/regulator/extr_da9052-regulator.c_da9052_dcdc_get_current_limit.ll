; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_da9052-regulator.c_da9052_dcdc_get_current_limit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_da9052-regulator.c_da9052_dcdc_get_current_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.da9052_regulator = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@DA9052_BUCKA_REG = common dso_local global i64 0, align 8
@DA9052_BUCK_ILIM_MASK_EVEN = common dso_local global i32 0, align 4
@DA9052_BUCK_ILIM_MASK_ODD = common dso_local global i32 0, align 4
@DA9052 = common dso_local global i64 0, align 8
@da9052_current_limits = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*)* @da9052_dcdc_get_current_limit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da9052_dcdc_get_current_limit(%struct.regulator_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.regulator_dev*, align 8
  %4 = alloca %struct.da9052_regulator*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %3, align 8
  %8 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %9 = call %struct.da9052_regulator* @rdev_get_drvdata(%struct.regulator_dev* %8)
  store %struct.da9052_regulator* %9, %struct.da9052_regulator** %4, align 8
  %10 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %11 = call i32 @rdev_get_id(%struct.regulator_dev* %10)
  store i32 %11, i32* %5, align 4
  store i32 2, i32* %7, align 4
  %12 = load %struct.da9052_regulator*, %struct.da9052_regulator** %4, align 8
  %13 = getelementptr inbounds %struct.da9052_regulator, %struct.da9052_regulator* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = load i64, i64* @DA9052_BUCKA_REG, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sdiv i32 %16, 2
  %18 = sext i32 %17 to i64
  %19 = add nsw i64 %15, %18
  %20 = call i32 @da9052_reg_read(%struct.TYPE_2__* %14, i64 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %1
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %2, align 4
  br label %63

25:                                               ; preds = %1
  %26 = load i32, i32* %5, align 4
  %27 = srem i32 %26, 2
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %25
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @DA9052_BUCK_ILIM_MASK_EVEN, align 4
  %32 = and i32 %30, %31
  %33 = ashr i32 %32, 2
  store i32 %33, i32* %6, align 4
  br label %39

34:                                               ; preds = %25
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @DA9052_BUCK_ILIM_MASK_ODD, align 4
  %37 = and i32 %35, %36
  %38 = ashr i32 %37, 6
  store i32 %38, i32* %6, align 4
  br label %39

39:                                               ; preds = %34, %29
  %40 = load %struct.da9052_regulator*, %struct.da9052_regulator** %4, align 8
  %41 = getelementptr inbounds %struct.da9052_regulator, %struct.da9052_regulator* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @DA9052, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  store i32 0, i32* %7, align 4
  br label %53

48:                                               ; preds = %39
  %49 = load i32, i32* %5, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  store i32 1, i32* %7, align 4
  br label %52

52:                                               ; preds = %51, %48
  br label %53

53:                                               ; preds = %52, %47
  %54 = load i32**, i32*** @da9052_current_limits, align 8
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32*, i32** %54, i64 %56
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %2, align 4
  br label %63

63:                                               ; preds = %53, %23
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local %struct.da9052_regulator* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @rdev_get_id(%struct.regulator_dev*) #1

declare dso_local i32 @da9052_reg_read(%struct.TYPE_2__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
