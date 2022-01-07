; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_ab3100.c_ab3100_enable_regulator.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_ab3100.c_ab3100_enable_regulator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.ab3100_regulator = type { i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"failed to get regid %d value\0A\00", align 1
@AB3100_REG_ON_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"failed to set regid %d value\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*)* @ab3100_enable_regulator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ab3100_enable_regulator(%struct.regulator_dev* %0) #0 {
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
  %15 = call i32 @abx500_get_register_interruptible(i32 %11, i32 0, i32 %14, i32* %6)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %1
  %19 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %20 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %19, i32 0, i32 0
  %21 = load %struct.ab3100_regulator*, %struct.ab3100_regulator** %4, align 8
  %22 = getelementptr inbounds %struct.ab3100_regulator, %struct.ab3100_regulator* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @dev_warn(i32* %20, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* %5, align 4
  store i32 %25, i32* %2, align 4
  br label %55

26:                                               ; preds = %1
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @AB3100_REG_ON_MASK, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store i32 0, i32* %2, align 4
  br label %55

32:                                               ; preds = %26
  %33 = load i32, i32* @AB3100_REG_ON_MASK, align 4
  %34 = load i32, i32* %6, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %6, align 4
  %36 = load %struct.ab3100_regulator*, %struct.ab3100_regulator** %4, align 8
  %37 = getelementptr inbounds %struct.ab3100_regulator, %struct.ab3100_regulator* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.ab3100_regulator*, %struct.ab3100_regulator** %4, align 8
  %40 = getelementptr inbounds %struct.ab3100_regulator, %struct.ab3100_regulator* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @abx500_set_register_interruptible(i32 %38, i32 0, i32 %41, i32 %42)
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %32
  %47 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %48 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %47, i32 0, i32 0
  %49 = load %struct.ab3100_regulator*, %struct.ab3100_regulator** %4, align 8
  %50 = getelementptr inbounds %struct.ab3100_regulator, %struct.ab3100_regulator* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @dev_warn(i32* %48, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* %5, align 4
  store i32 %53, i32* %2, align 4
  br label %55

54:                                               ; preds = %32
  store i32 0, i32* %2, align 4
  br label %55

55:                                               ; preds = %54, %46, %31, %18
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local %struct.ab3100_regulator* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @abx500_get_register_interruptible(i32, i32, i32, i32*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @abx500_set_register_interruptible(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
