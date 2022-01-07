; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_anatop-regulator.c_anatop_regmap_get_bypass.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_anatop-regulator.c_anatop_regmap_get_bypass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.anatop_regulator = type { i32 }

@LDO_FET_FULL_ON = common dso_local global i32 0, align 4
@LDO_POWER_GATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32*)* @anatop_regmap_get_bypass to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @anatop_regmap_get_bypass(%struct.regulator_dev* %0, i32* %1) #0 {
  %3 = alloca %struct.regulator_dev*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.anatop_regulator*, align 8
  %6 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %8 = call %struct.anatop_regulator* @rdev_get_drvdata(%struct.regulator_dev* %7)
  store %struct.anatop_regulator* %8, %struct.anatop_regulator** %5, align 8
  %9 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %10 = call i32 @regulator_get_voltage_sel_regmap(%struct.regulator_dev* %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @LDO_FET_FULL_ON, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %22

14:                                               ; preds = %2
  %15 = load %struct.anatop_regulator*, %struct.anatop_regulator** %5, align 8
  %16 = getelementptr inbounds %struct.anatop_regulator, %struct.anatop_regulator* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i32 @WARN_ON(i32 %20)
  br label %32

22:                                               ; preds = %2
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @LDO_POWER_GATE, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %22
  %27 = load %struct.anatop_regulator*, %struct.anatop_regulator** %5, align 8
  %28 = getelementptr inbounds %struct.anatop_regulator, %struct.anatop_regulator* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @WARN_ON(i32 %29)
  br label %31

31:                                               ; preds = %26, %22
  br label %32

32:                                               ; preds = %31, %14
  %33 = load %struct.anatop_regulator*, %struct.anatop_regulator** %5, align 8
  %34 = getelementptr inbounds %struct.anatop_regulator, %struct.anatop_regulator* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32*, i32** %4, align 8
  store i32 %35, i32* %36, align 4
  ret i32 0
}

declare dso_local %struct.anatop_regulator* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @regulator_get_voltage_sel_regmap(%struct.regulator_dev*) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
