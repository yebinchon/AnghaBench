; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/extr_armada_thermal.c_armada_wait_sensor_validity.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/extr_armada_thermal.c_armada_wait_sensor_validity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.armada_thermal_priv = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@STATUS_POLL_PERIOD_US = common dso_local global i32 0, align 4
@STATUS_POLL_TIMEOUT_US = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.armada_thermal_priv*)* @armada_wait_sensor_validity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @armada_wait_sensor_validity(%struct.armada_thermal_priv* %0) #0 {
  %2 = alloca %struct.armada_thermal_priv*, align 8
  %3 = alloca i32, align 4
  store %struct.armada_thermal_priv* %0, %struct.armada_thermal_priv** %2, align 8
  %4 = load %struct.armada_thermal_priv*, %struct.armada_thermal_priv** %2, align 8
  %5 = getelementptr inbounds %struct.armada_thermal_priv, %struct.armada_thermal_priv* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 8
  %7 = load %struct.armada_thermal_priv*, %struct.armada_thermal_priv** %2, align 8
  %8 = getelementptr inbounds %struct.armada_thermal_priv, %struct.armada_thermal_priv* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = load %struct.armada_thermal_priv*, %struct.armada_thermal_priv** %2, align 8
  %15 = getelementptr inbounds %struct.armada_thermal_priv, %struct.armada_thermal_priv* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = and i32 %13, %18
  %20 = load i32, i32* @STATUS_POLL_PERIOD_US, align 4
  %21 = load i32, i32* @STATUS_POLL_TIMEOUT_US, align 4
  %22 = call i32 @regmap_read_poll_timeout(i32 %6, i32 %11, i32 %12, i32 %19, i32 %20, i32 %21)
  ret i32 %22
}

declare dso_local i32 @regmap_read_poll_timeout(i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
