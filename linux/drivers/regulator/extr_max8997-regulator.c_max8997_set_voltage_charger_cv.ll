; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_max8997-regulator.c_max8997_set_voltage_charger_cv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_max8997-regulator.c_max8997_set_voltage_charger_cv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.max8997_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@MAX8997_CHARGER_CV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32, i32, i32*)* @max8997_set_voltage_charger_cv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max8997_set_voltage_charger_cv(%struct.regulator_dev* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.regulator_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.max8997_data*, align 8
  %11 = alloca %struct.i2c_client*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %20 = load %struct.regulator_dev*, %struct.regulator_dev** %6, align 8
  %21 = call %struct.max8997_data* @rdev_get_drvdata(%struct.regulator_dev* %20)
  store %struct.max8997_data* %21, %struct.max8997_data** %10, align 8
  %22 = load %struct.max8997_data*, %struct.max8997_data** %10, align 8
  %23 = getelementptr inbounds %struct.max8997_data, %struct.max8997_data* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load %struct.i2c_client*, %struct.i2c_client** %25, align 8
  store %struct.i2c_client* %26, %struct.i2c_client** %11, align 8
  %27 = load %struct.regulator_dev*, %struct.regulator_dev** %6, align 8
  %28 = call i32 @rdev_get_id(%struct.regulator_dev* %27)
  store i32 %28, i32* %12, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %29 = load i32, i32* %12, align 4
  %30 = load i32, i32* @MAX8997_CHARGER_CV, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %4
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %5, align 4
  br label %103

35:                                               ; preds = %4
  %36 = load %struct.regulator_dev*, %struct.regulator_dev** %6, align 8
  %37 = call i32 @max8997_get_voltage_register(%struct.regulator_dev* %36, i32* %15, i32* %16, i32* %17)
  store i32 %37, i32* %18, align 4
  %38 = load i32, i32* %18, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32, i32* %18, align 4
  store i32 %41, i32* %5, align 4
  br label %103

42:                                               ; preds = %35
  %43 = load i32, i32* %8, align 4
  %44 = icmp slt i32 %43, 4000000
  br i1 %44, label %48, label %45

45:                                               ; preds = %42
  %46 = load i32, i32* %7, align 4
  %47 = icmp sgt i32 %46, 4350000
  br i1 %47, label %48, label %51

48:                                               ; preds = %45, %42
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %5, align 4
  br label %103

51:                                               ; preds = %45
  %52 = load i32, i32* %7, align 4
  %53 = icmp sle i32 %52, 4000000
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  store i32 1, i32* %19, align 4
  br label %92

55:                                               ; preds = %51
  %56 = load i32, i32* %7, align 4
  %57 = icmp sle i32 %56, 4200000
  br i1 %57, label %58, label %62

58:                                               ; preds = %55
  %59 = load i32, i32* %8, align 4
  %60 = icmp sge i32 %59, 4200000
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  store i32 0, i32* %19, align 4
  br label %91

62:                                               ; preds = %58, %55
  %63 = load i32, i32* %7, align 4
  %64 = sub nsw i32 %63, 4000001
  %65 = sdiv i32 %64, 20000
  %66 = add nsw i32 %65, 2
  store i32 %66, i32* %13, align 4
  %67 = load i32, i32* %8, align 4
  %68 = sub nsw i32 %67, 4000000
  %69 = sdiv i32 %68, 20000
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %14, align 4
  %71 = load i32, i32* %13, align 4
  %72 = load i32, i32* %14, align 4
  %73 = icmp sgt i32 %71, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %62
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %5, align 4
  br label %103

77:                                               ; preds = %62
  %78 = load i32, i32* %13, align 4
  %79 = icmp slt i32 %78, 15
  br i1 %79, label %80, label %82

80:                                               ; preds = %77
  %81 = load i32, i32* %13, align 4
  store i32 %81, i32* %19, align 4
  br label %90

82:                                               ; preds = %77
  %83 = load i32, i32* %14, align 4
  %84 = icmp sge i32 %83, 15
  br i1 %84, label %85, label %86

85:                                               ; preds = %82
  store i32 15, i32* %19, align 4
  br label %89

86:                                               ; preds = %82
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %5, align 4
  br label %103

89:                                               ; preds = %85
  br label %90

90:                                               ; preds = %89, %80
  br label %91

91:                                               ; preds = %90, %61
  br label %92

92:                                               ; preds = %91, %54
  %93 = load i32, i32* %19, align 4
  %94 = load i32*, i32** %9, align 8
  store i32 %93, i32* %94, align 4
  %95 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %96 = load i32, i32* %15, align 4
  %97 = load i32, i32* %19, align 4
  %98 = load i32, i32* %16, align 4
  %99 = shl i32 %97, %98
  %100 = load i32, i32* %17, align 4
  %101 = call i32 @max8997_update_reg(%struct.i2c_client* %95, i32 %96, i32 %99, i32 %100)
  store i32 %101, i32* %18, align 4
  %102 = load i32, i32* %18, align 4
  store i32 %102, i32* %5, align 4
  br label %103

103:                                              ; preds = %92, %86, %74, %48, %40, %32
  %104 = load i32, i32* %5, align 4
  ret i32 %104
}

declare dso_local %struct.max8997_data* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @rdev_get_id(%struct.regulator_dev*) #1

declare dso_local i32 @max8997_get_voltage_register(%struct.regulator_dev*, i32*, i32*, i32*) #1

declare dso_local i32 @max8997_update_reg(%struct.i2c_client*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
