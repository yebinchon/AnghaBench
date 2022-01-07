; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_hi6421-regulator.c_hi6421_regulator_ldo_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_hi6421-regulator.c_hi6421_regulator_ldo_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.hi6421_regulator_info = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32)* @hi6421_regulator_ldo_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hi6421_regulator_ldo_set_mode(%struct.regulator_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regulator_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hi6421_regulator_info*, align 8
  %7 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %9 = call %struct.hi6421_regulator_info* @rdev_get_drvdata(%struct.regulator_dev* %8)
  store %struct.hi6421_regulator_info* %9, %struct.hi6421_regulator_info** %6, align 8
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %16 [
    i32 128, label %11
    i32 129, label %12
  ]

11:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %19

12:                                               ; preds = %2
  %13 = load %struct.hi6421_regulator_info*, %struct.hi6421_regulator_info** %6, align 8
  %14 = getelementptr inbounds %struct.hi6421_regulator_info, %struct.hi6421_regulator_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %7, align 4
  br label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %33

19:                                               ; preds = %12, %11
  %20 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %21 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %24 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.hi6421_regulator_info*, %struct.hi6421_regulator_info** %6, align 8
  %29 = getelementptr inbounds %struct.hi6421_regulator_info, %struct.hi6421_regulator_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @regmap_update_bits(i32 %22, i32 %27, i32 %30, i32 %31)
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %19, %16
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local %struct.hi6421_regulator_info* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
