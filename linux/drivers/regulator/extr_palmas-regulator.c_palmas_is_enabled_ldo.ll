; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_palmas-regulator.c_palmas_is_enabled_ldo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_palmas-regulator.c_palmas_is_enabled_ldo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.palmas_pmic = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.palmas_pmic_driver_data* }
%struct.palmas_pmic_driver_data = type { %struct.palmas_regs_info* }
%struct.palmas_regs_info = type { i32 }

@PALMAS_LDO1_CTRL_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*)* @palmas_is_enabled_ldo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @palmas_is_enabled_ldo(%struct.regulator_dev* %0) #0 {
  %2 = alloca %struct.regulator_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.palmas_pmic*, align 8
  %5 = alloca %struct.palmas_pmic_driver_data*, align 8
  %6 = alloca %struct.palmas_regs_info*, align 8
  %7 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %2, align 8
  %8 = load %struct.regulator_dev*, %struct.regulator_dev** %2, align 8
  %9 = call i32 @rdev_get_id(%struct.regulator_dev* %8)
  store i32 %9, i32* %3, align 4
  %10 = load %struct.regulator_dev*, %struct.regulator_dev** %2, align 8
  %11 = call %struct.palmas_pmic* @rdev_get_drvdata(%struct.regulator_dev* %10)
  store %struct.palmas_pmic* %11, %struct.palmas_pmic** %4, align 8
  %12 = load %struct.palmas_pmic*, %struct.palmas_pmic** %4, align 8
  %13 = getelementptr inbounds %struct.palmas_pmic, %struct.palmas_pmic* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.palmas_pmic_driver_data*, %struct.palmas_pmic_driver_data** %15, align 8
  store %struct.palmas_pmic_driver_data* %16, %struct.palmas_pmic_driver_data** %5, align 8
  %17 = load %struct.palmas_pmic_driver_data*, %struct.palmas_pmic_driver_data** %5, align 8
  %18 = getelementptr inbounds %struct.palmas_pmic_driver_data, %struct.palmas_pmic_driver_data* %17, i32 0, i32 0
  %19 = load %struct.palmas_regs_info*, %struct.palmas_regs_info** %18, align 8
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.palmas_regs_info, %struct.palmas_regs_info* %19, i64 %21
  store %struct.palmas_regs_info* %22, %struct.palmas_regs_info** %6, align 8
  %23 = load %struct.palmas_pmic*, %struct.palmas_pmic** %4, align 8
  %24 = getelementptr inbounds %struct.palmas_pmic, %struct.palmas_pmic* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load %struct.palmas_regs_info*, %struct.palmas_regs_info** %6, align 8
  %27 = getelementptr inbounds %struct.palmas_regs_info, %struct.palmas_regs_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @palmas_ldo_read(%struct.TYPE_2__* %25, i32 %28, i32* %7)
  %30 = load i32, i32* @PALMAS_LDO1_CTRL_STATUS, align 4
  %31 = load i32, i32* %7, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  ret i32 %37
}

declare dso_local i32 @rdev_get_id(%struct.regulator_dev*) #1

declare dso_local %struct.palmas_pmic* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @palmas_ldo_read(%struct.TYPE_2__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
