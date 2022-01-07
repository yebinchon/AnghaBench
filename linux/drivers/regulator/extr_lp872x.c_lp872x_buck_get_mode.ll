; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_lp872x.c_lp872x_buck_get_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_lp872x.c_lp872x_buck_get_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.lp872x = type { i32 }

@LP8720_BUCK_VOUT2 = common dso_local global i32 0, align 4
@LP8720_BUCK_FPWM_M = common dso_local global i32 0, align 4
@LP8725_BUCK_CTRL = common dso_local global i32 0, align 4
@LP8725_BUCK1_FPWM_M = common dso_local global i32 0, align 4
@LP8725_BUCK2_FPWM_M = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@REGULATOR_MODE_FAST = common dso_local global i32 0, align 4
@REGULATOR_MODE_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*)* @lp872x_buck_get_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lp872x_buck_get_mode(%struct.regulator_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.regulator_dev*, align 8
  %4 = alloca %struct.lp872x*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %3, align 8
  %10 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %11 = call %struct.lp872x* @rdev_get_drvdata(%struct.regulator_dev* %10)
  store %struct.lp872x* %11, %struct.lp872x** %4, align 8
  %12 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %13 = call i32 @rdev_get_id(%struct.regulator_dev* %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  switch i32 %14, label %24 [
    i32 130, label %15
    i32 129, label %18
    i32 128, label %21
  ]

15:                                               ; preds = %1
  %16 = load i32, i32* @LP8720_BUCK_VOUT2, align 4
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* @LP8720_BUCK_FPWM_M, align 4
  store i32 %17, i32* %7, align 4
  br label %27

18:                                               ; preds = %1
  %19 = load i32, i32* @LP8725_BUCK_CTRL, align 4
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* @LP8725_BUCK1_FPWM_M, align 4
  store i32 %20, i32* %7, align 4
  br label %27

21:                                               ; preds = %1
  %22 = load i32, i32* @LP8725_BUCK_CTRL, align 4
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* @LP8725_BUCK2_FPWM_M, align 4
  store i32 %23, i32* %7, align 4
  br label %27

24:                                               ; preds = %1
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %46

27:                                               ; preds = %21, %18, %15
  %28 = load %struct.lp872x*, %struct.lp872x** %4, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @lp872x_read_byte(%struct.lp872x* %28, i32 %29, i32* %8)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* %9, align 4
  store i32 %34, i32* %2, align 4
  br label %46

35:                                               ; preds = %27
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %7, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32, i32* @REGULATOR_MODE_FAST, align 4
  br label %44

42:                                               ; preds = %35
  %43 = load i32, i32* @REGULATOR_MODE_NORMAL, align 4
  br label %44

44:                                               ; preds = %42, %40
  %45 = phi i32 [ %41, %40 ], [ %43, %42 ]
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %44, %33, %24
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local %struct.lp872x* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @rdev_get_id(%struct.regulator_dev*) #1

declare dso_local i32 @lp872x_read_byte(%struct.lp872x*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
