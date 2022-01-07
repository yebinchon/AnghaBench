; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/intel/int340x_thermal/extr_int3403_thermal.c_int3403_sensor_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/intel/int340x_thermal/extr_int3403_thermal.c_int3403_sensor_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.int3403_priv = type { %struct.TYPE_2__*, %struct.int3403_sensor* }
%struct.TYPE_2__ = type { i32 }
%struct.int3403_sensor = type { i32 }

@ACPI_DEVICE_NOTIFY = common dso_local global i32 0, align 4
@int3403_notify = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.int3403_priv*)* @int3403_sensor_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @int3403_sensor_remove(%struct.int3403_priv* %0) #0 {
  %2 = alloca %struct.int3403_priv*, align 8
  %3 = alloca %struct.int3403_sensor*, align 8
  store %struct.int3403_priv* %0, %struct.int3403_priv** %2, align 8
  %4 = load %struct.int3403_priv*, %struct.int3403_priv** %2, align 8
  %5 = getelementptr inbounds %struct.int3403_priv, %struct.int3403_priv* %4, i32 0, i32 1
  %6 = load %struct.int3403_sensor*, %struct.int3403_sensor** %5, align 8
  store %struct.int3403_sensor* %6, %struct.int3403_sensor** %3, align 8
  %7 = load %struct.int3403_priv*, %struct.int3403_priv** %2, align 8
  %8 = getelementptr inbounds %struct.int3403_priv, %struct.int3403_priv* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @ACPI_DEVICE_NOTIFY, align 4
  %13 = load i32, i32* @int3403_notify, align 4
  %14 = call i32 @acpi_remove_notify_handler(i32 %11, i32 %12, i32 %13)
  %15 = load %struct.int3403_sensor*, %struct.int3403_sensor** %3, align 8
  %16 = getelementptr inbounds %struct.int3403_sensor, %struct.int3403_sensor* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @int340x_thermal_zone_remove(i32 %17)
  ret i32 0
}

declare dso_local i32 @acpi_remove_notify_handler(i32, i32, i32) #1

declare dso_local i32 @int340x_thermal_zone_remove(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
