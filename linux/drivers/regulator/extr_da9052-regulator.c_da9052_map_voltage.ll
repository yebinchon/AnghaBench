; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_da9052-regulator.c_da9052_map_voltage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_da9052-regulator.c_da9052_map_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.da9052_regulator = type { %struct.TYPE_2__*, %struct.da9052_regulator_info* }
%struct.TYPE_2__ = type { i64 }
%struct.da9052_regulator_info = type { i32, i32 }

@DA9052_ID_BUCK4 = common dso_local global i32 0, align 4
@DA9052 = common dso_local global i64 0, align 8
@DA9052_CONST_3uV = common dso_local global i32 0, align 4
@DA9052_BUCK_PERI_REG_MAP_UPTO_3uV = common dso_local global i32 0, align 4
@DA9052_BUCK_PERI_3uV_STEP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32, i32)* @da9052_map_voltage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da9052_map_voltage(%struct.regulator_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.regulator_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.da9052_regulator*, align 8
  %9 = alloca %struct.da9052_regulator_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %14 = call %struct.da9052_regulator* @rdev_get_drvdata(%struct.regulator_dev* %13)
  store %struct.da9052_regulator* %14, %struct.da9052_regulator** %8, align 8
  %15 = load %struct.da9052_regulator*, %struct.da9052_regulator** %8, align 8
  %16 = getelementptr inbounds %struct.da9052_regulator, %struct.da9052_regulator* %15, i32 0, i32 1
  %17 = load %struct.da9052_regulator_info*, %struct.da9052_regulator_info** %16, align 8
  store %struct.da9052_regulator_info* %17, %struct.da9052_regulator_info** %9, align 8
  %18 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %19 = call i32 @rdev_get_id(%struct.regulator_dev* %18)
  store i32 %19, i32* %10, align 4
  %20 = load %struct.da9052_regulator_info*, %struct.da9052_regulator_info** %9, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @verify_range(%struct.da9052_regulator_info* %20, i32 %21, i32 %22)
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %3
  %27 = load i32, i32* %11, align 4
  store i32 %27, i32* %4, align 4
  br label %82

28:                                               ; preds = %3
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.da9052_regulator_info*, %struct.da9052_regulator_info** %9, align 8
  %31 = getelementptr inbounds %struct.da9052_regulator_info, %struct.da9052_regulator_info* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  %35 = load %struct.da9052_regulator_info*, %struct.da9052_regulator_info** %9, align 8
  %36 = getelementptr inbounds %struct.da9052_regulator_info, %struct.da9052_regulator_info* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %6, align 4
  br label %38

38:                                               ; preds = %34, %28
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* @DA9052_ID_BUCK4, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %62

42:                                               ; preds = %38
  %43 = load %struct.da9052_regulator*, %struct.da9052_regulator** %8, align 8
  %44 = getelementptr inbounds %struct.da9052_regulator, %struct.da9052_regulator* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @DA9052, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %62

50:                                               ; preds = %42
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @DA9052_CONST_3uV, align 4
  %53 = icmp sge i32 %51, %52
  br i1 %53, label %54, label %62

54:                                               ; preds = %50
  %55 = load i32, i32* @DA9052_BUCK_PERI_REG_MAP_UPTO_3uV, align 4
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* @DA9052_CONST_3uV, align 4
  %58 = sub nsw i32 %56, %57
  %59 = load i32, i32* @DA9052_BUCK_PERI_3uV_STEP, align 4
  %60 = call i32 @DIV_ROUND_UP(i32 %58, i32 %59)
  %61 = add nsw i32 %55, %60
  store i32 %61, i32* %12, align 4
  br label %72

62:                                               ; preds = %50, %42, %38
  %63 = load i32, i32* %6, align 4
  %64 = load %struct.da9052_regulator_info*, %struct.da9052_regulator_info** %9, align 8
  %65 = getelementptr inbounds %struct.da9052_regulator_info, %struct.da9052_regulator_info* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = sub nsw i32 %63, %66
  %68 = load %struct.da9052_regulator_info*, %struct.da9052_regulator_info** %9, align 8
  %69 = getelementptr inbounds %struct.da9052_regulator_info, %struct.da9052_regulator_info* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @DIV_ROUND_UP(i32 %67, i32 %70)
  store i32 %71, i32* %12, align 4
  br label %72

72:                                               ; preds = %62, %54
  %73 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %74 = load i32, i32* %12, align 4
  %75 = call i32 @da9052_list_voltage(%struct.regulator_dev* %73, i32 %74)
  store i32 %75, i32* %11, align 4
  %76 = load i32, i32* %11, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %72
  %79 = load i32, i32* %11, align 4
  store i32 %79, i32* %4, align 4
  br label %82

80:                                               ; preds = %72
  %81 = load i32, i32* %12, align 4
  store i32 %81, i32* %4, align 4
  br label %82

82:                                               ; preds = %80, %78, %26
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local %struct.da9052_regulator* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @rdev_get_id(%struct.regulator_dev*) #1

declare dso_local i32 @verify_range(%struct.da9052_regulator_info*, i32, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @da9052_list_voltage(%struct.regulator_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
