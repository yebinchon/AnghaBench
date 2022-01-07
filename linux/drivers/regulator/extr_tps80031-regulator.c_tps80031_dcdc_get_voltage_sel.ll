; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_tps80031-regulator.c_tps80031_dcdc_get_voltage_sel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_tps80031-regulator.c_tps80031_dcdc_get_voltage_sel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.tps80031_regulator = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64, i32, i64 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"reg 0x%02x read failed, e = %d\0A\00", align 1
@SMPS_CMD_MASK = common dso_local global i32 0, align 4
@SMPS_VSEL_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*)* @tps80031_dcdc_get_voltage_sel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tps80031_dcdc_get_voltage_sel(%struct.regulator_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.regulator_dev*, align 8
  %4 = alloca %struct.tps80031_regulator*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %3, align 8
  %8 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %9 = call %struct.tps80031_regulator* @rdev_get_drvdata(%struct.regulator_dev* %8)
  store %struct.tps80031_regulator* %9, %struct.tps80031_regulator** %4, align 8
  %10 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %11 = call %struct.device* @to_tps80031_dev(%struct.regulator_dev* %10)
  store %struct.device* %11, %struct.device** %5, align 8
  store i32 0, i32* %6, align 4
  %12 = load %struct.tps80031_regulator*, %struct.tps80031_regulator** %4, align 8
  %13 = getelementptr inbounds %struct.tps80031_regulator, %struct.tps80031_regulator* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %55

18:                                               ; preds = %1
  %19 = load %struct.device*, %struct.device** %5, align 8
  %20 = load %struct.tps80031_regulator*, %struct.tps80031_regulator** %4, align 8
  %21 = getelementptr inbounds %struct.tps80031_regulator, %struct.tps80031_regulator* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.tps80031_regulator*, %struct.tps80031_regulator** %4, align 8
  %26 = getelementptr inbounds %struct.tps80031_regulator, %struct.tps80031_regulator* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @tps80031_read(%struct.device* %19, i32 %24, i64 %29, i32* %6)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %18
  %34 = load %struct.tps80031_regulator*, %struct.tps80031_regulator** %4, align 8
  %35 = getelementptr inbounds %struct.tps80031_regulator, %struct.tps80031_regulator* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.tps80031_regulator*, %struct.tps80031_regulator** %4, align 8
  %38 = getelementptr inbounds %struct.tps80031_regulator, %struct.tps80031_regulator* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @dev_err(i32 %36, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %41, i32 %42)
  %44 = load i32, i32* %7, align 4
  store i32 %44, i32* %2, align 4
  br label %86

45:                                               ; preds = %18
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @SMPS_CMD_MASK, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %45
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @SMPS_VSEL_MASK, align 4
  %53 = and i32 %51, %52
  store i32 %53, i32* %2, align 4
  br label %86

54:                                               ; preds = %45
  br label %55

55:                                               ; preds = %54, %1
  %56 = load %struct.device*, %struct.device** %5, align 8
  %57 = load %struct.tps80031_regulator*, %struct.tps80031_regulator** %4, align 8
  %58 = getelementptr inbounds %struct.tps80031_regulator, %struct.tps80031_regulator* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.tps80031_regulator*, %struct.tps80031_regulator** %4, align 8
  %63 = getelementptr inbounds %struct.tps80031_regulator, %struct.tps80031_regulator* %62, i32 0, i32 0
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @tps80031_read(%struct.device* %56, i32 %61, i64 %66, i32* %6)
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %7, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %82

70:                                               ; preds = %55
  %71 = load %struct.tps80031_regulator*, %struct.tps80031_regulator** %4, align 8
  %72 = getelementptr inbounds %struct.tps80031_regulator, %struct.tps80031_regulator* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.tps80031_regulator*, %struct.tps80031_regulator** %4, align 8
  %75 = getelementptr inbounds %struct.tps80031_regulator, %struct.tps80031_regulator* %74, i32 0, i32 0
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @dev_err(i32 %73, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %78, i32 %79)
  %81 = load i32, i32* %7, align 4
  store i32 %81, i32* %2, align 4
  br label %86

82:                                               ; preds = %55
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* @SMPS_VSEL_MASK, align 4
  %85 = and i32 %83, %84
  store i32 %85, i32* %2, align 4
  br label %86

86:                                               ; preds = %82, %70, %50, %33
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local %struct.tps80031_regulator* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local %struct.device* @to_tps80031_dev(%struct.regulator_dev*) #1

declare dso_local i32 @tps80031_read(%struct.device*, i32, i64, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
