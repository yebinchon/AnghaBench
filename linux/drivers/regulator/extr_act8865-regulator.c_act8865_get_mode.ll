; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_act8865-regulator.c_act8865_get_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_act8865-regulator.c_act8865_get_mode.c"
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
@REGULATOR_MODE_FAST = common dso_local global i32 0, align 4
@REGULATOR_MODE_NORMAL = common dso_local global i32 0, align 4
@REGULATOR_MODE_STANDBY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*)* @act8865_get_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @act8865_get_mode(%struct.regulator_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.regulator_dev*, align 8
  %4 = alloca %struct.regmap*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %3, align 8
  %9 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %10 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %9, i32 0, i32 0
  %11 = load %struct.regmap*, %struct.regmap** %10, align 8
  store %struct.regmap* %11, %struct.regmap** %4, align 8
  %12 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %13 = call i32 @rdev_get_id(%struct.regulator_dev* %12)
  store i32 %13, i32* %5, align 4
  store i32 0, i32* %8, align 4
  %14 = load i32, i32* %5, align 4
  switch i32 %14, label %29 [
    i32 134, label %15
    i32 133, label %17
    i32 132, label %19
    i32 131, label %21
    i32 130, label %23
    i32 129, label %25
    i32 128, label %27
  ]

15:                                               ; preds = %1
  %16 = load i32, i32* @ACT8865_DCDC1_CTRL, align 4
  store i32 %16, i32* %6, align 4
  br label %32

17:                                               ; preds = %1
  %18 = load i32, i32* @ACT8865_DCDC2_CTRL, align 4
  store i32 %18, i32* %6, align 4
  br label %32

19:                                               ; preds = %1
  %20 = load i32, i32* @ACT8865_DCDC3_CTRL, align 4
  store i32 %20, i32* %6, align 4
  br label %32

21:                                               ; preds = %1
  %22 = load i32, i32* @ACT8865_LDO1_CTRL, align 4
  store i32 %22, i32* %6, align 4
  br label %32

23:                                               ; preds = %1
  %24 = load i32, i32* @ACT8865_LDO2_CTRL, align 4
  store i32 %24, i32* %6, align 4
  br label %32

25:                                               ; preds = %1
  %26 = load i32, i32* @ACT8865_LDO3_CTRL, align 4
  store i32 %26, i32* %6, align 4
  br label %32

27:                                               ; preds = %1
  %28 = load i32, i32* @ACT8865_LDO4_CTRL, align 4
  store i32 %28, i32* %6, align 4
  br label %32

29:                                               ; preds = %1
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %62

32:                                               ; preds = %27, %25, %23, %21, %19, %17, %15
  %33 = load %struct.regmap*, %struct.regmap** %4, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @regmap_read(%struct.regmap* %33, i32 %34, i32* %8)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load i32, i32* %7, align 4
  store i32 %39, i32* %2, align 4
  br label %62

40:                                               ; preds = %32
  %41 = load i32, i32* %5, align 4
  %42 = icmp sle i32 %41, 132
  br i1 %42, label %43, label %50

43:                                               ; preds = %40
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @BIT(i32 5)
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = load i32, i32* @REGULATOR_MODE_FAST, align 4
  store i32 %49, i32* %2, align 4
  br label %62

50:                                               ; preds = %43, %40
  %51 = load i32, i32* %5, align 4
  %52 = icmp sgt i32 %51, 132
  br i1 %52, label %53, label %60

53:                                               ; preds = %50
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @BIT(i32 5)
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %53
  %59 = load i32, i32* @REGULATOR_MODE_NORMAL, align 4
  store i32 %59, i32* %2, align 4
  br label %62

60:                                               ; preds = %53, %50
  %61 = load i32, i32* @REGULATOR_MODE_STANDBY, align 4
  store i32 %61, i32* %2, align 4
  br label %62

62:                                               ; preds = %60, %58, %48, %38, %29
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i32 @rdev_get_id(%struct.regulator_dev*) #1

declare dso_local i32 @regmap_read(%struct.regmap*, i32, i32*) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
