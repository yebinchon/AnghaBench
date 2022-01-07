; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_max8973-regulator.c_max8973_set_ramp_delay.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_max8973-regulator.c_max8973_set_ramp_delay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.max8973_chip = type { i32, i32 }

@MAX8973_RAMP_12mV_PER_US = common dso_local global i32 0, align 4
@MAX8973_RAMP_25mV_PER_US = common dso_local global i32 0, align 4
@MAX8973_RAMP_50mV_PER_US = common dso_local global i32 0, align 4
@MAX8973_RAMP_200mV_PER_US = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MAX8973_CONTROL1 = common dso_local global i32 0, align 4
@MAX8973_RAMP_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"register %d update failed, %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32)* @max8973_set_ramp_delay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max8973_set_ramp_delay(%struct.regulator_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regulator_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.max8973_chip*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %10 = call %struct.max8973_chip* @rdev_get_drvdata(%struct.regulator_dev* %9)
  store %struct.max8973_chip* %10, %struct.max8973_chip** %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = icmp sle i32 %11, 12000
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @MAX8973_RAMP_12mV_PER_US, align 4
  store i32 %14, i32* %7, align 4
  br label %36

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = icmp sle i32 %16, 25000
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = load i32, i32* @MAX8973_RAMP_25mV_PER_US, align 4
  store i32 %19, i32* %7, align 4
  br label %35

20:                                               ; preds = %15
  %21 = load i32, i32* %5, align 4
  %22 = icmp sle i32 %21, 50000
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = load i32, i32* @MAX8973_RAMP_50mV_PER_US, align 4
  store i32 %24, i32* %7, align 4
  br label %34

25:                                               ; preds = %20
  %26 = load i32, i32* %5, align 4
  %27 = icmp sle i32 %26, 200000
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = load i32, i32* @MAX8973_RAMP_200mV_PER_US, align 4
  store i32 %29, i32* %7, align 4
  br label %33

30:                                               ; preds = %25
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %55

33:                                               ; preds = %28
  br label %34

34:                                               ; preds = %33, %23
  br label %35

35:                                               ; preds = %34, %18
  br label %36

36:                                               ; preds = %35, %13
  %37 = load %struct.max8973_chip*, %struct.max8973_chip** %6, align 8
  %38 = getelementptr inbounds %struct.max8973_chip, %struct.max8973_chip* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @MAX8973_CONTROL1, align 4
  %41 = load i32, i32* @MAX8973_RAMP_MASK, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @regmap_update_bits(i32 %39, i32 %40, i32 %41, i32 %42)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %36
  %47 = load %struct.max8973_chip*, %struct.max8973_chip** %6, align 8
  %48 = getelementptr inbounds %struct.max8973_chip, %struct.max8973_chip* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @MAX8973_CONTROL1, align 4
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @dev_err(i32 %49, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %50, i32 %51)
  br label %53

53:                                               ; preds = %46, %36
  %54 = load i32, i32* %8, align 4
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %53, %30
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local %struct.max8973_chip* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
