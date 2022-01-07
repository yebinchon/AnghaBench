; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_tps80031-regulator.c_tps80031_ldo_map_voltage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_tps80031-regulator.c_tps80031_ldo_map_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.tps80031_regulator = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.device = type { i32 }

@TPS80031_REGULATOR_LDO2 = common dso_local global i64 0, align 8
@TRACK_MODE_ENABLE = common dso_local global i32 0, align 4
@TPS80031 = common dso_local global i64 0, align 8
@TPS80032 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32, i32)* @tps80031_ldo_map_voltage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tps80031_ldo_map_voltage(%struct.regulator_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.regulator_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.tps80031_regulator*, align 8
  %9 = alloca %struct.device*, align 8
  store %struct.regulator_dev* %0, %struct.regulator_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %11 = call %struct.tps80031_regulator* @rdev_get_drvdata(%struct.regulator_dev* %10)
  store %struct.tps80031_regulator* %11, %struct.tps80031_regulator** %8, align 8
  %12 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %13 = call %struct.device* @to_tps80031_dev(%struct.regulator_dev* %12)
  store %struct.device* %13, %struct.device** %9, align 8
  %14 = load %struct.tps80031_regulator*, %struct.tps80031_regulator** %8, align 8
  %15 = getelementptr inbounds %struct.tps80031_regulator, %struct.tps80031_regulator* %14, i32 0, i32 1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @TPS80031_REGULATOR_LDO2, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %49

22:                                               ; preds = %3
  %23 = load %struct.tps80031_regulator*, %struct.tps80031_regulator** %8, align 8
  %24 = getelementptr inbounds %struct.tps80031_regulator, %struct.tps80031_regulator* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @TRACK_MODE_ENABLE, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %49

29:                                               ; preds = %22
  %30 = load %struct.device*, %struct.device** %9, align 8
  %31 = call i64 @tps80031_get_chip_info(%struct.device* %30)
  %32 = load i64, i64* @TPS80031, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %43, label %34

34:                                               ; preds = %29
  %35 = load %struct.device*, %struct.device** %9, align 8
  %36 = call i64 @tps80031_get_chip_info(%struct.device* %35)
  %37 = load i64, i64* @TPS80032, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %48

39:                                               ; preds = %34
  %40 = load %struct.device*, %struct.device** %9, align 8
  %41 = call i32 @tps80031_get_pmu_version(%struct.device* %40)
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %39, %29
  %44 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @regulator_map_voltage_iterate(%struct.regulator_dev* %44, i32 %45, i32 %46)
  store i32 %47, i32* %4, align 4
  br label %54

48:                                               ; preds = %39, %34
  br label %49

49:                                               ; preds = %48, %22, %3
  %50 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @regulator_map_voltage_linear(%struct.regulator_dev* %50, i32 %51, i32 %52)
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %49, %43
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local %struct.tps80031_regulator* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local %struct.device* @to_tps80031_dev(%struct.regulator_dev*) #1

declare dso_local i64 @tps80031_get_chip_info(%struct.device*) #1

declare dso_local i32 @tps80031_get_pmu_version(%struct.device*) #1

declare dso_local i32 @regulator_map_voltage_iterate(%struct.regulator_dev*, i32, i32) #1

declare dso_local i32 @regulator_map_voltage_linear(%struct.regulator_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
