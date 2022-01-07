; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_stm32-pwr.c_stm32_pwr_reg_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_stm32-pwr.c_stm32_pwr_reg_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.stm32_pwr_reg = type { i64 }

@REG_PWR_CR3 = common dso_local global i64 0, align 8
@stm32_pwr_reg_is_ready = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"regulator enable timed out!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*)* @stm32_pwr_reg_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_pwr_reg_enable(%struct.regulator_dev* %0) #0 {
  %2 = alloca %struct.regulator_dev*, align 8
  %3 = alloca %struct.stm32_pwr_reg*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %2, align 8
  %6 = load %struct.regulator_dev*, %struct.regulator_dev** %2, align 8
  %7 = call %struct.stm32_pwr_reg* @rdev_get_drvdata(%struct.regulator_dev* %6)
  store %struct.stm32_pwr_reg* %7, %struct.stm32_pwr_reg** %3, align 8
  %8 = load %struct.stm32_pwr_reg*, %struct.stm32_pwr_reg** %3, align 8
  %9 = getelementptr inbounds %struct.stm32_pwr_reg, %struct.stm32_pwr_reg* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @REG_PWR_CR3, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i32 @readl_relaxed(i64 %12)
  store i32 %13, i32* %5, align 4
  %14 = load %struct.regulator_dev*, %struct.regulator_dev** %2, align 8
  %15 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %5, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.stm32_pwr_reg*, %struct.stm32_pwr_reg** %3, align 8
  %23 = getelementptr inbounds %struct.stm32_pwr_reg, %struct.stm32_pwr_reg* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @REG_PWR_CR3, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @writel_relaxed(i32 %21, i64 %26)
  %28 = load i32, i32* @stm32_pwr_reg_is_ready, align 4
  %29 = load %struct.regulator_dev*, %struct.regulator_dev** %2, align 8
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @readx_poll_timeout(i32 %28, %struct.regulator_dev* %29, i32 %30, i32 %31, i32 100, i32 20000)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %1
  %36 = load %struct.regulator_dev*, %struct.regulator_dev** %2, align 8
  %37 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %36, i32 0, i32 0
  %38 = call i32 @dev_err(i32* %37, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %39

39:                                               ; preds = %35, %1
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local %struct.stm32_pwr_reg* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @readx_poll_timeout(i32, %struct.regulator_dev*, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
