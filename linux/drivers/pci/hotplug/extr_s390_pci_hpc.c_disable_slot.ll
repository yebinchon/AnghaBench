; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_s390_pci_hpc.c_disable_slot.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_s390_pci_hpc.c_disable_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hotplug_slot = type { i32 }
%struct.slot = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.pci_dev = type { i32 }

@EIO = common dso_local global i32 0, align 4
@ZPCI_DEVFN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hotplug_slot*)* @disable_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @disable_slot(%struct.hotplug_slot* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hotplug_slot*, align 8
  %4 = alloca %struct.slot*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.hotplug_slot* %0, %struct.hotplug_slot** %3, align 8
  %7 = load %struct.hotplug_slot*, %struct.hotplug_slot** %3, align 8
  %8 = call %struct.slot* @to_slot(%struct.hotplug_slot* %7)
  store %struct.slot* %8, %struct.slot** %4, align 8
  %9 = load %struct.slot*, %struct.slot** %4, align 8
  %10 = getelementptr inbounds %struct.slot, %struct.slot* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @zpci_fn_configured(i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @EIO, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %46

19:                                               ; preds = %1
  %20 = load %struct.slot*, %struct.slot** %4, align 8
  %21 = getelementptr inbounds %struct.slot, %struct.slot* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @ZPCI_DEVFN, align 4
  %26 = call %struct.pci_dev* @pci_get_slot(i32 %24, i32 %25)
  store %struct.pci_dev* %26, %struct.pci_dev** %5, align 8
  %27 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %28 = icmp ne %struct.pci_dev* %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %19
  %30 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %31 = call i32 @pci_stop_and_remove_bus_device_locked(%struct.pci_dev* %30)
  %32 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %33 = call i32 @pci_dev_put(%struct.pci_dev* %32)
  br label %34

34:                                               ; preds = %29, %19
  %35 = load %struct.slot*, %struct.slot** %4, align 8
  %36 = getelementptr inbounds %struct.slot, %struct.slot* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = call i32 @zpci_disable_device(%struct.TYPE_2__* %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = load i32, i32* %6, align 4
  store i32 %42, i32* %2, align 4
  br label %46

43:                                               ; preds = %34
  %44 = load %struct.slot*, %struct.slot** %4, align 8
  %45 = call i32 @slot_deconfigure(%struct.slot* %44)
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %43, %41, %16
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local %struct.slot* @to_slot(%struct.hotplug_slot*) #1

declare dso_local i32 @zpci_fn_configured(i32) #1

declare dso_local %struct.pci_dev* @pci_get_slot(i32, i32) #1

declare dso_local i32 @pci_stop_and_remove_bus_device_locked(%struct.pci_dev*) #1

declare dso_local i32 @pci_dev_put(%struct.pci_dev*) #1

declare dso_local i32 @zpci_disable_device(%struct.TYPE_2__*) #1

declare dso_local i32 @slot_deconfigure(%struct.slot*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
