; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_ab3100.c_ab3100_get_voltage_regulator.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_ab3100.c_ab3100_get_voltage_regulator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32* }
%struct.ab3100_regulator = type { i32, i32 }

@.str = private unnamed_addr constant [48 x i8] c"failed to get regulator value in register %02x\0A\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"regulator register %02x contains an illegal voltage setting\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*)* @ab3100_get_voltage_regulator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ab3100_get_voltage_regulator(%struct.regulator_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.regulator_dev*, align 8
  %4 = alloca %struct.ab3100_regulator*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %3, align 8
  %7 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %8 = call %struct.ab3100_regulator* @rdev_get_drvdata(%struct.regulator_dev* %7)
  store %struct.ab3100_regulator* %8, %struct.ab3100_regulator** %4, align 8
  %9 = load %struct.ab3100_regulator*, %struct.ab3100_regulator** %4, align 8
  %10 = getelementptr inbounds %struct.ab3100_regulator, %struct.ab3100_regulator* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.ab3100_regulator*, %struct.ab3100_regulator** %4, align 8
  %13 = getelementptr inbounds %struct.ab3100_regulator, %struct.ab3100_regulator* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @abx500_get_register_interruptible(i32 %11, i32 0, i32 %14, i32* %5)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %1
  %19 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %20 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %19, i32 0, i32 1
  %21 = load %struct.ab3100_regulator*, %struct.ab3100_regulator** %4, align 8
  %22 = getelementptr inbounds %struct.ab3100_regulator, %struct.ab3100_regulator* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @dev_warn(i32* %20, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %2, align 4
  br label %57

26:                                               ; preds = %1
  %27 = load i32, i32* %5, align 4
  %28 = and i32 %27, 224
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = ashr i32 %29, 5
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %33 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp sge i32 %31, %36
  br i1 %37, label %38, label %47

38:                                               ; preds = %26
  %39 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %40 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %39, i32 0, i32 1
  %41 = load %struct.ab3100_regulator*, %struct.ab3100_regulator** %4, align 8
  %42 = getelementptr inbounds %struct.ab3100_regulator, %struct.ab3100_regulator* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @dev_err(i32* %40, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %57

47:                                               ; preds = %26
  %48 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %49 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %47, %38, %18
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local %struct.ab3100_regulator* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @abx500_get_register_interruptible(i32, i32, i32, i32*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
