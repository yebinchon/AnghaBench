; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_stm32-vrefbuf.c_stm32_vrefbuf_set_voltage_sel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_stm32-vrefbuf.c_stm32_vrefbuf_set_voltage_sel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.stm32_vrefbuf = type { i32, i64 }

@STM32_VREFBUF_CSR = common dso_local global i64 0, align 8
@STM32_VRS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32)* @stm32_vrefbuf_set_voltage_sel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_vrefbuf_set_voltage_sel(%struct.regulator_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regulator_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.stm32_vrefbuf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %10 = call %struct.stm32_vrefbuf* @rdev_get_drvdata(%struct.regulator_dev* %9)
  store %struct.stm32_vrefbuf* %10, %struct.stm32_vrefbuf** %6, align 8
  %11 = load %struct.stm32_vrefbuf*, %struct.stm32_vrefbuf** %6, align 8
  %12 = getelementptr inbounds %struct.stm32_vrefbuf, %struct.stm32_vrefbuf* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @pm_runtime_get_sync(i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %2
  %18 = load %struct.stm32_vrefbuf*, %struct.stm32_vrefbuf** %6, align 8
  %19 = getelementptr inbounds %struct.stm32_vrefbuf, %struct.stm32_vrefbuf* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @pm_runtime_put_noidle(i32 %20)
  %22 = load i32, i32* %8, align 4
  store i32 %22, i32* %3, align 4
  br label %53

23:                                               ; preds = %2
  %24 = load %struct.stm32_vrefbuf*, %struct.stm32_vrefbuf** %6, align 8
  %25 = getelementptr inbounds %struct.stm32_vrefbuf, %struct.stm32_vrefbuf* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @STM32_VREFBUF_CSR, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @readl_relaxed(i64 %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @STM32_VRS, align 4
  %32 = xor i32 %31, -1
  %33 = and i32 %30, %32
  %34 = load i32, i32* @STM32_VRS, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @FIELD_PREP(i32 %34, i32 %35)
  %37 = or i32 %33, %36
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.stm32_vrefbuf*, %struct.stm32_vrefbuf** %6, align 8
  %40 = getelementptr inbounds %struct.stm32_vrefbuf, %struct.stm32_vrefbuf* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @STM32_VREFBUF_CSR, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @writel_relaxed(i32 %38, i64 %43)
  %45 = load %struct.stm32_vrefbuf*, %struct.stm32_vrefbuf** %6, align 8
  %46 = getelementptr inbounds %struct.stm32_vrefbuf, %struct.stm32_vrefbuf* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @pm_runtime_mark_last_busy(i32 %47)
  %49 = load %struct.stm32_vrefbuf*, %struct.stm32_vrefbuf** %6, align 8
  %50 = getelementptr inbounds %struct.stm32_vrefbuf, %struct.stm32_vrefbuf* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @pm_runtime_put_autosuspend(i32 %51)
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %23, %17
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local %struct.stm32_vrefbuf* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @pm_runtime_put_noidle(i32) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @FIELD_PREP(i32, i32) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
