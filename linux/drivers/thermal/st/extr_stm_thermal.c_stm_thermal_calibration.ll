; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/st/extr_stm_thermal.c_stm_thermal_calibration.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/st/extr_stm_thermal.c_stm_thermal_calibration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm_thermal_sensor = type { i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ONE_MHZ = common dso_local global i32 0, align 4
@DTS_CFGR1_OFFSET = common dso_local global i64 0, align 8
@HSREF_CLK_DIV_MASK = common dso_local global i32 0, align 4
@HSREF_CLK_DIV_POS = common dso_local global i32 0, align 4
@REFCLK_SEL = common dso_local global i32 0, align 4
@TS1_SMP_TIME_MASK = common dso_local global i32 0, align 4
@CALIBRATION_CONTROL = common dso_local global i32 0, align 4
@TS1_INTRIG_SEL_MASK = common dso_local global i32 0, align 4
@NO_HW_TRIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stm_thermal_sensor*)* @stm_thermal_calibration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm_thermal_calibration(%struct.stm_thermal_sensor* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stm_thermal_sensor*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.stm_thermal_sensor* %0, %struct.stm_thermal_sensor** %3, align 8
  %7 = load %struct.stm_thermal_sensor*, %struct.stm_thermal_sensor** %3, align 8
  %8 = getelementptr inbounds %struct.stm_thermal_sensor, %struct.stm_thermal_sensor* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @clk_get_rate(i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %72

16:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  %17 = load i32, i32* @ONE_MHZ, align 4
  %18 = load i32, i32* %5, align 4
  %19 = sdiv i32 %18, %17
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %16
  br label %23

23:                                               ; preds = %27, %22
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp sle i32 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load i32, i32* %6, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %6, align 4
  br label %23

30:                                               ; preds = %23
  br label %31

31:                                               ; preds = %30, %16
  %32 = load %struct.stm_thermal_sensor*, %struct.stm_thermal_sensor** %3, align 8
  %33 = getelementptr inbounds %struct.stm_thermal_sensor, %struct.stm_thermal_sensor* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @DTS_CFGR1_OFFSET, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @readl_relaxed(i64 %36)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* @HSREF_CLK_DIV_MASK, align 4
  %39 = xor i32 %38, -1
  %40 = load i32, i32* %4, align 4
  %41 = and i32 %40, %39
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @HSREF_CLK_DIV_POS, align 4
  %44 = shl i32 %42, %43
  %45 = load i32, i32* %4, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* @REFCLK_SEL, align 4
  %48 = xor i32 %47, -1
  %49 = load i32, i32* %4, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %4, align 4
  %51 = load i32, i32* @TS1_SMP_TIME_MASK, align 4
  %52 = load i32, i32* %4, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %4, align 4
  %54 = load i32, i32* @CALIBRATION_CONTROL, align 4
  %55 = xor i32 %54, -1
  %56 = load i32, i32* %4, align 4
  %57 = and i32 %56, %55
  store i32 %57, i32* %4, align 4
  %58 = load i32, i32* @TS1_INTRIG_SEL_MASK, align 4
  %59 = xor i32 %58, -1
  %60 = load i32, i32* %4, align 4
  %61 = and i32 %60, %59
  store i32 %61, i32* %4, align 4
  %62 = load i32, i32* @NO_HW_TRIG, align 4
  %63 = load i32, i32* %4, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %4, align 4
  %65 = load i32, i32* %4, align 4
  %66 = load %struct.stm_thermal_sensor*, %struct.stm_thermal_sensor** %3, align 8
  %67 = getelementptr inbounds %struct.stm_thermal_sensor, %struct.stm_thermal_sensor* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @DTS_CFGR1_OFFSET, align 8
  %70 = add nsw i64 %68, %69
  %71 = call i32 @writel_relaxed(i32 %65, i64 %70)
  store i32 0, i32* %2, align 4
  br label %72

72:                                               ; preds = %31, %13
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
