; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_stm32-vrefbuf.c_stm32_vrefbuf_is_enabled.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_stm32-vrefbuf.c_stm32_vrefbuf_is_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.stm32_vrefbuf = type { i32, i64 }

@STM32_VREFBUF_CSR = common dso_local global i64 0, align 8
@STM32_ENVR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*)* @stm32_vrefbuf_is_enabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_vrefbuf_is_enabled(%struct.regulator_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.regulator_dev*, align 8
  %4 = alloca %struct.stm32_vrefbuf*, align 8
  %5 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %3, align 8
  %6 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %7 = call %struct.stm32_vrefbuf* @rdev_get_drvdata(%struct.regulator_dev* %6)
  store %struct.stm32_vrefbuf* %7, %struct.stm32_vrefbuf** %4, align 8
  %8 = load %struct.stm32_vrefbuf*, %struct.stm32_vrefbuf** %4, align 8
  %9 = getelementptr inbounds %struct.stm32_vrefbuf, %struct.stm32_vrefbuf* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @pm_runtime_get_sync(i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %1
  %15 = load %struct.stm32_vrefbuf*, %struct.stm32_vrefbuf** %4, align 8
  %16 = getelementptr inbounds %struct.stm32_vrefbuf, %struct.stm32_vrefbuf* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @pm_runtime_put_noidle(i32 %17)
  %19 = load i32, i32* %5, align 4
  store i32 %19, i32* %2, align 4
  br label %38

20:                                               ; preds = %1
  %21 = load %struct.stm32_vrefbuf*, %struct.stm32_vrefbuf** %4, align 8
  %22 = getelementptr inbounds %struct.stm32_vrefbuf, %struct.stm32_vrefbuf* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @STM32_VREFBUF_CSR, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @readl_relaxed(i64 %25)
  %27 = load i32, i32* @STM32_ENVR, align 4
  %28 = and i32 %26, %27
  store i32 %28, i32* %5, align 4
  %29 = load %struct.stm32_vrefbuf*, %struct.stm32_vrefbuf** %4, align 8
  %30 = getelementptr inbounds %struct.stm32_vrefbuf, %struct.stm32_vrefbuf* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @pm_runtime_mark_last_busy(i32 %31)
  %33 = load %struct.stm32_vrefbuf*, %struct.stm32_vrefbuf** %4, align 8
  %34 = getelementptr inbounds %struct.stm32_vrefbuf, %struct.stm32_vrefbuf* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @pm_runtime_put_autosuspend(i32 %35)
  %37 = load i32, i32* %5, align 4
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %20, %14
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local %struct.stm32_vrefbuf* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @pm_runtime_put_noidle(i32) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
