; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_max8998.c_max8998_ldo_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_max8998.c_max8998_ldo_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.max8998_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*)* @max8998_ldo_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max8998_ldo_disable(%struct.regulator_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.regulator_dev*, align 8
  %4 = alloca %struct.max8998_data*, align 8
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %3, align 8
  %9 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %10 = call %struct.max8998_data* @rdev_get_drvdata(%struct.regulator_dev* %9)
  store %struct.max8998_data* %10, %struct.max8998_data** %4, align 8
  %11 = load %struct.max8998_data*, %struct.max8998_data** %4, align 8
  %12 = getelementptr inbounds %struct.max8998_data, %struct.max8998_data* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.i2c_client*, %struct.i2c_client** %14, align 8
  store %struct.i2c_client* %15, %struct.i2c_client** %5, align 8
  store i32 8, i32* %7, align 4
  %16 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %17 = call i32 @max8998_get_enable_register(%struct.regulator_dev* %16, i32* %6, i32* %7)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* %8, align 4
  store i32 %21, i32* %2, align 4
  br label %28

22:                                               ; preds = %1
  %23 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %7, align 4
  %26 = shl i32 1, %25
  %27 = call i32 @max8998_update_reg(%struct.i2c_client* %23, i32 %24, i32 0, i32 %26)
  store i32 %27, i32* %2, align 4
  br label %28

28:                                               ; preds = %22, %20
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local %struct.max8998_data* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @max8998_get_enable_register(%struct.regulator_dev*, i32*, i32*) #1

declare dso_local i32 @max8998_update_reg(%struct.i2c_client*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
