; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/intel/extr_intel_quark_dts_thermal.c_free_soc_dts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/intel/extr_intel_quark_dts_thermal.c_free_soc_dts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.soc_sensor_entry = type { i32, i32, i32, i32 }

@dts_update_mutex = common dso_local global i32 0, align 4
@QRK_MBI_UNIT_RMU = common dso_local global i32 0, align 4
@MBI_REG_WRITE = common dso_local global i32 0, align 4
@QRK_DTS_REG_OFFSET_ENABLE = common dso_local global i32 0, align 4
@QRK_DTS_REG_OFFSET_PTPS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.soc_sensor_entry*)* @free_soc_dts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_soc_dts(%struct.soc_sensor_entry* %0) #0 {
  %2 = alloca %struct.soc_sensor_entry*, align 8
  store %struct.soc_sensor_entry* %0, %struct.soc_sensor_entry** %2, align 8
  %3 = load %struct.soc_sensor_entry*, %struct.soc_sensor_entry** %2, align 8
  %4 = icmp ne %struct.soc_sensor_entry* %3, null
  br i1 %4, label %5, label %34

5:                                                ; preds = %1
  %6 = load %struct.soc_sensor_entry*, %struct.soc_sensor_entry** %2, align 8
  %7 = getelementptr inbounds %struct.soc_sensor_entry, %struct.soc_sensor_entry* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %27, label %10

10:                                               ; preds = %5
  %11 = call i32 @mutex_lock(i32* @dts_update_mutex)
  %12 = load i32, i32* @QRK_MBI_UNIT_RMU, align 4
  %13 = load i32, i32* @MBI_REG_WRITE, align 4
  %14 = load i32, i32* @QRK_DTS_REG_OFFSET_ENABLE, align 4
  %15 = load %struct.soc_sensor_entry*, %struct.soc_sensor_entry** %2, align 8
  %16 = getelementptr inbounds %struct.soc_sensor_entry, %struct.soc_sensor_entry* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @iosf_mbi_write(i32 %12, i32 %13, i32 %14, i32 %17)
  %19 = load i32, i32* @QRK_MBI_UNIT_RMU, align 4
  %20 = load i32, i32* @MBI_REG_WRITE, align 4
  %21 = load i32, i32* @QRK_DTS_REG_OFFSET_PTPS, align 4
  %22 = load %struct.soc_sensor_entry*, %struct.soc_sensor_entry** %2, align 8
  %23 = getelementptr inbounds %struct.soc_sensor_entry, %struct.soc_sensor_entry* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @iosf_mbi_write(i32 %19, i32 %20, i32 %21, i32 %24)
  %26 = call i32 @mutex_unlock(i32* @dts_update_mutex)
  br label %27

27:                                               ; preds = %10, %5
  %28 = load %struct.soc_sensor_entry*, %struct.soc_sensor_entry** %2, align 8
  %29 = getelementptr inbounds %struct.soc_sensor_entry, %struct.soc_sensor_entry* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @thermal_zone_device_unregister(i32 %30)
  %32 = load %struct.soc_sensor_entry*, %struct.soc_sensor_entry** %2, align 8
  %33 = call i32 @kfree(%struct.soc_sensor_entry* %32)
  br label %34

34:                                               ; preds = %27, %1
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @iosf_mbi_write(i32, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @thermal_zone_device_unregister(i32) #1

declare dso_local i32 @kfree(%struct.soc_sensor_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
