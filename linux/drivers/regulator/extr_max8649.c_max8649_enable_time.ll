; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_max8649.c_max8649_enable_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_max8649.c_max8649_enable_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.max8649_regulator_info = type { i32 }

@MAX8649_VOL_MASK = common dso_local global i32 0, align 4
@MAX8649_RAMP = common dso_local global i32 0, align 4
@MAX8649_RAMP_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*)* @max8649_enable_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max8649_enable_time(%struct.regulator_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.regulator_dev*, align 8
  %4 = alloca %struct.max8649_regulator_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %3, align 8
  %9 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %10 = call %struct.max8649_regulator_info* @rdev_get_drvdata(%struct.regulator_dev* %9)
  store %struct.max8649_regulator_info* %10, %struct.max8649_regulator_info** %4, align 8
  %11 = load %struct.max8649_regulator_info*, %struct.max8649_regulator_info** %4, align 8
  %12 = getelementptr inbounds %struct.max8649_regulator_info, %struct.max8649_regulator_info* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %15 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @regmap_read(i32 %13, i32 %18, i32* %8)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = load i32, i32* %7, align 4
  store i32 %23, i32* %2, align 4
  br label %51

24:                                               ; preds = %1
  %25 = load i32, i32* @MAX8649_VOL_MASK, align 4
  %26 = load i32, i32* %8, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %8, align 4
  %28 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %29 = load i32, i32* %8, align 4
  %30 = trunc i32 %29 to i8
  %31 = call i32 @regulator_list_voltage_linear(%struct.regulator_dev* %28, i8 zeroext %30)
  store i32 %31, i32* %5, align 4
  %32 = load %struct.max8649_regulator_info*, %struct.max8649_regulator_info** %4, align 8
  %33 = getelementptr inbounds %struct.max8649_regulator_info, %struct.max8649_regulator_info* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @MAX8649_RAMP, align 4
  %36 = call i32 @regmap_read(i32 %34, i32 %35, i32* %8)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %24
  %40 = load i32, i32* %7, align 4
  store i32 %40, i32* %2, align 4
  br label %51

41:                                               ; preds = %24
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @MAX8649_RAMP_MASK, align 4
  %44 = and i32 %42, %43
  %45 = lshr i32 %44, 5
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = ashr i32 32000, %46
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @DIV_ROUND_UP(i32 %48, i32 %49)
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %41, %39, %22
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local %struct.max8649_regulator_info* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @regulator_list_voltage_linear(%struct.regulator_dev*, i8 zeroext) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
