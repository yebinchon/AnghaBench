; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_max77802-regulator.c_max77802_set_suspend_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_max77802-regulator.c_max77802_set_suspend_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.max77802_regulator_prv = type { i64* }

@MAX77802_OFF_PWRREQ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"%s: is disabled, mode: 0x%x not set\0A\00", align 1
@MAX77802_OPMODE_NORMAL = common dso_local global i64 0, align 8
@MAX77802_LP_PWRREQ = common dso_local global i32 0, align 4
@MAX77802_OPMODE_LP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"%s: in Low Power: 0x%x invalid\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"%s: regulator mode: 0x%x not supported\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32)* @max77802_set_suspend_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max77802_set_suspend_mode(%struct.regulator_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regulator_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.max77802_regulator_prv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %11 = call %struct.max77802_regulator_prv* @rdev_get_drvdata(%struct.regulator_dev* %10)
  store %struct.max77802_regulator_prv* %11, %struct.max77802_regulator_prv** %6, align 8
  %12 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %13 = call i32 @rdev_get_id(%struct.regulator_dev* %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @max77802_get_opmode_shift(i32 %14)
  store i32 %15, i32* %9, align 4
  %16 = load %struct.max77802_regulator_prv*, %struct.max77802_regulator_prv** %6, align 8
  %17 = getelementptr inbounds %struct.max77802_regulator_prv, %struct.max77802_regulator_prv* %16, i32 0, i32 0
  %18 = load i64*, i64** %17, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i64, i64* %18, i64 %20
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @MAX77802_OFF_PWRREQ, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %35

25:                                               ; preds = %2
  %26 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %27 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %26, i32 0, i32 2
  %28 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %29 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @dev_warn(i32* %27, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %33)
  store i32 0, i32* %3, align 4
  br label %102

35:                                               ; preds = %2
  %36 = load i32, i32* %5, align 4
  switch i32 %36, label %72 [
    i32 128, label %37
    i32 129, label %51
  ]

37:                                               ; preds = %35
  %38 = load %struct.max77802_regulator_prv*, %struct.max77802_regulator_prv** %6, align 8
  %39 = getelementptr inbounds %struct.max77802_regulator_prv, %struct.max77802_regulator_prv* %38, i32 0, i32 0
  %40 = load i64*, i64** %39, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i64, i64* %40, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @MAX77802_OPMODE_NORMAL, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %37
  %48 = load i32, i32* @MAX77802_LP_PWRREQ, align 4
  store i32 %48, i32* %8, align 4
  br label %50

49:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %102

50:                                               ; preds = %47
  br label %84

51:                                               ; preds = %35
  %52 = load %struct.max77802_regulator_prv*, %struct.max77802_regulator_prv** %6, align 8
  %53 = getelementptr inbounds %struct.max77802_regulator_prv, %struct.max77802_regulator_prv* %52, i32 0, i32 0
  %54 = load i64*, i64** %53, align 8
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i64, i64* %54, i64 %56
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @MAX77802_OPMODE_LP, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %71

61:                                               ; preds = %51
  %62 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %63 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %62, i32 0, i32 2
  %64 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %65 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %64, i32 0, i32 0
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %5, align 4
  %70 = call i32 @dev_warn(i32* %63, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %68, i32 %69)
  br label %71

71:                                               ; preds = %61, %51
  store i32 0, i32* %3, align 4
  br label %102

72:                                               ; preds = %35
  %73 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %74 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %73, i32 0, i32 2
  %75 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %76 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %75, i32 0, i32 0
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %5, align 4
  %81 = call i32 @dev_warn(i32* %74, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %79, i32 %80)
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %3, align 4
  br label %102

84:                                               ; preds = %50
  %85 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %86 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %89 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %88, i32 0, i32 0
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %94 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %93, i32 0, i32 0
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %8, align 4
  %99 = load i32, i32* %9, align 4
  %100 = shl i32 %98, %99
  %101 = call i32 @regmap_update_bits(i32 %87, i32 %92, i32 %97, i32 %100)
  store i32 %101, i32* %3, align 4
  br label %102

102:                                              ; preds = %84, %72, %71, %49, %25
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local %struct.max77802_regulator_prv* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @rdev_get_id(%struct.regulator_dev*) #1

declare dso_local i32 @max77802_get_opmode_shift(i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
