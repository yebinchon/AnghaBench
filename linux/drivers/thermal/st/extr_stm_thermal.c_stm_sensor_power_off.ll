; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/st/extr_stm_thermal.c_stm_sensor_power_off.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/st/extr_stm_thermal.c_stm_sensor_power_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm_thermal_sensor = type { i64 }

@DTS_CFGR1_OFFSET = common dso_local global i64 0, align 8
@TS1_START = common dso_local global i32 0, align 4
@STARTUP_TIME = common dso_local global i32 0, align 4
@POLL_TIMEOUT = common dso_local global i32 0, align 4
@TS1_EN = common dso_local global i32 0, align 4
@DTS_SR_OFFSET = common dso_local global i64 0, align 8
@TS_RDY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stm_thermal_sensor*)* @stm_sensor_power_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm_sensor_power_off(%struct.stm_thermal_sensor* %0) #0 {
  %2 = alloca %struct.stm_thermal_sensor*, align 8
  %3 = alloca i32, align 4
  store %struct.stm_thermal_sensor* %0, %struct.stm_thermal_sensor** %2, align 8
  %4 = load %struct.stm_thermal_sensor*, %struct.stm_thermal_sensor** %2, align 8
  %5 = getelementptr inbounds %struct.stm_thermal_sensor, %struct.stm_thermal_sensor* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @DTS_CFGR1_OFFSET, align 8
  %8 = add nsw i64 %6, %7
  %9 = call i32 @readl_relaxed(i64 %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* @TS1_START, align 4
  %11 = xor i32 %10, -1
  %12 = load i32, i32* %3, align 4
  %13 = and i32 %12, %11
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = load %struct.stm_thermal_sensor*, %struct.stm_thermal_sensor** %2, align 8
  %16 = getelementptr inbounds %struct.stm_thermal_sensor, %struct.stm_thermal_sensor* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @DTS_CFGR1_OFFSET, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @writel_relaxed(i32 %14, i64 %19)
  %21 = load i32, i32* @STARTUP_TIME, align 4
  %22 = load i32, i32* @POLL_TIMEOUT, align 4
  %23 = call i32 @usleep_range(i32 %21, i32 %22)
  %24 = load %struct.stm_thermal_sensor*, %struct.stm_thermal_sensor** %2, align 8
  %25 = getelementptr inbounds %struct.stm_thermal_sensor, %struct.stm_thermal_sensor* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @DTS_CFGR1_OFFSET, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @readl_relaxed(i64 %28)
  store i32 %29, i32* %3, align 4
  %30 = load i32, i32* @TS1_EN, align 4
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %3, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %3, align 4
  %34 = load i32, i32* %3, align 4
  %35 = load %struct.stm_thermal_sensor*, %struct.stm_thermal_sensor** %2, align 8
  %36 = getelementptr inbounds %struct.stm_thermal_sensor, %struct.stm_thermal_sensor* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @DTS_CFGR1_OFFSET, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @writel_relaxed(i32 %34, i64 %39)
  %41 = load %struct.stm_thermal_sensor*, %struct.stm_thermal_sensor** %2, align 8
  %42 = getelementptr inbounds %struct.stm_thermal_sensor, %struct.stm_thermal_sensor* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @DTS_SR_OFFSET, align 8
  %45 = add nsw i64 %43, %44
  %46 = load i32, i32* %3, align 4
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* @TS_RDY, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  %53 = load i32, i32* @STARTUP_TIME, align 4
  %54 = load i32, i32* @POLL_TIMEOUT, align 4
  %55 = call i32 @readl_poll_timeout(i64 %45, i32 %46, i32 %52, i32 %53, i32 %54)
  ret i32 %55
}

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @readl_poll_timeout(i64, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
