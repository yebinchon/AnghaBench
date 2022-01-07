; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_max8998.c_max8998_set_voltage_buck_time_sel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_max8998.c_max8998_set_voltage_buck_time_sel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.max8998_data = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@MAX8998_BUCK1 = common dso_local global i32 0, align 4
@MAX8998_BUCK4 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MAX8998_REG_ONOFF4 = common dso_local global i32 0, align 4
@TYPE_MAX8998 = common dso_local global i64 0, align 8
@MAX8998_ENRAMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32, i32)* @max8998_set_voltage_buck_time_sel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max8998_set_voltage_buck_time_sel(%struct.regulator_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.regulator_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.max8998_data*, align 8
  %9 = alloca %struct.i2c_client*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %15 = call %struct.max8998_data* @rdev_get_drvdata(%struct.regulator_dev* %14)
  store %struct.max8998_data* %15, %struct.max8998_data** %8, align 8
  %16 = load %struct.max8998_data*, %struct.max8998_data** %8, align 8
  %17 = getelementptr inbounds %struct.max8998_data, %struct.max8998_data* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load %struct.i2c_client*, %struct.i2c_client** %19, align 8
  store %struct.i2c_client* %20, %struct.i2c_client** %9, align 8
  %21 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %22 = call i32 @rdev_get_id(%struct.regulator_dev* %21)
  store i32 %22, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* @MAX8998_BUCK1, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %30, label %26

26:                                               ; preds = %3
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* @MAX8998_BUCK4, align 4
  %29 = icmp sgt i32 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %26, %3
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %75

33:                                               ; preds = %26
  %34 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %35 = load i32, i32* @MAX8998_REG_ONOFF4, align 4
  %36 = call i32 @max8998_read_reg(%struct.i2c_client* %34, i32 %35, i32* %11)
  store i32 %36, i32* %13, align 4
  %37 = load i32, i32* %13, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load i32, i32* %13, align 4
  store i32 %40, i32* %4, align 4
  br label %75

41:                                               ; preds = %33
  %42 = load %struct.max8998_data*, %struct.max8998_data** %8, align 8
  %43 = getelementptr inbounds %struct.max8998_data, %struct.max8998_data* %42, i32 0, i32 0
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @TYPE_MAX8998, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %41
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* @MAX8998_ENRAMP, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %49
  store i32 0, i32* %4, align 4
  br label %75

55:                                               ; preds = %49, %41
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* %6, align 4
  %58 = sub i32 %56, %57
  %59 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %60 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %59, i32 0, i32 0
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = mul i32 %58, %63
  %65 = udiv i32 %64, 1000
  store i32 %65, i32* %12, align 4
  %66 = load i32, i32* %12, align 4
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %55
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* %11, align 4
  %71 = and i32 %70, 15
  %72 = add nsw i32 %71, 1
  %73 = call i32 @DIV_ROUND_UP(i32 %69, i32 %72)
  store i32 %73, i32* %4, align 4
  br label %75

74:                                               ; preds = %55
  store i32 0, i32* %4, align 4
  br label %75

75:                                               ; preds = %74, %68, %54, %39, %30
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local %struct.max8998_data* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @rdev_get_id(%struct.regulator_dev*) #1

declare dso_local i32 @max8998_read_reg(%struct.i2c_client*, i32, i32*) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
