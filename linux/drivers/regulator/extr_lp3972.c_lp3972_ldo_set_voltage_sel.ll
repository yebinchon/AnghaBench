; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_lp3972.c_lp3972_ldo_set_voltage_sel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_lp3972.c_lp3972_ldo_set_voltage_sel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.lp3972 = type { i32 }

@LP3972_VOL_CHANGE_REG = common dso_local global i32 0, align 4
@LP3972_VOL_CHANGE_FLAG_MASK = common dso_local global i32 0, align 4
@LP3972_VOL_CHANGE_FLAG_GO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32)* @lp3972_ldo_set_voltage_sel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lp3972_ldo_set_voltage_sel(%struct.regulator_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regulator_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.lp3972*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %11 = call %struct.lp3972* @rdev_get_drvdata(%struct.regulator_dev* %10)
  store %struct.lp3972* %11, %struct.lp3972** %6, align 8
  %12 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %13 = call i32 @rdev_get_id(%struct.regulator_dev* %12)
  %14 = sub nsw i32 %13, 129
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @LP3972_LDO_VOL_CONTR_SHIFT(i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load %struct.lp3972*, %struct.lp3972** %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @LP3972_LDO_VOL_CONTR_REG(i32 %18)
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @LP3972_LDO_VOL_MASK(i32 %20)
  %22 = load i32, i32* %8, align 4
  %23 = shl i32 %21, %22
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* %8, align 4
  %26 = shl i32 %24, %25
  %27 = call i32 @lp3972_set_bits(%struct.lp3972* %17, i32 %19, i32 %23, i32 %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %2
  %31 = load i32, i32* %9, align 4
  store i32 %31, i32* %3, align 4
  br label %59

32:                                               ; preds = %2
  %33 = load i32, i32* %7, align 4
  switch i32 %33, label %57 [
    i32 129, label %34
    i32 128, label %34
  ]

34:                                               ; preds = %32, %32
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @LP3972_LDO_VOL_CHANGE_SHIFT(i32 %35)
  store i32 %36, i32* %8, align 4
  %37 = load %struct.lp3972*, %struct.lp3972** %6, align 8
  %38 = load i32, i32* @LP3972_VOL_CHANGE_REG, align 4
  %39 = load i32, i32* @LP3972_VOL_CHANGE_FLAG_MASK, align 4
  %40 = load i32, i32* %8, align 4
  %41 = shl i32 %39, %40
  %42 = load i32, i32* @LP3972_VOL_CHANGE_FLAG_GO, align 4
  %43 = load i32, i32* %8, align 4
  %44 = shl i32 %42, %43
  %45 = call i32 @lp3972_set_bits(%struct.lp3972* %37, i32 %38, i32 %41, i32 %44)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %34
  %49 = load i32, i32* %9, align 4
  store i32 %49, i32* %3, align 4
  br label %59

50:                                               ; preds = %34
  %51 = load %struct.lp3972*, %struct.lp3972** %6, align 8
  %52 = load i32, i32* @LP3972_VOL_CHANGE_REG, align 4
  %53 = load i32, i32* @LP3972_VOL_CHANGE_FLAG_MASK, align 4
  %54 = load i32, i32* %8, align 4
  %55 = shl i32 %53, %54
  %56 = call i32 @lp3972_set_bits(%struct.lp3972* %51, i32 %52, i32 %55, i32 0)
  store i32 %56, i32* %9, align 4
  br label %57

57:                                               ; preds = %32, %50
  %58 = load i32, i32* %9, align 4
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %57, %48, %30
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local %struct.lp3972* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @rdev_get_id(%struct.regulator_dev*) #1

declare dso_local i32 @LP3972_LDO_VOL_CONTR_SHIFT(i32) #1

declare dso_local i32 @lp3972_set_bits(%struct.lp3972*, i32, i32, i32) #1

declare dso_local i32 @LP3972_LDO_VOL_CONTR_REG(i32) #1

declare dso_local i32 @LP3972_LDO_VOL_MASK(i32) #1

declare dso_local i32 @LP3972_LDO_VOL_CHANGE_SHIFT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
