; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_rk808-regulator.c_rk817_set_suspend_enable_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_rk808-regulator.c_rk817_set_suspend_enable_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }

@RK817_ID_DCDC1 = common dso_local global i32 0, align 4
@RK817_ID_DCDC4 = common dso_local global i32 0, align 4
@RK817_ID_LDO1 = common dso_local global i32 0, align 4
@RK817_ID_LDO8 = common dso_local global i32 0, align 4
@RK817_ID_LDO9 = common dso_local global i32 0, align 4
@RK809_ID_SW2 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32)* @rk817_set_suspend_enable_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rk817_set_suspend_enable_ctrl(%struct.regulator_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regulator_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %12 = call i32 @rdev_get_id(%struct.regulator_dev* %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @RK817_ID_DCDC1, align 4
  %15 = icmp sge i32 %13, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @RK817_ID_DCDC4, align 4
  %19 = icmp sle i32 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load i32, i32* %7, align 4
  store i32 %21, i32* %8, align 4
  br label %53

22:                                               ; preds = %16, %2
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @RK817_ID_LDO1, align 4
  %25 = icmp sge i32 %23, %24
  br i1 %25, label %26, label %35

26:                                               ; preds = %22
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @RK817_ID_LDO8, align 4
  %29 = icmp sle i32 %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %26
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @RK817_ID_LDO1, align 4
  %33 = sub nsw i32 %31, %32
  %34 = add nsw i32 8, %33
  store i32 %34, i32* %8, align 4
  br label %52

35:                                               ; preds = %26, %22
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @RK817_ID_LDO9, align 4
  %38 = icmp sge i32 %36, %37
  br i1 %38, label %39, label %48

39:                                               ; preds = %35
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @RK809_ID_SW2, align 4
  %42 = icmp sle i32 %40, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %39
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @RK817_ID_LDO9, align 4
  %46 = sub nsw i32 %44, %45
  %47 = add nsw i32 4, %46
  store i32 %47, i32* %8, align 4
  br label %51

48:                                               ; preds = %39, %35
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %73

51:                                               ; preds = %43
  br label %52

52:                                               ; preds = %51, %30
  br label %53

53:                                               ; preds = %52, %20
  %54 = load i32, i32* %8, align 4
  %55 = udiv i32 %54, 8
  %56 = call i32 @RK817_POWER_SLP_EN_REG(i32 %55)
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %8, align 4
  %58 = urem i32 %57, 8
  %59 = call i32 @BIT(i32 %58)
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %5, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %53
  %63 = load i32, i32* %9, align 4
  store i32 %63, i32* %10, align 4
  br label %65

64:                                               ; preds = %53
  store i32 0, i32* %10, align 4
  br label %65

65:                                               ; preds = %64, %62
  %66 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %67 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* %10, align 4
  %72 = call i32 @regmap_update_bits(i32 %68, i32 %69, i32 %70, i32 %71)
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %65, %48
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @rdev_get_id(%struct.regulator_dev*) #1

declare dso_local i32 @RK817_POWER_SLP_EN_REG(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
