; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-hyperv.c_hv_pci_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-hyperv.c_hv_pci_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hv_device = type { i32 }
%struct.hv_pcibus_device = type { i64, %struct.TYPE_2__, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@hv_pcibus_installed = common dso_local global i64 0, align 8
@hv_pcibus_removed = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hv_device*)* @hv_pci_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hv_pci_remove(%struct.hv_device* %0) #0 {
  %2 = alloca %struct.hv_device*, align 8
  %3 = alloca %struct.hv_pcibus_device*, align 8
  store %struct.hv_device* %0, %struct.hv_device** %2, align 8
  %4 = load %struct.hv_device*, %struct.hv_device** %2, align 8
  %5 = call %struct.hv_pcibus_device* @hv_get_drvdata(%struct.hv_device* %4)
  store %struct.hv_pcibus_device* %5, %struct.hv_pcibus_device** %3, align 8
  %6 = load %struct.hv_pcibus_device*, %struct.hv_pcibus_device** %3, align 8
  %7 = getelementptr inbounds %struct.hv_pcibus_device, %struct.hv_pcibus_device* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @hv_pcibus_installed, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %27

11:                                               ; preds = %1
  %12 = call i32 (...) @pci_lock_rescan_remove()
  %13 = load %struct.hv_pcibus_device*, %struct.hv_pcibus_device** %3, align 8
  %14 = getelementptr inbounds %struct.hv_pcibus_device, %struct.hv_pcibus_device* %13, i32 0, i32 7
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @pci_stop_root_bus(i32 %15)
  %17 = load %struct.hv_pcibus_device*, %struct.hv_pcibus_device** %3, align 8
  %18 = call i32 @hv_pci_remove_slots(%struct.hv_pcibus_device* %17)
  %19 = load %struct.hv_pcibus_device*, %struct.hv_pcibus_device** %3, align 8
  %20 = getelementptr inbounds %struct.hv_pcibus_device, %struct.hv_pcibus_device* %19, i32 0, i32 7
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @pci_remove_root_bus(i32 %21)
  %23 = call i32 (...) @pci_unlock_rescan_remove()
  %24 = load i64, i64* @hv_pcibus_removed, align 8
  %25 = load %struct.hv_pcibus_device*, %struct.hv_pcibus_device** %3, align 8
  %26 = getelementptr inbounds %struct.hv_pcibus_device, %struct.hv_pcibus_device* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  br label %27

27:                                               ; preds = %11, %1
  %28 = load %struct.hv_device*, %struct.hv_device** %2, align 8
  %29 = call i32 @hv_pci_bus_exit(%struct.hv_device* %28)
  %30 = load %struct.hv_device*, %struct.hv_device** %2, align 8
  %31 = getelementptr inbounds %struct.hv_device, %struct.hv_device* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @vmbus_close(i32 %32)
  %34 = load %struct.hv_pcibus_device*, %struct.hv_pcibus_device** %3, align 8
  %35 = getelementptr inbounds %struct.hv_pcibus_device, %struct.hv_pcibus_device* %34, i32 0, i32 6
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @iounmap(i32 %36)
  %38 = load %struct.hv_pcibus_device*, %struct.hv_pcibus_device** %3, align 8
  %39 = call i32 @hv_free_config_window(%struct.hv_pcibus_device* %38)
  %40 = load %struct.hv_pcibus_device*, %struct.hv_pcibus_device** %3, align 8
  %41 = getelementptr inbounds %struct.hv_pcibus_device, %struct.hv_pcibus_device* %40, i32 0, i32 5
  %42 = call i32 @pci_free_resource_list(i32* %41)
  %43 = load %struct.hv_pcibus_device*, %struct.hv_pcibus_device** %3, align 8
  %44 = call i32 @hv_pci_free_bridge_windows(%struct.hv_pcibus_device* %43)
  %45 = load %struct.hv_pcibus_device*, %struct.hv_pcibus_device** %3, align 8
  %46 = getelementptr inbounds %struct.hv_pcibus_device, %struct.hv_pcibus_device* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @irq_domain_remove(i32 %47)
  %49 = load %struct.hv_pcibus_device*, %struct.hv_pcibus_device** %3, align 8
  %50 = getelementptr inbounds %struct.hv_pcibus_device, %struct.hv_pcibus_device* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @irq_domain_free_fwnode(i32 %52)
  %54 = load %struct.hv_pcibus_device*, %struct.hv_pcibus_device** %3, align 8
  %55 = call i32 @put_hvpcibus(%struct.hv_pcibus_device* %54)
  %56 = load %struct.hv_pcibus_device*, %struct.hv_pcibus_device** %3, align 8
  %57 = getelementptr inbounds %struct.hv_pcibus_device, %struct.hv_pcibus_device* %56, i32 0, i32 3
  %58 = call i32 @wait_for_completion(i32* %57)
  %59 = load %struct.hv_pcibus_device*, %struct.hv_pcibus_device** %3, align 8
  %60 = getelementptr inbounds %struct.hv_pcibus_device, %struct.hv_pcibus_device* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @destroy_workqueue(i32 %61)
  %63 = load %struct.hv_pcibus_device*, %struct.hv_pcibus_device** %3, align 8
  %64 = getelementptr inbounds %struct.hv_pcibus_device, %struct.hv_pcibus_device* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @hv_put_dom_num(i32 %66)
  %68 = load %struct.hv_pcibus_device*, %struct.hv_pcibus_device** %3, align 8
  %69 = ptrtoint %struct.hv_pcibus_device* %68 to i64
  %70 = call i32 @free_page(i64 %69)
  ret i32 0
}

declare dso_local %struct.hv_pcibus_device* @hv_get_drvdata(%struct.hv_device*) #1

declare dso_local i32 @pci_lock_rescan_remove(...) #1

declare dso_local i32 @pci_stop_root_bus(i32) #1

declare dso_local i32 @hv_pci_remove_slots(%struct.hv_pcibus_device*) #1

declare dso_local i32 @pci_remove_root_bus(i32) #1

declare dso_local i32 @pci_unlock_rescan_remove(...) #1

declare dso_local i32 @hv_pci_bus_exit(%struct.hv_device*) #1

declare dso_local i32 @vmbus_close(i32) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @hv_free_config_window(%struct.hv_pcibus_device*) #1

declare dso_local i32 @pci_free_resource_list(i32*) #1

declare dso_local i32 @hv_pci_free_bridge_windows(%struct.hv_pcibus_device*) #1

declare dso_local i32 @irq_domain_remove(i32) #1

declare dso_local i32 @irq_domain_free_fwnode(i32) #1

declare dso_local i32 @put_hvpcibus(%struct.hv_pcibus_device*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @destroy_workqueue(i32) #1

declare dso_local i32 @hv_put_dom_num(i32) #1

declare dso_local i32 @free_page(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
