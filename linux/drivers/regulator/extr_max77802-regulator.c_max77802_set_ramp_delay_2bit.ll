; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_max77802-regulator.c_max77802_set_ramp_delay_2bit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_max77802-regulator.c_max77802_set_ramp_delay_2bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@MAX77802_BUCK4 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"%s: regulator: ramp delay not supported\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ramp_table_77802_2bit = common dso_local global i32 0, align 4
@MAX77802_RAMP_RATE_MASK_2BIT = common dso_local global i32 0, align 4
@MAX77802_RAMP_RATE_SHIFT_2BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32)* @max77802_set_ramp_delay_2bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max77802_set_ramp_delay_2bit(%struct.regulator_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regulator_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %9 = call i32 @rdev_get_id(%struct.regulator_dev* %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @MAX77802_BUCK4, align 4
  %12 = icmp sgt i32 %10, %11
  br i1 %12, label %13, label %24

13:                                               ; preds = %2
  %14 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %15 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %14, i32 0, i32 2
  %16 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %17 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @dev_warn(i32* %15, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %44

24:                                               ; preds = %2
  %25 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %26 = load i32, i32* @ramp_table_77802_2bit, align 4
  %27 = load i32, i32* @ramp_table_77802_2bit, align 4
  %28 = call i32 @ARRAY_SIZE(i32 %27)
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @max77802_find_ramp_value(%struct.regulator_dev* %25, i32 %26, i32 %28, i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %32 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %35 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @MAX77802_RAMP_RATE_MASK_2BIT, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @MAX77802_RAMP_RATE_SHIFT_2BIT, align 4
  %42 = shl i32 %40, %41
  %43 = call i32 @regmap_update_bits(i32 %33, i32 %38, i32 %39, i32 %42)
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %24, %13
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @rdev_get_id(%struct.regulator_dev*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @max77802_find_ramp_value(%struct.regulator_dev*, i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
