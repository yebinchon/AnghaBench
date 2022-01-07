; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/st/extr_stm_thermal.c_stm_thermal_set_threshold.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/st/extr_stm_thermal.c_stm_thermal_set_threshold.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm_thermal_sensor = type { i64, i32, i64, i32 }

@DTS_ITR1_OFFSET = common dso_local global i64 0, align 8
@TS1_LITTHD_MASK = common dso_local global i32 0, align 4
@TS1_HITTHD_MASK = common dso_local global i32 0, align 4
@TS1_HITTHD_POS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stm_thermal_sensor*)* @stm_thermal_set_threshold to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm_thermal_set_threshold(%struct.stm_thermal_sensor* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stm_thermal_sensor*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.stm_thermal_sensor* %0, %struct.stm_thermal_sensor** %3, align 8
  %7 = load %struct.stm_thermal_sensor*, %struct.stm_thermal_sensor** %3, align 8
  %8 = getelementptr inbounds %struct.stm_thermal_sensor, %struct.stm_thermal_sensor* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @DTS_ITR1_OFFSET, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @readl_relaxed(i64 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* @TS1_LITTHD_MASK, align 4
  %14 = load i32, i32* @TS1_HITTHD_MASK, align 4
  %15 = or i32 %13, %14
  %16 = xor i32 %15, -1
  %17 = load i32, i32* %4, align 4
  %18 = and i32 %17, %16
  store i32 %18, i32* %4, align 4
  %19 = load %struct.stm_thermal_sensor*, %struct.stm_thermal_sensor** %3, align 8
  %20 = load %struct.stm_thermal_sensor*, %struct.stm_thermal_sensor** %3, align 8
  %21 = getelementptr inbounds %struct.stm_thermal_sensor, %struct.stm_thermal_sensor* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @stm_thermal_calculate_threshold(%struct.stm_thermal_sensor* %19, i32 %22, i32* %5)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %1
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %2, align 4
  br label %64

28:                                               ; preds = %1
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @TS1_LITTHD_MASK, align 4
  %31 = and i32 %29, %30
  %32 = load i32, i32* %4, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %4, align 4
  %34 = load %struct.stm_thermal_sensor*, %struct.stm_thermal_sensor** %3, align 8
  %35 = getelementptr inbounds %struct.stm_thermal_sensor, %struct.stm_thermal_sensor* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %56

38:                                               ; preds = %28
  %39 = load %struct.stm_thermal_sensor*, %struct.stm_thermal_sensor** %3, align 8
  %40 = load %struct.stm_thermal_sensor*, %struct.stm_thermal_sensor** %3, align 8
  %41 = getelementptr inbounds %struct.stm_thermal_sensor, %struct.stm_thermal_sensor* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @stm_thermal_calculate_threshold(%struct.stm_thermal_sensor* %39, i32 %42, i32* %5)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %38
  %47 = load i32, i32* %6, align 4
  store i32 %47, i32* %2, align 4
  br label %64

48:                                               ; preds = %38
  %49 = load i32, i32* @TS1_HITTHD_MASK, align 4
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @TS1_HITTHD_POS, align 4
  %52 = shl i32 %50, %51
  %53 = and i32 %49, %52
  %54 = load i32, i32* %4, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %48, %28
  %57 = load i32, i32* %4, align 4
  %58 = load %struct.stm_thermal_sensor*, %struct.stm_thermal_sensor** %3, align 8
  %59 = getelementptr inbounds %struct.stm_thermal_sensor, %struct.stm_thermal_sensor* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @DTS_ITR1_OFFSET, align 8
  %62 = add nsw i64 %60, %61
  %63 = call i32 @writel_relaxed(i32 %57, i64 %62)
  store i32 0, i32* %2, align 4
  br label %64

64:                                               ; preds = %56, %46, %26
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @stm_thermal_calculate_threshold(%struct.stm_thermal_sensor*, i32, i32*) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
