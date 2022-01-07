; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_max77620-regulator.c_max77620_regulator_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_max77620-regulator.c_max77620_regulator_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.max77620_regulator = type { i32*, i32, i32, %struct.max77620_regulator_pdata*, %struct.max77620_regulator_info** }
%struct.max77620_regulator_pdata = type { i32 }
%struct.max77620_regulator_info = type { i64, i32 }

@MAX77620_POWER_MODE_NORMAL = common dso_local global i32 0, align 4
@MAX77620_POWER_MODE_LPM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Regulator %d mode %d is invalid\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MAX77620_REGULATOR_TYPE_SD = common dso_local global i64 0, align 8
@MAX77620_SD_FPWM_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Reg 0x%02x update failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32)* @max77620_regulator_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max77620_regulator_set_mode(%struct.regulator_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regulator_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.max77620_regulator*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.max77620_regulator_info*, align 8
  %9 = alloca %struct.max77620_regulator_pdata*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %15 = call %struct.max77620_regulator* @rdev_get_drvdata(%struct.regulator_dev* %14)
  store %struct.max77620_regulator* %15, %struct.max77620_regulator** %6, align 8
  %16 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %17 = call i32 @rdev_get_id(%struct.regulator_dev* %16)
  store i32 %17, i32* %7, align 4
  %18 = load %struct.max77620_regulator*, %struct.max77620_regulator** %6, align 8
  %19 = getelementptr inbounds %struct.max77620_regulator, %struct.max77620_regulator* %18, i32 0, i32 4
  %20 = load %struct.max77620_regulator_info**, %struct.max77620_regulator_info*** %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.max77620_regulator_info*, %struct.max77620_regulator_info** %20, i64 %22
  %24 = load %struct.max77620_regulator_info*, %struct.max77620_regulator_info** %23, align 8
  store %struct.max77620_regulator_info* %24, %struct.max77620_regulator_info** %8, align 8
  %25 = load %struct.max77620_regulator*, %struct.max77620_regulator** %6, align 8
  %26 = getelementptr inbounds %struct.max77620_regulator, %struct.max77620_regulator* %25, i32 0, i32 3
  %27 = load %struct.max77620_regulator_pdata*, %struct.max77620_regulator_pdata** %26, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.max77620_regulator_pdata, %struct.max77620_regulator_pdata* %27, i64 %29
  store %struct.max77620_regulator_pdata* %30, %struct.max77620_regulator_pdata** %9, align 8
  store i32 0, i32* %10, align 4
  %31 = load i32, i32* %5, align 4
  switch i32 %31, label %38 [
    i32 130, label %32
    i32 128, label %34
    i32 129, label %36
  ]

32:                                               ; preds = %2
  store i32 1, i32* %10, align 4
  %33 = load i32, i32* @MAX77620_POWER_MODE_NORMAL, align 4
  store i32 %33, i32* %11, align 4
  br label %47

34:                                               ; preds = %2
  %35 = load i32, i32* @MAX77620_POWER_MODE_NORMAL, align 4
  store i32 %35, i32* %11, align 4
  br label %47

36:                                               ; preds = %2
  %37 = load i32, i32* @MAX77620_POWER_MODE_LPM, align 4
  store i32 %37, i32* %11, align 4
  br label %47

38:                                               ; preds = %2
  %39 = load %struct.max77620_regulator*, %struct.max77620_regulator** %6, align 8
  %40 = getelementptr inbounds %struct.max77620_regulator, %struct.max77620_regulator* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @dev_err(i32 %41, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %43)
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %104

47:                                               ; preds = %36, %34, %32
  %48 = load %struct.max77620_regulator_info*, %struct.max77620_regulator_info** %8, align 8
  %49 = getelementptr inbounds %struct.max77620_regulator_info, %struct.max77620_regulator_info* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @MAX77620_REGULATOR_TYPE_SD, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  br label %87

54:                                               ; preds = %47
  %55 = load i32, i32* %10, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = load i32, i32* @MAX77620_SD_FPWM_MASK, align 4
  br label %60

59:                                               ; preds = %54
  br label %60

60:                                               ; preds = %59, %57
  %61 = phi i32 [ %58, %57 ], [ 0, %59 ]
  store i32 %61, i32* %13, align 4
  %62 = load %struct.max77620_regulator*, %struct.max77620_regulator** %6, align 8
  %63 = getelementptr inbounds %struct.max77620_regulator, %struct.max77620_regulator* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.max77620_regulator_info*, %struct.max77620_regulator_info** %8, align 8
  %66 = getelementptr inbounds %struct.max77620_regulator_info, %struct.max77620_regulator_info* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @MAX77620_SD_FPWM_MASK, align 4
  %69 = load i32, i32* %13, align 4
  %70 = call i32 @regmap_update_bits(i32 %64, i32 %67, i32 %68, i32 %69)
  store i32 %70, i32* %12, align 4
  %71 = load i32, i32* %12, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %83

73:                                               ; preds = %60
  %74 = load %struct.max77620_regulator*, %struct.max77620_regulator** %6, align 8
  %75 = getelementptr inbounds %struct.max77620_regulator, %struct.max77620_regulator* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.max77620_regulator_info*, %struct.max77620_regulator_info** %8, align 8
  %78 = getelementptr inbounds %struct.max77620_regulator_info, %struct.max77620_regulator_info* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* %12, align 4
  %81 = call i32 @dev_err(i32 %76, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %79, i32 %80)
  %82 = load i32, i32* %12, align 4
  store i32 %82, i32* %3, align 4
  br label %104

83:                                               ; preds = %60
  %84 = load i32, i32* %5, align 4
  %85 = load %struct.max77620_regulator_pdata*, %struct.max77620_regulator_pdata** %9, align 8
  %86 = getelementptr inbounds %struct.max77620_regulator_pdata, %struct.max77620_regulator_pdata* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 4
  br label %87

87:                                               ; preds = %83, %53
  %88 = load %struct.max77620_regulator*, %struct.max77620_regulator** %6, align 8
  %89 = load i32, i32* %11, align 4
  %90 = load i32, i32* %7, align 4
  %91 = call i32 @max77620_regulator_set_power_mode(%struct.max77620_regulator* %88, i32 %89, i32 %90)
  store i32 %91, i32* %12, align 4
  %92 = load i32, i32* %12, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %87
  %95 = load i32, i32* %12, align 4
  store i32 %95, i32* %3, align 4
  br label %104

96:                                               ; preds = %87
  %97 = load i32, i32* %11, align 4
  %98 = load %struct.max77620_regulator*, %struct.max77620_regulator** %6, align 8
  %99 = getelementptr inbounds %struct.max77620_regulator, %struct.max77620_regulator* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* %7, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  store i32 %97, i32* %103, align 4
  store i32 0, i32* %3, align 4
  br label %104

104:                                              ; preds = %96, %94, %73, %38
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local %struct.max77620_regulator* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @rdev_get_id(%struct.regulator_dev*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @max77620_regulator_set_power_mode(%struct.max77620_regulator*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
