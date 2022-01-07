; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_tps80031-regulator.c_tps80031_power_req_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_tps80031-regulator.c_tps80031_power_req_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.tps80031_regulator = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i64, i32, i32 }
%struct.tps80031_regulator_platform_data = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"ext powerreq config failed, err = %d\0A\00", align 1
@TPS80031_PWR_ON_ON_SLEEP = common dso_local global i32 0, align 4
@TPS80031_SLAVE_ID1 = common dso_local global i32 0, align 4
@TPS80031_TRANS_SLEEP_ON = common dso_local global i32 0, align 4
@TPS80031_TRANS_SLEEP_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Reg 0x%02x update failed, e %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.tps80031_regulator*, %struct.tps80031_regulator_platform_data*)* @tps80031_power_req_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tps80031_power_req_config(%struct.device* %0, %struct.tps80031_regulator* %1, %struct.tps80031_regulator_platform_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.tps80031_regulator*, align 8
  %7 = alloca %struct.tps80031_regulator_platform_data*, align 8
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.tps80031_regulator* %1, %struct.tps80031_regulator** %6, align 8
  store %struct.tps80031_regulator_platform_data* %2, %struct.tps80031_regulator_platform_data** %7, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.tps80031_regulator*, %struct.tps80031_regulator** %6, align 8
  %10 = getelementptr inbounds %struct.tps80031_regulator, %struct.tps80031_regulator* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  br label %47

16:                                               ; preds = %3
  %17 = load %struct.device*, %struct.device** %5, align 8
  %18 = load %struct.tps80031_regulator*, %struct.tps80031_regulator** %6, align 8
  %19 = getelementptr inbounds %struct.tps80031_regulator, %struct.tps80031_regulator* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.tps80031_regulator*, %struct.tps80031_regulator** %6, align 8
  %22 = getelementptr inbounds %struct.tps80031_regulator, %struct.tps80031_regulator* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.tps80031_regulator*, %struct.tps80031_regulator** %6, align 8
  %27 = getelementptr inbounds %struct.tps80031_regulator, %struct.tps80031_regulator* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.tps80031_regulator*, %struct.tps80031_regulator** %6, align 8
  %32 = getelementptr inbounds %struct.tps80031_regulator, %struct.tps80031_regulator* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @tps80031_ext_power_req_config(%struct.device* %17, i32 %20, i64 %25, i32 %30, i32 %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %16
  %40 = load %struct.tps80031_regulator*, %struct.tps80031_regulator** %6, align 8
  %41 = getelementptr inbounds %struct.tps80031_regulator, %struct.tps80031_regulator* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %8, align 4
  %44 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %42, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* %8, align 4
  store i32 %45, i32* %4, align 4
  br label %82

46:                                               ; preds = %16
  br label %47

47:                                               ; preds = %46, %15
  %48 = load %struct.tps80031_regulator_platform_data*, %struct.tps80031_regulator_platform_data** %7, align 8
  %49 = getelementptr inbounds %struct.tps80031_regulator_platform_data, %struct.tps80031_regulator_platform_data* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @TPS80031_PWR_ON_ON_SLEEP, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %80

54:                                               ; preds = %47
  %55 = load %struct.device*, %struct.device** %5, align 8
  %56 = load i32, i32* @TPS80031_SLAVE_ID1, align 4
  %57 = load %struct.tps80031_regulator*, %struct.tps80031_regulator** %6, align 8
  %58 = getelementptr inbounds %struct.tps80031_regulator, %struct.tps80031_regulator* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @TPS80031_TRANS_SLEEP_ON, align 4
  %63 = load i32, i32* @TPS80031_TRANS_SLEEP_MASK, align 4
  %64 = call i32 @tps80031_update(%struct.device* %55, i32 %56, i32 %61, i32 %62, i32 %63)
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %8, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %79

67:                                               ; preds = %54
  %68 = load %struct.tps80031_regulator*, %struct.tps80031_regulator** %6, align 8
  %69 = getelementptr inbounds %struct.tps80031_regulator, %struct.tps80031_regulator* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.tps80031_regulator*, %struct.tps80031_regulator** %6, align 8
  %72 = getelementptr inbounds %struct.tps80031_regulator, %struct.tps80031_regulator* %71, i32 0, i32 0
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* %8, align 4
  %77 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %70, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %75, i32 %76)
  %78 = load i32, i32* %8, align 4
  store i32 %78, i32* %4, align 4
  br label %82

79:                                               ; preds = %54
  br label %80

80:                                               ; preds = %79, %47
  %81 = load i32, i32* %8, align 4
  store i32 %81, i32* %4, align 4
  br label %82

82:                                               ; preds = %80, %67, %39
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local i32 @tps80031_ext_power_req_config(%struct.device*, i32, i64, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, ...) #1

declare dso_local i32 @tps80031_update(%struct.device*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
