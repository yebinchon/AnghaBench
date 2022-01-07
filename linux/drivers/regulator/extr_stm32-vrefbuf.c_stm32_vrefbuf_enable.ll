; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_stm32-vrefbuf.c_stm32_vrefbuf_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_stm32-vrefbuf.c_stm32_vrefbuf_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.stm32_vrefbuf = type { i32, i64 }

@STM32_VREFBUF_CSR = common dso_local global i64 0, align 8
@STM32_HIZ = common dso_local global i32 0, align 4
@STM32_ENVR = common dso_local global i32 0, align 4
@STM32_VRR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"stm32 vrefbuf timed out!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*)* @stm32_vrefbuf_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_vrefbuf_enable(%struct.regulator_dev* %0) #0 {
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
  br label %86

21:                                               ; preds = %1
  %22 = load %struct.stm32_vrefbuf*, %struct.stm32_vrefbuf** %4, align 8
  %23 = getelementptr inbounds %struct.stm32_vrefbuf, %struct.stm32_vrefbuf* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @STM32_VREFBUF_CSR, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @readl_relaxed(i64 %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @STM32_HIZ, align 4
  %30 = xor i32 %29, -1
  %31 = and i32 %28, %30
  %32 = load i32, i32* @STM32_ENVR, align 4
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
  %42 = getelementptr inbounds %struct.stm32_vrefbuf, %struct.stm32_vrefbuf* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @STM32_VREFBUF_CSR, align 8
  %45 = add nsw i64 %43, %44
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @STM32_VRR, align 4
  %49 = and i32 %47, %48
  %50 = call i32 @readl_poll_timeout(i64 %45, i32 %46, i32 %49, i32 650, i32 10000)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %76

53:                                               ; preds = %21
  %54 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %55 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %54, i32 0, i32 0
  %56 = call i32 @dev_err(i32* %55, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %57 = load %struct.stm32_vrefbuf*, %struct.stm32_vrefbuf** %4, align 8
  %58 = getelementptr inbounds %struct.stm32_vrefbuf, %struct.stm32_vrefbuf* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @STM32_VREFBUF_CSR, align 8
  %61 = add nsw i64 %59, %60
  %62 = call i32 @readl_relaxed(i64 %61)
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* @STM32_ENVR, align 4
  %65 = xor i32 %64, -1
  %66 = and i32 %63, %65
  %67 = load i32, i32* @STM32_HIZ, align 4
  %68 = or i32 %66, %67
  store i32 %68, i32* %5, align 4
  %69 = load i32, i32* %5, align 4
  %70 = load %struct.stm32_vrefbuf*, %struct.stm32_vrefbuf** %4, align 8
  %71 = getelementptr inbounds %struct.stm32_vrefbuf, %struct.stm32_vrefbuf* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @STM32_VREFBUF_CSR, align 8
  %74 = add nsw i64 %72, %73
  %75 = call i32 @writel_relaxed(i32 %69, i64 %74)
  br label %76

76:                                               ; preds = %53, %21
  %77 = load %struct.stm32_vrefbuf*, %struct.stm32_vrefbuf** %4, align 8
  %78 = getelementptr inbounds %struct.stm32_vrefbuf, %struct.stm32_vrefbuf* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @pm_runtime_mark_last_busy(i32 %79)
  %81 = load %struct.stm32_vrefbuf*, %struct.stm32_vrefbuf** %4, align 8
  %82 = getelementptr inbounds %struct.stm32_vrefbuf, %struct.stm32_vrefbuf* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @pm_runtime_put_autosuspend(i32 %83)
  %85 = load i32, i32* %6, align 4
  store i32 %85, i32* %2, align 4
  br label %86

86:                                               ; preds = %76, %15
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local %struct.stm32_vrefbuf* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @pm_runtime_put_noidle(i32) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @readl_poll_timeout(i64, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
