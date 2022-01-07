; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_anatop-regulator.c_anatop_regmap_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_anatop-regulator.c_anatop_regmap_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.anatop_regulator = type { i32, i64 }

@LDO_FET_FULL_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*)* @anatop_regmap_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @anatop_regmap_enable(%struct.regulator_dev* %0) #0 {
  %2 = alloca %struct.regulator_dev*, align 8
  %3 = alloca %struct.anatop_regulator*, align 8
  %4 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %2, align 8
  %5 = load %struct.regulator_dev*, %struct.regulator_dev** %2, align 8
  %6 = call %struct.anatop_regulator* @rdev_get_drvdata(%struct.regulator_dev* %5)
  store %struct.anatop_regulator* %6, %struct.anatop_regulator** %3, align 8
  %7 = load %struct.anatop_regulator*, %struct.anatop_regulator** %3, align 8
  %8 = getelementptr inbounds %struct.anatop_regulator, %struct.anatop_regulator* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* @LDO_FET_FULL_ON, align 4
  br label %17

13:                                               ; preds = %1
  %14 = load %struct.anatop_regulator*, %struct.anatop_regulator** %3, align 8
  %15 = getelementptr inbounds %struct.anatop_regulator, %struct.anatop_regulator* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  br label %17

17:                                               ; preds = %13, %11
  %18 = phi i32 [ %12, %11 ], [ %16, %13 ]
  store i32 %18, i32* %4, align 4
  %19 = load %struct.regulator_dev*, %struct.regulator_dev** %2, align 8
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @regulator_set_voltage_sel_regmap(%struct.regulator_dev* %19, i32 %20)
  ret i32 %21
}

declare dso_local %struct.anatop_regulator* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @regulator_set_voltage_sel_regmap(%struct.regulator_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
