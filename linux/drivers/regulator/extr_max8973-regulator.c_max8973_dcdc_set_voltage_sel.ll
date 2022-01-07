; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_max8973-regulator.c_max8973_dcdc_set_voltage_sel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_max8973-regulator.c_max8973_dcdc_set_voltage_sel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.max8973_chip = type { i32, i32, i32*, i32, i32, i32 }

@MAX8973_VOUT_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"register %d update failed, err %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32)* @max8973_dcdc_set_voltage_sel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max8973_dcdc_set_voltage_sel(%struct.regulator_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regulator_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.max8973_chip*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %12 = call %struct.max8973_chip* @rdev_get_drvdata(%struct.regulator_dev* %11)
  store %struct.max8973_chip* %12, %struct.max8973_chip** %6, align 8
  store i32 0, i32* %8, align 4
  %13 = load %struct.max8973_chip*, %struct.max8973_chip** %6, align 8
  %14 = getelementptr inbounds %struct.max8973_chip, %struct.max8973_chip* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %9, align 4
  %16 = load %struct.max8973_chip*, %struct.max8973_chip** %6, align 8
  %17 = getelementptr inbounds %struct.max8973_chip, %struct.max8973_chip* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %10, align 4
  %19 = load %struct.max8973_chip*, %struct.max8973_chip** %6, align 8
  %20 = getelementptr inbounds %struct.max8973_chip, %struct.max8973_chip* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = call i64 @gpio_is_valid(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %2
  %25 = load %struct.max8973_chip*, %struct.max8973_chip** %6, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @find_voltage_set_register(%struct.max8973_chip* %25, i32 %26, i32* %9, i32* %10)
  store i32 %27, i32* %8, align 4
  br label %28

28:                                               ; preds = %24, %2
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %60, label %31

31:                                               ; preds = %28
  %32 = load %struct.max8973_chip*, %struct.max8973_chip** %6, align 8
  %33 = getelementptr inbounds %struct.max8973_chip, %struct.max8973_chip* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @MAX8973_VOUT_MASK, align 4
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @regmap_update_bits(i32 %34, i32 %35, i32 %36, i32 %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %31
  %42 = load %struct.max8973_chip*, %struct.max8973_chip** %6, align 8
  %43 = getelementptr inbounds %struct.max8973_chip, %struct.max8973_chip* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @dev_err(i32 %44, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %45, i32 %46)
  %48 = load i32, i32* %7, align 4
  store i32 %48, i32* %3, align 4
  br label %77

49:                                               ; preds = %31
  %50 = load i32, i32* %9, align 4
  %51 = load %struct.max8973_chip*, %struct.max8973_chip** %6, align 8
  %52 = getelementptr inbounds %struct.max8973_chip, %struct.max8973_chip* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load i32, i32* %5, align 4
  %54 = load %struct.max8973_chip*, %struct.max8973_chip** %6, align 8
  %55 = getelementptr inbounds %struct.max8973_chip, %struct.max8973_chip* %54, i32 0, i32 2
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %10, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  store i32 %53, i32* %59, align 4
  br label %60

60:                                               ; preds = %49, %28
  %61 = load %struct.max8973_chip*, %struct.max8973_chip** %6, align 8
  %62 = getelementptr inbounds %struct.max8973_chip, %struct.max8973_chip* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = call i64 @gpio_is_valid(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %76

66:                                               ; preds = %60
  %67 = load %struct.max8973_chip*, %struct.max8973_chip** %6, align 8
  %68 = getelementptr inbounds %struct.max8973_chip, %struct.max8973_chip* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* %10, align 4
  %71 = and i32 %70, 1
  %72 = call i32 @gpio_set_value_cansleep(i32 %69, i32 %71)
  %73 = load i32, i32* %10, align 4
  %74 = load %struct.max8973_chip*, %struct.max8973_chip** %6, align 8
  %75 = getelementptr inbounds %struct.max8973_chip, %struct.max8973_chip* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 4
  br label %76

76:                                               ; preds = %66, %60
  store i32 0, i32* %3, align 4
  br label %77

77:                                               ; preds = %76, %41
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local %struct.max8973_chip* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i64 @gpio_is_valid(i32) #1

declare dso_local i32 @find_voltage_set_register(%struct.max8973_chip*, i32, i32*, i32*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

declare dso_local i32 @gpio_set_value_cansleep(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
