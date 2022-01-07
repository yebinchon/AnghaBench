; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_act8945a-regulator.c_act8945a_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_act8945a-regulator.c_act8945a_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { %struct.regmap* }
%struct.regmap = type { i32 }
%struct.act8945a_pmic = type { i32* }

@ACT8945A_DCDC1_CTRL = common dso_local global i32 0, align 4
@ACT8945A_DCDC2_CTRL = common dso_local global i32 0, align 4
@ACT8945A_DCDC3_CTRL = common dso_local global i32 0, align 4
@ACT8945A_LDO1_CTRL = common dso_local global i32 0, align 4
@ACT8945A_LDO2_CTRL = common dso_local global i32 0, align 4
@ACT8945A_LDO3_CTRL = common dso_local global i32 0, align 4
@ACT8945A_LDO4_CTRL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32)* @act8945a_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @act8945a_set_mode(%struct.regulator_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regulator_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.act8945a_pmic*, align 8
  %7 = alloca %struct.regmap*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %13 = call %struct.act8945a_pmic* @rdev_get_drvdata(%struct.regulator_dev* %12)
  store %struct.act8945a_pmic* %13, %struct.act8945a_pmic** %6, align 8
  %14 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %15 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %14, i32 0, i32 0
  %16 = load %struct.regmap*, %struct.regmap** %15, align 8
  store %struct.regmap* %16, %struct.regmap** %7, align 8
  %17 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %18 = call i32 @rdev_get_id(%struct.regulator_dev* %17)
  store i32 %18, i32* %8, align 4
  store i32 0, i32* %11, align 4
  %19 = load i32, i32* %8, align 4
  switch i32 %19, label %34 [
    i32 136, label %20
    i32 135, label %22
    i32 134, label %24
    i32 133, label %26
    i32 132, label %28
    i32 131, label %30
    i32 130, label %32
  ]

20:                                               ; preds = %2
  %21 = load i32, i32* @ACT8945A_DCDC1_CTRL, align 4
  store i32 %21, i32* %9, align 4
  br label %37

22:                                               ; preds = %2
  %23 = load i32, i32* @ACT8945A_DCDC2_CTRL, align 4
  store i32 %23, i32* %9, align 4
  br label %37

24:                                               ; preds = %2
  %25 = load i32, i32* @ACT8945A_DCDC3_CTRL, align 4
  store i32 %25, i32* %9, align 4
  br label %37

26:                                               ; preds = %2
  %27 = load i32, i32* @ACT8945A_LDO1_CTRL, align 4
  store i32 %27, i32* %9, align 4
  br label %37

28:                                               ; preds = %2
  %29 = load i32, i32* @ACT8945A_LDO2_CTRL, align 4
  store i32 %29, i32* %9, align 4
  br label %37

30:                                               ; preds = %2
  %31 = load i32, i32* @ACT8945A_LDO3_CTRL, align 4
  store i32 %31, i32* %9, align 4
  br label %37

32:                                               ; preds = %2
  %33 = load i32, i32* @ACT8945A_LDO4_CTRL, align 4
  store i32 %33, i32* %9, align 4
  br label %37

34:                                               ; preds = %2
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %72

37:                                               ; preds = %32, %30, %28, %26, %24, %22, %20
  %38 = load i32, i32* %5, align 4
  switch i32 %38, label %51 [
    i32 128, label %39
    i32 129, label %45
  ]

39:                                               ; preds = %37
  %40 = load i32, i32* %8, align 4
  %41 = icmp sgt i32 %40, 134
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = call i32 @BIT(i32 5)
  store i32 %43, i32* %11, align 4
  br label %44

44:                                               ; preds = %42, %39
  br label %54

45:                                               ; preds = %37
  %46 = load i32, i32* %8, align 4
  %47 = icmp sle i32 %46, 134
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = call i32 @BIT(i32 5)
  store i32 %49, i32* %11, align 4
  br label %50

50:                                               ; preds = %48, %45
  br label %54

51:                                               ; preds = %37
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %72

54:                                               ; preds = %50, %44
  %55 = load %struct.regmap*, %struct.regmap** %7, align 8
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @BIT(i32 5)
  %58 = load i32, i32* %11, align 4
  %59 = call i32 @regmap_update_bits(%struct.regmap* %55, i32 %56, i32 %57, i32 %58)
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %10, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %54
  %63 = load i32, i32* %10, align 4
  store i32 %63, i32* %3, align 4
  br label %72

64:                                               ; preds = %54
  %65 = load i32, i32* %5, align 4
  %66 = load %struct.act8945a_pmic*, %struct.act8945a_pmic** %6, align 8
  %67 = getelementptr inbounds %struct.act8945a_pmic, %struct.act8945a_pmic* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %8, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  store i32 %65, i32* %71, align 4
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %64, %62, %51, %34
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local %struct.act8945a_pmic* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @rdev_get_id(%struct.regulator_dev*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @regmap_update_bits(%struct.regmap*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
