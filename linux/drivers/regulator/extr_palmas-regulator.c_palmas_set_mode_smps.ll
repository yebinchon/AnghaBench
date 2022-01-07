; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_palmas-regulator.c_palmas_set_mode_smps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_palmas-regulator.c_palmas_set_mode_smps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.palmas_pmic = type { i32*, %struct.TYPE_4__*, %struct.TYPE_5__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { %struct.palmas_pmic_driver_data* }
%struct.palmas_pmic_driver_data = type { %struct.palmas_regs_info* }
%struct.palmas_regs_info = type { i32 }

@PALMAS_SMPS12_CTRL_MODE_ACTIVE_MASK = common dso_local global i32 0, align 4
@SMPS_CTRL_MODE_OFF = common dso_local global i32 0, align 4
@SMPS_CTRL_MODE_ON = common dso_local global i32 0, align 4
@SMPS_CTRL_MODE_ECO = common dso_local global i32 0, align 4
@SMPS_CTRL_MODE_PWM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32)* @palmas_set_mode_smps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @palmas_set_mode_smps(%struct.regulator_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regulator_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.palmas_pmic*, align 8
  %9 = alloca %struct.palmas_pmic_driver_data*, align 8
  %10 = alloca %struct.palmas_regs_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %14 = call i32 @rdev_get_id(%struct.regulator_dev* %13)
  store i32 %14, i32* %6, align 4
  %15 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %16 = call %struct.palmas_pmic* @rdev_get_drvdata(%struct.regulator_dev* %15)
  store %struct.palmas_pmic* %16, %struct.palmas_pmic** %8, align 8
  %17 = load %struct.palmas_pmic*, %struct.palmas_pmic** %8, align 8
  %18 = getelementptr inbounds %struct.palmas_pmic, %struct.palmas_pmic* %17, i32 0, i32 2
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load %struct.palmas_pmic_driver_data*, %struct.palmas_pmic_driver_data** %20, align 8
  store %struct.palmas_pmic_driver_data* %21, %struct.palmas_pmic_driver_data** %9, align 8
  %22 = load %struct.palmas_pmic_driver_data*, %struct.palmas_pmic_driver_data** %9, align 8
  %23 = getelementptr inbounds %struct.palmas_pmic_driver_data, %struct.palmas_pmic_driver_data* %22, i32 0, i32 0
  %24 = load %struct.palmas_regs_info*, %struct.palmas_regs_info** %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.palmas_regs_info, %struct.palmas_regs_info* %24, i64 %26
  store %struct.palmas_regs_info* %27, %struct.palmas_regs_info** %10, align 8
  store i32 1, i32* %12, align 4
  %28 = load %struct.palmas_pmic*, %struct.palmas_pmic** %8, align 8
  %29 = getelementptr inbounds %struct.palmas_pmic, %struct.palmas_pmic* %28, i32 0, i32 2
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = load %struct.palmas_regs_info*, %struct.palmas_regs_info** %10, align 8
  %32 = getelementptr inbounds %struct.palmas_regs_info, %struct.palmas_regs_info* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @palmas_smps_read(%struct.TYPE_5__* %30, i32 %33, i32* %11)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %2
  %38 = load i32, i32* %7, align 4
  store i32 %38, i32* %3, align 4
  br label %101

39:                                               ; preds = %2
  %40 = load i32, i32* @PALMAS_SMPS12_CTRL_MODE_ACTIVE_MASK, align 4
  %41 = xor i32 %40, -1
  %42 = load i32, i32* %11, align 4
  %43 = and i32 %42, %41
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* @SMPS_CTRL_MODE_OFF, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  store i32 0, i32* %12, align 4
  br label %48

48:                                               ; preds = %47, %39
  %49 = load i32, i32* %5, align 4
  switch i32 %49, label %62 [
    i32 128, label %50
    i32 129, label %54
    i32 130, label %58
  ]

50:                                               ; preds = %48
  %51 = load i32, i32* @SMPS_CTRL_MODE_ON, align 4
  %52 = load i32, i32* %11, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %11, align 4
  br label %65

54:                                               ; preds = %48
  %55 = load i32, i32* @SMPS_CTRL_MODE_ECO, align 4
  %56 = load i32, i32* %11, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %11, align 4
  br label %65

58:                                               ; preds = %48
  %59 = load i32, i32* @SMPS_CTRL_MODE_PWM, align 4
  %60 = load i32, i32* %11, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %11, align 4
  br label %65

62:                                               ; preds = %48
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %3, align 4
  br label %101

65:                                               ; preds = %58, %54, %50
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* @PALMAS_SMPS12_CTRL_MODE_ACTIVE_MASK, align 4
  %68 = and i32 %66, %67
  %69 = load %struct.palmas_pmic*, %struct.palmas_pmic** %8, align 8
  %70 = getelementptr inbounds %struct.palmas_pmic, %struct.palmas_pmic* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %6, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  store i32 %68, i32* %74, align 4
  %75 = load i32, i32* %12, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %86

77:                                               ; preds = %65
  %78 = load %struct.palmas_pmic*, %struct.palmas_pmic** %8, align 8
  %79 = getelementptr inbounds %struct.palmas_pmic, %struct.palmas_pmic* %78, i32 0, i32 2
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %79, align 8
  %81 = load %struct.palmas_regs_info*, %struct.palmas_regs_info** %10, align 8
  %82 = getelementptr inbounds %struct.palmas_regs_info, %struct.palmas_regs_info* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %11, align 4
  %85 = call i32 @palmas_smps_write(%struct.TYPE_5__* %80, i32 %83, i32 %84)
  br label %86

86:                                               ; preds = %77, %65
  %87 = load %struct.palmas_pmic*, %struct.palmas_pmic** %8, align 8
  %88 = getelementptr inbounds %struct.palmas_pmic, %struct.palmas_pmic* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %6, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.palmas_pmic*, %struct.palmas_pmic** %8, align 8
  %95 = getelementptr inbounds %struct.palmas_pmic, %struct.palmas_pmic* %94, i32 0, i32 1
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = load i32, i32* %6, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  store i32 %93, i32* %100, align 4
  store i32 0, i32* %3, align 4
  br label %101

101:                                              ; preds = %86, %62, %37
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local i32 @rdev_get_id(%struct.regulator_dev*) #1

declare dso_local %struct.palmas_pmic* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @palmas_smps_read(%struct.TYPE_5__*, i32, i32*) #1

declare dso_local i32 @palmas_smps_write(%struct.TYPE_5__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
