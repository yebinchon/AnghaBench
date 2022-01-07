; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_max77620-regulator.c_max77620_config_power_ok.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_max77620-regulator.c_max77620_config_power_ok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max77620_regulator = type { %struct.TYPE_2__*, i32, %struct.max77620_regulator_info**, %struct.max77620_regulator_pdata* }
%struct.TYPE_2__ = type { i32 }
%struct.max77620_regulator_info = type { i32, i32 }
%struct.max77620_regulator_pdata = type { i32 }
%struct.max77620_chip = type { i32 }

@MAX77620_REGULATOR_TYPE_SD = common dso_local global i32 0, align 4
@MAX20024_SD_CFG1_MPOK_MASK = common dso_local global i32 0, align 4
@MAX20024_LDO_CFG2_MPOK_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Reg 0x%02x update failed %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.max77620_regulator*, i32)* @max77620_config_power_ok to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max77620_config_power_ok(%struct.max77620_regulator* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.max77620_regulator*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.max77620_regulator_pdata*, align 8
  %7 = alloca %struct.max77620_regulator_info*, align 8
  %8 = alloca %struct.max77620_chip*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.max77620_regulator* %0, %struct.max77620_regulator** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.max77620_regulator*, %struct.max77620_regulator** %4, align 8
  %13 = getelementptr inbounds %struct.max77620_regulator, %struct.max77620_regulator* %12, i32 0, i32 3
  %14 = load %struct.max77620_regulator_pdata*, %struct.max77620_regulator_pdata** %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.max77620_regulator_pdata, %struct.max77620_regulator_pdata* %14, i64 %16
  store %struct.max77620_regulator_pdata* %17, %struct.max77620_regulator_pdata** %6, align 8
  %18 = load %struct.max77620_regulator*, %struct.max77620_regulator** %4, align 8
  %19 = getelementptr inbounds %struct.max77620_regulator, %struct.max77620_regulator* %18, i32 0, i32 2
  %20 = load %struct.max77620_regulator_info**, %struct.max77620_regulator_info*** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.max77620_regulator_info*, %struct.max77620_regulator_info** %20, i64 %22
  %24 = load %struct.max77620_regulator_info*, %struct.max77620_regulator_info** %23, align 8
  store %struct.max77620_regulator_info* %24, %struct.max77620_regulator_info** %7, align 8
  %25 = load %struct.max77620_regulator*, %struct.max77620_regulator** %4, align 8
  %26 = getelementptr inbounds %struct.max77620_regulator, %struct.max77620_regulator* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.max77620_chip* @dev_get_drvdata(i32 %29)
  store %struct.max77620_chip* %30, %struct.max77620_chip** %8, align 8
  %31 = load %struct.max77620_chip*, %struct.max77620_chip** %8, align 8
  %32 = getelementptr inbounds %struct.max77620_chip, %struct.max77620_chip* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  switch i32 %33, label %82 [
    i32 128, label %34
  ]

34:                                               ; preds = %2
  %35 = load %struct.max77620_regulator_pdata*, %struct.max77620_regulator_pdata** %6, align 8
  %36 = getelementptr inbounds %struct.max77620_regulator_pdata, %struct.max77620_regulator_pdata* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp sge i32 %37, 0
  br i1 %38, label %39, label %81

39:                                               ; preds = %34
  %40 = load %struct.max77620_regulator_info*, %struct.max77620_regulator_info** %7, align 8
  %41 = getelementptr inbounds %struct.max77620_regulator_info, %struct.max77620_regulator_info* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @MAX77620_REGULATOR_TYPE_SD, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = load i32, i32* @MAX20024_SD_CFG1_MPOK_MASK, align 4
  store i32 %46, i32* %10, align 4
  br label %49

47:                                               ; preds = %39
  %48 = load i32, i32* @MAX20024_LDO_CFG2_MPOK_MASK, align 4
  store i32 %48, i32* %10, align 4
  br label %49

49:                                               ; preds = %47, %45
  %50 = load %struct.max77620_regulator_pdata*, %struct.max77620_regulator_pdata** %6, align 8
  %51 = getelementptr inbounds %struct.max77620_regulator_pdata, %struct.max77620_regulator_pdata* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = load i32, i32* %10, align 4
  br label %57

56:                                               ; preds = %49
  br label %57

57:                                               ; preds = %56, %54
  %58 = phi i32 [ %55, %54 ], [ 0, %56 ]
  store i32 %58, i32* %9, align 4
  %59 = load %struct.max77620_regulator*, %struct.max77620_regulator** %4, align 8
  %60 = getelementptr inbounds %struct.max77620_regulator, %struct.max77620_regulator* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.max77620_regulator_info*, %struct.max77620_regulator_info** %7, align 8
  %63 = getelementptr inbounds %struct.max77620_regulator_info, %struct.max77620_regulator_info* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @regmap_update_bits(i32 %61, i32 %64, i32 %65, i32 %66)
  store i32 %67, i32* %11, align 4
  %68 = load i32, i32* %11, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %80

70:                                               ; preds = %57
  %71 = load %struct.max77620_regulator*, %struct.max77620_regulator** %4, align 8
  %72 = getelementptr inbounds %struct.max77620_regulator, %struct.max77620_regulator* %71, i32 0, i32 0
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = load %struct.max77620_regulator_info*, %struct.max77620_regulator_info** %7, align 8
  %75 = getelementptr inbounds %struct.max77620_regulator_info, %struct.max77620_regulator_info* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %11, align 4
  %78 = call i32 @dev_err(%struct.TYPE_2__* %73, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %76, i32 %77)
  %79 = load i32, i32* %11, align 4
  store i32 %79, i32* %3, align 4
  br label %84

80:                                               ; preds = %57
  br label %81

81:                                               ; preds = %80, %34
  br label %83

82:                                               ; preds = %2
  br label %83

83:                                               ; preds = %82, %81
  store i32 0, i32* %3, align 4
  br label %84

84:                                               ; preds = %83, %70
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local %struct.max77620_chip* @dev_get_drvdata(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_2__*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
