; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_stm32-vrefbuf.c_stm32_vrefbuf_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_stm32-vrefbuf.c_stm32_vrefbuf_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.stm32_vrefbuf = type { i32, i64 }

@STM32_VREFBUF_CSR = common dso_local global i64 0, align 8
@STM32_ENVR = common dso_local global i32 0, align 4
@STM32_HIZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*)* @stm32_vrefbuf_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_vrefbuf_disable(%struct.regulator_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.regulator_dev*, align 8
  %4 = alloca %struct.stm32_vrefbuf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %3, align 8
  %7 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %8 = call %struct.stm32_vrefbuf* @rdev_get_drvdata(%struct.regulator_dev* %7)
  store %struct.stm32_vrefbuf* %8, %struct.stm32_vrefbuf** %4, align 8
  %9 = load %struct.stm32_vrefbuf*, %struct.stm32_vrefbuf** %4, align 8
  %10 = getelementptr inbounds %struct.stm32_vrefbuf, %struct.stm32_vrefbuf* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @pm_runtime_get_sync(i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = load %struct.stm32_vrefbuf*, %struct.stm32_vrefbuf** %4, align 8
  %17 = getelementptr inbounds %struct.stm32_vrefbuf, %struct.stm32_vrefbuf* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @pm_runtime_put_noidle(i32 %18)
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %2, align 4
  br label %49

21:                                               ; preds = %1
  %22 = load %struct.stm32_vrefbuf*, %struct.stm32_vrefbuf** %4, align 8
  %23 = getelementptr inbounds %struct.stm32_vrefbuf, %struct.stm32_vrefbuf* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @STM32_VREFBUF_CSR, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @readl_relaxed(i64 %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @STM32_ENVR, align 4
  %30 = xor i32 %29, -1
  %31 = and i32 %28, %30
  %32 = load i32, i32* @STM32_HIZ, align 4
  %33 = or i32 %31, %32
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.stm32_vrefbuf*, %struct.stm32_vrefbuf** %4, align 8
  %36 = getelementptr inbounds %struct.stm32_vrefbuf, %struct.stm32_vrefbuf* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @STM32_VREFBUF_CSR, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @writel_relaxed(i32 %34, i64 %39)
  %41 = load %struct.stm32_vrefbuf*, %struct.stm32_vrefbuf** %4, align 8
  %42 = getelementptr inbounds %struct.stm32_vrefbuf, %struct.stm32_vrefbuf* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @pm_runtime_mark_last_busy(i32 %43)
  %45 = load %struct.stm32_vrefbuf*, %struct.stm32_vrefbuf** %4, align 8
  %46 = getelementptr inbounds %struct.stm32_vrefbuf, %struct.stm32_vrefbuf* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @pm_runtime_put_autosuspend(i32 %47)
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %21, %15
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local %struct.stm32_vrefbuf* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @pm_runtime_put_noidle(i32) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
