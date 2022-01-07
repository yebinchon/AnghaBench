; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_da9052-regulator.c_da9052_regulator_set_voltage_sel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_da9052-regulator.c_da9052_regulator_set_voltage_sel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.da9052_regulator = type { i32, %struct.da9052_regulator_info* }
%struct.da9052_regulator_info = type { i32 }

@DA9052_SUPPLY_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32)* @da9052_regulator_set_voltage_sel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da9052_regulator_set_voltage_sel(%struct.regulator_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regulator_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.da9052_regulator*, align 8
  %7 = alloca %struct.da9052_regulator_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %11 = call %struct.da9052_regulator* @rdev_get_drvdata(%struct.regulator_dev* %10)
  store %struct.da9052_regulator* %11, %struct.da9052_regulator** %6, align 8
  %12 = load %struct.da9052_regulator*, %struct.da9052_regulator** %6, align 8
  %13 = getelementptr inbounds %struct.da9052_regulator, %struct.da9052_regulator* %12, i32 0, i32 1
  %14 = load %struct.da9052_regulator_info*, %struct.da9052_regulator_info** %13, align 8
  store %struct.da9052_regulator_info* %14, %struct.da9052_regulator_info** %7, align 8
  %15 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %16 = call i32 @rdev_get_id(%struct.regulator_dev* %15)
  store i32 %16, i32* %8, align 4
  %17 = load %struct.da9052_regulator*, %struct.da9052_regulator** %6, align 8
  %18 = getelementptr inbounds %struct.da9052_regulator, %struct.da9052_regulator* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %21 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %26 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @da9052_reg_update(i32 %19, i32 %24, i32 %29, i32 %30)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %2
  %35 = load i32, i32* %9, align 4
  store i32 %35, i32* %3, align 4
  br label %52

36:                                               ; preds = %2
  %37 = load i32, i32* %8, align 4
  switch i32 %37, label %50 [
    i32 132, label %38
    i32 131, label %38
    i32 130, label %38
    i32 129, label %38
    i32 128, label %38
  ]

38:                                               ; preds = %36, %36, %36, %36, %36
  %39 = load %struct.da9052_regulator*, %struct.da9052_regulator** %6, align 8
  %40 = getelementptr inbounds %struct.da9052_regulator, %struct.da9052_regulator* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @DA9052_SUPPLY_REG, align 4
  %43 = load %struct.da9052_regulator_info*, %struct.da9052_regulator_info** %7, align 8
  %44 = getelementptr inbounds %struct.da9052_regulator_info, %struct.da9052_regulator_info* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.da9052_regulator_info*, %struct.da9052_regulator_info** %7, align 8
  %47 = getelementptr inbounds %struct.da9052_regulator_info, %struct.da9052_regulator_info* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @da9052_reg_update(i32 %41, i32 %42, i32 %45, i32 %48)
  store i32 %49, i32* %9, align 4
  br label %50

50:                                               ; preds = %36, %38
  %51 = load i32, i32* %9, align 4
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %50, %34
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local %struct.da9052_regulator* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @rdev_get_id(%struct.regulator_dev*) #1

declare dso_local i32 @da9052_reg_update(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
