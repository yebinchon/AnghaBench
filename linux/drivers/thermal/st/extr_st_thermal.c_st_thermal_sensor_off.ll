; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/st/extr_st_thermal.c_st_thermal_sensor_off.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/st/extr_st_thermal.c_st_thermal_sensor_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_thermal_sensor = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.st_thermal_sensor*, i32)* }

@POWER_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.st_thermal_sensor*)* @st_thermal_sensor_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st_thermal_sensor_off(%struct.st_thermal_sensor* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.st_thermal_sensor*, align 8
  %4 = alloca i32, align 4
  store %struct.st_thermal_sensor* %0, %struct.st_thermal_sensor** %3, align 8
  %5 = load %struct.st_thermal_sensor*, %struct.st_thermal_sensor** %3, align 8
  %6 = getelementptr inbounds %struct.st_thermal_sensor, %struct.st_thermal_sensor* %5, i32 0, i32 1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32 (%struct.st_thermal_sensor*, i32)*, i32 (%struct.st_thermal_sensor*, i32)** %8, align 8
  %10 = load %struct.st_thermal_sensor*, %struct.st_thermal_sensor** %3, align 8
  %11 = load i32, i32* @POWER_OFF, align 4
  %12 = call i32 %9(%struct.st_thermal_sensor* %10, i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %4, align 4
  store i32 %16, i32* %2, align 4
  br label %22

17:                                               ; preds = %1
  %18 = load %struct.st_thermal_sensor*, %struct.st_thermal_sensor** %3, align 8
  %19 = getelementptr inbounds %struct.st_thermal_sensor, %struct.st_thermal_sensor* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @clk_disable_unprepare(i32 %20)
  store i32 0, i32* %2, align 4
  br label %22

22:                                               ; preds = %17, %15
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
