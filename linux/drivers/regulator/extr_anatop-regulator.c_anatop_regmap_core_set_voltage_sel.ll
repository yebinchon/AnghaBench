; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_anatop-regulator.c_anatop_regmap_core_set_voltage_sel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_anatop-regulator.c_anatop_regmap_core_set_voltage_sel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.anatop_regulator = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32)* @anatop_regmap_core_set_voltage_sel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @anatop_regmap_core_set_voltage_sel(%struct.regulator_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regulator_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.anatop_regulator*, align 8
  %7 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %9 = call %struct.anatop_regulator* @rdev_get_drvdata(%struct.regulator_dev* %8)
  store %struct.anatop_regulator* %9, %struct.anatop_regulator** %6, align 8
  %10 = load %struct.anatop_regulator*, %struct.anatop_regulator** %6, align 8
  %11 = getelementptr inbounds %struct.anatop_regulator, %struct.anatop_regulator* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %2
  %15 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %16 = call i32 @anatop_regmap_is_enabled(%struct.regulator_dev* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %14, %2
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.anatop_regulator*, %struct.anatop_regulator** %6, align 8
  %21 = getelementptr inbounds %struct.anatop_regulator, %struct.anatop_regulator* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  store i32 0, i32* %3, align 4
  br label %34

22:                                               ; preds = %14
  %23 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @regulator_set_voltage_sel_regmap(%struct.regulator_dev* %23, i32 %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %22
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.anatop_regulator*, %struct.anatop_regulator** %6, align 8
  %31 = getelementptr inbounds %struct.anatop_regulator, %struct.anatop_regulator* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  br label %32

32:                                               ; preds = %28, %22
  %33 = load i32, i32* %7, align 4
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %32, %18
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local %struct.anatop_regulator* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @anatop_regmap_is_enabled(%struct.regulator_dev*) #1

declare dso_local i32 @regulator_set_voltage_sel_regmap(%struct.regulator_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
