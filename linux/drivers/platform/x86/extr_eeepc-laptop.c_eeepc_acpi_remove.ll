; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_eeepc-laptop.c_eeepc_acpi_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_eeepc-laptop.c_eeepc_acpi_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { i32 }
%struct.eeepc_laptop = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_device*)* @eeepc_acpi_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eeepc_acpi_remove(%struct.acpi_device* %0) #0 {
  %2 = alloca %struct.acpi_device*, align 8
  %3 = alloca %struct.eeepc_laptop*, align 8
  store %struct.acpi_device* %0, %struct.acpi_device** %2, align 8
  %4 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %5 = call %struct.eeepc_laptop* @acpi_driver_data(%struct.acpi_device* %4)
  store %struct.eeepc_laptop* %5, %struct.eeepc_laptop** %3, align 8
  %6 = load %struct.eeepc_laptop*, %struct.eeepc_laptop** %3, align 8
  %7 = call i32 @eeepc_backlight_exit(%struct.eeepc_laptop* %6)
  %8 = load %struct.eeepc_laptop*, %struct.eeepc_laptop** %3, align 8
  %9 = call i32 @eeepc_rfkill_exit(%struct.eeepc_laptop* %8)
  %10 = load %struct.eeepc_laptop*, %struct.eeepc_laptop** %3, align 8
  %11 = call i32 @eeepc_input_exit(%struct.eeepc_laptop* %10)
  %12 = load %struct.eeepc_laptop*, %struct.eeepc_laptop** %3, align 8
  %13 = call i32 @eeepc_led_exit(%struct.eeepc_laptop* %12)
  %14 = load %struct.eeepc_laptop*, %struct.eeepc_laptop** %3, align 8
  %15 = call i32 @eeepc_platform_exit(%struct.eeepc_laptop* %14)
  %16 = load %struct.eeepc_laptop*, %struct.eeepc_laptop** %3, align 8
  %17 = call i32 @kfree(%struct.eeepc_laptop* %16)
  ret i32 0
}

declare dso_local %struct.eeepc_laptop* @acpi_driver_data(%struct.acpi_device*) #1

declare dso_local i32 @eeepc_backlight_exit(%struct.eeepc_laptop*) #1

declare dso_local i32 @eeepc_rfkill_exit(%struct.eeepc_laptop*) #1

declare dso_local i32 @eeepc_input_exit(%struct.eeepc_laptop*) #1

declare dso_local i32 @eeepc_led_exit(%struct.eeepc_laptop*) #1

declare dso_local i32 @eeepc_platform_exit(%struct.eeepc_laptop*) #1

declare dso_local i32 @kfree(%struct.eeepc_laptop*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
