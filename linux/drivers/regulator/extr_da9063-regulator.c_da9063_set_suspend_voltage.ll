; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_da9063-regulator.c_da9063_set_suspend_voltage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_da9063-regulator.c_da9063_set_suspend_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.da9063_regulator = type { %struct.TYPE_3__*, %struct.da9063_regulator_info* }
%struct.TYPE_3__ = type { i32 }
%struct.da9063_regulator_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32)* @da9063_set_suspend_voltage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da9063_set_suspend_voltage(%struct.regulator_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regulator_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.da9063_regulator*, align 8
  %7 = alloca %struct.da9063_regulator_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %11 = call %struct.da9063_regulator* @rdev_get_drvdata(%struct.regulator_dev* %10)
  store %struct.da9063_regulator* %11, %struct.da9063_regulator** %6, align 8
  %12 = load %struct.da9063_regulator*, %struct.da9063_regulator** %6, align 8
  %13 = getelementptr inbounds %struct.da9063_regulator, %struct.da9063_regulator* %12, i32 0, i32 1
  %14 = load %struct.da9063_regulator_info*, %struct.da9063_regulator_info** %13, align 8
  store %struct.da9063_regulator_info* %14, %struct.da9063_regulator_info** %7, align 8
  %15 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @regulator_map_voltage_linear(%struct.regulator_dev* %15, i32 %16, i32 %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* %9, align 4
  store i32 %22, i32* %3, align 4
  br label %49

23:                                               ; preds = %2
  %24 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %25 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @ffs(i32 %28)
  %30 = sub nsw i32 %29, 1
  %31 = load i32, i32* %9, align 4
  %32 = shl i32 %31, %30
  store i32 %32, i32* %9, align 4
  %33 = load %struct.da9063_regulator*, %struct.da9063_regulator** %6, align 8
  %34 = getelementptr inbounds %struct.da9063_regulator, %struct.da9063_regulator* %33, i32 0, i32 0
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.da9063_regulator_info*, %struct.da9063_regulator_info** %7, align 8
  %39 = getelementptr inbounds %struct.da9063_regulator_info, %struct.da9063_regulator_info* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %42 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @regmap_update_bits(i32 %37, i32 %40, i32 %45, i32 %46)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %23, %21
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local %struct.da9063_regulator* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @regulator_map_voltage_linear(%struct.regulator_dev*, i32, i32) #1

declare dso_local i32 @ffs(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
