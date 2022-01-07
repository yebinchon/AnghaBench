; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_classmate-laptop.c_cmpc_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_classmate-laptop.c_cmpc_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cmpc_accel_acpi_driver_v4 = common dso_local global i32 0, align 4
@cmpc_accel_acpi_driver = common dso_local global i32 0, align 4
@cmpc_tablet_acpi_driver = common dso_local global i32 0, align 4
@cmpc_ipml_acpi_driver = common dso_local global i32 0, align 4
@cmpc_keys_acpi_driver = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @cmpc_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cmpc_exit() #0 {
  %1 = call i32 @acpi_bus_unregister_driver(i32* @cmpc_accel_acpi_driver_v4)
  %2 = call i32 @acpi_bus_unregister_driver(i32* @cmpc_accel_acpi_driver)
  %3 = call i32 @acpi_bus_unregister_driver(i32* @cmpc_tablet_acpi_driver)
  %4 = call i32 @acpi_bus_unregister_driver(i32* @cmpc_ipml_acpi_driver)
  %5 = call i32 @acpi_bus_unregister_driver(i32* @cmpc_keys_acpi_driver)
  ret void
}

declare dso_local i32 @acpi_bus_unregister_driver(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
