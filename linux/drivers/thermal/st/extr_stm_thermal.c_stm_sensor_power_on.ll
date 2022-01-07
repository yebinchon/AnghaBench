; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/st/extr_stm_thermal.c_stm_sensor_power_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/st/extr_stm_thermal.c_stm_sensor_power_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm_thermal_sensor = type { i64 }

@DTS_CFGR1_OFFSET = common dso_local global i64 0, align 8
@TS1_EN = common dso_local global i32 0, align 4
@DTS_SR_OFFSET = common dso_local global i64 0, align 8
@TS_RDY = common dso_local global i32 0, align 4
@STARTUP_TIME = common dso_local global i32 0, align 4
@POLL_TIMEOUT = common dso_local global i32 0, align 4
@TS1_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stm_thermal_sensor*)* @stm_sensor_power_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm_sensor_power_on(%struct.stm_thermal_sensor* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stm_thermal_sensor*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.stm_thermal_sensor* %0, %struct.stm_thermal_sensor** %3, align 8
  %6 = load %struct.stm_thermal_sensor*, %struct.stm_thermal_sensor** %3, align 8
  %7 = getelementptr inbounds %struct.stm_thermal_sensor, %struct.stm_thermal_sensor* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @DTS_CFGR1_OFFSET, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i32 @readl_relaxed(i64 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* @TS1_EN, align 4
  %13 = load i32, i32* %5, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.stm_thermal_sensor*, %struct.stm_thermal_sensor** %3, align 8
  %17 = getelementptr inbounds %struct.stm_thermal_sensor, %struct.stm_thermal_sensor* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @DTS_CFGR1_OFFSET, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @writel_relaxed(i32 %15, i64 %20)
  %22 = load %struct.stm_thermal_sensor*, %struct.stm_thermal_sensor** %3, align 8
  %23 = getelementptr inbounds %struct.stm_thermal_sensor, %struct.stm_thermal_sensor* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @DTS_SR_OFFSET, align 8
  %26 = add nsw i64 %24, %25
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @TS_RDY, align 4
  %30 = and i32 %28, %29
  %31 = load i32, i32* @STARTUP_TIME, align 4
  %32 = load i32, i32* @POLL_TIMEOUT, align 4
  %33 = call i32 @readl_poll_timeout(i64 %26, i32 %27, i32 %30, i32 %31, i32 %32)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %1
  %37 = load i32, i32* %4, align 4
  store i32 %37, i32* %2, align 4
  br label %55

38:                                               ; preds = %1
  %39 = load %struct.stm_thermal_sensor*, %struct.stm_thermal_sensor** %3, align 8
  %40 = getelementptr inbounds %struct.stm_thermal_sensor, %struct.stm_thermal_sensor* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @DTS_CFGR1_OFFSET, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @readl_relaxed(i64 %43)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* @TS1_START, align 4
  %46 = load i32, i32* %5, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = load %struct.stm_thermal_sensor*, %struct.stm_thermal_sensor** %3, align 8
  %50 = getelementptr inbounds %struct.stm_thermal_sensor, %struct.stm_thermal_sensor* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @DTS_CFGR1_OFFSET, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i32 @writel_relaxed(i32 %48, i64 %53)
  store i32 0, i32* %2, align 4
  br label %55

55:                                               ; preds = %38, %36
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @readl_poll_timeout(i64, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
