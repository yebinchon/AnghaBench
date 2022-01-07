; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_pnv_php.c_pnv_php_disable_slot.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_pnv_php.c_pnv_php_disable_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hotplug_slot = type { i32 }
%struct.pnv_php_slot = type { i64, i32, i32 }

@PNV_PHP_STATE_POPULATED = common dso_local global i64 0, align 8
@OPAL_PCI_SLOT_POWER_OFF = common dso_local global i32 0, align 4
@PNV_PHP_STATE_REGISTERED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hotplug_slot*)* @pnv_php_disable_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pnv_php_disable_slot(%struct.hotplug_slot* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hotplug_slot*, align 8
  %4 = alloca %struct.pnv_php_slot*, align 8
  %5 = alloca i32, align 4
  store %struct.hotplug_slot* %0, %struct.hotplug_slot** %3, align 8
  %6 = load %struct.hotplug_slot*, %struct.hotplug_slot** %3, align 8
  %7 = call %struct.pnv_php_slot* @to_pnv_php_slot(%struct.hotplug_slot* %6)
  store %struct.pnv_php_slot* %7, %struct.pnv_php_slot** %4, align 8
  %8 = load %struct.pnv_php_slot*, %struct.pnv_php_slot** %4, align 8
  %9 = getelementptr inbounds %struct.pnv_php_slot, %struct.pnv_php_slot* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @PNV_PHP_STATE_POPULATED, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %32

14:                                               ; preds = %1
  %15 = call i32 (...) @pci_lock_rescan_remove()
  %16 = load %struct.pnv_php_slot*, %struct.pnv_php_slot** %4, align 8
  %17 = getelementptr inbounds %struct.pnv_php_slot, %struct.pnv_php_slot* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @pci_hp_remove_devices(i32 %18)
  %20 = call i32 (...) @pci_unlock_rescan_remove()
  %21 = load %struct.pnv_php_slot*, %struct.pnv_php_slot** %4, align 8
  %22 = getelementptr inbounds %struct.pnv_php_slot, %struct.pnv_php_slot* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @pnv_php_unregister(i32 %23)
  %25 = load %struct.hotplug_slot*, %struct.hotplug_slot** %3, align 8
  %26 = load i32, i32* @OPAL_PCI_SLOT_POWER_OFF, align 4
  %27 = call i32 @pnv_php_set_slot_power_state(%struct.hotplug_slot* %25, i32 %26)
  store i32 %27, i32* %5, align 4
  %28 = load i64, i64* @PNV_PHP_STATE_REGISTERED, align 8
  %29 = load %struct.pnv_php_slot*, %struct.pnv_php_slot** %4, align 8
  %30 = getelementptr inbounds %struct.pnv_php_slot, %struct.pnv_php_slot* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  %31 = load i32, i32* %5, align 4
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %14, %13
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local %struct.pnv_php_slot* @to_pnv_php_slot(%struct.hotplug_slot*) #1

declare dso_local i32 @pci_lock_rescan_remove(...) #1

declare dso_local i32 @pci_hp_remove_devices(i32) #1

declare dso_local i32 @pci_unlock_rescan_remove(...) #1

declare dso_local i32 @pnv_php_unregister(i32) #1

declare dso_local i32 @pnv_php_set_slot_power_state(%struct.hotplug_slot*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
