; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_mt6323-regulator.c_mt6323_ldo_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_mt6323-regulator.c_mt6323_ldo_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32, i32 }
%struct.mt6323_regulator_info = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"regulator %s doesn't support set_mode\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MT6323_LDO_MODE_LP = common dso_local global i32 0, align 4
@MT6323_LDO_MODE_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32)* @mt6323_ldo_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt6323_ldo_set_mode(%struct.regulator_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regulator_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mt6323_regulator_info*, align 8
  store %struct.regulator_dev* %0, %struct.regulator_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %9 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %10 = call %struct.mt6323_regulator_info* @rdev_get_drvdata(%struct.regulator_dev* %9)
  store %struct.mt6323_regulator_info* %10, %struct.mt6323_regulator_info** %8, align 8
  %11 = load %struct.mt6323_regulator_info*, %struct.mt6323_regulator_info** %8, align 8
  %12 = getelementptr inbounds %struct.mt6323_regulator_info, %struct.mt6323_regulator_info* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %25, label %15

15:                                               ; preds = %2
  %16 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %17 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %16, i32 0, i32 1
  %18 = load %struct.mt6323_regulator_info*, %struct.mt6323_regulator_info** %8, align 8
  %19 = getelementptr inbounds %struct.mt6323_regulator_info, %struct.mt6323_regulator_info* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @dev_err(i32* %17, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %54

25:                                               ; preds = %2
  %26 = load i32, i32* %5, align 4
  switch i32 %26, label %31 [
    i32 128, label %27
    i32 129, label %29
  ]

27:                                               ; preds = %25
  %28 = load i32, i32* @MT6323_LDO_MODE_LP, align 4
  store i32 %28, i32* %7, align 4
  br label %34

29:                                               ; preds = %25
  %30 = load i32, i32* @MT6323_LDO_MODE_NORMAL, align 4
  store i32 %30, i32* %7, align 4
  br label %34

31:                                               ; preds = %25
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %54

34:                                               ; preds = %29, %27
  %35 = load %struct.mt6323_regulator_info*, %struct.mt6323_regulator_info** %8, align 8
  %36 = getelementptr inbounds %struct.mt6323_regulator_info, %struct.mt6323_regulator_info* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @ffs(i32 %37)
  %39 = sub nsw i32 %38, 1
  %40 = load i32, i32* %7, align 4
  %41 = shl i32 %40, %39
  store i32 %41, i32* %7, align 4
  %42 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %43 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.mt6323_regulator_info*, %struct.mt6323_regulator_info** %8, align 8
  %46 = getelementptr inbounds %struct.mt6323_regulator_info, %struct.mt6323_regulator_info* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.mt6323_regulator_info*, %struct.mt6323_regulator_info** %8, align 8
  %49 = getelementptr inbounds %struct.mt6323_regulator_info, %struct.mt6323_regulator_info* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @regmap_update_bits(i32 %44, i32 %47, i32 %50, i32 %51)
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %34, %31, %15
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local %struct.mt6323_regulator_info* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @ffs(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
