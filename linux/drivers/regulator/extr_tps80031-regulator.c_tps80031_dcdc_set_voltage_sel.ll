; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_tps80031-regulator.c_tps80031_dcdc_set_voltage_sel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_tps80031-regulator.c_tps80031_dcdc_set_voltage_sel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.tps80031_regulator = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64, i32, i64 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"reg 0x%02x read failed, e = %d\0A\00", align 1
@SMPS_CMD_MASK = common dso_local global i32 0, align 4
@SMPS_VSEL_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"reg 0x%02x update failed, e = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32)* @tps80031_dcdc_set_voltage_sel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tps80031_dcdc_set_voltage_sel(%struct.regulator_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regulator_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tps80031_regulator*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %11 = call %struct.tps80031_regulator* @rdev_get_drvdata(%struct.regulator_dev* %10)
  store %struct.tps80031_regulator* %11, %struct.tps80031_regulator** %6, align 8
  %12 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %13 = call %struct.device* @to_tps80031_dev(%struct.regulator_dev* %12)
  store %struct.device* %13, %struct.device** %7, align 8
  %14 = load %struct.tps80031_regulator*, %struct.tps80031_regulator** %6, align 8
  %15 = getelementptr inbounds %struct.tps80031_regulator, %struct.tps80031_regulator* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %83

20:                                               ; preds = %2
  %21 = load %struct.device*, %struct.device** %7, align 8
  %22 = load %struct.tps80031_regulator*, %struct.tps80031_regulator** %6, align 8
  %23 = getelementptr inbounds %struct.tps80031_regulator, %struct.tps80031_regulator* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.tps80031_regulator*, %struct.tps80031_regulator** %6, align 8
  %28 = getelementptr inbounds %struct.tps80031_regulator, %struct.tps80031_regulator* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @tps80031_read(%struct.device* %21, i32 %26, i64 %31, i32* %9)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %20
  %36 = load %struct.tps80031_regulator*, %struct.tps80031_regulator** %6, align 8
  %37 = getelementptr inbounds %struct.tps80031_regulator, %struct.tps80031_regulator* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.tps80031_regulator*, %struct.tps80031_regulator** %6, align 8
  %40 = getelementptr inbounds %struct.tps80031_regulator, %struct.tps80031_regulator* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @dev_err(i32 %38, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %43, i32 %44)
  %46 = load i32, i32* %8, align 4
  store i32 %46, i32* %3, align 4
  br label %113

47:                                               ; preds = %20
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* @SMPS_CMD_MASK, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %82, label %52

52:                                               ; preds = %47
  %53 = load %struct.device*, %struct.device** %7, align 8
  %54 = load %struct.tps80031_regulator*, %struct.tps80031_regulator** %6, align 8
  %55 = getelementptr inbounds %struct.tps80031_regulator, %struct.tps80031_regulator* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.tps80031_regulator*, %struct.tps80031_regulator** %6, align 8
  %60 = getelementptr inbounds %struct.tps80031_regulator, %struct.tps80031_regulator* %59, i32 0, i32 0
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* @SMPS_VSEL_MASK, align 4
  %66 = call i32 @tps80031_update(%struct.device* %53, i32 %58, i64 %63, i32 %64, i32 %65)
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* %8, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %80

69:                                               ; preds = %52
  %70 = load %struct.tps80031_regulator*, %struct.tps80031_regulator** %6, align 8
  %71 = getelementptr inbounds %struct.tps80031_regulator, %struct.tps80031_regulator* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.tps80031_regulator*, %struct.tps80031_regulator** %6, align 8
  %74 = getelementptr inbounds %struct.tps80031_regulator, %struct.tps80031_regulator* %73, i32 0, i32 0
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = load i32, i32* %8, align 4
  %79 = call i32 @dev_err(i32 %72, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i64 %77, i32 %78)
  br label %80

80:                                               ; preds = %69, %52
  %81 = load i32, i32* %8, align 4
  store i32 %81, i32* %3, align 4
  br label %113

82:                                               ; preds = %47
  br label %83

83:                                               ; preds = %82, %2
  %84 = load %struct.device*, %struct.device** %7, align 8
  %85 = load %struct.tps80031_regulator*, %struct.tps80031_regulator** %6, align 8
  %86 = getelementptr inbounds %struct.tps80031_regulator, %struct.tps80031_regulator* %85, i32 0, i32 0
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.tps80031_regulator*, %struct.tps80031_regulator** %6, align 8
  %91 = getelementptr inbounds %struct.tps80031_regulator, %struct.tps80031_regulator* %90, i32 0, i32 0
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i32, i32* %5, align 4
  %96 = load i32, i32* @SMPS_VSEL_MASK, align 4
  %97 = call i32 @tps80031_update(%struct.device* %84, i32 %89, i64 %94, i32 %95, i32 %96)
  store i32 %97, i32* %8, align 4
  %98 = load i32, i32* %8, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %111

100:                                              ; preds = %83
  %101 = load %struct.tps80031_regulator*, %struct.tps80031_regulator** %6, align 8
  %102 = getelementptr inbounds %struct.tps80031_regulator, %struct.tps80031_regulator* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.tps80031_regulator*, %struct.tps80031_regulator** %6, align 8
  %105 = getelementptr inbounds %struct.tps80031_regulator, %struct.tps80031_regulator* %104, i32 0, i32 0
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i32, i32* %8, align 4
  %110 = call i32 @dev_err(i32 %103, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i64 %108, i32 %109)
  br label %111

111:                                              ; preds = %100, %83
  %112 = load i32, i32* %8, align 4
  store i32 %112, i32* %3, align 4
  br label %113

113:                                              ; preds = %111, %80, %35
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

declare dso_local %struct.tps80031_regulator* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local %struct.device* @to_tps80031_dev(%struct.regulator_dev*) #1

declare dso_local i32 @tps80031_read(%struct.device*, i32, i64, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i64, i32) #1

declare dso_local i32 @tps80031_update(%struct.device*, i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
