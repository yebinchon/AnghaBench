; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/intel/int340x_thermal/extr_int3400_thermal.c_int3400_thermal_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/intel/int340x_thermal/extr_int3400_thermal.c_int3400_thermal_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.int3400_thermal_priv = type { %struct.int3400_thermal_priv*, %struct.int3400_thermal_priv*, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }

@ACPI_DEVICE_NOTIFY = common dso_local global i32 0, align 4
@int3400_notify = common dso_local global i32 0, align 4
@uuid_attribute_group = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @int3400_thermal_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @int3400_thermal_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.int3400_thermal_priv*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = call %struct.int3400_thermal_priv* @platform_get_drvdata(%struct.platform_device* %4)
  store %struct.int3400_thermal_priv* %5, %struct.int3400_thermal_priv** %3, align 8
  %6 = load %struct.int3400_thermal_priv*, %struct.int3400_thermal_priv** %3, align 8
  %7 = getelementptr inbounds %struct.int3400_thermal_priv, %struct.int3400_thermal_priv* %6, i32 0, i32 3
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @ACPI_DEVICE_NOTIFY, align 4
  %12 = load i32, i32* @int3400_notify, align 4
  %13 = call i32 @acpi_remove_notify_handler(i32 %10, i32 %11, i32 %12)
  %14 = load %struct.int3400_thermal_priv*, %struct.int3400_thermal_priv** %3, align 8
  %15 = getelementptr inbounds %struct.int3400_thermal_priv, %struct.int3400_thermal_priv* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %1
  %19 = load %struct.int3400_thermal_priv*, %struct.int3400_thermal_priv** %3, align 8
  %20 = getelementptr inbounds %struct.int3400_thermal_priv, %struct.int3400_thermal_priv* %19, i32 0, i32 3
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @acpi_thermal_rel_misc_device_remove(i32 %23)
  br label %25

25:                                               ; preds = %18, %1
  %26 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %27 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = call i32 @sysfs_remove_group(i32* %28, i32* @uuid_attribute_group)
  %30 = load %struct.int3400_thermal_priv*, %struct.int3400_thermal_priv** %3, align 8
  %31 = getelementptr inbounds %struct.int3400_thermal_priv, %struct.int3400_thermal_priv* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @thermal_zone_device_unregister(i32 %32)
  %34 = load %struct.int3400_thermal_priv*, %struct.int3400_thermal_priv** %3, align 8
  %35 = getelementptr inbounds %struct.int3400_thermal_priv, %struct.int3400_thermal_priv* %34, i32 0, i32 1
  %36 = load %struct.int3400_thermal_priv*, %struct.int3400_thermal_priv** %35, align 8
  %37 = call i32 @kfree(%struct.int3400_thermal_priv* %36)
  %38 = load %struct.int3400_thermal_priv*, %struct.int3400_thermal_priv** %3, align 8
  %39 = getelementptr inbounds %struct.int3400_thermal_priv, %struct.int3400_thermal_priv* %38, i32 0, i32 0
  %40 = load %struct.int3400_thermal_priv*, %struct.int3400_thermal_priv** %39, align 8
  %41 = call i32 @kfree(%struct.int3400_thermal_priv* %40)
  %42 = load %struct.int3400_thermal_priv*, %struct.int3400_thermal_priv** %3, align 8
  %43 = call i32 @kfree(%struct.int3400_thermal_priv* %42)
  ret i32 0
}

declare dso_local %struct.int3400_thermal_priv* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @acpi_remove_notify_handler(i32, i32, i32) #1

declare dso_local i32 @acpi_thermal_rel_misc_device_remove(i32) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

declare dso_local i32 @thermal_zone_device_unregister(i32) #1

declare dso_local i32 @kfree(%struct.int3400_thermal_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
