; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_max8925-regulator.c_max8925_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_max8925-regulator.c_max8925_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.max8925_regulator_info = type { i32, i32 }

@LDO_SEQ_MASK = common dso_local global i32 0, align 4
@LDO_SEQ_SHIFT = common dso_local global i32 0, align 4
@LDO_I2C_EN_MASK = common dso_local global i32 0, align 4
@LDO_I2C_EN_SHIFT = common dso_local global i32 0, align 4
@LDO_SEQ_I2C = common dso_local global i32 0, align 4
@LDO_I2C_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*)* @max8925_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max8925_enable(%struct.regulator_dev* %0) #0 {
  %2 = alloca %struct.regulator_dev*, align 8
  %3 = alloca %struct.max8925_regulator_info*, align 8
  store %struct.regulator_dev* %0, %struct.regulator_dev** %2, align 8
  %4 = load %struct.regulator_dev*, %struct.regulator_dev** %2, align 8
  %5 = call %struct.max8925_regulator_info* @rdev_get_drvdata(%struct.regulator_dev* %4)
  store %struct.max8925_regulator_info* %5, %struct.max8925_regulator_info** %3, align 8
  %6 = load %struct.max8925_regulator_info*, %struct.max8925_regulator_info** %3, align 8
  %7 = getelementptr inbounds %struct.max8925_regulator_info, %struct.max8925_regulator_info* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.max8925_regulator_info*, %struct.max8925_regulator_info** %3, align 8
  %10 = getelementptr inbounds %struct.max8925_regulator_info, %struct.max8925_regulator_info* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @LDO_SEQ_MASK, align 4
  %13 = load i32, i32* @LDO_SEQ_SHIFT, align 4
  %14 = shl i32 %12, %13
  %15 = load i32, i32* @LDO_I2C_EN_MASK, align 4
  %16 = load i32, i32* @LDO_I2C_EN_SHIFT, align 4
  %17 = shl i32 %15, %16
  %18 = or i32 %14, %17
  %19 = load i32, i32* @LDO_SEQ_I2C, align 4
  %20 = load i32, i32* @LDO_SEQ_SHIFT, align 4
  %21 = shl i32 %19, %20
  %22 = load i32, i32* @LDO_I2C_EN, align 4
  %23 = load i32, i32* @LDO_I2C_EN_SHIFT, align 4
  %24 = shl i32 %22, %23
  %25 = or i32 %21, %24
  %26 = call i32 @max8925_set_bits(i32 %8, i32 %11, i32 %18, i32 %25)
  ret i32 %26
}

declare dso_local %struct.max8925_regulator_info* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @max8925_set_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
