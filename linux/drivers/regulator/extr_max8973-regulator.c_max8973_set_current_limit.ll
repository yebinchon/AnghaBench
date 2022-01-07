; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_max8973-regulator.c_max8973_set_current_limit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_max8973-regulator.c_max8973_set_current_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.max8973_chip = type { i32, i32 }

@MAX8973_CKKADV_TRIP_75mV_PER_US = common dso_local global i32 0, align 4
@MAX8973_CKKADV_TRIP_150mV_PER_US = common dso_local global i32 0, align 4
@MAX8973_CKKADV_TRIP_DISABLE = common dso_local global i32 0, align 4
@MAX8973_CONTROL2 = common dso_local global i32 0, align 4
@MAX8973_CKKADV_TRIP_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"register %d update failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32, i32)* @max8973_set_current_limit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max8973_set_current_limit(%struct.regulator_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.regulator_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.max8973_chip*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %12 = call %struct.max8973_chip* @rdev_get_drvdata(%struct.regulator_dev* %11)
  store %struct.max8973_chip* %12, %struct.max8973_chip** %8, align 8
  %13 = load i32, i32* %7, align 4
  %14 = icmp sle i32 %13, 9000000
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* @MAX8973_CKKADV_TRIP_75mV_PER_US, align 4
  store i32 %16, i32* %9, align 4
  br label %25

17:                                               ; preds = %3
  %18 = load i32, i32* %7, align 4
  %19 = icmp sle i32 %18, 12000000
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = load i32, i32* @MAX8973_CKKADV_TRIP_150mV_PER_US, align 4
  store i32 %21, i32* %9, align 4
  br label %24

22:                                               ; preds = %17
  %23 = load i32, i32* @MAX8973_CKKADV_TRIP_DISABLE, align 4
  store i32 %23, i32* %9, align 4
  br label %24

24:                                               ; preds = %22, %20
  br label %25

25:                                               ; preds = %24, %15
  %26 = load %struct.max8973_chip*, %struct.max8973_chip** %8, align 8
  %27 = getelementptr inbounds %struct.max8973_chip, %struct.max8973_chip* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @MAX8973_CONTROL2, align 4
  %30 = load i32, i32* @MAX8973_CKKADV_TRIP_MASK, align 4
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @regmap_update_bits(i32 %28, i32 %29, i32 %30, i32 %31)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %25
  %36 = load %struct.max8973_chip*, %struct.max8973_chip** %8, align 8
  %37 = getelementptr inbounds %struct.max8973_chip, %struct.max8973_chip* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @MAX8973_CONTROL2, align 4
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @dev_err(i32 %38, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %40)
  %42 = load i32, i32* %10, align 4
  store i32 %42, i32* %4, align 4
  br label %44

43:                                               ; preds = %25
  store i32 0, i32* %4, align 4
  br label %44

44:                                               ; preds = %43, %35
  %45 = load i32, i32* %4, align 4
  ret i32 %45
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
