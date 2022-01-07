; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_acpiphp_glue.c_acpiphp_check_host_bridge.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_acpiphp_glue.c_acpiphp_check_host_bridge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { i64 }
%struct.acpiphp_bridge = type { i32 }
%struct.TYPE_2__ = type { %struct.acpiphp_bridge* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @acpiphp_check_host_bridge(%struct.acpi_device* %0) #0 {
  %2 = alloca %struct.acpi_device*, align 8
  %3 = alloca %struct.acpiphp_bridge*, align 8
  store %struct.acpi_device* %0, %struct.acpi_device** %2, align 8
  store %struct.acpiphp_bridge* null, %struct.acpiphp_bridge** %3, align 8
  %4 = call i32 (...) @acpi_lock_hp_context()
  %5 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %6 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %22

9:                                                ; preds = %1
  %10 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %11 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = call %struct.TYPE_2__* @to_acpiphp_root_context(i64 %12)
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.acpiphp_bridge*, %struct.acpiphp_bridge** %14, align 8
  store %struct.acpiphp_bridge* %15, %struct.acpiphp_bridge** %3, align 8
  %16 = load %struct.acpiphp_bridge*, %struct.acpiphp_bridge** %3, align 8
  %17 = icmp ne %struct.acpiphp_bridge* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %9
  %19 = load %struct.acpiphp_bridge*, %struct.acpiphp_bridge** %3, align 8
  %20 = call i32 @get_bridge(%struct.acpiphp_bridge* %19)
  br label %21

21:                                               ; preds = %18, %9
  br label %22

22:                                               ; preds = %21, %1
  %23 = call i32 (...) @acpi_unlock_hp_context()
  %24 = load %struct.acpiphp_bridge*, %struct.acpiphp_bridge** %3, align 8
  %25 = icmp ne %struct.acpiphp_bridge* %24, null
  br i1 %25, label %26, label %33

26:                                               ; preds = %22
  %27 = call i32 (...) @pci_lock_rescan_remove()
  %28 = load %struct.acpiphp_bridge*, %struct.acpiphp_bridge** %3, align 8
  %29 = call i32 @acpiphp_check_bridge(%struct.acpiphp_bridge* %28)
  %30 = call i32 (...) @pci_unlock_rescan_remove()
  %31 = load %struct.acpiphp_bridge*, %struct.acpiphp_bridge** %3, align 8
  %32 = call i32 @put_bridge(%struct.acpiphp_bridge* %31)
  br label %33

33:                                               ; preds = %26, %22
  ret void
}

declare dso_local i32 @acpi_lock_hp_context(...) #1

declare dso_local %struct.TYPE_2__* @to_acpiphp_root_context(i64) #1

declare dso_local i32 @get_bridge(%struct.acpiphp_bridge*) #1

declare dso_local i32 @acpi_unlock_hp_context(...) #1

declare dso_local i32 @pci_lock_rescan_remove(...) #1

declare dso_local i32 @acpiphp_check_bridge(%struct.acpiphp_bridge*) #1

declare dso_local i32 @pci_unlock_rescan_remove(...) #1

declare dso_local i32 @put_bridge(%struct.acpiphp_bridge*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
