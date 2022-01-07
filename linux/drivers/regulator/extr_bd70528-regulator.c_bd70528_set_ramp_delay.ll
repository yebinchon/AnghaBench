; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_bd70528-regulator.c_bd70528_set_ramp_delay.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_bd70528-regulator.c_bd70528_set_ramp_delay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@BUCK_RAMP_MAX = common dso_local global i32 0, align 4
@BUCK_RAMPRATE_250MV = common dso_local global i32 0, align 4
@BUCK_RAMPRATE_125MV = common dso_local global i32 0, align 4
@BD70528_MASK_BUCK_RAMP = common dso_local global i32 0, align 4
@BD70528_SIFT_BUCK_RAMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"%s: ramp_delay: %d not supported\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32)* @bd70528_set_ramp_delay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bd70528_set_ramp_delay(%struct.regulator_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regulator_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %33

9:                                                ; preds = %2
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @BUCK_RAMP_MAX, align 4
  %12 = icmp sle i32 %10, %11
  br i1 %12, label %13, label %33

13:                                               ; preds = %9
  %14 = load i32, i32* @BUCK_RAMPRATE_250MV, align 4
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp sle i32 %15, 125
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = load i32, i32* @BUCK_RAMPRATE_125MV, align 4
  store i32 %18, i32* %6, align 4
  br label %19

19:                                               ; preds = %17, %13
  %20 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %21 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %24 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @BD70528_MASK_BUCK_RAMP, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @BD70528_SIFT_BUCK_RAMP, align 4
  %31 = shl i32 %29, %30
  %32 = call i32 @regmap_update_bits(i32 %22, i32 %27, i32 %28, i32 %31)
  store i32 %32, i32* %3, align 4
  br label %45

33:                                               ; preds = %9, %2
  %34 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %35 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %34, i32 0, i32 1
  %36 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %37 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @dev_err(i32* %35, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %41)
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %33, %19
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
