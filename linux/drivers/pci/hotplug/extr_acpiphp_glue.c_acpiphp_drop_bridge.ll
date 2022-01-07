; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_acpiphp_glue.c_acpiphp_drop_bridge.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_acpiphp_glue.c_acpiphp_drop_bridge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpiphp_bridge = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.acpiphp_root_context = type { i32 }
%struct.acpi_device = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.acpiphp_bridge*)* @acpiphp_drop_bridge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acpiphp_drop_bridge(%struct.acpiphp_bridge* %0) #0 {
  %2 = alloca %struct.acpiphp_bridge*, align 8
  %3 = alloca %struct.acpiphp_root_context*, align 8
  %4 = alloca %struct.acpi_device*, align 8
  store %struct.acpiphp_bridge* %0, %struct.acpiphp_bridge** %2, align 8
  %5 = load %struct.acpiphp_bridge*, %struct.acpiphp_bridge** %2, align 8
  %6 = getelementptr inbounds %struct.acpiphp_bridge, %struct.acpiphp_bridge* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = call i64 @pci_is_root_bus(%struct.TYPE_2__* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %27

10:                                               ; preds = %1
  %11 = call i32 (...) @acpi_lock_hp_context()
  %12 = load %struct.acpiphp_bridge*, %struct.acpiphp_bridge** %2, align 8
  %13 = getelementptr inbounds %struct.acpiphp_bridge, %struct.acpiphp_bridge* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.acpi_device* @ACPI_COMPANION(i32 %16)
  store %struct.acpi_device* %17, %struct.acpi_device** %4, align 8
  %18 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %19 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = call %struct.acpiphp_root_context* @to_acpiphp_root_context(i32* %20)
  store %struct.acpiphp_root_context* %21, %struct.acpiphp_root_context** %3, align 8
  %22 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %23 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %22, i32 0, i32 0
  store i32* null, i32** %23, align 8
  %24 = call i32 (...) @acpi_unlock_hp_context()
  %25 = load %struct.acpiphp_root_context*, %struct.acpiphp_root_context** %3, align 8
  %26 = call i32 @kfree(%struct.acpiphp_root_context* %25)
  br label %27

27:                                               ; preds = %10, %1
  %28 = load %struct.acpiphp_bridge*, %struct.acpiphp_bridge** %2, align 8
  %29 = call i32 @cleanup_bridge(%struct.acpiphp_bridge* %28)
  %30 = load %struct.acpiphp_bridge*, %struct.acpiphp_bridge** %2, align 8
  %31 = call i32 @put_bridge(%struct.acpiphp_bridge* %30)
  ret void
}

declare dso_local i64 @pci_is_root_bus(%struct.TYPE_2__*) #1

declare dso_local i32 @acpi_lock_hp_context(...) #1

declare dso_local %struct.acpi_device* @ACPI_COMPANION(i32) #1

declare dso_local %struct.acpiphp_root_context* @to_acpiphp_root_context(i32*) #1

declare dso_local i32 @acpi_unlock_hp_context(...) #1

declare dso_local i32 @kfree(%struct.acpiphp_root_context*) #1

declare dso_local i32 @cleanup_bridge(%struct.acpiphp_bridge*) #1

declare dso_local i32 @put_bridge(%struct.acpiphp_bridge*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
