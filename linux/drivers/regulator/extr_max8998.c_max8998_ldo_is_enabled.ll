; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_max8998.c_max8998_ldo_is_enabled.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_max8998.c_max8998_ldo_is_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.max8998_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*)* @max8998_ldo_is_enabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max8998_ldo_is_enabled(%struct.regulator_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.regulator_dev*, align 8
  %4 = alloca %struct.max8998_data*, align 8
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %3, align 8
  %10 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %11 = call %struct.max8998_data* @rdev_get_drvdata(%struct.regulator_dev* %10)
  store %struct.max8998_data* %11, %struct.max8998_data** %4, align 8
  %12 = load %struct.max8998_data*, %struct.max8998_data** %4, align 8
  %13 = getelementptr inbounds %struct.max8998_data, %struct.max8998_data* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.i2c_client*, %struct.i2c_client** %15, align 8
  store %struct.i2c_client* %16, %struct.i2c_client** %5, align 8
  store i32 8, i32* %8, align 4
  %17 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %18 = call i32 @max8998_get_enable_register(%struct.regulator_dev* %17, i32* %7, i32* %8)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %2, align 4
  br label %36

23:                                               ; preds = %1
  %24 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @max8998_read_reg(%struct.i2c_client* %24, i32 %25, i32* %9)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* %2, align 4
  br label %36

31:                                               ; preds = %23
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %8, align 4
  %34 = shl i32 1, %33
  %35 = and i32 %32, %34
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %31, %29, %21
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local %struct.max8998_data* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @max8998_get_enable_register(%struct.regulator_dev*, i32*, i32*) #1

declare dso_local i32 @max8998_read_reg(%struct.i2c_client*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
