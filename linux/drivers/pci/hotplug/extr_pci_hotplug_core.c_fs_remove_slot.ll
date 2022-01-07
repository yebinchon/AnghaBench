; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_pci_hotplug_core.c_fs_remove_slot.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_pci_hotplug_core.c_fs_remove_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.pci_slot = type { i32 }

@hotplug_slot_attr_power = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@hotplug_slot_attr_attention = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@hotplug_slot_attr_latch = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@hotplug_slot_attr_presence = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@hotplug_slot_attr_test = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_slot*)* @fs_remove_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fs_remove_slot(%struct.pci_slot* %0) #0 {
  %2 = alloca %struct.pci_slot*, align 8
  store %struct.pci_slot* %0, %struct.pci_slot** %2, align 8
  %3 = load %struct.pci_slot*, %struct.pci_slot** %2, align 8
  %4 = call i64 @has_power_file(%struct.pci_slot* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = load %struct.pci_slot*, %struct.pci_slot** %2, align 8
  %8 = getelementptr inbounds %struct.pci_slot, %struct.pci_slot* %7, i32 0, i32 0
  %9 = call i32 @sysfs_remove_file(i32* %8, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @hotplug_slot_attr_power, i32 0, i32 0))
  br label %10

10:                                               ; preds = %6, %1
  %11 = load %struct.pci_slot*, %struct.pci_slot** %2, align 8
  %12 = call i64 @has_attention_file(%struct.pci_slot* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = load %struct.pci_slot*, %struct.pci_slot** %2, align 8
  %16 = getelementptr inbounds %struct.pci_slot, %struct.pci_slot* %15, i32 0, i32 0
  %17 = call i32 @sysfs_remove_file(i32* %16, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @hotplug_slot_attr_attention, i32 0, i32 0))
  br label %18

18:                                               ; preds = %14, %10
  %19 = load %struct.pci_slot*, %struct.pci_slot** %2, align 8
  %20 = call i64 @has_latch_file(%struct.pci_slot* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = load %struct.pci_slot*, %struct.pci_slot** %2, align 8
  %24 = getelementptr inbounds %struct.pci_slot, %struct.pci_slot* %23, i32 0, i32 0
  %25 = call i32 @sysfs_remove_file(i32* %24, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @hotplug_slot_attr_latch, i32 0, i32 0))
  br label %26

26:                                               ; preds = %22, %18
  %27 = load %struct.pci_slot*, %struct.pci_slot** %2, align 8
  %28 = call i64 @has_adapter_file(%struct.pci_slot* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = load %struct.pci_slot*, %struct.pci_slot** %2, align 8
  %32 = getelementptr inbounds %struct.pci_slot, %struct.pci_slot* %31, i32 0, i32 0
  %33 = call i32 @sysfs_remove_file(i32* %32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @hotplug_slot_attr_presence, i32 0, i32 0))
  br label %34

34:                                               ; preds = %30, %26
  %35 = load %struct.pci_slot*, %struct.pci_slot** %2, align 8
  %36 = call i64 @has_test_file(%struct.pci_slot* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = load %struct.pci_slot*, %struct.pci_slot** %2, align 8
  %40 = getelementptr inbounds %struct.pci_slot, %struct.pci_slot* %39, i32 0, i32 0
  %41 = call i32 @sysfs_remove_file(i32* %40, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @hotplug_slot_attr_test, i32 0, i32 0))
  br label %42

42:                                               ; preds = %38, %34
  %43 = load %struct.pci_slot*, %struct.pci_slot** %2, align 8
  %44 = call i32 @pci_hp_remove_module_link(%struct.pci_slot* %43)
  ret void
}

declare dso_local i64 @has_power_file(%struct.pci_slot*) #1

declare dso_local i32 @sysfs_remove_file(i32*, i32*) #1

declare dso_local i64 @has_attention_file(%struct.pci_slot*) #1

declare dso_local i64 @has_latch_file(%struct.pci_slot*) #1

declare dso_local i64 @has_adapter_file(%struct.pci_slot*) #1

declare dso_local i64 @has_test_file(%struct.pci_slot*) #1

declare dso_local i32 @pci_hp_remove_module_link(%struct.pci_slot*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
