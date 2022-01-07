; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/st/extr_stm_thermal.c_stm_thermal_update_threshold.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/st/extr_stm_thermal.c_stm_thermal_update_threshold.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm_thermal_sensor = type { i32 }

@THERMAL_DEVICE_DISABLED = common dso_local global i32 0, align 4
@THERMAL_DEVICE_ENABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stm_thermal_sensor*)* @stm_thermal_update_threshold to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm_thermal_update_threshold(%struct.stm_thermal_sensor* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stm_thermal_sensor*, align 8
  %4 = alloca i32, align 4
  store %struct.stm_thermal_sensor* %0, %struct.stm_thermal_sensor** %3, align 8
  %5 = load i32, i32* @THERMAL_DEVICE_DISABLED, align 4
  %6 = load %struct.stm_thermal_sensor*, %struct.stm_thermal_sensor** %3, align 8
  %7 = getelementptr inbounds %struct.stm_thermal_sensor, %struct.stm_thermal_sensor* %6, i32 0, i32 0
  store i32 %5, i32* %7, align 4
  %8 = load %struct.stm_thermal_sensor*, %struct.stm_thermal_sensor** %3, align 8
  %9 = call i32 @stm_sensor_power_off(%struct.stm_thermal_sensor* %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  store i32 %13, i32* %2, align 4
  br label %46

14:                                               ; preds = %1
  %15 = load %struct.stm_thermal_sensor*, %struct.stm_thermal_sensor** %3, align 8
  %16 = call i32 @stm_disable_irq(%struct.stm_thermal_sensor* %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = load i32, i32* %4, align 4
  store i32 %20, i32* %2, align 4
  br label %46

21:                                               ; preds = %14
  %22 = load %struct.stm_thermal_sensor*, %struct.stm_thermal_sensor** %3, align 8
  %23 = call i32 @stm_thermal_set_threshold(%struct.stm_thermal_sensor* %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i32, i32* %4, align 4
  store i32 %27, i32* %2, align 4
  br label %46

28:                                               ; preds = %21
  %29 = load %struct.stm_thermal_sensor*, %struct.stm_thermal_sensor** %3, align 8
  %30 = call i32 @stm_enable_irq(%struct.stm_thermal_sensor* %29)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* %4, align 4
  store i32 %34, i32* %2, align 4
  br label %46

35:                                               ; preds = %28
  %36 = load %struct.stm_thermal_sensor*, %struct.stm_thermal_sensor** %3, align 8
  %37 = call i32 @stm_sensor_power_on(%struct.stm_thermal_sensor* %36)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32, i32* %4, align 4
  store i32 %41, i32* %2, align 4
  br label %46

42:                                               ; preds = %35
  %43 = load i32, i32* @THERMAL_DEVICE_ENABLED, align 4
  %44 = load %struct.stm_thermal_sensor*, %struct.stm_thermal_sensor** %3, align 8
  %45 = getelementptr inbounds %struct.stm_thermal_sensor, %struct.stm_thermal_sensor* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  store i32 0, i32* %2, align 4
  br label %46

46:                                               ; preds = %42, %40, %33, %26, %19, %12
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @stm_sensor_power_off(%struct.stm_thermal_sensor*) #1

declare dso_local i32 @stm_disable_irq(%struct.stm_thermal_sensor*) #1

declare dso_local i32 @stm_thermal_set_threshold(%struct.stm_thermal_sensor*) #1

declare dso_local i32 @stm_enable_irq(%struct.stm_thermal_sensor*) #1

declare dso_local i32 @stm_sensor_power_on(%struct.stm_thermal_sensor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
