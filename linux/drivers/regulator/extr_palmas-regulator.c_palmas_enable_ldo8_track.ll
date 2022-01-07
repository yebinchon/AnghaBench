; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_palmas-regulator.c_palmas_enable_ldo8_track.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_palmas-regulator.c_palmas_enable_ldo8_track.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.palmas = type { i32, %struct.palmas_pmic_driver_data* }
%struct.palmas_pmic_driver_data = type { %struct.palmas_regs_info* }
%struct.palmas_regs_info = type { i32, i32 }

@PALMAS_REG_LDO8 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"Error in reading ldo8 control reg\0A\00", align 1
@PALMAS_LDO8_CTRL_LDO_TRACKING_EN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Error in enabling tracking mode\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Error in reading ldo8 voltage reg\0A\00", align 1
@PALMAS_LDO8_VOLTAGE_VSEL_MASK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"Error in setting ldo8 voltage reg\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.palmas*)* @palmas_enable_ldo8_track to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @palmas_enable_ldo8_track(%struct.palmas* %0) #0 {
  %2 = alloca %struct.palmas*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.palmas_pmic_driver_data*, align 8
  %7 = alloca %struct.palmas_regs_info*, align 8
  store %struct.palmas* %0, %struct.palmas** %2, align 8
  %8 = load %struct.palmas*, %struct.palmas** %2, align 8
  %9 = getelementptr inbounds %struct.palmas, %struct.palmas* %8, i32 0, i32 1
  %10 = load %struct.palmas_pmic_driver_data*, %struct.palmas_pmic_driver_data** %9, align 8
  store %struct.palmas_pmic_driver_data* %10, %struct.palmas_pmic_driver_data** %6, align 8
  %11 = load %struct.palmas_pmic_driver_data*, %struct.palmas_pmic_driver_data** %6, align 8
  %12 = getelementptr inbounds %struct.palmas_pmic_driver_data, %struct.palmas_pmic_driver_data* %11, i32 0, i32 0
  %13 = load %struct.palmas_regs_info*, %struct.palmas_regs_info** %12, align 8
  %14 = load i64, i64* @PALMAS_REG_LDO8, align 8
  %15 = getelementptr inbounds %struct.palmas_regs_info, %struct.palmas_regs_info* %13, i64 %14
  store %struct.palmas_regs_info* %15, %struct.palmas_regs_info** %7, align 8
  %16 = load %struct.palmas_regs_info*, %struct.palmas_regs_info** %7, align 8
  %17 = getelementptr inbounds %struct.palmas_regs_info, %struct.palmas_regs_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %4, align 4
  %19 = load %struct.palmas*, %struct.palmas** %2, align 8
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @palmas_ldo_read(%struct.palmas* %19, i32 %20, i32* %3)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %1
  %25 = load %struct.palmas*, %struct.palmas** %2, align 8
  %26 = getelementptr inbounds %struct.palmas, %struct.palmas* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @dev_err(i32 %27, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %75

29:                                               ; preds = %1
  %30 = load i32, i32* @PALMAS_LDO8_CTRL_LDO_TRACKING_EN, align 4
  %31 = load i32, i32* %3, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %3, align 4
  %33 = load %struct.palmas*, %struct.palmas** %2, align 8
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @palmas_ldo_write(%struct.palmas* %33, i32 %34, i32 %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %29
  %40 = load %struct.palmas*, %struct.palmas** %2, align 8
  %41 = getelementptr inbounds %struct.palmas, %struct.palmas* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @dev_err(i32 %42, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %75

44:                                               ; preds = %29
  %45 = load %struct.palmas_regs_info*, %struct.palmas_regs_info** %7, align 8
  %46 = getelementptr inbounds %struct.palmas_regs_info, %struct.palmas_regs_info* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %4, align 4
  %48 = load %struct.palmas*, %struct.palmas** %2, align 8
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @palmas_ldo_read(%struct.palmas* %48, i32 %49, i32* %3)
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %5, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %44
  %54 = load %struct.palmas*, %struct.palmas** %2, align 8
  %55 = getelementptr inbounds %struct.palmas, %struct.palmas* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @dev_err(i32 %56, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %75

58:                                               ; preds = %44
  %59 = load i32, i32* %3, align 4
  %60 = shl i32 %59, 1
  %61 = load i32, i32* @PALMAS_LDO8_VOLTAGE_VSEL_MASK, align 4
  %62 = and i32 %60, %61
  store i32 %62, i32* %3, align 4
  %63 = load %struct.palmas*, %struct.palmas** %2, align 8
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* %3, align 4
  %66 = call i32 @palmas_ldo_write(%struct.palmas* %63, i32 %64, i32 %65)
  store i32 %66, i32* %5, align 4
  %67 = load i32, i32* %5, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %58
  %70 = load %struct.palmas*, %struct.palmas** %2, align 8
  %71 = getelementptr inbounds %struct.palmas, %struct.palmas* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @dev_err(i32 %72, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  br label %74

74:                                               ; preds = %69, %58
  br label %75

75:                                               ; preds = %74, %53, %39, %24
  ret void
}

declare dso_local i32 @palmas_ldo_read(%struct.palmas*, i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @palmas_ldo_write(%struct.palmas*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
