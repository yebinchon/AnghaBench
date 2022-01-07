; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/intel/extr_intel_quark_dts_thermal.c_sys_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/intel/extr_intel_quark_dts_thermal.c_sys_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thermal_zone_device = type { i32 }

@dts_update_mutex = common dso_local global i32 0, align 4
@THERMAL_DEVICE_ENABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thermal_zone_device*, i32)* @sys_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sys_set_mode(%struct.thermal_zone_device* %0, i32 %1) #0 {
  %3 = alloca %struct.thermal_zone_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.thermal_zone_device* %0, %struct.thermal_zone_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call i32 @mutex_lock(i32* @dts_update_mutex)
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @THERMAL_DEVICE_ENABLED, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %3, align 8
  %12 = call i32 @soc_dts_enable(%struct.thermal_zone_device* %11)
  store i32 %12, i32* %5, align 4
  br label %16

13:                                               ; preds = %2
  %14 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %3, align 8
  %15 = call i32 @soc_dts_disable(%struct.thermal_zone_device* %14)
  store i32 %15, i32* %5, align 4
  br label %16

16:                                               ; preds = %13, %10
  %17 = call i32 @mutex_unlock(i32* @dts_update_mutex)
  %18 = load i32, i32* %5, align 4
  ret i32 %18
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @soc_dts_enable(%struct.thermal_zone_device*) #1

declare dso_local i32 @soc_dts_disable(%struct.thermal_zone_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
