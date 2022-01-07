; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_88pg86x.c_pg86x_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_88pg86x.c_pg86x_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.i2c_client = type { i32 }
%struct.regulator_config = type { i32* }
%struct.regmap = type opaque
%struct.regulator_dev = type { i32 }

@pg86x_regmap = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"regmap init failed: %d\0A\00", align 1
@pg86x_regulators = common dso_local global %struct.TYPE_4__* null, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"failed to register %s: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @pg86x_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pg86x_i2c_probe(%struct.i2c_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.regulator_config, align 8
  %7 = alloca %struct.regmap*, align 8
  %8 = alloca %struct.regulator_dev*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  %9 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %6, i32 0, i32 0
  %10 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 0
  store i32* %11, i32** %9, align 8
  %12 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %13 = call %struct.regulator_dev* @devm_regmap_init_i2c(%struct.i2c_client* %12, i32* @pg86x_regmap)
  %14 = bitcast %struct.regulator_dev* %13 to %struct.regmap*
  store %struct.regmap* %14, %struct.regmap** %7, align 8
  %15 = load %struct.regmap*, %struct.regmap** %7, align 8
  %16 = bitcast %struct.regmap* %15 to %struct.regulator_dev*
  %17 = call i64 @IS_ERR(%struct.regulator_dev* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %1
  %20 = load %struct.regmap*, %struct.regmap** %7, align 8
  %21 = bitcast %struct.regmap* %20 to %struct.regulator_dev*
  %22 = call i32 @PTR_ERR(%struct.regulator_dev* %21)
  store i32 %22, i32* %5, align 4
  %23 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %24 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %23, i32 0, i32 0
  %25 = load i32, i32* %5, align 4
  %26 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %24, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* %5, align 4
  store i32 %27, i32* %2, align 4
  br label %64

28:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %29

29:                                               ; preds = %60, %28
  %30 = load i32, i32* %4, align 4
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pg86x_regulators, align 8
  %32 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %31)
  %33 = icmp slt i32 %30, %32
  br i1 %33, label %34, label %63

34:                                               ; preds = %29
  %35 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %36 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pg86x_regulators, align 8
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i64 %39
  %41 = call %struct.regulator_dev* @devm_regulator_register(i32* %36, %struct.TYPE_4__* %40, %struct.regulator_config* %6)
  store %struct.regulator_dev* %41, %struct.regulator_dev** %8, align 8
  %42 = load %struct.regulator_dev*, %struct.regulator_dev** %8, align 8
  %43 = call i64 @IS_ERR(%struct.regulator_dev* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %59

45:                                               ; preds = %34
  %46 = load %struct.regulator_dev*, %struct.regulator_dev** %8, align 8
  %47 = call i32 @PTR_ERR(%struct.regulator_dev* %46)
  store i32 %47, i32* %5, align 4
  %48 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %49 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %48, i32 0, i32 0
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pg86x_regulators, align 8
  %51 = load i32, i32* %4, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %5, align 4
  %57 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %49, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %55, i32 %56)
  %58 = load i32, i32* %5, align 4
  store i32 %58, i32* %2, align 4
  br label %64

59:                                               ; preds = %34
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %4, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %4, align 4
  br label %29

63:                                               ; preds = %29
  store i32 0, i32* %2, align 4
  br label %64

64:                                               ; preds = %63, %45, %19
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local %struct.regulator_dev* @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.regulator_dev*) #1

declare dso_local i32 @PTR_ERR(%struct.regulator_dev*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, ...) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_4__*) #1

declare dso_local %struct.regulator_dev* @devm_regulator_register(i32*, %struct.TYPE_4__*, %struct.regulator_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
