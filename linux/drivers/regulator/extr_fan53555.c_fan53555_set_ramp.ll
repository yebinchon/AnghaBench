; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_fan53555.c_fan53555_set_ramp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_fan53555.c_fan53555_set_ramp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.fan53555_device_info = type { i32 }

@slew_rates = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [27 x i8] c"unsupported ramp value %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@FAN53555_CONTROL = common dso_local global i32 0, align 4
@CTL_SLEW_MASK = common dso_local global i32 0, align 4
@CTL_SLEW_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32)* @fan53555_set_ramp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fan53555_set_ramp(%struct.regulator_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regulator_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.fan53555_device_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %10 = call %struct.fan53555_device_info* @rdev_get_drvdata(%struct.regulator_dev* %9)
  store %struct.fan53555_device_info* %10, %struct.fan53555_device_info** %6, align 8
  store i32 -1, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %11

11:                                               ; preds = %28, %2
  %12 = load i32, i32* %8, align 4
  %13 = load i32*, i32** @slew_rates, align 8
  %14 = call i32 @ARRAY_SIZE(i32* %13)
  %15 = icmp slt i32 %12, %14
  br i1 %15, label %16, label %31

16:                                               ; preds = %11
  %17 = load i32, i32* %5, align 4
  %18 = load i32*, i32** @slew_rates, align 8
  %19 = load i32, i32* %8, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = icmp sle i32 %17, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %16
  %25 = load i32, i32* %8, align 4
  store i32 %25, i32* %7, align 4
  br label %27

26:                                               ; preds = %16
  br label %31

27:                                               ; preds = %24
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %8, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %8, align 4
  br label %11

31:                                               ; preds = %26, %11
  %32 = load i32, i32* %7, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %31
  %35 = load %struct.fan53555_device_info*, %struct.fan53555_device_info** %6, align 8
  %36 = getelementptr inbounds %struct.fan53555_device_info, %struct.fan53555_device_info* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @dev_err(i32 %37, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %52

42:                                               ; preds = %31
  %43 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %44 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @FAN53555_CONTROL, align 4
  %47 = load i32, i32* @CTL_SLEW_MASK, align 4
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @CTL_SLEW_SHIFT, align 4
  %50 = shl i32 %48, %49
  %51 = call i32 @regmap_update_bits(i32 %45, i32 %46, i32 %47, i32 %50)
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %42, %34
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local %struct.fan53555_device_info* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
