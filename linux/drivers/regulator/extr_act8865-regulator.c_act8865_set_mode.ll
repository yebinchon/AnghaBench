; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_act8865-regulator.c_act8865_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_act8865-regulator.c_act8865_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { %struct.regmap* }
%struct.regmap = type { i32 }

@ACT8865_DCDC1_CTRL = common dso_local global i32 0, align 4
@ACT8865_DCDC2_CTRL = common dso_local global i32 0, align 4
@ACT8865_DCDC3_CTRL = common dso_local global i32 0, align 4
@ACT8865_LDO1_CTRL = common dso_local global i32 0, align 4
@ACT8865_LDO2_CTRL = common dso_local global i32 0, align 4
@ACT8865_LDO3_CTRL = common dso_local global i32 0, align 4
@ACT8865_LDO4_CTRL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32)* @act8865_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @act8865_set_mode(%struct.regulator_dev* %0, i32 %1) #0 {
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
  store i32 0, i32* %9, align 4
  %15 = load i32, i32* %7, align 4
  switch i32 %15, label %30 [
    i32 137, label %16
    i32 136, label %18
    i32 135, label %20
    i32 134, label %22
    i32 133, label %24
    i32 132, label %26
    i32 131, label %28
  ]

16:                                               ; preds = %2
  %17 = load i32, i32* @ACT8865_DCDC1_CTRL, align 4
  store i32 %17, i32* %8, align 4
  br label %33

18:                                               ; preds = %2
  %19 = load i32, i32* @ACT8865_DCDC2_CTRL, align 4
  store i32 %19, i32* %8, align 4
  br label %33

20:                                               ; preds = %2
  %21 = load i32, i32* @ACT8865_DCDC3_CTRL, align 4
  store i32 %21, i32* %8, align 4
  br label %33

22:                                               ; preds = %2
  %23 = load i32, i32* @ACT8865_LDO1_CTRL, align 4
  store i32 %23, i32* %8, align 4
  br label %33

24:                                               ; preds = %2
  %25 = load i32, i32* @ACT8865_LDO2_CTRL, align 4
  store i32 %25, i32* %8, align 4
  br label %33

26:                                               ; preds = %2
  %27 = load i32, i32* @ACT8865_LDO3_CTRL, align 4
  store i32 %27, i32* %8, align 4
  br label %33

28:                                               ; preds = %2
  %29 = load i32, i32* @ACT8865_LDO4_CTRL, align 4
  store i32 %29, i32* %8, align 4
  br label %33

30:                                               ; preds = %2
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %56

33:                                               ; preds = %28, %26, %24, %22, %20, %18, %16
  %34 = load i32, i32* %5, align 4
  switch i32 %34, label %47 [
    i32 130, label %35
    i32 129, label %35
    i32 128, label %41
  ]

35:                                               ; preds = %33, %33
  %36 = load i32, i32* %7, align 4
  %37 = icmp sle i32 %36, 135
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = call i32 @BIT(i32 5)
  store i32 %39, i32* %9, align 4
  br label %40

40:                                               ; preds = %38, %35
  br label %50

41:                                               ; preds = %33
  %42 = load i32, i32* %7, align 4
  %43 = icmp sgt i32 %42, 135
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = call i32 @BIT(i32 5)
  store i32 %45, i32* %9, align 4
  br label %46

46:                                               ; preds = %44, %41
  br label %50

47:                                               ; preds = %33
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %56

50:                                               ; preds = %46, %40
  %51 = load %struct.regmap*, %struct.regmap** %6, align 8
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @BIT(i32 5)
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @regmap_update_bits(%struct.regmap* %51, i32 %52, i32 %53, i32 %54)
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %50, %47, %30
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @rdev_get_id(%struct.regulator_dev*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @regmap_update_bits(%struct.regmap*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
