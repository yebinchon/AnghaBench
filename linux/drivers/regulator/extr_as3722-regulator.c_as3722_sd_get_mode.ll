; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_as3722-regulator.c_as3722_sd_get_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_as3722-regulator.c_as3722_sd_get_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.regulator_dev = type { i32 }
%struct.as3722_regulators = type { i32, %struct.as3722* }
%struct.as3722 = type { i32 }

@as3722_reg_lookup = common dso_local global %struct.TYPE_2__* null, align 8
@ENOTSUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Reg 0x%02x read failed: %d\0A\00", align 1
@REGULATOR_MODE_FAST = common dso_local global i32 0, align 4
@REGULATOR_MODE_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*)* @as3722_sd_get_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @as3722_sd_get_mode(%struct.regulator_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.regulator_dev*, align 8
  %4 = alloca %struct.as3722_regulators*, align 8
  %5 = alloca %struct.as3722*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %3, align 8
  %9 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %10 = call %struct.as3722_regulators* @rdev_get_drvdata(%struct.regulator_dev* %9)
  store %struct.as3722_regulators* %10, %struct.as3722_regulators** %4, align 8
  %11 = load %struct.as3722_regulators*, %struct.as3722_regulators** %4, align 8
  %12 = getelementptr inbounds %struct.as3722_regulators, %struct.as3722_regulators* %11, i32 0, i32 1
  %13 = load %struct.as3722*, %struct.as3722** %12, align 8
  store %struct.as3722* %13, %struct.as3722** %5, align 8
  %14 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %15 = call i32 @rdev_get_id(%struct.regulator_dev* %14)
  store i32 %15, i32* %6, align 4
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @as3722_reg_lookup, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %1
  %24 = load i32, i32* @ENOTSUPP, align 4
  %25 = sub i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %64

26:                                               ; preds = %1
  %27 = load %struct.as3722*, %struct.as3722** %5, align 8
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @as3722_reg_lookup, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @as3722_read(%struct.as3722* %27, i32 %33, i32* %7)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %26
  %38 = load %struct.as3722_regulators*, %struct.as3722_regulators** %4, align 8
  %39 = getelementptr inbounds %struct.as3722_regulators, %struct.as3722_regulators* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** @as3722_reg_lookup, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @dev_err(i32 %40, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %46, i32 %47)
  %49 = load i32, i32* %8, align 4
  store i32 %49, i32* %2, align 4
  br label %64

50:                                               ; preds = %26
  %51 = load i32, i32* %7, align 4
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** @as3722_reg_lookup, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %51, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %50
  %61 = load i32, i32* @REGULATOR_MODE_FAST, align 4
  store i32 %61, i32* %2, align 4
  br label %64

62:                                               ; preds = %50
  %63 = load i32, i32* @REGULATOR_MODE_NORMAL, align 4
  store i32 %63, i32* %2, align 4
  br label %64

64:                                               ; preds = %62, %60, %37, %23
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local %struct.as3722_regulators* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @rdev_get_id(%struct.regulator_dev*) #1

declare dso_local i32 @as3722_read(%struct.as3722*, i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
