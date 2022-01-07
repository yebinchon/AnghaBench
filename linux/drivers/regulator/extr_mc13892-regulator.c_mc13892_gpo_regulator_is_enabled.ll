; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_mc13892-regulator.c_mc13892_gpo_regulator_is_enabled.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_mc13892-regulator.c_mc13892_gpo_regulator_is_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.regulator_dev = type { i32 }
%struct.mc13xxx_regulator_priv = type { i32, i32 }

@mc13892_regulators = common dso_local global %struct.TYPE_2__* null, align 8
@MC13892_POWERMISC_PWGTSPI_M = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*)* @mc13892_gpo_regulator_is_enabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mc13892_gpo_regulator_is_enabled(%struct.regulator_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.regulator_dev*, align 8
  %4 = alloca %struct.mc13xxx_regulator_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %3, align 8
  %8 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %9 = call %struct.mc13xxx_regulator_priv* @rdev_get_drvdata(%struct.regulator_dev* %8)
  store %struct.mc13xxx_regulator_priv* %9, %struct.mc13xxx_regulator_priv** %4, align 8
  %10 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %11 = call i32 @rdev_get_id(%struct.regulator_dev* %10)
  store i32 %11, i32* %6, align 4
  %12 = load %struct.mc13xxx_regulator_priv*, %struct.mc13xxx_regulator_priv** %4, align 8
  %13 = getelementptr inbounds %struct.mc13xxx_regulator_priv, %struct.mc13xxx_regulator_priv* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @mc13xxx_lock(i32 %14)
  %16 = load %struct.mc13xxx_regulator_priv*, %struct.mc13xxx_regulator_priv** %4, align 8
  %17 = getelementptr inbounds %struct.mc13xxx_regulator_priv, %struct.mc13xxx_regulator_priv* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mc13892_regulators, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @mc13xxx_reg_read(i32 %18, i32 %24, i32* %7)
  store i32 %25, i32* %5, align 4
  %26 = load %struct.mc13xxx_regulator_priv*, %struct.mc13xxx_regulator_priv** %4, align 8
  %27 = getelementptr inbounds %struct.mc13xxx_regulator_priv, %struct.mc13xxx_regulator_priv* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @mc13xxx_unlock(i32 %28)
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %1
  %33 = load i32, i32* %5, align 4
  store i32 %33, i32* %2, align 4
  br label %55

34:                                               ; preds = %1
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @MC13892_POWERMISC_PWGTSPI_M, align 4
  %37 = xor i32 %36, -1
  %38 = and i32 %35, %37
  %39 = load %struct.mc13xxx_regulator_priv*, %struct.mc13xxx_regulator_priv** %4, align 8
  %40 = getelementptr inbounds %struct.mc13xxx_regulator_priv, %struct.mc13xxx_regulator_priv* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @MC13892_POWERMISC_PWGTSPI_M, align 4
  %43 = xor i32 %41, %42
  %44 = or i32 %38, %43
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mc13892_regulators, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %45, %51
  %53 = icmp ne i32 %52, 0
  %54 = zext i1 %53 to i32
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %34, %32
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local %struct.mc13xxx_regulator_priv* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @rdev_get_id(%struct.regulator_dev*) #1

declare dso_local i32 @mc13xxx_lock(i32) #1

declare dso_local i32 @mc13xxx_reg_read(i32, i32, i32*) #1

declare dso_local i32 @mc13xxx_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
