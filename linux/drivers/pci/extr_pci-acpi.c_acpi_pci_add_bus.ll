; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_pci-acpi.c_acpi_pci_add_bus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_pci-acpi.c_acpi_pci_add_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i32 }
%union.acpi_object = type { i64 }
%struct.pci_host_bridge = type { i32 }
%struct.TYPE_2__ = type { i32 }

@acpi_pci_disabled = common dso_local global i64 0, align 8
@pci_acpi_dsm_guid = common dso_local global i32 0, align 4
@RESET_DELAY_DSM = common dso_local global i32 0, align 4
@ACPI_TYPE_INTEGER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @acpi_pci_add_bus(%struct.pci_bus* %0) #0 {
  %2 = alloca %struct.pci_bus*, align 8
  %3 = alloca %union.acpi_object*, align 8
  %4 = alloca %struct.pci_host_bridge*, align 8
  store %struct.pci_bus* %0, %struct.pci_bus** %2, align 8
  %5 = load i64, i64* @acpi_pci_disabled, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %18, label %7

7:                                                ; preds = %1
  %8 = load %struct.pci_bus*, %struct.pci_bus** %2, align 8
  %9 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %7
  %13 = load %struct.pci_bus*, %struct.pci_bus** %2, align 8
  %14 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @ACPI_HANDLE(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %12, %7, %1
  br label %58

19:                                               ; preds = %12
  %20 = load %struct.pci_bus*, %struct.pci_bus** %2, align 8
  %21 = call i32 @acpi_pci_slot_enumerate(%struct.pci_bus* %20)
  %22 = load %struct.pci_bus*, %struct.pci_bus** %2, align 8
  %23 = call i32 @acpiphp_enumerate_slots(%struct.pci_bus* %22)
  %24 = load %struct.pci_bus*, %struct.pci_bus** %2, align 8
  %25 = call i32 @pci_is_root_bus(%struct.pci_bus* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %19
  br label %58

28:                                               ; preds = %19
  %29 = load %struct.pci_bus*, %struct.pci_bus** %2, align 8
  %30 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @ACPI_HANDLE(i32 %31)
  %33 = load i32, i32* @RESET_DELAY_DSM, align 4
  %34 = call %union.acpi_object* @acpi_evaluate_dsm(i32 %32, i32* @pci_acpi_dsm_guid, i32 3, i32 %33, i32* null)
  store %union.acpi_object* %34, %union.acpi_object** %3, align 8
  %35 = load %union.acpi_object*, %union.acpi_object** %3, align 8
  %36 = icmp ne %union.acpi_object* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %28
  br label %58

38:                                               ; preds = %28
  %39 = load %union.acpi_object*, %union.acpi_object** %3, align 8
  %40 = bitcast %union.acpi_object* %39 to i64*
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @ACPI_TYPE_INTEGER, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %55

44:                                               ; preds = %38
  %45 = load %union.acpi_object*, %union.acpi_object** %3, align 8
  %46 = bitcast %union.acpi_object* %45 to %struct.TYPE_2__*
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %50, label %55

50:                                               ; preds = %44
  %51 = load %struct.pci_bus*, %struct.pci_bus** %2, align 8
  %52 = call %struct.pci_host_bridge* @pci_find_host_bridge(%struct.pci_bus* %51)
  store %struct.pci_host_bridge* %52, %struct.pci_host_bridge** %4, align 8
  %53 = load %struct.pci_host_bridge*, %struct.pci_host_bridge** %4, align 8
  %54 = getelementptr inbounds %struct.pci_host_bridge, %struct.pci_host_bridge* %53, i32 0, i32 0
  store i32 1, i32* %54, align 4
  br label %55

55:                                               ; preds = %50, %44, %38
  %56 = load %union.acpi_object*, %union.acpi_object** %3, align 8
  %57 = call i32 @ACPI_FREE(%union.acpi_object* %56)
  br label %58

58:                                               ; preds = %55, %37, %27, %18
  ret void
}

declare dso_local i32 @ACPI_HANDLE(i32) #1

declare dso_local i32 @acpi_pci_slot_enumerate(%struct.pci_bus*) #1

declare dso_local i32 @acpiphp_enumerate_slots(%struct.pci_bus*) #1

declare dso_local i32 @pci_is_root_bus(%struct.pci_bus*) #1

declare dso_local %union.acpi_object* @acpi_evaluate_dsm(i32, i32*, i32, i32, i32*) #1

declare dso_local %struct.pci_host_bridge* @pci_find_host_bridge(%struct.pci_bus*) #1

declare dso_local i32 @ACPI_FREE(%union.acpi_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
