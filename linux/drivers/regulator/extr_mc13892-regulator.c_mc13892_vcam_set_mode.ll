; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_mc13892-regulator.c_mc13892_vcam_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_mc13892-regulator.c_mc13892_vcam_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.regulator_dev = type { i32 }
%struct.mc13xxx_regulator_priv = type { i32 }

@REGULATOR_MODE_FAST = common dso_local global i32 0, align 4
@MC13892_REGULATORMODE1_VCAMCONFIGEN = common dso_local global i32 0, align 4
@mc13892_regulators = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32)* @mc13892_vcam_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mc13892_vcam_set_mode(%struct.regulator_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.regulator_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.mc13xxx_regulator_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %9 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %10 = call %struct.mc13xxx_regulator_priv* @rdev_get_drvdata(%struct.regulator_dev* %9)
  store %struct.mc13xxx_regulator_priv* %10, %struct.mc13xxx_regulator_priv** %6, align 8
  %11 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %12 = call i32 @rdev_get_id(%struct.regulator_dev* %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @REGULATOR_MODE_FAST, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @MC13892_REGULATORMODE1_VCAMCONFIGEN, align 4
  store i32 %17, i32* %5, align 4
  br label %18

18:                                               ; preds = %16, %2
  %19 = load %struct.mc13xxx_regulator_priv*, %struct.mc13xxx_regulator_priv** %6, align 8
  %20 = getelementptr inbounds %struct.mc13xxx_regulator_priv, %struct.mc13xxx_regulator_priv* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @mc13xxx_lock(i32 %21)
  %23 = load %struct.mc13xxx_regulator_priv*, %struct.mc13xxx_regulator_priv** %6, align 8
  %24 = getelementptr inbounds %struct.mc13xxx_regulator_priv, %struct.mc13xxx_regulator_priv* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mc13892_regulators, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @MC13892_REGULATORMODE1_VCAMCONFIGEN, align 4
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @mc13xxx_reg_rmw(i32 %25, i32 %31, i32 %32, i32 %33)
  store i32 %34, i32* %7, align 4
  %35 = load %struct.mc13xxx_regulator_priv*, %struct.mc13xxx_regulator_priv** %6, align 8
  %36 = getelementptr inbounds %struct.mc13xxx_regulator_priv, %struct.mc13xxx_regulator_priv* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @mc13xxx_unlock(i32 %37)
  %39 = load i32, i32* %7, align 4
  ret i32 %39
}

declare dso_local %struct.mc13xxx_regulator_priv* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @rdev_get_id(%struct.regulator_dev*) #1

declare dso_local i32 @mc13xxx_lock(i32) #1

declare dso_local i32 @mc13xxx_reg_rmw(i32, i32, i32, i32) #1

declare dso_local i32 @mc13xxx_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
