; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_palmas-regulator.c_palmas_regulator_config_external.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_palmas-regulator.c_palmas_regulator_config_external.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.palmas = type { i32, %struct.palmas_pmic_driver_data* }
%struct.palmas_pmic_driver_data = type { %struct.palmas_regs_info* }
%struct.palmas_regs_info = type { i32 }
%struct.palmas_reg_init = type { i32 }

@.str = private unnamed_addr constant [47 x i8] c"Ext control config for regulator %d failed %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.palmas*, i32, %struct.palmas_reg_init*)* @palmas_regulator_config_external to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @palmas_regulator_config_external(%struct.palmas* %0, i32 %1, %struct.palmas_reg_init* %2) #0 {
  %4 = alloca %struct.palmas*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.palmas_reg_init*, align 8
  %7 = alloca %struct.palmas_pmic_driver_data*, align 8
  %8 = alloca %struct.palmas_regs_info*, align 8
  %9 = alloca i32, align 4
  store %struct.palmas* %0, %struct.palmas** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.palmas_reg_init* %2, %struct.palmas_reg_init** %6, align 8
  %10 = load %struct.palmas*, %struct.palmas** %4, align 8
  %11 = getelementptr inbounds %struct.palmas, %struct.palmas* %10, i32 0, i32 1
  %12 = load %struct.palmas_pmic_driver_data*, %struct.palmas_pmic_driver_data** %11, align 8
  store %struct.palmas_pmic_driver_data* %12, %struct.palmas_pmic_driver_data** %7, align 8
  %13 = load %struct.palmas_pmic_driver_data*, %struct.palmas_pmic_driver_data** %7, align 8
  %14 = getelementptr inbounds %struct.palmas_pmic_driver_data, %struct.palmas_pmic_driver_data* %13, i32 0, i32 0
  %15 = load %struct.palmas_regs_info*, %struct.palmas_regs_info** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.palmas_regs_info, %struct.palmas_regs_info* %15, i64 %17
  store %struct.palmas_regs_info* %18, %struct.palmas_regs_info** %8, align 8
  %19 = load %struct.palmas*, %struct.palmas** %4, align 8
  %20 = load %struct.palmas_regs_info*, %struct.palmas_regs_info** %8, align 8
  %21 = getelementptr inbounds %struct.palmas_regs_info, %struct.palmas_regs_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.palmas_reg_init*, %struct.palmas_reg_init** %6, align 8
  %24 = getelementptr inbounds %struct.palmas_reg_init, %struct.palmas_reg_init* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @palmas_ext_control_req_config(%struct.palmas* %19, i32 %22, i32 %25, i32 1)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %3
  %30 = load %struct.palmas*, %struct.palmas** %4, align 8
  %31 = getelementptr inbounds %struct.palmas, %struct.palmas* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @dev_err(i32 %32, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %34)
  br label %36

36:                                               ; preds = %29, %3
  %37 = load i32, i32* %9, align 4
  ret i32 %37
}

declare dso_local i32 @palmas_ext_control_req_config(%struct.palmas*, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
