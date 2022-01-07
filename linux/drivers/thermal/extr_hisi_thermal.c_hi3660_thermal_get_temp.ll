; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/extr_hisi_thermal.c_hi3660_thermal_get_temp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/extr_hisi_thermal.c_hi3660_thermal_get_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_thermal_sensor = type { i32, %struct.hisi_thermal_data* }
%struct.hisi_thermal_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hisi_thermal_sensor*)* @hi3660_thermal_get_temp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hi3660_thermal_get_temp(%struct.hisi_thermal_sensor* %0) #0 {
  %2 = alloca %struct.hisi_thermal_sensor*, align 8
  %3 = alloca %struct.hisi_thermal_data*, align 8
  store %struct.hisi_thermal_sensor* %0, %struct.hisi_thermal_sensor** %2, align 8
  %4 = load %struct.hisi_thermal_sensor*, %struct.hisi_thermal_sensor** %2, align 8
  %5 = getelementptr inbounds %struct.hisi_thermal_sensor, %struct.hisi_thermal_sensor* %4, i32 0, i32 1
  %6 = load %struct.hisi_thermal_data*, %struct.hisi_thermal_data** %5, align 8
  store %struct.hisi_thermal_data* %6, %struct.hisi_thermal_data** %3, align 8
  %7 = load %struct.hisi_thermal_data*, %struct.hisi_thermal_data** %3, align 8
  %8 = getelementptr inbounds %struct.hisi_thermal_data, %struct.hisi_thermal_data* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.hisi_thermal_sensor*, %struct.hisi_thermal_sensor** %2, align 8
  %11 = getelementptr inbounds %struct.hisi_thermal_sensor, %struct.hisi_thermal_sensor* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @hi3660_thermal_get_temperature(i32 %9, i32 %12)
  ret i32 %13
}

declare dso_local i32 @hi3660_thermal_get_temperature(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
