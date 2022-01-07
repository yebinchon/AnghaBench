; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_max77686-regulator.c_max77686_ldo_set_suspend_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_max77686-regulator.c_max77686_ldo_set_suspend_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.max77686_data = type { i32* }

@MAX77686_OFF_PWRREQ = common dso_local global i32 0, align 4
@MAX77686_LDO_LOWPOWER_PWRREQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"%s: regulator_suspend_mode : 0x%x not supported\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MAX77686_OPMODE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32)* @max77686_ldo_set_suspend_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max77686_ldo_set_suspend_mode(%struct.regulator_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regulator_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.max77686_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %11 = call %struct.max77686_data* @rdev_get_drvdata(%struct.regulator_dev* %10)
  store %struct.max77686_data* %11, %struct.max77686_data** %7, align 8
  %12 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %13 = call i32 @rdev_get_id(%struct.regulator_dev* %12)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %5, align 4
  switch i32 %14, label %23 [
    i32 128, label %15
    i32 130, label %17
    i32 129, label %19
  ]

15:                                               ; preds = %2
  %16 = load i32, i32* @MAX77686_OFF_PWRREQ, align 4
  store i32 %16, i32* %6, align 4
  br label %33

17:                                               ; preds = %2
  %18 = load i32, i32* @MAX77686_LDO_LOWPOWER_PWRREQ, align 4
  store i32 %18, i32* %6, align 4
  br label %33

19:                                               ; preds = %2
  %20 = load %struct.max77686_data*, %struct.max77686_data** %7, align 8
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @max77686_map_normal_mode(%struct.max77686_data* %20, i32 %21)
  store i32 %22, i32* %6, align 4
  br label %33

23:                                               ; preds = %2
  %24 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %25 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @pr_warn(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %29)
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %63

33:                                               ; preds = %19, %17, %15
  %34 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %35 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %38 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %43 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @MAX77686_OPMODE_SHIFT, align 4
  %49 = shl i32 %47, %48
  %50 = call i32 @regmap_update_bits(i32 %36, i32 %41, i32 %46, i32 %49)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %33
  %54 = load i32, i32* %8, align 4
  store i32 %54, i32* %3, align 4
  br label %63

55:                                               ; preds = %33
  %56 = load i32, i32* %6, align 4
  %57 = load %struct.max77686_data*, %struct.max77686_data** %7, align 8
  %58 = getelementptr inbounds %struct.max77686_data, %struct.max77686_data* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %9, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  store i32 %56, i32* %62, align 4
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %55, %53, %23
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local %struct.max77686_data* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @rdev_get_id(%struct.regulator_dev*) #1

declare dso_local i32 @max77686_map_normal_mode(%struct.max77686_data*, i32) #1

declare dso_local i32 @pr_warn(i8*, i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
