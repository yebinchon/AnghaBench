; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_mc13783-regulator.c_mc13783_powermisc_rmw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_mc13783-regulator.c_mc13783_powermisc_rmw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mc13xxx_regulator_priv = type { i32, %struct.mc13xxx* }
%struct.mc13xxx = type { i32 }

@MC13783_REG_POWERMISC = common dso_local global i32 0, align 4
@MC13783_REG_POWERMISC_PWGTSPI_M = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mc13xxx_regulator_priv*, i32, i32)* @mc13783_powermisc_rmw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mc13783_powermisc_rmw(%struct.mc13xxx_regulator_priv* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mc13xxx_regulator_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mc13xxx*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mc13xxx_regulator_priv* %0, %struct.mc13xxx_regulator_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.mc13xxx_regulator_priv*, %struct.mc13xxx_regulator_priv** %4, align 8
  %11 = getelementptr inbounds %struct.mc13xxx_regulator_priv, %struct.mc13xxx_regulator_priv* %10, i32 0, i32 1
  %12 = load %struct.mc13xxx*, %struct.mc13xxx** %11, align 8
  store %struct.mc13xxx* %12, %struct.mc13xxx** %7, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %5, align 4
  %15 = xor i32 %14, -1
  %16 = and i32 %13, %15
  %17 = call i32 @BUG_ON(i32 %16)
  %18 = load %struct.mc13xxx_regulator_priv*, %struct.mc13xxx_regulator_priv** %4, align 8
  %19 = getelementptr inbounds %struct.mc13xxx_regulator_priv, %struct.mc13xxx_regulator_priv* %18, i32 0, i32 1
  %20 = load %struct.mc13xxx*, %struct.mc13xxx** %19, align 8
  %21 = call i32 @mc13xxx_lock(%struct.mc13xxx* %20)
  %22 = load %struct.mc13xxx*, %struct.mc13xxx** %7, align 8
  %23 = load i32, i32* @MC13783_REG_POWERMISC, align 4
  %24 = call i32 @mc13xxx_reg_read(%struct.mc13xxx* %22, i32 %23, i32* %9)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %3
  br label %62

28:                                               ; preds = %3
  %29 = load %struct.mc13xxx_regulator_priv*, %struct.mc13xxx_regulator_priv** %4, align 8
  %30 = getelementptr inbounds %struct.mc13xxx_regulator_priv, %struct.mc13xxx_regulator_priv* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = xor i32 %32, -1
  %34 = and i32 %31, %33
  %35 = load i32, i32* %6, align 4
  %36 = or i32 %34, %35
  %37 = load %struct.mc13xxx_regulator_priv*, %struct.mc13xxx_regulator_priv** %4, align 8
  %38 = getelementptr inbounds %struct.mc13xxx_regulator_priv, %struct.mc13xxx_regulator_priv* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load i32, i32* @MC13783_REG_POWERMISC_PWGTSPI_M, align 4
  %40 = load %struct.mc13xxx_regulator_priv*, %struct.mc13xxx_regulator_priv** %4, align 8
  %41 = getelementptr inbounds %struct.mc13xxx_regulator_priv, %struct.mc13xxx_regulator_priv* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = and i32 %42, %39
  store i32 %43, i32* %41, align 8
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %5, align 4
  %46 = xor i32 %45, -1
  %47 = and i32 %44, %46
  %48 = load i32, i32* %6, align 4
  %49 = or i32 %47, %48
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* @MC13783_REG_POWERMISC_PWGTSPI_M, align 4
  %52 = xor i32 %51, -1
  %53 = and i32 %50, %52
  %54 = load %struct.mc13xxx_regulator_priv*, %struct.mc13xxx_regulator_priv** %4, align 8
  %55 = getelementptr inbounds %struct.mc13xxx_regulator_priv, %struct.mc13xxx_regulator_priv* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = or i32 %53, %56
  store i32 %57, i32* %9, align 4
  %58 = load %struct.mc13xxx*, %struct.mc13xxx** %7, align 8
  %59 = load i32, i32* @MC13783_REG_POWERMISC, align 4
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @mc13xxx_reg_write(%struct.mc13xxx* %58, i32 %59, i32 %60)
  store i32 %61, i32* %8, align 4
  br label %62

62:                                               ; preds = %28, %27
  %63 = load %struct.mc13xxx_regulator_priv*, %struct.mc13xxx_regulator_priv** %4, align 8
  %64 = getelementptr inbounds %struct.mc13xxx_regulator_priv, %struct.mc13xxx_regulator_priv* %63, i32 0, i32 1
  %65 = load %struct.mc13xxx*, %struct.mc13xxx** %64, align 8
  %66 = call i32 @mc13xxx_unlock(%struct.mc13xxx* %65)
  %67 = load i32, i32* %8, align 4
  ret i32 %67
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @mc13xxx_lock(%struct.mc13xxx*) #1

declare dso_local i32 @mc13xxx_reg_read(%struct.mc13xxx*, i32, i32*) #1

declare dso_local i32 @mc13xxx_reg_write(%struct.mc13xxx*, i32, i32) #1

declare dso_local i32 @mc13xxx_unlock(%struct.mc13xxx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
