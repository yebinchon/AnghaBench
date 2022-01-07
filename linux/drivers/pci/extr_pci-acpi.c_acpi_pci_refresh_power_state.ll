; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_pci-acpi.c_acpi_pci_refresh_power_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_pci-acpi.c_acpi_pci_refresh_power_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.acpi_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @acpi_pci_refresh_power_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acpi_pci_refresh_power_state(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.acpi_device*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %4 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %5 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %4, i32 0, i32 0
  %6 = call %struct.acpi_device* @ACPI_COMPANION(i32* %5)
  store %struct.acpi_device* %6, %struct.acpi_device** %3, align 8
  %7 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %8 = icmp ne %struct.acpi_device* %7, null
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  %10 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %11 = call i64 @acpi_device_power_manageable(%struct.acpi_device* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %15 = call i32 @acpi_device_update_power(%struct.acpi_device* %14, i32* null)
  br label %16

16:                                               ; preds = %13, %9, %1
  ret void
}

declare dso_local %struct.acpi_device* @ACPI_COMPANION(i32*) #1

declare dso_local i64 @acpi_device_power_manageable(%struct.acpi_device*) #1

declare dso_local i32 @acpi_device_update_power(%struct.acpi_device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
