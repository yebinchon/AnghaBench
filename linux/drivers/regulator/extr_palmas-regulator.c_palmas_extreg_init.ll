; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_palmas-regulator.c_palmas_extreg_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_palmas-regulator.c_palmas_extreg_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.palmas = type { i32, %struct.palmas_pmic_driver_data* }
%struct.palmas_pmic_driver_data = type { %struct.palmas_regs_info* }
%struct.palmas_regs_info = type { i32 }
%struct.palmas_reg_init = type { i64, i64 }

@PALMAS_REGEN1_CTRL_MODE_SLEEP = common dso_local global i32 0, align 4
@PALMAS_RESOURCE_BASE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Resource reg 0x%02x update failed %d\0A\00", align 1
@PALMAS_REGEN1_CTRL_MODE_ACTIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Resource Register 0x%02x update failed %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.palmas*, i32, %struct.palmas_reg_init*)* @palmas_extreg_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @palmas_extreg_init(%struct.palmas* %0, i32 %1, %struct.palmas_reg_init* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.palmas*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.palmas_reg_init*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.palmas_pmic_driver_data*, align 8
  %12 = alloca %struct.palmas_regs_info*, align 8
  store %struct.palmas* %0, %struct.palmas** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.palmas_reg_init* %2, %struct.palmas_reg_init** %7, align 8
  store i32 0, i32* %10, align 4
  %13 = load %struct.palmas*, %struct.palmas** %5, align 8
  %14 = getelementptr inbounds %struct.palmas, %struct.palmas* %13, i32 0, i32 1
  %15 = load %struct.palmas_pmic_driver_data*, %struct.palmas_pmic_driver_data** %14, align 8
  store %struct.palmas_pmic_driver_data* %15, %struct.palmas_pmic_driver_data** %11, align 8
  %16 = load %struct.palmas_pmic_driver_data*, %struct.palmas_pmic_driver_data** %11, align 8
  %17 = getelementptr inbounds %struct.palmas_pmic_driver_data, %struct.palmas_pmic_driver_data* %16, i32 0, i32 0
  %18 = load %struct.palmas_regs_info*, %struct.palmas_regs_info** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.palmas_regs_info, %struct.palmas_regs_info* %18, i64 %20
  store %struct.palmas_regs_info* %21, %struct.palmas_regs_info** %12, align 8
  %22 = load %struct.palmas_regs_info*, %struct.palmas_regs_info** %12, align 8
  %23 = getelementptr inbounds %struct.palmas_regs_info, %struct.palmas_regs_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %8, align 4
  %25 = load %struct.palmas_reg_init*, %struct.palmas_reg_init** %7, align 8
  %26 = getelementptr inbounds %struct.palmas_reg_init, %struct.palmas_reg_init* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %3
  %30 = load i32, i32* @PALMAS_REGEN1_CTRL_MODE_SLEEP, align 4
  store i32 %30, i32* %10, align 4
  br label %31

31:                                               ; preds = %29, %3
  %32 = load %struct.palmas*, %struct.palmas** %5, align 8
  %33 = load i32, i32* @PALMAS_RESOURCE_BASE, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @PALMAS_REGEN1_CTRL_MODE_SLEEP, align 4
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @palmas_update_bits(%struct.palmas* %32, i32 %33, i32 %34, i32 %35, i32 %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %31
  %41 = load %struct.palmas*, %struct.palmas** %5, align 8
  %42 = getelementptr inbounds %struct.palmas, %struct.palmas* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @dev_err(i32 %43, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %45)
  %47 = load i32, i32* %9, align 4
  store i32 %47, i32* %4, align 4
  br label %76

48:                                               ; preds = %31
  %49 = load %struct.palmas_reg_init*, %struct.palmas_reg_init** %7, align 8
  %50 = getelementptr inbounds %struct.palmas_reg_init, %struct.palmas_reg_init* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %75

53:                                               ; preds = %48
  %54 = load %struct.palmas*, %struct.palmas** %5, align 8
  %55 = load i32, i32* @PALMAS_RESOURCE_BASE, align 4
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* @PALMAS_REGEN1_CTRL_MODE_ACTIVE, align 4
  %58 = load i32, i32* @PALMAS_REGEN1_CTRL_MODE_ACTIVE, align 4
  %59 = call i32 @palmas_update_bits(%struct.palmas* %54, i32 %55, i32 %56, i32 %57, i32 %58)
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %9, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %53
  %63 = load %struct.palmas*, %struct.palmas** %5, align 8
  %64 = getelementptr inbounds %struct.palmas, %struct.palmas* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @dev_err(i32 %65, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %66, i32 %67)
  %69 = load i32, i32* %9, align 4
  store i32 %69, i32* %4, align 4
  br label %76

70:                                               ; preds = %53
  %71 = load %struct.palmas*, %struct.palmas** %5, align 8
  %72 = load i32, i32* %6, align 4
  %73 = load %struct.palmas_reg_init*, %struct.palmas_reg_init** %7, align 8
  %74 = call i32 @palmas_regulator_config_external(%struct.palmas* %71, i32 %72, %struct.palmas_reg_init* %73)
  store i32 %74, i32* %4, align 4
  br label %76

75:                                               ; preds = %48
  store i32 0, i32* %4, align 4
  br label %76

76:                                               ; preds = %75, %70, %62, %40
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local i32 @palmas_update_bits(%struct.palmas*, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

declare dso_local i32 @palmas_regulator_config_external(%struct.palmas*, i32, %struct.palmas_reg_init*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
