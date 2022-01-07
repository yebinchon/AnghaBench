; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_mc13xxx-regulator-core.c_mc13xxx_regulator_set_voltage_sel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_mc13xxx-regulator-core.c_mc13xxx_regulator_set_voltage_sel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.mc13xxx_regulator_priv = type { i32, %struct.mc13xxx_regulator* }
%struct.mc13xxx_regulator = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32)* @mc13xxx_regulator_set_voltage_sel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mc13xxx_regulator_set_voltage_sel(%struct.regulator_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.regulator_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mc13xxx_regulator_priv*, align 8
  %6 = alloca %struct.mc13xxx_regulator*, align 8
  %7 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %9 = call %struct.mc13xxx_regulator_priv* @rdev_get_drvdata(%struct.regulator_dev* %8)
  store %struct.mc13xxx_regulator_priv* %9, %struct.mc13xxx_regulator_priv** %5, align 8
  %10 = load %struct.mc13xxx_regulator_priv*, %struct.mc13xxx_regulator_priv** %5, align 8
  %11 = getelementptr inbounds %struct.mc13xxx_regulator_priv, %struct.mc13xxx_regulator_priv* %10, i32 0, i32 1
  %12 = load %struct.mc13xxx_regulator*, %struct.mc13xxx_regulator** %11, align 8
  store %struct.mc13xxx_regulator* %12, %struct.mc13xxx_regulator** %6, align 8
  %13 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %14 = call i32 @rdev_get_id(%struct.regulator_dev* %13)
  store i32 %14, i32* %7, align 4
  %15 = load %struct.mc13xxx_regulator_priv*, %struct.mc13xxx_regulator_priv** %5, align 8
  %16 = getelementptr inbounds %struct.mc13xxx_regulator_priv, %struct.mc13xxx_regulator_priv* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.mc13xxx_regulator*, %struct.mc13xxx_regulator** %6, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.mc13xxx_regulator, %struct.mc13xxx_regulator* %18, i64 %20
  %22 = getelementptr inbounds %struct.mc13xxx_regulator, %struct.mc13xxx_regulator* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.mc13xxx_regulator*, %struct.mc13xxx_regulator** %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.mc13xxx_regulator, %struct.mc13xxx_regulator* %24, i64 %26
  %28 = getelementptr inbounds %struct.mc13xxx_regulator, %struct.mc13xxx_regulator* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %4, align 4
  %31 = load %struct.mc13xxx_regulator*, %struct.mc13xxx_regulator** %6, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.mc13xxx_regulator, %struct.mc13xxx_regulator* %31, i64 %33
  %35 = getelementptr inbounds %struct.mc13xxx_regulator, %struct.mc13xxx_regulator* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = shl i32 %30, %36
  %38 = call i32 @mc13xxx_reg_rmw(i32 %17, i32 %23, i32 %29, i32 %37)
  ret i32 %38
}

declare dso_local %struct.mc13xxx_regulator_priv* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @rdev_get_id(%struct.regulator_dev*) #1

declare dso_local i32 @mc13xxx_reg_rmw(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
