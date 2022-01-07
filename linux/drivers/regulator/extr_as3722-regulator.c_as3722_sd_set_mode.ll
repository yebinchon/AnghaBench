; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_as3722-regulator.c_as3722_sd_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_as3722-regulator.c_as3722_sd_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }
%struct.regulator_dev = type { i32 }
%struct.as3722_regulators = type { i32, %struct.as3722* }
%struct.as3722 = type { i32 }

@as3722_reg_lookup = common dso_local global %struct.TYPE_2__* null, align 8
@ERANGE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Reg 0x%02x update failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32)* @as3722_sd_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @as3722_sd_set_mode(%struct.regulator_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regulator_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.as3722_regulators*, align 8
  %7 = alloca %struct.as3722*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %12 = call %struct.as3722_regulators* @rdev_get_drvdata(%struct.regulator_dev* %11)
  store %struct.as3722_regulators* %12, %struct.as3722_regulators** %6, align 8
  %13 = load %struct.as3722_regulators*, %struct.as3722_regulators** %6, align 8
  %14 = getelementptr inbounds %struct.as3722_regulators, %struct.as3722_regulators* %13, i32 0, i32 1
  %15 = load %struct.as3722*, %struct.as3722** %14, align 8
  store %struct.as3722* %15, %struct.as3722** %7, align 8
  %16 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %17 = call i64 @rdev_get_id(%struct.regulator_dev* %16)
  store i64 %17, i64* %8, align 8
  store i64 0, i64* %9, align 8
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @as3722_reg_lookup, align 8
  %19 = load i64, i64* %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* @ERANGE, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %69

27:                                               ; preds = %2
  %28 = load i32, i32* %5, align 4
  switch i32 %28, label %36 [
    i32 129, label %29
    i32 128, label %35
  ]

29:                                               ; preds = %27
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @as3722_reg_lookup, align 8
  %31 = load i64, i64* %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %9, align 8
  br label %35

35:                                               ; preds = %27, %29
  br label %39

36:                                               ; preds = %27
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %69

39:                                               ; preds = %35
  %40 = load %struct.as3722*, %struct.as3722** %7, align 8
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** @as3722_reg_lookup, align 8
  %42 = load i64, i64* %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** @as3722_reg_lookup, align 8
  %47 = load i64, i64* %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* %9, align 8
  %52 = call i32 @as3722_update_bits(%struct.as3722* %40, i32 %45, i64 %50, i64 %51)
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %10, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %67

55:                                               ; preds = %39
  %56 = load %struct.as3722_regulators*, %struct.as3722_regulators** %6, align 8
  %57 = getelementptr inbounds %struct.as3722_regulators, %struct.as3722_regulators* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** @as3722_reg_lookup, align 8
  %60 = load i64, i64* %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %10, align 4
  %65 = call i32 @dev_err(i32 %58, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %63, i32 %64)
  %66 = load i32, i32* %10, align 4
  store i32 %66, i32* %3, align 4
  br label %69

67:                                               ; preds = %39
  %68 = load i32, i32* %10, align 4
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %67, %55, %36, %24
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local %struct.as3722_regulators* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i64 @rdev_get_id(%struct.regulator_dev*) #1

declare dso_local i32 @as3722_update_bits(%struct.as3722*, i32, i64, i64) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
