; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_ab3100.c_ab3100_disable_regulator.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_ab3100.c_ab3100_disable_regulator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.ab3100_regulator = type { i64, i32 }

@.str = private unnamed_addr constant [33 x i8] c"Called ab3100_disable_regulator\0A\00", align 1
@AB3100_LDO_D = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"disabling LDO D - shut down system\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"unable to get register 0x%x\0A\00", align 1
@AB3100_REG_ON_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*)* @ab3100_disable_regulator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ab3100_disable_regulator(%struct.regulator_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.regulator_dev*, align 8
  %4 = alloca %struct.ab3100_regulator*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %3, align 8
  %7 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %8 = call %struct.ab3100_regulator* @rdev_get_drvdata(%struct.regulator_dev* %7)
  store %struct.ab3100_regulator* %8, %struct.ab3100_regulator** %4, align 8
  %9 = call i32 @pr_info(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.ab3100_regulator*, %struct.ab3100_regulator** %4, align 8
  %11 = getelementptr inbounds %struct.ab3100_regulator, %struct.ab3100_regulator* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @AB3100_LDO_D, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %24

15:                                               ; preds = %1
  %16 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %17 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %16, i32 0, i32 0
  %18 = call i32 @dev_info(i32* %17, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %19 = load %struct.ab3100_regulator*, %struct.ab3100_regulator** %4, align 8
  %20 = getelementptr inbounds %struct.ab3100_regulator, %struct.ab3100_regulator* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load i64, i64* @AB3100_LDO_D, align 8
  %23 = call i32 @abx500_set_register_interruptible(i32 %21, i32 0, i64 %22, i32 0)
  store i32 %23, i32* %2, align 4
  br label %55

24:                                               ; preds = %1
  %25 = load %struct.ab3100_regulator*, %struct.ab3100_regulator** %4, align 8
  %26 = getelementptr inbounds %struct.ab3100_regulator, %struct.ab3100_regulator* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.ab3100_regulator*, %struct.ab3100_regulator** %4, align 8
  %29 = getelementptr inbounds %struct.ab3100_regulator, %struct.ab3100_regulator* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @abx500_get_register_interruptible(i32 %27, i32 0, i64 %30, i32* %6)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %24
  %35 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %36 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %35, i32 0, i32 0
  %37 = load %struct.ab3100_regulator*, %struct.ab3100_regulator** %4, align 8
  %38 = getelementptr inbounds %struct.ab3100_regulator, %struct.ab3100_regulator* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @dev_err(i32* %36, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i64 %39)
  %41 = load i32, i32* %5, align 4
  store i32 %41, i32* %2, align 4
  br label %55

42:                                               ; preds = %24
  %43 = load i32, i32* @AB3100_REG_ON_MASK, align 4
  %44 = xor i32 %43, -1
  %45 = load i32, i32* %6, align 4
  %46 = and i32 %45, %44
  store i32 %46, i32* %6, align 4
  %47 = load %struct.ab3100_regulator*, %struct.ab3100_regulator** %4, align 8
  %48 = getelementptr inbounds %struct.ab3100_regulator, %struct.ab3100_regulator* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.ab3100_regulator*, %struct.ab3100_regulator** %4, align 8
  %51 = getelementptr inbounds %struct.ab3100_regulator, %struct.ab3100_regulator* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @abx500_set_register_interruptible(i32 %49, i32 0, i64 %52, i32 %53)
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %42, %34, %15
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local %struct.ab3100_regulator* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @abx500_set_register_interruptible(i32, i32, i64, i32) #1

declare dso_local i32 @abx500_get_register_interruptible(i32, i32, i64, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
