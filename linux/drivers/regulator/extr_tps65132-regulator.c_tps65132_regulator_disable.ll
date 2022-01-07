; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_tps65132-regulator.c_tps65132_regulator_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_tps65132-regulator.c_tps65132_regulator_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.tps65132_regulator = type { %struct.tps65132_reg_pdata* }
%struct.tps65132_reg_pdata = type { i32, i64, i64, i32 }

@TPS65132_ACT_DIS_TIME_SLACK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*)* @tps65132_regulator_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tps65132_regulator_disable(%struct.regulator_dev* %0) #0 {
  %2 = alloca %struct.regulator_dev*, align 8
  %3 = alloca %struct.tps65132_regulator*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tps65132_reg_pdata*, align 8
  store %struct.regulator_dev* %0, %struct.regulator_dev** %2, align 8
  %6 = load %struct.regulator_dev*, %struct.regulator_dev** %2, align 8
  %7 = call %struct.tps65132_regulator* @rdev_get_drvdata(%struct.regulator_dev* %6)
  store %struct.tps65132_regulator* %7, %struct.tps65132_regulator** %3, align 8
  %8 = load %struct.regulator_dev*, %struct.regulator_dev** %2, align 8
  %9 = call i32 @rdev_get_id(%struct.regulator_dev* %8)
  store i32 %9, i32* %4, align 4
  %10 = load %struct.tps65132_regulator*, %struct.tps65132_regulator** %3, align 8
  %11 = getelementptr inbounds %struct.tps65132_regulator, %struct.tps65132_regulator* %10, i32 0, i32 0
  %12 = load %struct.tps65132_reg_pdata*, %struct.tps65132_reg_pdata** %11, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.tps65132_reg_pdata, %struct.tps65132_reg_pdata* %12, i64 %14
  store %struct.tps65132_reg_pdata* %15, %struct.tps65132_reg_pdata** %5, align 8
  %16 = load %struct.tps65132_reg_pdata*, %struct.tps65132_reg_pdata** %5, align 8
  %17 = getelementptr inbounds %struct.tps65132_reg_pdata, %struct.tps65132_reg_pdata* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @IS_ERR(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %1
  %22 = load %struct.tps65132_reg_pdata*, %struct.tps65132_reg_pdata** %5, align 8
  %23 = getelementptr inbounds %struct.tps65132_reg_pdata, %struct.tps65132_reg_pdata* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @gpiod_set_value_cansleep(i32 %24, i32 0)
  %26 = load %struct.tps65132_reg_pdata*, %struct.tps65132_reg_pdata** %5, align 8
  %27 = getelementptr inbounds %struct.tps65132_reg_pdata, %struct.tps65132_reg_pdata* %26, i32 0, i32 2
  store i64 0, i64* %27, align 8
  br label %28

28:                                               ; preds = %21, %1
  %29 = load %struct.tps65132_reg_pdata*, %struct.tps65132_reg_pdata** %5, align 8
  %30 = getelementptr inbounds %struct.tps65132_reg_pdata, %struct.tps65132_reg_pdata* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @IS_ERR(i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %52, label %34

34:                                               ; preds = %28
  %35 = load %struct.tps65132_reg_pdata*, %struct.tps65132_reg_pdata** %5, align 8
  %36 = getelementptr inbounds %struct.tps65132_reg_pdata, %struct.tps65132_reg_pdata* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @gpiod_set_value_cansleep(i32 %37, i32 1)
  %39 = load %struct.tps65132_reg_pdata*, %struct.tps65132_reg_pdata** %5, align 8
  %40 = getelementptr inbounds %struct.tps65132_reg_pdata, %struct.tps65132_reg_pdata* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.tps65132_reg_pdata*, %struct.tps65132_reg_pdata** %5, align 8
  %43 = getelementptr inbounds %struct.tps65132_reg_pdata, %struct.tps65132_reg_pdata* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @TPS65132_ACT_DIS_TIME_SLACK, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 @usleep_range(i64 %41, i64 %46)
  %48 = load %struct.tps65132_reg_pdata*, %struct.tps65132_reg_pdata** %5, align 8
  %49 = getelementptr inbounds %struct.tps65132_reg_pdata, %struct.tps65132_reg_pdata* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @gpiod_set_value_cansleep(i32 %50, i32 0)
  br label %52

52:                                               ; preds = %34, %28
  ret i32 0
}

declare dso_local %struct.tps65132_regulator* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @rdev_get_id(%struct.regulator_dev*) #1

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local i32 @gpiod_set_value_cansleep(i32, i32) #1

declare dso_local i32 @usleep_range(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
