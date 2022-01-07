; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_s390_pci_hpc.c_enable_slot.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_s390_pci_hpc.c_enable_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hotplug_slot = type { i32 }
%struct.slot = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }

@ZPCI_FN_STATE_STANDBY = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@ZPCI_DEVFN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hotplug_slot*)* @enable_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enable_slot(%struct.hotplug_slot* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hotplug_slot*, align 8
  %4 = alloca %struct.slot*, align 8
  %5 = alloca i32, align 4
  store %struct.hotplug_slot* %0, %struct.hotplug_slot** %3, align 8
  %6 = load %struct.hotplug_slot*, %struct.hotplug_slot** %3, align 8
  %7 = call %struct.slot* @to_slot(%struct.hotplug_slot* %6)
  store %struct.slot* %7, %struct.slot** %4, align 8
  %8 = load %struct.slot*, %struct.slot** %4, align 8
  %9 = getelementptr inbounds %struct.slot, %struct.slot* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @ZPCI_FN_STATE_STANDBY, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i32, i32* @EIO, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %54

18:                                               ; preds = %1
  %19 = load %struct.slot*, %struct.slot** %4, align 8
  %20 = call i32 @slot_configure(%struct.slot* %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* %5, align 4
  store i32 %24, i32* %2, align 4
  br label %54

25:                                               ; preds = %18
  %26 = load %struct.slot*, %struct.slot** %4, align 8
  %27 = getelementptr inbounds %struct.slot, %struct.slot* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = call i32 @zpci_enable_device(%struct.TYPE_2__* %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  br label %50

33:                                               ; preds = %25
  %34 = load %struct.slot*, %struct.slot** %4, align 8
  %35 = getelementptr inbounds %struct.slot, %struct.slot* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @ZPCI_DEVFN, align 4
  %40 = call i32 @pci_scan_slot(i32 %38, i32 %39)
  %41 = call i32 (...) @pci_lock_rescan_remove()
  %42 = load %struct.slot*, %struct.slot** %4, align 8
  %43 = getelementptr inbounds %struct.slot, %struct.slot* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @pci_bus_add_devices(i32 %46)
  %48 = call i32 (...) @pci_unlock_rescan_remove()
  %49 = load i32, i32* %5, align 4
  store i32 %49, i32* %2, align 4
  br label %54

50:                                               ; preds = %32
  %51 = load %struct.slot*, %struct.slot** %4, align 8
  %52 = call i32 @slot_deconfigure(%struct.slot* %51)
  %53 = load i32, i32* %5, align 4
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %50, %33, %23, %15
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local %struct.slot* @to_slot(%struct.hotplug_slot*) #1

declare dso_local i32 @slot_configure(%struct.slot*) #1

declare dso_local i32 @zpci_enable_device(%struct.TYPE_2__*) #1

declare dso_local i32 @pci_scan_slot(i32, i32) #1

declare dso_local i32 @pci_lock_rescan_remove(...) #1

declare dso_local i32 @pci_bus_add_devices(i32) #1

declare dso_local i32 @pci_unlock_rescan_remove(...) #1

declare dso_local i32 @slot_deconfigure(%struct.slot*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
