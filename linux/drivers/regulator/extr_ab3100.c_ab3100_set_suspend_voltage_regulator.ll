; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_ab3100.c_ab3100_set_suspend_voltage_regulator.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_ab3100.c_ab3100_set_suspend_voltage_regulator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.ab3100_regulator = type { i64, i32 }

@AB3100_LDO_E = common dso_local global i64 0, align 8
@AB3100_LDO_E_SLEEP = common dso_local global i32 0, align 4
@AB3100_BUCK = common dso_local global i64 0, align 8
@AB3100_BUCK_SLEEP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"failed to get regulator register %02x\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"failed to set regulator register %02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32)* @ab3100_set_suspend_voltage_regulator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ab3100_set_suspend_voltage_regulator(%struct.regulator_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regulator_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ab3100_regulator*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %12 = call %struct.ab3100_regulator* @rdev_get_drvdata(%struct.regulator_dev* %11)
  store %struct.ab3100_regulator* %12, %struct.ab3100_regulator** %6, align 8
  %13 = load %struct.ab3100_regulator*, %struct.ab3100_regulator** %6, align 8
  %14 = getelementptr inbounds %struct.ab3100_regulator, %struct.ab3100_regulator* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @AB3100_LDO_E, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @AB3100_LDO_E_SLEEP, align 4
  store i32 %19, i32* %10, align 4
  br label %32

20:                                               ; preds = %2
  %21 = load %struct.ab3100_regulator*, %struct.ab3100_regulator** %6, align 8
  %22 = getelementptr inbounds %struct.ab3100_regulator, %struct.ab3100_regulator* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @AB3100_BUCK, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i32, i32* @AB3100_BUCK_SLEEP, align 4
  store i32 %27, i32* %10, align 4
  br label %31

28:                                               ; preds = %20
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %75

31:                                               ; preds = %26
  br label %32

32:                                               ; preds = %31, %18
  %33 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @regulator_map_voltage_iterate(%struct.regulator_dev* %33, i32 %34, i32 %35)
  store i32 %36, i32* %9, align 4
  %37 = load %struct.ab3100_regulator*, %struct.ab3100_regulator** %6, align 8
  %38 = getelementptr inbounds %struct.ab3100_regulator, %struct.ab3100_regulator* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @abx500_get_register_interruptible(i32 %39, i32 0, i32 %40, i32* %7)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %32
  %45 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %46 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %45, i32 0, i32 0
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @dev_warn(i32* %46, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* %8, align 4
  store i32 %49, i32* %3, align 4
  br label %75

50:                                               ; preds = %32
  %51 = load i32, i32* %7, align 4
  %52 = and i32 %51, -225
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %9, align 4
  %54 = shl i32 %53, 5
  %55 = load i32, i32* %7, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %7, align 4
  %57 = load %struct.ab3100_regulator*, %struct.ab3100_regulator** %6, align 8
  %58 = getelementptr inbounds %struct.ab3100_regulator, %struct.ab3100_regulator* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @abx500_set_register_interruptible(i32 %59, i32 0, i32 %60, i32 %61)
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %50
  %66 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %67 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %66, i32 0, i32 0
  %68 = load %struct.ab3100_regulator*, %struct.ab3100_regulator** %6, align 8
  %69 = getelementptr inbounds %struct.ab3100_regulator, %struct.ab3100_regulator* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = trunc i64 %70 to i32
  %72 = call i32 @dev_warn(i32* %67, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  br label %73

73:                                               ; preds = %65, %50
  %74 = load i32, i32* %8, align 4
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %73, %44, %28
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local %struct.ab3100_regulator* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @regulator_map_voltage_iterate(%struct.regulator_dev*, i32, i32) #1

declare dso_local i32 @abx500_get_register_interruptible(i32, i32, i32, i32*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @abx500_set_register_interruptible(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
