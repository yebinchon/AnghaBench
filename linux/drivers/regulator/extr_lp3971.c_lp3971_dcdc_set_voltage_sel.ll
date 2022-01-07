; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_lp3971.c_lp3971_dcdc_set_voltage_sel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_lp3971.c_lp3971_dcdc_set_voltage_sel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.lp3971 = type { i32 }

@LP3971_DCDC1 = common dso_local global i32 0, align 4
@BUCK_TARGET_VOL_MASK = common dso_local global i32 0, align 4
@LP3971_BUCK_VOL_CHANGE_REG = common dso_local global i32 0, align 4
@BUCK_VOL_CHANGE_FLAG_MASK = common dso_local global i32 0, align 4
@BUCK_VOL_CHANGE_FLAG_GO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32)* @lp3971_dcdc_set_voltage_sel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lp3971_dcdc_set_voltage_sel(%struct.regulator_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regulator_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.lp3971*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %10 = call %struct.lp3971* @rdev_get_drvdata(%struct.regulator_dev* %9)
  store %struct.lp3971* %10, %struct.lp3971** %6, align 8
  %11 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %12 = call i32 @rdev_get_id(%struct.regulator_dev* %11)
  %13 = load i32, i32* @LP3971_DCDC1, align 4
  %14 = sub nsw i32 %12, %13
  store i32 %14, i32* %7, align 4
  %15 = load %struct.lp3971*, %struct.lp3971** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @LP3971_BUCK_TARGET_VOL1_REG(i32 %16)
  %18 = load i32, i32* @BUCK_TARGET_VOL_MASK, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @lp3971_set_bits(%struct.lp3971* %15, i32 %17, i32 %18, i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* %8, align 4
  store i32 %24, i32* %3, align 4
  br label %52

25:                                               ; preds = %2
  %26 = load %struct.lp3971*, %struct.lp3971** %6, align 8
  %27 = load i32, i32* @LP3971_BUCK_VOL_CHANGE_REG, align 4
  %28 = load i32, i32* @BUCK_VOL_CHANGE_FLAG_MASK, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @BUCK_VOL_CHANGE_SHIFT(i32 %29)
  %31 = shl i32 %28, %30
  %32 = load i32, i32* @BUCK_VOL_CHANGE_FLAG_GO, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @BUCK_VOL_CHANGE_SHIFT(i32 %33)
  %35 = shl i32 %32, %34
  %36 = call i32 @lp3971_set_bits(%struct.lp3971* %26, i32 %27, i32 %31, i32 %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %25
  %40 = load i32, i32* %8, align 4
  store i32 %40, i32* %3, align 4
  br label %52

41:                                               ; preds = %25
  %42 = load %struct.lp3971*, %struct.lp3971** %6, align 8
  %43 = load i32, i32* @LP3971_BUCK_VOL_CHANGE_REG, align 4
  %44 = load i32, i32* @BUCK_VOL_CHANGE_FLAG_MASK, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @BUCK_VOL_CHANGE_SHIFT(i32 %45)
  %47 = shl i32 %44, %46
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @BUCK_VOL_CHANGE_SHIFT(i32 %48)
  %50 = shl i32 0, %49
  %51 = call i32 @lp3971_set_bits(%struct.lp3971* %42, i32 %43, i32 %47, i32 %50)
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %41, %39, %23
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local %struct.lp3971* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @rdev_get_id(%struct.regulator_dev*) #1

declare dso_local i32 @lp3971_set_bits(%struct.lp3971*, i32, i32, i32) #1

declare dso_local i32 @LP3971_BUCK_TARGET_VOL1_REG(i32) #1

declare dso_local i32 @BUCK_VOL_CHANGE_SHIFT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
