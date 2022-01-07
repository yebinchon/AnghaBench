; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_pci_hotplug_core.c_pci_hp_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_pci_hotplug_core.c_pci_hp_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hotplug_slot = type { i32, %struct.pci_slot* }
%struct.pci_slot = type { i32 }

@KOBJ_ADD = common dso_local global i32 0, align 4
@pci_hp_mutex = common dso_local global i32 0, align 4
@pci_hotplug_slot_list = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Added slot %s to the list\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pci_hp_add(%struct.hotplug_slot* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hotplug_slot*, align 8
  %4 = alloca %struct.pci_slot*, align 8
  %5 = alloca i32, align 4
  store %struct.hotplug_slot* %0, %struct.hotplug_slot** %3, align 8
  %6 = load %struct.hotplug_slot*, %struct.hotplug_slot** %3, align 8
  %7 = getelementptr inbounds %struct.hotplug_slot, %struct.hotplug_slot* %6, i32 0, i32 1
  %8 = load %struct.pci_slot*, %struct.pci_slot** %7, align 8
  store %struct.pci_slot* %8, %struct.pci_slot** %4, align 8
  %9 = load %struct.pci_slot*, %struct.pci_slot** %4, align 8
  %10 = call i32 @fs_add_slot(%struct.pci_slot* %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %5, align 4
  store i32 %14, i32* %2, align 4
  br label %28

15:                                               ; preds = %1
  %16 = load %struct.pci_slot*, %struct.pci_slot** %4, align 8
  %17 = getelementptr inbounds %struct.pci_slot, %struct.pci_slot* %16, i32 0, i32 0
  %18 = load i32, i32* @KOBJ_ADD, align 4
  %19 = call i32 @kobject_uevent(i32* %17, i32 %18)
  %20 = call i32 @mutex_lock(i32* @pci_hp_mutex)
  %21 = load %struct.hotplug_slot*, %struct.hotplug_slot** %3, align 8
  %22 = getelementptr inbounds %struct.hotplug_slot, %struct.hotplug_slot* %21, i32 0, i32 0
  %23 = call i32 @list_add(i32* %22, i32* @pci_hotplug_slot_list)
  %24 = call i32 @mutex_unlock(i32* @pci_hp_mutex)
  %25 = load %struct.hotplug_slot*, %struct.hotplug_slot** %3, align 8
  %26 = call i32 @hotplug_slot_name(%struct.hotplug_slot* %25)
  %27 = call i32 @dbg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %26)
  store i32 0, i32* %2, align 4
  br label %28

28:                                               ; preds = %15, %13
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i32 @fs_add_slot(%struct.pci_slot*) #1

declare dso_local i32 @kobject_uevent(i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dbg(i8*, i32) #1

declare dso_local i32 @hotplug_slot_name(%struct.hotplug_slot*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
