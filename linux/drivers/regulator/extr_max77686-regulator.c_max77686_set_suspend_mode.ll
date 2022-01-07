; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_max77686-regulator.c_max77686_set_suspend_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_max77686-regulator.c_max77686_set_suspend_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.max77686_data = type { i32* }

@MAX77686_BUCK5 = common dso_local global i32 0, align 4
@MAX77686_LDO_LOWPOWER_PWRREQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"%s: regulator_suspend_mode : 0x%x not supported\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MAX77686_OPMODE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32)* @max77686_set_suspend_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max77686_set_suspend_mode(%struct.regulator_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regulator_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.max77686_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %11 = call %struct.max77686_data* @rdev_get_drvdata(%struct.regulator_dev* %10)
  store %struct.max77686_data* %11, %struct.max77686_data** %6, align 8
  %12 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %13 = call i32 @rdev_get_id(%struct.regulator_dev* %12)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* @MAX77686_BUCK5, align 4
  %16 = icmp sge i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %66

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  switch i32 %19, label %26 [
    i32 129, label %20
    i32 128, label %22
  ]

20:                                               ; preds = %18
  %21 = load i32, i32* @MAX77686_LDO_LOWPOWER_PWRREQ, align 4
  store i32 %21, i32* %7, align 4
  br label %36

22:                                               ; preds = %18
  %23 = load %struct.max77686_data*, %struct.max77686_data** %6, align 8
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @max77686_map_normal_mode(%struct.max77686_data* %23, i32 %24)
  store i32 %25, i32* %7, align 4
  br label %36

26:                                               ; preds = %18
  %27 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %28 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @pr_warn(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %32)
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %66

36:                                               ; preds = %22, %20
  %37 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %38 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %41 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %46 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @MAX77686_OPMODE_SHIFT, align 4
  %52 = shl i32 %50, %51
  %53 = call i32 @regmap_update_bits(i32 %39, i32 %44, i32 %49, i32 %52)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %36
  %57 = load i32, i32* %8, align 4
  store i32 %57, i32* %3, align 4
  br label %66

58:                                               ; preds = %36
  %59 = load i32, i32* %7, align 4
  %60 = load %struct.max77686_data*, %struct.max77686_data** %6, align 8
  %61 = getelementptr inbounds %struct.max77686_data, %struct.max77686_data* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %9, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  store i32 %59, i32* %65, align 4
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %58, %56, %26, %17
  %67 = load i32, i32* %3, align 4
  ret i32 %67
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
