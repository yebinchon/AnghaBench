; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_max8997-regulator.c_max8997_set_voltage_safeout_sel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_max8997-regulator.c_max8997_set_voltage_safeout_sel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.max8997_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@MAX8997_ESAFEOUT1 = common dso_local global i32 0, align 4
@MAX8997_ESAFEOUT2 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32)* @max8997_set_voltage_safeout_sel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max8997_set_voltage_safeout_sel(%struct.regulator_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regulator_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.max8997_data*, align 8
  %7 = alloca %struct.i2c_client*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %14 = call %struct.max8997_data* @rdev_get_drvdata(%struct.regulator_dev* %13)
  store %struct.max8997_data* %14, %struct.max8997_data** %6, align 8
  %15 = load %struct.max8997_data*, %struct.max8997_data** %6, align 8
  %16 = getelementptr inbounds %struct.max8997_data, %struct.max8997_data* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.i2c_client*, %struct.i2c_client** %18, align 8
  store %struct.i2c_client* %19, %struct.i2c_client** %7, align 8
  %20 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %21 = call i32 @rdev_get_id(%struct.regulator_dev* %20)
  store i32 %21, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @MAX8997_ESAFEOUT1, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %2
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @MAX8997_ESAFEOUT2, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %49

32:                                               ; preds = %25, %2
  %33 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %34 = call i32 @max8997_get_voltage_register(%struct.regulator_dev* %33, i32* %9, i32* %10, i32* %11)
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %12, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i32, i32* %12, align 4
  store i32 %38, i32* %3, align 4
  br label %49

39:                                               ; preds = %32
  %40 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* %10, align 4
  %44 = shl i32 %42, %43
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* %10, align 4
  %47 = shl i32 %45, %46
  %48 = call i32 @max8997_update_reg(%struct.i2c_client* %40, i32 %41, i32 %44, i32 %47)
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %39, %37, %29
  %50 = load i32, i32* %3, align 4
  ret i32 %50
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
