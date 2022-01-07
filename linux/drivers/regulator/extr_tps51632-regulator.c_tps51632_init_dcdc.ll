; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_tps51632-regulator.c_tps51632_init_dcdc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_tps51632-regulator.c_tps51632_init_dcdc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tps51632_chip = type { i32, i32 }
%struct.tps51632_regulator_platform_data = type { i64, i64, i64, i32 }

@TPS51632_DVFS_PWMEN = common dso_local global i32 0, align 4
@TPS51632_VOLTAGE_BASE_REG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"BASE reg write failed, err %d\0A\00", align 1
@TPS51632_DVFS_STEP_20 = common dso_local global i32 0, align 4
@TPS51632_VMAX_REG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"VMAX read failed, err %d\0A\00", align 1
@TPS51632_VMAX_LOCK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"VMAX write failed, err %d\0A\00", align 1
@TPS51632_DVFS_CONTROL_REG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"DVFS reg write failed, err %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tps51632_chip*, %struct.tps51632_regulator_platform_data*)* @tps51632_init_dcdc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tps51632_init_dcdc(%struct.tps51632_chip* %0, %struct.tps51632_regulator_platform_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tps51632_chip*, align 8
  %5 = alloca %struct.tps51632_regulator_platform_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.tps51632_chip* %0, %struct.tps51632_chip** %4, align 8
  store %struct.tps51632_regulator_platform_data* %1, %struct.tps51632_regulator_platform_data** %5, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.tps51632_regulator_platform_data*, %struct.tps51632_regulator_platform_data** %5, align 8
  %11 = getelementptr inbounds %struct.tps51632_regulator_platform_data, %struct.tps51632_regulator_platform_data* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  br label %95

15:                                               ; preds = %2
  %16 = load i32, i32* @TPS51632_DVFS_PWMEN, align 4
  %17 = load i32, i32* %7, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %7, align 4
  %19 = load %struct.tps51632_regulator_platform_data*, %struct.tps51632_regulator_platform_data** %5, align 8
  %20 = getelementptr inbounds %struct.tps51632_regulator_platform_data, %struct.tps51632_regulator_platform_data* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @TPS51632_VOLT_VSEL(i64 %21)
  store i32 %22, i32* %8, align 4
  %23 = load %struct.tps51632_chip*, %struct.tps51632_chip** %4, align 8
  %24 = getelementptr inbounds %struct.tps51632_chip, %struct.tps51632_chip* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @TPS51632_VOLTAGE_BASE_REG, align 4
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @regmap_write(i32 %25, i32 %26, i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %15
  %32 = load %struct.tps51632_chip*, %struct.tps51632_chip** %4, align 8
  %33 = getelementptr inbounds %struct.tps51632_chip, %struct.tps51632_chip* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @dev_err(i32 %34, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* %6, align 4
  store i32 %37, i32* %3, align 4
  br label %112

38:                                               ; preds = %15
  %39 = load %struct.tps51632_regulator_platform_data*, %struct.tps51632_regulator_platform_data** %5, align 8
  %40 = getelementptr inbounds %struct.tps51632_regulator_platform_data, %struct.tps51632_regulator_platform_data* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load i32, i32* @TPS51632_DVFS_STEP_20, align 4
  %45 = load i32, i32* %7, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %7, align 4
  br label %47

47:                                               ; preds = %43, %38
  %48 = load %struct.tps51632_regulator_platform_data*, %struct.tps51632_regulator_platform_data** %5, align 8
  %49 = getelementptr inbounds %struct.tps51632_regulator_platform_data, %struct.tps51632_regulator_platform_data* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %94

52:                                               ; preds = %47
  %53 = load %struct.tps51632_chip*, %struct.tps51632_chip** %4, align 8
  %54 = getelementptr inbounds %struct.tps51632_chip, %struct.tps51632_chip* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @TPS51632_VMAX_REG, align 4
  %57 = call i32 @regmap_read(i32 %55, i32 %56, i32* %9)
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %52
  %61 = load %struct.tps51632_chip*, %struct.tps51632_chip** %4, align 8
  %62 = getelementptr inbounds %struct.tps51632_chip, %struct.tps51632_chip* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @dev_err(i32 %63, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %64)
  %66 = load i32, i32* %6, align 4
  store i32 %66, i32* %3, align 4
  br label %112

67:                                               ; preds = %52
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* @TPS51632_VMAX_LOCK, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %93, label %72

72:                                               ; preds = %67
  %73 = load %struct.tps51632_regulator_platform_data*, %struct.tps51632_regulator_platform_data** %5, align 8
  %74 = getelementptr inbounds %struct.tps51632_regulator_platform_data, %struct.tps51632_regulator_platform_data* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = call i32 @TPS51632_VOLT_VSEL(i64 %75)
  store i32 %76, i32* %8, align 4
  %77 = load %struct.tps51632_chip*, %struct.tps51632_chip** %4, align 8
  %78 = getelementptr inbounds %struct.tps51632_chip, %struct.tps51632_chip* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @TPS51632_VMAX_REG, align 4
  %81 = load i32, i32* %8, align 4
  %82 = call i32 @regmap_write(i32 %79, i32 %80, i32 %81)
  store i32 %82, i32* %6, align 4
  %83 = load i32, i32* %6, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %72
  %86 = load %struct.tps51632_chip*, %struct.tps51632_chip** %4, align 8
  %87 = getelementptr inbounds %struct.tps51632_chip, %struct.tps51632_chip* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %6, align 4
  %90 = call i32 @dev_err(i32 %88, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %89)
  %91 = load i32, i32* %6, align 4
  store i32 %91, i32* %3, align 4
  br label %112

92:                                               ; preds = %72
  br label %93

93:                                               ; preds = %92, %67
  br label %94

94:                                               ; preds = %93, %47
  br label %95

95:                                               ; preds = %94, %14
  %96 = load %struct.tps51632_chip*, %struct.tps51632_chip** %4, align 8
  %97 = getelementptr inbounds %struct.tps51632_chip, %struct.tps51632_chip* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @TPS51632_DVFS_CONTROL_REG, align 4
  %100 = load i32, i32* %7, align 4
  %101 = call i32 @regmap_write(i32 %98, i32 %99, i32 %100)
  store i32 %101, i32* %6, align 4
  %102 = load i32, i32* %6, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %95
  %105 = load %struct.tps51632_chip*, %struct.tps51632_chip** %4, align 8
  %106 = getelementptr inbounds %struct.tps51632_chip, %struct.tps51632_chip* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %6, align 4
  %109 = call i32 @dev_err(i32 %107, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %108)
  br label %110

110:                                              ; preds = %104, %95
  %111 = load i32, i32* %6, align 4
  store i32 %111, i32* %3, align 4
  br label %112

112:                                              ; preds = %110, %85, %60, %31
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local i32 @TPS51632_VOLT_VSEL(i64) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
