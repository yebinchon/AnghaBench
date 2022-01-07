; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_anatop-regulator.c_anatop_regmap_set_bypass.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_anatop-regulator.c_anatop_regmap_set_bypass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.anatop_regulator = type { i32, i32 }

@LDO_FET_FULL_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32)* @anatop_regmap_set_bypass to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @anatop_regmap_set_bypass(%struct.regulator_dev* %0, i32 %1) #0 {
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
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.anatop_regulator*, %struct.anatop_regulator** %6, align 8
  %12 = getelementptr inbounds %struct.anatop_regulator, %struct.anatop_regulator* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp eq i32 %10, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %33

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = load i32, i32* @LDO_FET_FULL_ON, align 4
  br label %25

21:                                               ; preds = %16
  %22 = load %struct.anatop_regulator*, %struct.anatop_regulator** %6, align 8
  %23 = getelementptr inbounds %struct.anatop_regulator, %struct.anatop_regulator* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  br label %25

25:                                               ; preds = %21, %19
  %26 = phi i32 [ %20, %19 ], [ %24, %21 ]
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.anatop_regulator*, %struct.anatop_regulator** %6, align 8
  %29 = getelementptr inbounds %struct.anatop_regulator, %struct.anatop_regulator* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @regulator_set_voltage_sel_regmap(%struct.regulator_dev* %30, i32 %31)
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %25, %15
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local %struct.anatop_regulator* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @regulator_set_voltage_sel_regmap(%struct.regulator_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
