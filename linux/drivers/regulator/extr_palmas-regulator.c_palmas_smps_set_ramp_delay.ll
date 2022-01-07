; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_palmas-regulator.c_palmas_smps_set_ramp_delay.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_palmas-regulator.c_palmas_smps_set_ramp_delay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.palmas_pmic = type { i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.palmas_pmic_driver_data* }
%struct.palmas_pmic_driver_data = type { %struct.palmas_regs_info* }
%struct.palmas_regs_info = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"TSTEP write failed: %d\0A\00", align 1
@palmas_smps_ramp_delay = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32)* @palmas_smps_set_ramp_delay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @palmas_smps_set_ramp_delay(%struct.regulator_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regulator_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.palmas_pmic*, align 8
  %8 = alloca %struct.palmas_pmic_driver_data*, align 8
  %9 = alloca %struct.palmas_regs_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %13 = call i32 @rdev_get_id(%struct.regulator_dev* %12)
  store i32 %13, i32* %6, align 4
  %14 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %15 = call %struct.palmas_pmic* @rdev_get_drvdata(%struct.regulator_dev* %14)
  store %struct.palmas_pmic* %15, %struct.palmas_pmic** %7, align 8
  %16 = load %struct.palmas_pmic*, %struct.palmas_pmic** %7, align 8
  %17 = getelementptr inbounds %struct.palmas_pmic, %struct.palmas_pmic* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load %struct.palmas_pmic_driver_data*, %struct.palmas_pmic_driver_data** %19, align 8
  store %struct.palmas_pmic_driver_data* %20, %struct.palmas_pmic_driver_data** %8, align 8
  %21 = load %struct.palmas_pmic_driver_data*, %struct.palmas_pmic_driver_data** %8, align 8
  %22 = getelementptr inbounds %struct.palmas_pmic_driver_data, %struct.palmas_pmic_driver_data* %21, i32 0, i32 0
  %23 = load %struct.palmas_regs_info*, %struct.palmas_regs_info** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.palmas_regs_info, %struct.palmas_regs_info* %23, i64 %25
  store %struct.palmas_regs_info* %26, %struct.palmas_regs_info** %9, align 8
  store i32 0, i32* %10, align 4
  %27 = load i32, i32* %6, align 4
  switch i32 %27, label %29 [
    i32 129, label %28
    i32 128, label %28
  ]

28:                                               ; preds = %2, %2
  store i32 0, i32* %3, align 4
  br label %77

29:                                               ; preds = %2
  %30 = load i32, i32* %5, align 4
  %31 = icmp sle i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i32 0, i32* %10, align 4
  br label %44

33:                                               ; preds = %29
  %34 = load i32, i32* %5, align 4
  %35 = icmp sle i32 %34, 2500
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  store i32 3, i32* %10, align 4
  br label %43

37:                                               ; preds = %33
  %38 = load i32, i32* %5, align 4
  %39 = icmp sle i32 %38, 5000
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  store i32 2, i32* %10, align 4
  br label %42

41:                                               ; preds = %37
  store i32 1, i32* %10, align 4
  br label %42

42:                                               ; preds = %41, %40
  br label %43

43:                                               ; preds = %42, %36
  br label %44

44:                                               ; preds = %43, %32
  %45 = load %struct.palmas_pmic*, %struct.palmas_pmic** %7, align 8
  %46 = getelementptr inbounds %struct.palmas_pmic, %struct.palmas_pmic* %45, i32 0, i32 1
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = load %struct.palmas_regs_info*, %struct.palmas_regs_info** %9, align 8
  %49 = getelementptr inbounds %struct.palmas_regs_info, %struct.palmas_regs_info* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @palmas_smps_write(%struct.TYPE_2__* %47, i32 %50, i32 %51)
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %11, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %44
  %56 = load %struct.palmas_pmic*, %struct.palmas_pmic** %7, align 8
  %57 = getelementptr inbounds %struct.palmas_pmic, %struct.palmas_pmic* %56, i32 0, i32 1
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %11, align 4
  %62 = call i32 @dev_err(i32 %60, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %61)
  %63 = load i32, i32* %11, align 4
  store i32 %63, i32* %3, align 4
  br label %77

64:                                               ; preds = %44
  %65 = load i32*, i32** @palmas_smps_ramp_delay, align 8
  %66 = load i32, i32* %10, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.palmas_pmic*, %struct.palmas_pmic** %7, align 8
  %71 = getelementptr inbounds %struct.palmas_pmic, %struct.palmas_pmic* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %6, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  store i32 %69, i32* %75, align 4
  %76 = load i32, i32* %11, align 4
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %64, %55, %28
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i32 @rdev_get_id(%struct.regulator_dev*) #1

declare dso_local %struct.palmas_pmic* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @palmas_smps_write(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
