; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_max77620-regulator.c_max77620_regulator_is_enabled.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_max77620-regulator.c_max77620_regulator_is_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.max77620_regulator = type { i64* }

@MAX77620_FPS_SRC_NONE = common dso_local global i64 0, align 8
@MAX77620_POWER_MODE_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*)* @max77620_regulator_is_enabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max77620_regulator_is_enabled(%struct.regulator_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.regulator_dev*, align 8
  %4 = alloca %struct.max77620_regulator*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %3, align 8
  %7 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %8 = call %struct.max77620_regulator* @rdev_get_drvdata(%struct.regulator_dev* %7)
  store %struct.max77620_regulator* %8, %struct.max77620_regulator** %4, align 8
  %9 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %10 = call i32 @rdev_get_id(%struct.regulator_dev* %9)
  store i32 %10, i32* %5, align 4
  %11 = load %struct.max77620_regulator*, %struct.max77620_regulator** %4, align 8
  %12 = getelementptr inbounds %struct.max77620_regulator, %struct.max77620_regulator* %11, i32 0, i32 0
  %13 = load i64*, i64** %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i64, i64* %13, i64 %15
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @MAX77620_FPS_SRC_NONE, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %35

21:                                               ; preds = %1
  %22 = load %struct.max77620_regulator*, %struct.max77620_regulator** %4, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @max77620_regulator_get_power_mode(%struct.max77620_regulator* %22, i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %2, align 4
  br label %35

29:                                               ; preds = %21
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @MAX77620_POWER_MODE_DISABLE, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  store i32 1, i32* %2, align 4
  br label %35

34:                                               ; preds = %29
  store i32 0, i32* %2, align 4
  br label %35

35:                                               ; preds = %34, %33, %27, %20
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local %struct.max77620_regulator* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @rdev_get_id(%struct.regulator_dev*) #1

declare dso_local i32 @max77620_regulator_get_power_mode(%struct.max77620_regulator*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
