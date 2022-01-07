; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/intel/int340x_thermal/extr_processor_thermal_device.c_proc_thermal_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/intel/int340x_thermal/extr_processor_thermal_device.c_proc_thermal_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.proc_thermal_device = type { %struct.TYPE_5__*, i32, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@ACPI_DEVICE_NOTIFY = common dso_local global i32 0, align 4
@proc_thermal_notify = common dso_local global i32 0, align 4
@dev_attr_tcc_offset_degree_celsius = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@power_limit_attribute_group = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.proc_thermal_device*)* @proc_thermal_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @proc_thermal_remove(%struct.proc_thermal_device* %0) #0 {
  %2 = alloca %struct.proc_thermal_device*, align 8
  store %struct.proc_thermal_device* %0, %struct.proc_thermal_device** %2, align 8
  %3 = load %struct.proc_thermal_device*, %struct.proc_thermal_device** %2, align 8
  %4 = getelementptr inbounds %struct.proc_thermal_device, %struct.proc_thermal_device* %3, i32 0, i32 2
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @ACPI_DEVICE_NOTIFY, align 4
  %9 = load i32, i32* @proc_thermal_notify, align 4
  %10 = call i32 @acpi_remove_notify_handler(i32 %7, i32 %8, i32 %9)
  %11 = load %struct.proc_thermal_device*, %struct.proc_thermal_device** %2, align 8
  %12 = getelementptr inbounds %struct.proc_thermal_device, %struct.proc_thermal_device* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @int340x_thermal_zone_remove(i32 %13)
  %15 = load %struct.proc_thermal_device*, %struct.proc_thermal_device** %2, align 8
  %16 = getelementptr inbounds %struct.proc_thermal_device, %struct.proc_thermal_device* %15, i32 0, i32 0
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = call i32 @sysfs_remove_file(i32* %18, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @dev_attr_tcc_offset_degree_celsius, i32 0, i32 0))
  %20 = load %struct.proc_thermal_device*, %struct.proc_thermal_device** %2, align 8
  %21 = getelementptr inbounds %struct.proc_thermal_device, %struct.proc_thermal_device* %20, i32 0, i32 0
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = call i32 @sysfs_remove_group(i32* %23, i32* @power_limit_attribute_group)
  ret void
}

declare dso_local i32 @acpi_remove_notify_handler(i32, i32, i32) #1

declare dso_local i32 @int340x_thermal_zone_remove(i32) #1

declare dso_local i32 @sysfs_remove_file(i32*, i32*) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
