; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_da9063-regulator.c_da9063_buck_get_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_da9063-regulator.c_da9063_buck_get_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.da9063_regulator = type { %struct.regmap_field*, %struct.regmap_field*, %struct.regmap_field*, %struct.regmap_field* }
%struct.regmap_field = type { i32 }

@REGULATOR_MODE_FAST = common dso_local global i32 0, align 4
@REGULATOR_MODE_STANDBY = common dso_local global i32 0, align 4
@REGULATOR_MODE_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*)* @da9063_buck_get_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da9063_buck_get_mode(%struct.regulator_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.regulator_dev*, align 8
  %4 = alloca %struct.da9063_regulator*, align 8
  %5 = alloca %struct.regmap_field*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %3, align 8
  %9 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %10 = call %struct.da9063_regulator* @rdev_get_drvdata(%struct.regulator_dev* %9)
  store %struct.da9063_regulator* %10, %struct.da9063_regulator** %4, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.da9063_regulator*, %struct.da9063_regulator** %4, align 8
  %12 = getelementptr inbounds %struct.da9063_regulator, %struct.da9063_regulator* %11, i32 0, i32 3
  %13 = load %struct.regmap_field*, %struct.regmap_field** %12, align 8
  %14 = call i32 @regmap_field_read(%struct.regmap_field* %13, i32* %6)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* %8, align 4
  store i32 %18, i32* %2, align 4
  br label %72

19:                                               ; preds = %1
  %20 = load i32, i32* %6, align 4
  switch i32 %20, label %21 [
    i32 130, label %22
    i32 129, label %26
    i32 128, label %28
    i32 131, label %30
  ]

21:                                               ; preds = %19
  br label %22

22:                                               ; preds = %19, %21
  %23 = load i32, i32* @REGULATOR_MODE_FAST, align 4
  %24 = load i32, i32* @REGULATOR_MODE_STANDBY, align 4
  %25 = or i32 %23, %24
  store i32 %25, i32* %7, align 4
  br label %32

26:                                               ; preds = %19
  %27 = load i32, i32* @REGULATOR_MODE_STANDBY, align 4
  store i32 %27, i32* %2, align 4
  br label %72

28:                                               ; preds = %19
  %29 = load i32, i32* @REGULATOR_MODE_FAST, align 4
  store i32 %29, i32* %2, align 4
  br label %72

30:                                               ; preds = %19
  %31 = load i32, i32* @REGULATOR_MODE_NORMAL, align 4
  store i32 %31, i32* %2, align 4
  br label %72

32:                                               ; preds = %22
  %33 = load %struct.da9063_regulator*, %struct.da9063_regulator** %4, align 8
  %34 = getelementptr inbounds %struct.da9063_regulator, %struct.da9063_regulator* %33, i32 0, i32 2
  %35 = load %struct.regmap_field*, %struct.regmap_field** %34, align 8
  %36 = call i32 @regmap_field_read(%struct.regmap_field* %35, i32* %6)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  store i32 0, i32* %2, align 4
  br label %72

40:                                               ; preds = %32
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = load %struct.da9063_regulator*, %struct.da9063_regulator** %4, align 8
  %45 = getelementptr inbounds %struct.da9063_regulator, %struct.da9063_regulator* %44, i32 0, i32 1
  %46 = load %struct.regmap_field*, %struct.regmap_field** %45, align 8
  store %struct.regmap_field* %46, %struct.regmap_field** %5, align 8
  br label %51

47:                                               ; preds = %40
  %48 = load %struct.da9063_regulator*, %struct.da9063_regulator** %4, align 8
  %49 = getelementptr inbounds %struct.da9063_regulator, %struct.da9063_regulator* %48, i32 0, i32 0
  %50 = load %struct.regmap_field*, %struct.regmap_field** %49, align 8
  store %struct.regmap_field* %50, %struct.regmap_field** %5, align 8
  br label %51

51:                                               ; preds = %47, %43
  %52 = load %struct.regmap_field*, %struct.regmap_field** %5, align 8
  %53 = call i32 @regmap_field_read(%struct.regmap_field* %52, i32* %6)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  store i32 0, i32* %2, align 4
  br label %72

57:                                               ; preds = %51
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %57
  %61 = load i32, i32* @REGULATOR_MODE_STANDBY, align 4
  %62 = load i32, i32* %7, align 4
  %63 = and i32 %62, %61
  store i32 %63, i32* %7, align 4
  br label %70

64:                                               ; preds = %57
  %65 = load i32, i32* @REGULATOR_MODE_NORMAL, align 4
  %66 = load i32, i32* @REGULATOR_MODE_FAST, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* %7, align 4
  %69 = and i32 %68, %67
  store i32 %69, i32* %7, align 4
  br label %70

70:                                               ; preds = %64, %60
  %71 = load i32, i32* %7, align 4
  store i32 %71, i32* %2, align 4
  br label %72

72:                                               ; preds = %70, %56, %39, %30, %28, %26, %17
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local %struct.da9063_regulator* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @regmap_field_read(%struct.regmap_field*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
