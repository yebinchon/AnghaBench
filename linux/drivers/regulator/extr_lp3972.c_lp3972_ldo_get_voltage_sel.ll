; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_lp3972.c_lp3972_ldo_get_voltage_sel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_lp3972.c_lp3972_ldo_get_voltage_sel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.lp3972 = type { i32 }

@LP3972_LDO1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*)* @lp3972_ldo_get_voltage_sel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lp3972_ldo_get_voltage_sel(%struct.regulator_dev* %0) #0 {
  %2 = alloca %struct.regulator_dev*, align 8
  %3 = alloca %struct.lp3972*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %2, align 8
  %8 = load %struct.regulator_dev*, %struct.regulator_dev** %2, align 8
  %9 = call %struct.lp3972* @rdev_get_drvdata(%struct.regulator_dev* %8)
  store %struct.lp3972* %9, %struct.lp3972** %3, align 8
  %10 = load %struct.regulator_dev*, %struct.regulator_dev** %2, align 8
  %11 = call i32 @rdev_get_id(%struct.regulator_dev* %10)
  %12 = load i32, i32* @LP3972_LDO1, align 4
  %13 = sub nsw i32 %11, %12
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @LP3972_LDO_VOL_MASK(i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load %struct.lp3972*, %struct.lp3972** %3, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @LP3972_LDO_VOL_CONTR_REG(i32 %17)
  %19 = call i32 @lp3972_reg_read(%struct.lp3972* %16, i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @LP3972_LDO_VOL_CONTR_SHIFT(i32 %21)
  %23 = ashr i32 %20, %22
  %24 = load i32, i32* %5, align 4
  %25 = and i32 %23, %24
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  ret i32 %26
}

declare dso_local %struct.lp3972* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @rdev_get_id(%struct.regulator_dev*) #1

declare dso_local i32 @LP3972_LDO_VOL_MASK(i32) #1

declare dso_local i32 @lp3972_reg_read(%struct.lp3972*, i32) #1

declare dso_local i32 @LP3972_LDO_VOL_CONTR_REG(i32) #1

declare dso_local i32 @LP3972_LDO_VOL_CONTR_SHIFT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
