; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_max8997-regulator.c_max8997_reg_disable_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_max8997-regulator.c_max8997_reg_disable_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.max8997_data = type { i32*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@MAX8997_LDO1 = common dso_local global i32 0, align 4
@MAX8997_LDO10 = common dso_local global i32 0, align 4
@MAX8997_LDO21 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Conditional Power-Off for %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Full Power-Off for %s (%xh -> %xh)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*)* @max8997_reg_disable_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max8997_reg_disable_suspend(%struct.regulator_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.regulator_dev*, align 8
  %4 = alloca %struct.max8997_data*, align 8
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %3, align 8
  %11 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %12 = call %struct.max8997_data* @rdev_get_drvdata(%struct.regulator_dev* %11)
  store %struct.max8997_data* %12, %struct.max8997_data** %4, align 8
  %13 = load %struct.max8997_data*, %struct.max8997_data** %4, align 8
  %14 = getelementptr inbounds %struct.max8997_data, %struct.max8997_data* %13, i32 0, i32 1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.i2c_client*, %struct.i2c_client** %16, align 8
  store %struct.i2c_client* %17, %struct.i2c_client** %5, align 8
  %18 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %19 = call i32 @rdev_get_id(%struct.regulator_dev* %18)
  store i32 %19, i32* %10, align 4
  %20 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %21 = call i32 @max8997_get_enable_register(%struct.regulator_dev* %20, i32* %7, i32* %8, i32* %9)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %1
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %2, align 4
  br label %88

26:                                               ; preds = %1
  %27 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.max8997_data*, %struct.max8997_data** %4, align 8
  %30 = getelementptr inbounds %struct.max8997_data, %struct.max8997_data* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %10, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = call i32 @max8997_read_reg(%struct.i2c_client* %27, i32 %28, i32* %34)
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* @MAX8997_LDO1, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %47, label %39

39:                                               ; preds = %26
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* @MAX8997_LDO10, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %47, label %43

43:                                               ; preds = %39
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* @MAX8997_LDO21, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %60

47:                                               ; preds = %43, %39, %26
  %48 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %49 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %48, i32 0, i32 1
  %50 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %51 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %50, i32 0, i32 0
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %49, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %54)
  %56 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @max8997_update_reg(%struct.i2c_client* %56, i32 %57, i32 64, i32 %58)
  store i32 %59, i32* %2, align 4
  br label %88

60:                                               ; preds = %43
  %61 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %62 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %61, i32 0, i32 1
  %63 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %64 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %63, i32 0, i32 0
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.max8997_data*, %struct.max8997_data** %4, align 8
  %69 = getelementptr inbounds %struct.max8997_data, %struct.max8997_data* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %10, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %8, align 4
  %76 = and i32 %74, %75
  %77 = load i32, i32* %9, align 4
  %78 = xor i32 %77, -1
  %79 = load i32, i32* %8, align 4
  %80 = and i32 %78, %79
  %81 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %62, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %67, i32 %76, i32 %80)
  %82 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* %9, align 4
  %85 = xor i32 %84, -1
  %86 = load i32, i32* %8, align 4
  %87 = call i32 @max8997_update_reg(%struct.i2c_client* %82, i32 %83, i32 %85, i32 %86)
  store i32 %87, i32* %2, align 4
  br label %88

88:                                               ; preds = %60, %47, %24
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local %struct.max8997_data* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @rdev_get_id(%struct.regulator_dev*) #1

declare dso_local i32 @max8997_get_enable_register(%struct.regulator_dev*, i32*, i32*, i32*) #1

declare dso_local i32 @max8997_read_reg(%struct.i2c_client*, i32, i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, ...) #1

declare dso_local i32 @max8997_update_reg(%struct.i2c_client*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
