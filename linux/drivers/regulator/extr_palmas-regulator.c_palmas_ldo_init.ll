; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_palmas-regulator.c_palmas_ldo_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_palmas-regulator.c_palmas_ldo_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.palmas = type { i32, %struct.palmas_pmic_driver_data* }
%struct.palmas_pmic_driver_data = type { %struct.palmas_regs_info* }
%struct.palmas_regs_info = type { i32 }
%struct.palmas_reg_init = type { i64, i64, i64 }

@PALMAS_LDO1_CTRL_WR_S = common dso_local global i32 0, align 4
@PALMAS_LDO1_CTRL_MODE_SLEEP = common dso_local global i32 0, align 4
@PALMAS_LDO_BASE = common dso_local global i32 0, align 4
@PALMAS_LDO1_CTRL_MODE_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"LDO Register 0x%02x update failed %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.palmas*, i32, %struct.palmas_reg_init*)* @palmas_ldo_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @palmas_ldo_init(%struct.palmas* %0, i32 %1, %struct.palmas_reg_init* %2) #0 {
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
  store i32 %24, i32* %9, align 4
  %25 = load %struct.palmas*, %struct.palmas** %5, align 8
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @palmas_ldo_read(%struct.palmas* %25, i32 %26, i32* %8)
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %3
  %31 = load i32, i32* %10, align 4
  store i32 %31, i32* %4, align 4
  br label %97

32:                                               ; preds = %3
  %33 = load %struct.palmas_reg_init*, %struct.palmas_reg_init** %7, align 8
  %34 = getelementptr inbounds %struct.palmas_reg_init, %struct.palmas_reg_init* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load i32, i32* @PALMAS_LDO1_CTRL_WR_S, align 4
  %39 = load i32, i32* %8, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %8, align 4
  br label %46

41:                                               ; preds = %32
  %42 = load i32, i32* @PALMAS_LDO1_CTRL_WR_S, align 4
  %43 = xor i32 %42, -1
  %44 = load i32, i32* %8, align 4
  %45 = and i32 %44, %43
  store i32 %45, i32* %8, align 4
  br label %46

46:                                               ; preds = %41, %37
  %47 = load %struct.palmas_reg_init*, %struct.palmas_reg_init** %7, align 8
  %48 = getelementptr inbounds %struct.palmas_reg_init, %struct.palmas_reg_init* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = load i32, i32* @PALMAS_LDO1_CTRL_MODE_SLEEP, align 4
  %53 = load i32, i32* %8, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %8, align 4
  br label %60

55:                                               ; preds = %46
  %56 = load i32, i32* @PALMAS_LDO1_CTRL_MODE_SLEEP, align 4
  %57 = xor i32 %56, -1
  %58 = load i32, i32* %8, align 4
  %59 = and i32 %58, %57
  store i32 %59, i32* %8, align 4
  br label %60

60:                                               ; preds = %55, %51
  %61 = load %struct.palmas*, %struct.palmas** %5, align 8
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @palmas_ldo_write(%struct.palmas* %61, i32 %62, i32 %63)
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* %10, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %60
  %68 = load i32, i32* %10, align 4
  store i32 %68, i32* %4, align 4
  br label %97

69:                                               ; preds = %60
  %70 = load %struct.palmas_reg_init*, %struct.palmas_reg_init** %7, align 8
  %71 = getelementptr inbounds %struct.palmas_reg_init, %struct.palmas_reg_init* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %96

74:                                               ; preds = %69
  %75 = load %struct.palmas*, %struct.palmas** %5, align 8
  %76 = load i32, i32* @PALMAS_LDO_BASE, align 4
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* @PALMAS_LDO1_CTRL_MODE_ACTIVE, align 4
  %79 = load i32, i32* @PALMAS_LDO1_CTRL_MODE_ACTIVE, align 4
  %80 = call i32 @palmas_update_bits(%struct.palmas* %75, i32 %76, i32 %77, i32 %78, i32 %79)
  store i32 %80, i32* %10, align 4
  %81 = load i32, i32* %10, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %74
  %84 = load %struct.palmas*, %struct.palmas** %5, align 8
  %85 = getelementptr inbounds %struct.palmas, %struct.palmas* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* %10, align 4
  %89 = call i32 @dev_err(i32 %86, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %87, i32 %88)
  %90 = load i32, i32* %10, align 4
  store i32 %90, i32* %4, align 4
  br label %97

91:                                               ; preds = %74
  %92 = load %struct.palmas*, %struct.palmas** %5, align 8
  %93 = load i32, i32* %6, align 4
  %94 = load %struct.palmas_reg_init*, %struct.palmas_reg_init** %7, align 8
  %95 = call i32 @palmas_regulator_config_external(%struct.palmas* %92, i32 %93, %struct.palmas_reg_init* %94)
  store i32 %95, i32* %4, align 4
  br label %97

96:                                               ; preds = %69
  store i32 0, i32* %4, align 4
  br label %97

97:                                               ; preds = %96, %91, %83, %67, %30
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

declare dso_local i32 @palmas_ldo_read(%struct.palmas*, i32, i32*) #1

declare dso_local i32 @palmas_ldo_write(%struct.palmas*, i32, i32) #1

declare dso_local i32 @palmas_update_bits(%struct.palmas*, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

declare dso_local i32 @palmas_regulator_config_external(%struct.palmas*, i32, %struct.palmas_reg_init*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
