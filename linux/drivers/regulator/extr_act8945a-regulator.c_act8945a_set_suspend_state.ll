; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_act8945a-regulator.c_act8945a_set_suspend_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_act8945a-regulator.c_act8945a_set_suspend_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { %struct.regmap* }
%struct.regmap = type { i32 }

@ACT8945A_DCDC1_SUS = common dso_local global i32 0, align 4
@ACT8945A_DCDC2_SUS = common dso_local global i32 0, align 4
@ACT8945A_DCDC3_SUS = common dso_local global i32 0, align 4
@ACT8945A_LDO1_SUS = common dso_local global i32 0, align 4
@ACT8945A_LDO2_SUS = common dso_local global i32 0, align 4
@ACT8945A_LDO3_SUS = common dso_local global i32 0, align 4
@ACT8945A_LDO4_SUS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32)* @act8945a_set_suspend_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @act8945a_set_suspend_state(%struct.regulator_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regulator_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.regmap*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %11 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %10, i32 0, i32 0
  %12 = load %struct.regmap*, %struct.regmap** %11, align 8
  store %struct.regmap* %12, %struct.regmap** %6, align 8
  %13 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %14 = call i32 @rdev_get_id(%struct.regulator_dev* %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  switch i32 %15, label %30 [
    i32 134, label %16
    i32 133, label %18
    i32 132, label %20
    i32 131, label %22
    i32 130, label %24
    i32 129, label %26
    i32 128, label %28
  ]

16:                                               ; preds = %2
  %17 = load i32, i32* @ACT8945A_DCDC1_SUS, align 4
  store i32 %17, i32* %8, align 4
  store i32 168, i32* %9, align 4
  br label %33

18:                                               ; preds = %2
  %19 = load i32, i32* @ACT8945A_DCDC2_SUS, align 4
  store i32 %19, i32* %8, align 4
  store i32 168, i32* %9, align 4
  br label %33

20:                                               ; preds = %2
  %21 = load i32, i32* @ACT8945A_DCDC3_SUS, align 4
  store i32 %21, i32* %8, align 4
  store i32 168, i32* %9, align 4
  br label %33

22:                                               ; preds = %2
  %23 = load i32, i32* @ACT8945A_LDO1_SUS, align 4
  store i32 %23, i32* %8, align 4
  store i32 232, i32* %9, align 4
  br label %33

24:                                               ; preds = %2
  %25 = load i32, i32* @ACT8945A_LDO2_SUS, align 4
  store i32 %25, i32* %8, align 4
  store i32 232, i32* %9, align 4
  br label %33

26:                                               ; preds = %2
  %27 = load i32, i32* @ACT8945A_LDO3_SUS, align 4
  store i32 %27, i32* %8, align 4
  store i32 232, i32* %9, align 4
  br label %33

28:                                               ; preds = %2
  %29 = load i32, i32* @ACT8945A_LDO4_SUS, align 4
  store i32 %29, i32* %8, align 4
  store i32 232, i32* %9, align 4
  br label %33

30:                                               ; preds = %2
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %45

33:                                               ; preds = %28, %26, %24, %22, %20, %18, %16
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = call i32 @BIT(i32 4)
  %38 = load i32, i32* %9, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %9, align 4
  br label %40

40:                                               ; preds = %36, %33
  %41 = load %struct.regmap*, %struct.regmap** %6, align 8
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @regmap_write(%struct.regmap* %41, i32 %42, i32 %43)
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %40, %30
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @rdev_get_id(%struct.regulator_dev*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @regmap_write(%struct.regmap*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
