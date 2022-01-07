; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-hyperv.c_create_root_hv_pci_bus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-hyperv.c_create_root_hv_pci_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hv_pcibus_device = type { i32, %struct.TYPE_9__*, %struct.TYPE_8__*, %struct.TYPE_7__, i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32* }

@hv_pcifront_ops = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@hv_pcibus_installed = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hv_pcibus_device*)* @create_root_hv_pci_bus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_root_hv_pci_bus(%struct.hv_pcibus_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hv_pcibus_device*, align 8
  store %struct.hv_pcibus_device* %0, %struct.hv_pcibus_device** %3, align 8
  %4 = load %struct.hv_pcibus_device*, %struct.hv_pcibus_device** %3, align 8
  %5 = getelementptr inbounds %struct.hv_pcibus_device, %struct.hv_pcibus_device* %4, i32 0, i32 2
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %8 = load %struct.hv_pcibus_device*, %struct.hv_pcibus_device** %3, align 8
  %9 = getelementptr inbounds %struct.hv_pcibus_device, %struct.hv_pcibus_device* %8, i32 0, i32 5
  %10 = load %struct.hv_pcibus_device*, %struct.hv_pcibus_device** %3, align 8
  %11 = getelementptr inbounds %struct.hv_pcibus_device, %struct.hv_pcibus_device* %10, i32 0, i32 4
  %12 = call %struct.TYPE_9__* @pci_create_root_bus(i32* %7, i32 0, i32* @hv_pcifront_ops, i32* %9, i32* %11)
  %13 = load %struct.hv_pcibus_device*, %struct.hv_pcibus_device** %3, align 8
  %14 = getelementptr inbounds %struct.hv_pcibus_device, %struct.hv_pcibus_device* %13, i32 0, i32 1
  store %struct.TYPE_9__* %12, %struct.TYPE_9__** %14, align 8
  %15 = load %struct.hv_pcibus_device*, %struct.hv_pcibus_device** %3, align 8
  %16 = getelementptr inbounds %struct.hv_pcibus_device, %struct.hv_pcibus_device* %15, i32 0, i32 1
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %18 = icmp ne %struct.TYPE_9__* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %58

22:                                               ; preds = %1
  %23 = load %struct.hv_pcibus_device*, %struct.hv_pcibus_device** %3, align 8
  %24 = getelementptr inbounds %struct.hv_pcibus_device, %struct.hv_pcibus_device* %23, i32 0, i32 3
  %25 = load %struct.hv_pcibus_device*, %struct.hv_pcibus_device** %3, align 8
  %26 = getelementptr inbounds %struct.hv_pcibus_device, %struct.hv_pcibus_device* %25, i32 0, i32 1
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  store %struct.TYPE_7__* %24, %struct.TYPE_7__** %28, align 8
  %29 = load %struct.hv_pcibus_device*, %struct.hv_pcibus_device** %3, align 8
  %30 = getelementptr inbounds %struct.hv_pcibus_device, %struct.hv_pcibus_device* %29, i32 0, i32 2
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load %struct.hv_pcibus_device*, %struct.hv_pcibus_device** %3, align 8
  %34 = getelementptr inbounds %struct.hv_pcibus_device, %struct.hv_pcibus_device* %33, i32 0, i32 1
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  store i32* %32, i32** %38, align 8
  %39 = call i32 (...) @pci_lock_rescan_remove()
  %40 = load %struct.hv_pcibus_device*, %struct.hv_pcibus_device** %3, align 8
  %41 = getelementptr inbounds %struct.hv_pcibus_device, %struct.hv_pcibus_device* %40, i32 0, i32 1
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %41, align 8
  %43 = call i32 @pci_scan_child_bus(%struct.TYPE_9__* %42)
  %44 = load %struct.hv_pcibus_device*, %struct.hv_pcibus_device** %3, align 8
  %45 = getelementptr inbounds %struct.hv_pcibus_device, %struct.hv_pcibus_device* %44, i32 0, i32 1
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %45, align 8
  %47 = call i32 @pci_bus_assign_resources(%struct.TYPE_9__* %46)
  %48 = load %struct.hv_pcibus_device*, %struct.hv_pcibus_device** %3, align 8
  %49 = call i32 @hv_pci_assign_slots(%struct.hv_pcibus_device* %48)
  %50 = load %struct.hv_pcibus_device*, %struct.hv_pcibus_device** %3, align 8
  %51 = getelementptr inbounds %struct.hv_pcibus_device, %struct.hv_pcibus_device* %50, i32 0, i32 1
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %51, align 8
  %53 = call i32 @pci_bus_add_devices(%struct.TYPE_9__* %52)
  %54 = call i32 (...) @pci_unlock_rescan_remove()
  %55 = load i32, i32* @hv_pcibus_installed, align 4
  %56 = load %struct.hv_pcibus_device*, %struct.hv_pcibus_device** %3, align 8
  %57 = getelementptr inbounds %struct.hv_pcibus_device, %struct.hv_pcibus_device* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  store i32 0, i32* %2, align 4
  br label %58

58:                                               ; preds = %22, %19
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local %struct.TYPE_9__* @pci_create_root_bus(i32*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @pci_lock_rescan_remove(...) #1

declare dso_local i32 @pci_scan_child_bus(%struct.TYPE_9__*) #1

declare dso_local i32 @pci_bus_assign_resources(%struct.TYPE_9__*) #1

declare dso_local i32 @hv_pci_assign_slots(%struct.hv_pcibus_device*) #1

declare dso_local i32 @pci_bus_add_devices(%struct.TYPE_9__*) #1

declare dso_local i32 @pci_unlock_rescan_remove(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
