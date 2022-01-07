; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_acpiphp_glue.c_acpiphp_post_dock_fixup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_acpiphp_glue.c_acpiphp_post_dock_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { i32 }
%struct.acpiphp_context = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.pci_bus* }
%struct.pci_bus = type { i32, %struct.TYPE_6__, i64 }
%struct.TYPE_6__ = type { i32, i64 }

@PCI_PRIMARY_BUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.acpi_device*)* @acpiphp_post_dock_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acpiphp_post_dock_fixup(%struct.acpi_device* %0) #0 {
  %2 = alloca %struct.acpi_device*, align 8
  %3 = alloca %struct.acpiphp_context*, align 8
  %4 = alloca %struct.pci_bus*, align 8
  %5 = alloca i32, align 4
  store %struct.acpi_device* %0, %struct.acpi_device** %2, align 8
  %6 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %7 = call %struct.acpiphp_context* @acpiphp_grab_context(%struct.acpi_device* %6)
  store %struct.acpiphp_context* %7, %struct.acpiphp_context** %3, align 8
  %8 = load %struct.acpiphp_context*, %struct.acpiphp_context** %3, align 8
  %9 = icmp ne %struct.acpiphp_context* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %69

11:                                               ; preds = %1
  %12 = load %struct.acpiphp_context*, %struct.acpiphp_context** %3, align 8
  %13 = getelementptr inbounds %struct.acpiphp_context, %struct.acpiphp_context* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.pci_bus*, %struct.pci_bus** %16, align 8
  store %struct.pci_bus* %17, %struct.pci_bus** %4, align 8
  %18 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %19 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %11
  br label %66

23:                                               ; preds = %11
  %24 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %25 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @PCI_PRIMARY_BUS, align 4
  %28 = call i32 @pci_read_config_dword(i32 %26, i32 %27, i32* %5)
  %29 = load i32, i32* %5, align 4
  %30 = ashr i32 %29, 8
  %31 = and i32 %30, 255
  %32 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %33 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %31, %35
  br i1 %36, label %37, label %65

37:                                               ; preds = %23
  %38 = load i32, i32* %5, align 4
  %39 = and i32 %38, -16777216
  %40 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %41 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = trunc i64 %42 to i32
  %44 = shl i32 %43, 0
  %45 = or i32 %39, %44
  %46 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %47 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = shl i32 %49, 8
  %51 = or i32 %45, %50
  %52 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %53 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = trunc i64 %55 to i32
  %57 = shl i32 %56, 16
  %58 = or i32 %51, %57
  store i32 %58, i32* %5, align 4
  %59 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %60 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @PCI_PRIMARY_BUS, align 4
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @pci_write_config_dword(i32 %61, i32 %62, i32 %63)
  br label %65

65:                                               ; preds = %37, %23
  br label %66

66:                                               ; preds = %65, %22
  %67 = load %struct.acpiphp_context*, %struct.acpiphp_context** %3, align 8
  %68 = call i32 @acpiphp_let_context_go(%struct.acpiphp_context* %67)
  br label %69

69:                                               ; preds = %66, %10
  ret void
}

declare dso_local %struct.acpiphp_context* @acpiphp_grab_context(%struct.acpi_device*) #1

declare dso_local i32 @pci_read_config_dword(i32, i32, i32*) #1

declare dso_local i32 @pci_write_config_dword(i32, i32, i32) #1

declare dso_local i32 @acpiphp_let_context_go(%struct.acpiphp_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
