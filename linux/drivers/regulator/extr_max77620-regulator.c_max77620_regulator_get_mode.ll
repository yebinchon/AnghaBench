; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_max77620-regulator.c_max77620_regulator_get_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_max77620-regulator.c_max77620_regulator_get_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.max77620_regulator = type { i32, i32, %struct.max77620_regulator_info** }
%struct.max77620_regulator_info = type { i64, i32 }

@MAX77620_REGULATOR_TYPE_SD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"Reg 0x%02x read failed: %d\0A\00", align 1
@MAX77620_SD_FPWM_MASK = common dso_local global i32 0, align 4
@REGULATOR_MODE_FAST = common dso_local global i32 0, align 4
@REGULATOR_MODE_NORMAL = common dso_local global i32 0, align 4
@REGULATOR_MODE_IDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*)* @max77620_regulator_get_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max77620_regulator_get_mode(%struct.regulator_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.regulator_dev*, align 8
  %4 = alloca %struct.max77620_regulator*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.max77620_regulator_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %3, align 8
  %12 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %13 = call %struct.max77620_regulator* @rdev_get_drvdata(%struct.regulator_dev* %12)
  store %struct.max77620_regulator* %13, %struct.max77620_regulator** %4, align 8
  %14 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %15 = call i32 @rdev_get_id(%struct.regulator_dev* %14)
  store i32 %15, i32* %5, align 4
  %16 = load %struct.max77620_regulator*, %struct.max77620_regulator** %4, align 8
  %17 = getelementptr inbounds %struct.max77620_regulator, %struct.max77620_regulator* %16, i32 0, i32 2
  %18 = load %struct.max77620_regulator_info**, %struct.max77620_regulator_info*** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.max77620_regulator_info*, %struct.max77620_regulator_info** %18, i64 %20
  %22 = load %struct.max77620_regulator_info*, %struct.max77620_regulator_info** %21, align 8
  store %struct.max77620_regulator_info* %22, %struct.max77620_regulator_info** %6, align 8
  store i32 0, i32* %7, align 4
  %23 = load %struct.max77620_regulator*, %struct.max77620_regulator** %4, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @max77620_regulator_get_power_mode(%struct.max77620_regulator* %23, i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %79

29:                                               ; preds = %1
  %30 = load i32, i32* %8, align 4
  store i32 %30, i32* %9, align 4
  %31 = load %struct.max77620_regulator_info*, %struct.max77620_regulator_info** %6, align 8
  %32 = getelementptr inbounds %struct.max77620_regulator_info, %struct.max77620_regulator_info* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @MAX77620_REGULATOR_TYPE_SD, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %64

36:                                               ; preds = %29
  %37 = load %struct.max77620_regulator*, %struct.max77620_regulator** %4, align 8
  %38 = getelementptr inbounds %struct.max77620_regulator, %struct.max77620_regulator* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.max77620_regulator_info*, %struct.max77620_regulator_info** %6, align 8
  %41 = getelementptr inbounds %struct.max77620_regulator_info, %struct.max77620_regulator_info* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @regmap_read(i32 %39, i32 %42, i32* %11)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %36
  %47 = load %struct.max77620_regulator*, %struct.max77620_regulator** %4, align 8
  %48 = getelementptr inbounds %struct.max77620_regulator, %struct.max77620_regulator* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.max77620_regulator_info*, %struct.max77620_regulator_info** %6, align 8
  %51 = getelementptr inbounds %struct.max77620_regulator_info, %struct.max77620_regulator_info* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @dev_err(i32 %49, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %52, i32 %53)
  %55 = load i32, i32* %8, align 4
  store i32 %55, i32* %2, align 4
  br label %79

56:                                               ; preds = %36
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* @MAX77620_SD_FPWM_MASK, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  %61 = xor i1 %60, true
  %62 = xor i1 %61, true
  %63 = zext i1 %62 to i32
  store i32 %63, i32* %7, align 4
  br label %64

64:                                               ; preds = %56, %29
  %65 = load i32, i32* %9, align 4
  switch i32 %65, label %76 [
    i32 128, label %66
    i32 131, label %66
    i32 129, label %74
    i32 130, label %74
  ]

66:                                               ; preds = %64, %64
  %67 = load i32, i32* %7, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %66
  %70 = load i32, i32* @REGULATOR_MODE_FAST, align 4
  store i32 %70, i32* %10, align 4
  br label %73

71:                                               ; preds = %66
  %72 = load i32, i32* @REGULATOR_MODE_NORMAL, align 4
  store i32 %72, i32* %10, align 4
  br label %73

73:                                               ; preds = %71, %69
  br label %77

74:                                               ; preds = %64, %64
  %75 = load i32, i32* @REGULATOR_MODE_IDLE, align 4
  store i32 %75, i32* %10, align 4
  br label %77

76:                                               ; preds = %64
  store i32 0, i32* %2, align 4
  br label %79

77:                                               ; preds = %74, %73
  %78 = load i32, i32* %10, align 4
  store i32 %78, i32* %2, align 4
  br label %79

79:                                               ; preds = %77, %76, %46, %28
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local %struct.max77620_regulator* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @rdev_get_id(%struct.regulator_dev*) #1

declare dso_local i32 @max77620_regulator_get_power_mode(%struct.max77620_regulator*, i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
