; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/st/extr_stm_thermal.c_stm_thermal_alarm_irq_thread.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/st/extr_stm_thermal.c_stm_thermal_alarm_irq_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm_thermal_sensor = type { i32, i64 }

@DTS_SR_OFFSET = common dso_local global i64 0, align 8
@LOW_THRESHOLD = common dso_local global i32 0, align 4
@DTS_CIFR_OFFSET = common dso_local global i64 0, align 8
@HIGH_THRESHOLD = common dso_local global i32 0, align 4
@THERMAL_EVENT_UNSPECIFIED = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @stm_thermal_alarm_irq_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm_thermal_alarm_irq_thread(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.stm_thermal_sensor*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.stm_thermal_sensor*
  store %struct.stm_thermal_sensor* %8, %struct.stm_thermal_sensor** %6, align 8
  %9 = load %struct.stm_thermal_sensor*, %struct.stm_thermal_sensor** %6, align 8
  %10 = getelementptr inbounds %struct.stm_thermal_sensor, %struct.stm_thermal_sensor* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @DTS_SR_OFFSET, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @readl_relaxed(i64 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @LOW_THRESHOLD, align 4
  %17 = and i32 %15, %16
  %18 = load i32, i32* @LOW_THRESHOLD, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %28

20:                                               ; preds = %2
  %21 = load i32, i32* @LOW_THRESHOLD, align 4
  %22 = load %struct.stm_thermal_sensor*, %struct.stm_thermal_sensor** %6, align 8
  %23 = getelementptr inbounds %struct.stm_thermal_sensor, %struct.stm_thermal_sensor* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @DTS_CIFR_OFFSET, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @writel_relaxed(i32 %21, i64 %26)
  br label %28

28:                                               ; preds = %20, %2
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @HIGH_THRESHOLD, align 4
  %31 = and i32 %29, %30
  %32 = load i32, i32* @HIGH_THRESHOLD, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %28
  %35 = load i32, i32* @HIGH_THRESHOLD, align 4
  %36 = load %struct.stm_thermal_sensor*, %struct.stm_thermal_sensor** %6, align 8
  %37 = getelementptr inbounds %struct.stm_thermal_sensor, %struct.stm_thermal_sensor* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @DTS_CIFR_OFFSET, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @writel_relaxed(i32 %35, i64 %40)
  br label %42

42:                                               ; preds = %34, %28
  %43 = load %struct.stm_thermal_sensor*, %struct.stm_thermal_sensor** %6, align 8
  %44 = getelementptr inbounds %struct.stm_thermal_sensor, %struct.stm_thermal_sensor* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @THERMAL_EVENT_UNSPECIFIED, align 4
  %47 = call i32 @thermal_zone_device_update(i32 %45, i32 %46)
  %48 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %48
}

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @thermal_zone_device_update(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
