; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_tps6507x-regulator.c_tps6507x_pmic_set_voltage_sel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_tps6507x-regulator.c_tps6507x_pmic_set_voltage_sel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.tps6507x_pmic = type { %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32 }

@TPS6507X_REG_DEFDCDC1 = common dso_local global i32 0, align 4
@TPS6507X_DEFDCDCX_DCDC_MASK = common dso_local global i32 0, align 4
@TPS6507X_REG_DEFDCDC2_HIGH = common dso_local global i32 0, align 4
@TPS6507X_REG_DEFDCDC2_LOW = common dso_local global i32 0, align 4
@TPS6507X_REG_DEFDCDC3_HIGH = common dso_local global i32 0, align 4
@TPS6507X_REG_DEFDCDC3_LOW = common dso_local global i32 0, align 4
@TPS6507X_REG_LDO_CTRL1 = common dso_local global i32 0, align 4
@TPS6507X_REG_LDO_CTRL1_LDO1_MASK = common dso_local global i32 0, align 4
@TPS6507X_REG_DEFLDO2 = common dso_local global i32 0, align 4
@TPS6507X_REG_DEFLDO2_LDO2_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32)* @tps6507x_pmic_set_voltage_sel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tps6507x_pmic_set_voltage_sel(%struct.regulator_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regulator_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tps6507x_pmic*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %12 = call %struct.tps6507x_pmic* @rdev_get_drvdata(%struct.regulator_dev* %11)
  store %struct.tps6507x_pmic* %12, %struct.tps6507x_pmic** %6, align 8
  %13 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %14 = call i32 @rdev_get_id(%struct.regulator_dev* %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  switch i32 %15, label %59 [
    i32 132, label %16
    i32 131, label %19
    i32 130, label %36
    i32 129, label %53
    i32 128, label %56
  ]

16:                                               ; preds = %2
  %17 = load i32, i32* @TPS6507X_REG_DEFDCDC1, align 4
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* @TPS6507X_DEFDCDCX_DCDC_MASK, align 4
  store i32 %18, i32* %10, align 4
  br label %62

19:                                               ; preds = %2
  %20 = load %struct.tps6507x_pmic*, %struct.tps6507x_pmic** %6, align 8
  %21 = getelementptr inbounds %struct.tps6507x_pmic, %struct.tps6507x_pmic* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %21, align 8
  %23 = load i32, i32* %8, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %22, i64 %24
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %19
  %31 = load i32, i32* @TPS6507X_REG_DEFDCDC2_HIGH, align 4
  store i32 %31, i32* %9, align 4
  br label %34

32:                                               ; preds = %19
  %33 = load i32, i32* @TPS6507X_REG_DEFDCDC2_LOW, align 4
  store i32 %33, i32* %9, align 4
  br label %34

34:                                               ; preds = %32, %30
  %35 = load i32, i32* @TPS6507X_DEFDCDCX_DCDC_MASK, align 4
  store i32 %35, i32* %10, align 4
  br label %62

36:                                               ; preds = %2
  %37 = load %struct.tps6507x_pmic*, %struct.tps6507x_pmic** %6, align 8
  %38 = getelementptr inbounds %struct.tps6507x_pmic, %struct.tps6507x_pmic* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %38, align 8
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %39, i64 %41
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %36
  %48 = load i32, i32* @TPS6507X_REG_DEFDCDC3_HIGH, align 4
  store i32 %48, i32* %9, align 4
  br label %51

49:                                               ; preds = %36
  %50 = load i32, i32* @TPS6507X_REG_DEFDCDC3_LOW, align 4
  store i32 %50, i32* %9, align 4
  br label %51

51:                                               ; preds = %49, %47
  %52 = load i32, i32* @TPS6507X_DEFDCDCX_DCDC_MASK, align 4
  store i32 %52, i32* %10, align 4
  br label %62

53:                                               ; preds = %2
  %54 = load i32, i32* @TPS6507X_REG_LDO_CTRL1, align 4
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* @TPS6507X_REG_LDO_CTRL1_LDO1_MASK, align 4
  store i32 %55, i32* %10, align 4
  br label %62

56:                                               ; preds = %2
  %57 = load i32, i32* @TPS6507X_REG_DEFLDO2, align 4
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* @TPS6507X_REG_DEFLDO2_LDO2_MASK, align 4
  store i32 %58, i32* %10, align 4
  br label %62

59:                                               ; preds = %2
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %82

62:                                               ; preds = %56, %53, %51, %34, %16
  %63 = load %struct.tps6507x_pmic*, %struct.tps6507x_pmic** %6, align 8
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @tps6507x_pmic_reg_read(%struct.tps6507x_pmic* %63, i32 %64)
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %7, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %62
  %69 = load i32, i32* %7, align 4
  store i32 %69, i32* %3, align 4
  br label %82

70:                                               ; preds = %62
  %71 = load i32, i32* %10, align 4
  %72 = xor i32 %71, -1
  %73 = load i32, i32* %7, align 4
  %74 = and i32 %73, %72
  store i32 %74, i32* %7, align 4
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* %7, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %7, align 4
  %78 = load %struct.tps6507x_pmic*, %struct.tps6507x_pmic** %6, align 8
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* %7, align 4
  %81 = call i32 @tps6507x_pmic_reg_write(%struct.tps6507x_pmic* %78, i32 %79, i32 %80)
  store i32 %81, i32* %3, align 4
  br label %82

82:                                               ; preds = %70, %68, %59
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local %struct.tps6507x_pmic* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @rdev_get_id(%struct.regulator_dev*) #1

declare dso_local i32 @tps6507x_pmic_reg_read(%struct.tps6507x_pmic*, i32) #1

declare dso_local i32 @tps6507x_pmic_reg_write(%struct.tps6507x_pmic*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
