; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/intel/extr_intel_soc_dts_iosf.c_remove_dts_thermal_zone.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/intel/extr_intel_soc_dts_iosf.c_remove_dts_thermal_zone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_soc_dts_sensor_entry = type { i32, i32 }

@BT_MBI_UNIT_PMC = common dso_local global i32 0, align 4
@MBI_REG_WRITE = common dso_local global i32 0, align 4
@SOC_DTS_OFFSET_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_soc_dts_sensor_entry*)* @remove_dts_thermal_zone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remove_dts_thermal_zone(%struct.intel_soc_dts_sensor_entry* %0) #0 {
  %2 = alloca %struct.intel_soc_dts_sensor_entry*, align 8
  store %struct.intel_soc_dts_sensor_entry* %0, %struct.intel_soc_dts_sensor_entry** %2, align 8
  %3 = load %struct.intel_soc_dts_sensor_entry*, %struct.intel_soc_dts_sensor_entry** %2, align 8
  %4 = icmp ne %struct.intel_soc_dts_sensor_entry* %3, null
  br i1 %4, label %5, label %17

5:                                                ; preds = %1
  %6 = load i32, i32* @BT_MBI_UNIT_PMC, align 4
  %7 = load i32, i32* @MBI_REG_WRITE, align 4
  %8 = load i32, i32* @SOC_DTS_OFFSET_ENABLE, align 4
  %9 = load %struct.intel_soc_dts_sensor_entry*, %struct.intel_soc_dts_sensor_entry** %2, align 8
  %10 = getelementptr inbounds %struct.intel_soc_dts_sensor_entry, %struct.intel_soc_dts_sensor_entry* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @iosf_mbi_write(i32 %6, i32 %7, i32 %8, i32 %11)
  %13 = load %struct.intel_soc_dts_sensor_entry*, %struct.intel_soc_dts_sensor_entry** %2, align 8
  %14 = getelementptr inbounds %struct.intel_soc_dts_sensor_entry, %struct.intel_soc_dts_sensor_entry* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @thermal_zone_device_unregister(i32 %15)
  br label %17

17:                                               ; preds = %5, %1
  ret void
}

declare dso_local i32 @iosf_mbi_write(i32, i32, i32, i32) #1

declare dso_local i32 @thermal_zone_device_unregister(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
