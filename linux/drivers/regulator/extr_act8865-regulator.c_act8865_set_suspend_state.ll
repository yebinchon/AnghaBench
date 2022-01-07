; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_act8865-regulator.c_act8865_set_suspend_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_act8865-regulator.c_act8865_set_suspend_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { %struct.TYPE_2__*, %struct.regmap* }
%struct.TYPE_2__ = type { i32 }
%struct.regmap = type { i32 }

@ACT8865_DCDC1_SUS = common dso_local global i32 0, align 4
@ACT8865_DCDC2_SUS = common dso_local global i32 0, align 4
@ACT8865_DCDC3_SUS = common dso_local global i32 0, align 4
@ACT8865_LDO1_SUS = common dso_local global i32 0, align 4
@ACT8865_LDO2_SUS = common dso_local global i32 0, align 4
@ACT8865_LDO3_SUS = common dso_local global i32 0, align 4
@ACT8865_LDO4_SUS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32)* @act8865_set_suspend_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @act8865_set_suspend_state(%struct.regulator_dev* %0, i32 %1) #0 {
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
  %11 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %10, i32 0, i32 1
  %12 = load %struct.regmap*, %struct.regmap** %11, align 8
  store %struct.regmap* %12, %struct.regmap** %6, align 8
  %13 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %14 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  switch i32 %18, label %33 [
    i32 134, label %19
    i32 133, label %21
    i32 132, label %23
    i32 131, label %25
    i32 130, label %27
    i32 129, label %29
    i32 128, label %31
  ]

19:                                               ; preds = %2
  %20 = load i32, i32* @ACT8865_DCDC1_SUS, align 4
  store i32 %20, i32* %8, align 4
  store i32 168, i32* %9, align 4
  br label %36

21:                                               ; preds = %2
  %22 = load i32, i32* @ACT8865_DCDC2_SUS, align 4
  store i32 %22, i32* %8, align 4
  store i32 168, i32* %9, align 4
  br label %36

23:                                               ; preds = %2
  %24 = load i32, i32* @ACT8865_DCDC3_SUS, align 4
  store i32 %24, i32* %8, align 4
  store i32 168, i32* %9, align 4
  br label %36

25:                                               ; preds = %2
  %26 = load i32, i32* @ACT8865_LDO1_SUS, align 4
  store i32 %26, i32* %8, align 4
  store i32 232, i32* %9, align 4
  br label %36

27:                                               ; preds = %2
  %28 = load i32, i32* @ACT8865_LDO2_SUS, align 4
  store i32 %28, i32* %8, align 4
  store i32 232, i32* %9, align 4
  br label %36

29:                                               ; preds = %2
  %30 = load i32, i32* @ACT8865_LDO3_SUS, align 4
  store i32 %30, i32* %8, align 4
  store i32 232, i32* %9, align 4
  br label %36

31:                                               ; preds = %2
  %32 = load i32, i32* @ACT8865_LDO4_SUS, align 4
  store i32 %32, i32* %8, align 4
  store i32 232, i32* %9, align 4
  br label %36

33:                                               ; preds = %2
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %48

36:                                               ; preds = %31, %29, %27, %25, %23, %21, %19
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = call i32 @BIT(i32 4)
  %41 = load i32, i32* %9, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %9, align 4
  br label %43

43:                                               ; preds = %39, %36
  %44 = load %struct.regmap*, %struct.regmap** %6, align 8
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @regmap_write(%struct.regmap* %44, i32 %45, i32 %46)
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %43, %33
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @regmap_write(%struct.regmap*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
