; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_da9055-regulator.c_da9055_regulator_set_suspend_voltage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_da9055-regulator.c_da9055_regulator_set_suspend_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.da9055_regulator = type { i64, i32, %struct.da9055_regulator_info* }
%struct.da9055_regulator_info = type { %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@NO_GPIO = common dso_local global i64 0, align 8
@DA9055_SEL_REG_B = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32)* @da9055_regulator_set_suspend_voltage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da9055_regulator_set_suspend_voltage(%struct.regulator_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regulator_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.da9055_regulator*, align 8
  %7 = alloca %struct.da9055_regulator_info*, align 8
  %8 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %10 = call %struct.da9055_regulator* @rdev_get_drvdata(%struct.regulator_dev* %9)
  store %struct.da9055_regulator* %10, %struct.da9055_regulator** %6, align 8
  %11 = load %struct.da9055_regulator*, %struct.da9055_regulator** %6, align 8
  %12 = getelementptr inbounds %struct.da9055_regulator, %struct.da9055_regulator* %11, i32 0, i32 2
  %13 = load %struct.da9055_regulator_info*, %struct.da9055_regulator_info** %12, align 8
  store %struct.da9055_regulator_info* %13, %struct.da9055_regulator_info** %7, align 8
  %14 = load %struct.da9055_regulator*, %struct.da9055_regulator** %6, align 8
  %15 = getelementptr inbounds %struct.da9055_regulator, %struct.da9055_regulator* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @NO_GPIO, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %38

19:                                               ; preds = %2
  %20 = load %struct.da9055_regulator*, %struct.da9055_regulator** %6, align 8
  %21 = getelementptr inbounds %struct.da9055_regulator, %struct.da9055_regulator* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.da9055_regulator_info*, %struct.da9055_regulator_info** %7, align 8
  %24 = getelementptr inbounds %struct.da9055_regulator_info, %struct.da9055_regulator_info* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.da9055_regulator_info*, %struct.da9055_regulator_info** %7, align 8
  %28 = getelementptr inbounds %struct.da9055_regulator_info, %struct.da9055_regulator_info* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @DA9055_SEL_REG_B, align 4
  %32 = call i32 @da9055_reg_update(i32 %22, i32 %26, i32 %30, i32 %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %19
  %36 = load i32, i32* %8, align 4
  store i32 %36, i32* %3, align 4
  br label %61

37:                                               ; preds = %19
  br label %38

38:                                               ; preds = %37, %2
  %39 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @regulator_map_voltage_linear(%struct.regulator_dev* %39, i32 %40, i32 %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %38
  %46 = load i32, i32* %8, align 4
  store i32 %46, i32* %3, align 4
  br label %61

47:                                               ; preds = %38
  %48 = load %struct.da9055_regulator*, %struct.da9055_regulator** %6, align 8
  %49 = getelementptr inbounds %struct.da9055_regulator, %struct.da9055_regulator* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.da9055_regulator_info*, %struct.da9055_regulator_info** %7, align 8
  %52 = getelementptr inbounds %struct.da9055_regulator_info, %struct.da9055_regulator_info* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.da9055_regulator_info*, %struct.da9055_regulator_info** %7, align 8
  %56 = getelementptr inbounds %struct.da9055_regulator_info, %struct.da9055_regulator_info* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @da9055_reg_update(i32 %50, i32 %54, i32 %58, i32 %59)
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %47, %45, %35
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local %struct.da9055_regulator* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @da9055_reg_update(i32, i32, i32, i32) #1

declare dso_local i32 @regulator_map_voltage_linear(%struct.regulator_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
