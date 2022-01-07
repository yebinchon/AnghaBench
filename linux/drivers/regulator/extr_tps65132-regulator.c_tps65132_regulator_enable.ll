; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_tps65132-regulator.c_tps65132_regulator_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_tps65132-regulator.c_tps65132_regulator_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.tps65132_regulator = type { i32, %struct.tps65132_reg_pdata* }
%struct.tps65132_reg_pdata = type { i32, i32 }

@REGULATOR_ACTIVE_DISCHARGE_DISABLE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"Failed to disable active discharge: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*)* @tps65132_regulator_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tps65132_regulator_enable(%struct.regulator_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.regulator_dev*, align 8
  %4 = alloca %struct.tps65132_regulator*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tps65132_reg_pdata*, align 8
  %7 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %3, align 8
  %8 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %9 = call %struct.tps65132_regulator* @rdev_get_drvdata(%struct.regulator_dev* %8)
  store %struct.tps65132_regulator* %9, %struct.tps65132_regulator** %4, align 8
  %10 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %11 = call i32 @rdev_get_id(%struct.regulator_dev* %10)
  store i32 %11, i32* %5, align 4
  %12 = load %struct.tps65132_regulator*, %struct.tps65132_regulator** %4, align 8
  %13 = getelementptr inbounds %struct.tps65132_regulator, %struct.tps65132_regulator* %12, i32 0, i32 1
  %14 = load %struct.tps65132_reg_pdata*, %struct.tps65132_reg_pdata** %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.tps65132_reg_pdata, %struct.tps65132_reg_pdata* %14, i64 %16
  store %struct.tps65132_reg_pdata* %17, %struct.tps65132_reg_pdata** %6, align 8
  %18 = load %struct.tps65132_reg_pdata*, %struct.tps65132_reg_pdata** %6, align 8
  %19 = getelementptr inbounds %struct.tps65132_reg_pdata, %struct.tps65132_reg_pdata* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @IS_ERR(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %1
  %24 = load %struct.tps65132_reg_pdata*, %struct.tps65132_reg_pdata** %6, align 8
  %25 = getelementptr inbounds %struct.tps65132_reg_pdata, %struct.tps65132_reg_pdata* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @gpiod_set_value_cansleep(i32 %26, i32 1)
  %28 = load %struct.tps65132_reg_pdata*, %struct.tps65132_reg_pdata** %6, align 8
  %29 = getelementptr inbounds %struct.tps65132_reg_pdata, %struct.tps65132_reg_pdata* %28, i32 0, i32 0
  store i32 1, i32* %29, align 4
  br label %30

30:                                               ; preds = %23, %1
  %31 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %32 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @REGULATOR_ACTIVE_DISCHARGE_DISABLE, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %51

38:                                               ; preds = %30
  %39 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %40 = call i32 @regulator_set_active_discharge_regmap(%struct.regulator_dev* %39, i32 0)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %38
  %44 = load %struct.tps65132_regulator*, %struct.tps65132_regulator** %4, align 8
  %45 = getelementptr inbounds %struct.tps65132_regulator, %struct.tps65132_regulator* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @dev_err(i32 %46, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* %7, align 4
  store i32 %49, i32* %2, align 4
  br label %52

50:                                               ; preds = %38
  br label %51

51:                                               ; preds = %50, %30
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %51, %43
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local %struct.tps65132_regulator* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @rdev_get_id(%struct.regulator_dev*) #1

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local i32 @gpiod_set_value_cansleep(i32, i32) #1

declare dso_local i32 @regulator_set_active_discharge_regmap(%struct.regulator_dev*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
