; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_tps80031-regulator.c_tps80031_ldo_list_voltage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_tps80031-regulator.c_tps80031_ldo_list_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.tps80031_regulator = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.device = type { i32 }

@TPS80031_REGULATOR_LDO2 = common dso_local global i64 0, align 8
@TRACK_MODE_ENABLE = common dso_local global i32 0, align 4
@TPS80031 = common dso_local global i64 0, align 8
@TPS80032 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"Invalid sel %d in track mode LDO2\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32)* @tps80031_ldo_list_voltage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tps80031_ldo_list_voltage(%struct.regulator_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regulator_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tps80031_regulator*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %10 = call %struct.tps80031_regulator* @rdev_get_drvdata(%struct.regulator_dev* %9)
  store %struct.tps80031_regulator* %10, %struct.tps80031_regulator** %6, align 8
  %11 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %12 = call %struct.device* @to_tps80031_dev(%struct.regulator_dev* %11)
  store %struct.device* %12, %struct.device** %7, align 8
  %13 = load %struct.tps80031_regulator*, %struct.tps80031_regulator** %6, align 8
  %14 = getelementptr inbounds %struct.tps80031_regulator, %struct.tps80031_regulator* %13, i32 0, i32 2
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @TPS80031_REGULATOR_LDO2, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %62

21:                                               ; preds = %2
  %22 = load %struct.tps80031_regulator*, %struct.tps80031_regulator** %6, align 8
  %23 = getelementptr inbounds %struct.tps80031_regulator, %struct.tps80031_regulator* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @TRACK_MODE_ENABLE, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %62

28:                                               ; preds = %21
  %29 = load i32, i32* %5, align 4
  %30 = and i32 %29, 31
  store i32 %30, i32* %8, align 4
  %31 = load %struct.device*, %struct.device** %7, align 8
  %32 = call i64 @tps80031_get_chip_info(%struct.device* %31)
  %33 = load i64, i64* @TPS80031, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %44, label %35

35:                                               ; preds = %28
  %36 = load %struct.device*, %struct.device** %7, align 8
  %37 = call i64 @tps80031_get_chip_info(%struct.device* %36)
  %38 = load i64, i64* @TPS80032, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %61

40:                                               ; preds = %35
  %41 = load %struct.device*, %struct.device** %7, align 8
  %42 = call i32 @tps80031_get_pmu_version(%struct.device* %41)
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %61

44:                                               ; preds = %40, %28
  %45 = load i32, i32* %8, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %44
  %48 = load i32, i32* %8, align 4
  %49 = icmp uge i32 %48, 25
  br i1 %49, label %50, label %61

50:                                               ; preds = %47
  %51 = load i32, i32* %8, align 4
  %52 = icmp ule i32 %51, 31
  br i1 %52, label %53, label %61

53:                                               ; preds = %50, %44
  %54 = load %struct.tps80031_regulator*, %struct.tps80031_regulator** %6, align 8
  %55 = getelementptr inbounds %struct.tps80031_regulator, %struct.tps80031_regulator* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @dev_err(i32 %56, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %3, align 4
  br label %66

61:                                               ; preds = %50, %47, %40, %35
  br label %62

62:                                               ; preds = %61, %21, %2
  %63 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @regulator_list_voltage_linear(%struct.regulator_dev* %63, i32 %64)
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %62, %53
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local %struct.tps80031_regulator* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local %struct.device* @to_tps80031_dev(%struct.regulator_dev*) #1

declare dso_local i64 @tps80031_get_chip_info(%struct.device*) #1

declare dso_local i32 @tps80031_get_pmu_version(%struct.device*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @regulator_list_voltage_linear(%struct.regulator_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
