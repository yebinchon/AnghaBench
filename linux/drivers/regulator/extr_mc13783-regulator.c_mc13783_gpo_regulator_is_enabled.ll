; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_mc13783-regulator.c_mc13783_gpo_regulator_is_enabled.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_mc13783-regulator.c_mc13783_gpo_regulator_is_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.mc13xxx_regulator_priv = type { i32, i32, %struct.mc13xxx_regulator* }
%struct.mc13xxx_regulator = type { i32, i32 }

@MC13783_REG_POWERMISC_PWGTSPI_M = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*)* @mc13783_gpo_regulator_is_enabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mc13783_gpo_regulator_is_enabled(%struct.regulator_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.regulator_dev*, align 8
  %4 = alloca %struct.mc13xxx_regulator_priv*, align 8
  %5 = alloca %struct.mc13xxx_regulator*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %3, align 8
  %9 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %10 = call %struct.mc13xxx_regulator_priv* @rdev_get_drvdata(%struct.regulator_dev* %9)
  store %struct.mc13xxx_regulator_priv* %10, %struct.mc13xxx_regulator_priv** %4, align 8
  %11 = load %struct.mc13xxx_regulator_priv*, %struct.mc13xxx_regulator_priv** %4, align 8
  %12 = getelementptr inbounds %struct.mc13xxx_regulator_priv, %struct.mc13xxx_regulator_priv* %11, i32 0, i32 2
  %13 = load %struct.mc13xxx_regulator*, %struct.mc13xxx_regulator** %12, align 8
  store %struct.mc13xxx_regulator* %13, %struct.mc13xxx_regulator** %5, align 8
  %14 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %15 = call i32 @rdev_get_id(%struct.regulator_dev* %14)
  store i32 %15, i32* %7, align 4
  %16 = load %struct.mc13xxx_regulator_priv*, %struct.mc13xxx_regulator_priv** %4, align 8
  %17 = getelementptr inbounds %struct.mc13xxx_regulator_priv, %struct.mc13xxx_regulator_priv* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @mc13xxx_lock(i32 %18)
  %20 = load %struct.mc13xxx_regulator_priv*, %struct.mc13xxx_regulator_priv** %4, align 8
  %21 = getelementptr inbounds %struct.mc13xxx_regulator_priv, %struct.mc13xxx_regulator_priv* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.mc13xxx_regulator*, %struct.mc13xxx_regulator** %5, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.mc13xxx_regulator, %struct.mc13xxx_regulator* %23, i64 %25
  %27 = getelementptr inbounds %struct.mc13xxx_regulator, %struct.mc13xxx_regulator* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @mc13xxx_reg_read(i32 %22, i32 %28, i32* %8)
  store i32 %29, i32* %6, align 4
  %30 = load %struct.mc13xxx_regulator_priv*, %struct.mc13xxx_regulator_priv** %4, align 8
  %31 = getelementptr inbounds %struct.mc13xxx_regulator_priv, %struct.mc13xxx_regulator_priv* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @mc13xxx_unlock(i32 %32)
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %1
  %37 = load i32, i32* %6, align 4
  store i32 %37, i32* %2, align 4
  br label %59

38:                                               ; preds = %1
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @MC13783_REG_POWERMISC_PWGTSPI_M, align 4
  %41 = xor i32 %40, -1
  %42 = and i32 %39, %41
  %43 = load %struct.mc13xxx_regulator_priv*, %struct.mc13xxx_regulator_priv** %4, align 8
  %44 = getelementptr inbounds %struct.mc13xxx_regulator_priv, %struct.mc13xxx_regulator_priv* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @MC13783_REG_POWERMISC_PWGTSPI_M, align 4
  %47 = xor i32 %45, %46
  %48 = or i32 %42, %47
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = load %struct.mc13xxx_regulator*, %struct.mc13xxx_regulator** %5, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.mc13xxx_regulator, %struct.mc13xxx_regulator* %50, i64 %52
  %54 = getelementptr inbounds %struct.mc13xxx_regulator, %struct.mc13xxx_regulator* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %49, %55
  %57 = icmp ne i32 %56, 0
  %58 = zext i1 %57 to i32
  store i32 %58, i32* %2, align 4
  br label %59

59:                                               ; preds = %38, %36
  %60 = load i32, i32* %2, align 4
  ret i32 %60
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
