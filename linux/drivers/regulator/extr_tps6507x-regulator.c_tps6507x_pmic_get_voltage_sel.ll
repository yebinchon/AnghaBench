; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_tps6507x-regulator.c_tps6507x_pmic_get_voltage_sel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_tps6507x-regulator.c_tps6507x_pmic_get_voltage_sel.c"
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*)* @tps6507x_pmic_get_voltage_sel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tps6507x_pmic_get_voltage_sel(%struct.regulator_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.regulator_dev*, align 8
  %4 = alloca %struct.tps6507x_pmic*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %3, align 8
  %9 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %10 = call %struct.tps6507x_pmic* @rdev_get_drvdata(%struct.regulator_dev* %9)
  store %struct.tps6507x_pmic* %10, %struct.tps6507x_pmic** %4, align 8
  %11 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %12 = call i32 @rdev_get_id(%struct.regulator_dev* %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  switch i32 %13, label %57 [
    i32 132, label %14
    i32 131, label %17
    i32 130, label %34
    i32 129, label %51
    i32 128, label %54
  ]

14:                                               ; preds = %1
  %15 = load i32, i32* @TPS6507X_REG_DEFDCDC1, align 4
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* @TPS6507X_DEFDCDCX_DCDC_MASK, align 4
  store i32 %16, i32* %8, align 4
  br label %60

17:                                               ; preds = %1
  %18 = load %struct.tps6507x_pmic*, %struct.tps6507x_pmic** %4, align 8
  %19 = getelementptr inbounds %struct.tps6507x_pmic, %struct.tps6507x_pmic* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %20, i64 %22
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %17
  %29 = load i32, i32* @TPS6507X_REG_DEFDCDC2_HIGH, align 4
  store i32 %29, i32* %7, align 4
  br label %32

30:                                               ; preds = %17
  %31 = load i32, i32* @TPS6507X_REG_DEFDCDC2_LOW, align 4
  store i32 %31, i32* %7, align 4
  br label %32

32:                                               ; preds = %30, %28
  %33 = load i32, i32* @TPS6507X_DEFDCDCX_DCDC_MASK, align 4
  store i32 %33, i32* %8, align 4
  br label %60

34:                                               ; preds = %1
  %35 = load %struct.tps6507x_pmic*, %struct.tps6507x_pmic** %4, align 8
  %36 = getelementptr inbounds %struct.tps6507x_pmic, %struct.tps6507x_pmic* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %37, i64 %39
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %34
  %46 = load i32, i32* @TPS6507X_REG_DEFDCDC3_HIGH, align 4
  store i32 %46, i32* %7, align 4
  br label %49

47:                                               ; preds = %34
  %48 = load i32, i32* @TPS6507X_REG_DEFDCDC3_LOW, align 4
  store i32 %48, i32* %7, align 4
  br label %49

49:                                               ; preds = %47, %45
  %50 = load i32, i32* @TPS6507X_DEFDCDCX_DCDC_MASK, align 4
  store i32 %50, i32* %8, align 4
  br label %60

51:                                               ; preds = %1
  %52 = load i32, i32* @TPS6507X_REG_LDO_CTRL1, align 4
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* @TPS6507X_REG_LDO_CTRL1_LDO1_MASK, align 4
  store i32 %53, i32* %8, align 4
  br label %60

54:                                               ; preds = %1
  %55 = load i32, i32* @TPS6507X_REG_DEFLDO2, align 4
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* @TPS6507X_REG_DEFLDO2_LDO2_MASK, align 4
  store i32 %56, i32* %8, align 4
  br label %60

57:                                               ; preds = %1
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %2, align 4
  br label %73

60:                                               ; preds = %54, %51, %49, %32, %14
  %61 = load %struct.tps6507x_pmic*, %struct.tps6507x_pmic** %4, align 8
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @tps6507x_pmic_reg_read(%struct.tps6507x_pmic* %61, i32 %62)
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* %5, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %60
  %67 = load i32, i32* %5, align 4
  store i32 %67, i32* %2, align 4
  br label %73

68:                                               ; preds = %60
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* %5, align 4
  %71 = and i32 %70, %69
  store i32 %71, i32* %5, align 4
  %72 = load i32, i32* %5, align 4
  store i32 %72, i32* %2, align 4
  br label %73

73:                                               ; preds = %68, %66, %57
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local %struct.tps6507x_pmic* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @rdev_get_id(%struct.regulator_dev*) #1

declare dso_local i32 @tps6507x_pmic_reg_read(%struct.tps6507x_pmic*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
