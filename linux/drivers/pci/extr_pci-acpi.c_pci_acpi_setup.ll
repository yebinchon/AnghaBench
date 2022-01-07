; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_pci-acpi.c_pci_acpi_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_pci-acpi.c_pci_acpi_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.pci_dev = type { i64 }
%struct.acpi_device = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*)* @pci_acpi_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_acpi_setup(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.acpi_device*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %5 = load %struct.device*, %struct.device** %2, align 8
  %6 = call %struct.pci_dev* @to_pci_dev(%struct.device* %5)
  store %struct.pci_dev* %6, %struct.pci_dev** %3, align 8
  %7 = load %struct.device*, %struct.device** %2, align 8
  %8 = call %struct.acpi_device* @ACPI_COMPANION(%struct.device* %7)
  store %struct.acpi_device* %8, %struct.acpi_device** %4, align 8
  %9 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %10 = icmp ne %struct.acpi_device* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %46

12:                                               ; preds = %1
  %13 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %14 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %15 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @pci_acpi_optimize_delay(%struct.pci_dev* %13, i32 %16)
  %18 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %19 = call i32 @pci_acpi_set_untrusted(%struct.pci_dev* %18)
  %20 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %21 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %22 = call i32 @pci_acpi_add_pm_notifier(%struct.acpi_device* %20, %struct.pci_dev* %21)
  %23 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %24 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %12
  br label %46

30:                                               ; preds = %12
  %31 = load %struct.device*, %struct.device** %2, align 8
  %32 = call i32 @device_set_wakeup_capable(%struct.device* %31, i32 1)
  %33 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %34 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %30
  %38 = load %struct.device*, %struct.device** %2, align 8
  %39 = call i32 @device_wakeup_enable(%struct.device* %38)
  br label %40

40:                                               ; preds = %37, %30
  %41 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %42 = call i32 @acpi_pci_wakeup(%struct.pci_dev* %41, i32 0)
  %43 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %44 = load %struct.device*, %struct.device** %2, align 8
  %45 = call i32 @acpi_device_power_add_dependent(%struct.acpi_device* %43, %struct.device* %44)
  br label %46

46:                                               ; preds = %40, %29, %11
  ret void
}

declare dso_local %struct.pci_dev* @to_pci_dev(%struct.device*) #1

declare dso_local %struct.acpi_device* @ACPI_COMPANION(%struct.device*) #1

declare dso_local i32 @pci_acpi_optimize_delay(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_acpi_set_untrusted(%struct.pci_dev*) #1

declare dso_local i32 @pci_acpi_add_pm_notifier(%struct.acpi_device*, %struct.pci_dev*) #1

declare dso_local i32 @device_set_wakeup_capable(%struct.device*, i32) #1

declare dso_local i32 @device_wakeup_enable(%struct.device*) #1

declare dso_local i32 @acpi_pci_wakeup(%struct.pci_dev*, i32) #1

declare dso_local i32 @acpi_device_power_add_dependent(%struct.acpi_device*, %struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
