; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_pci_hotplug_core.c_pci_hp_del.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_pci_hotplug_core.c_pci_hp_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hotplug_slot = type { i32, i32 }

@pci_hp_mutex = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Removed slot %s from the list\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pci_hp_del(%struct.hotplug_slot* %0) #0 {
  %2 = alloca %struct.hotplug_slot*, align 8
  %3 = alloca %struct.hotplug_slot*, align 8
  store %struct.hotplug_slot* %0, %struct.hotplug_slot** %2, align 8
  %4 = load %struct.hotplug_slot*, %struct.hotplug_slot** %2, align 8
  %5 = icmp ne %struct.hotplug_slot* %4, null
  %6 = xor i1 %5, true
  %7 = zext i1 %6 to i32
  %8 = call i64 @WARN_ON(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %36

11:                                               ; preds = %1
  %12 = call i32 @mutex_lock(i32* @pci_hp_mutex)
  %13 = load %struct.hotplug_slot*, %struct.hotplug_slot** %2, align 8
  %14 = call i32 @hotplug_slot_name(%struct.hotplug_slot* %13)
  %15 = call %struct.hotplug_slot* @get_slot_from_name(i32 %14)
  store %struct.hotplug_slot* %15, %struct.hotplug_slot** %3, align 8
  %16 = load %struct.hotplug_slot*, %struct.hotplug_slot** %3, align 8
  %17 = load %struct.hotplug_slot*, %struct.hotplug_slot** %2, align 8
  %18 = icmp ne %struct.hotplug_slot* %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i64 @WARN_ON(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %11
  %23 = call i32 @mutex_unlock(i32* @pci_hp_mutex)
  br label %36

24:                                               ; preds = %11
  %25 = load %struct.hotplug_slot*, %struct.hotplug_slot** %2, align 8
  %26 = getelementptr inbounds %struct.hotplug_slot, %struct.hotplug_slot* %25, i32 0, i32 1
  %27 = call i32 @list_del(i32* %26)
  %28 = call i32 @mutex_unlock(i32* @pci_hp_mutex)
  %29 = load %struct.hotplug_slot*, %struct.hotplug_slot** %2, align 8
  %30 = call i32 @hotplug_slot_name(%struct.hotplug_slot* %29)
  %31 = call i32 @dbg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load %struct.hotplug_slot*, %struct.hotplug_slot** %2, align 8
  %33 = getelementptr inbounds %struct.hotplug_slot, %struct.hotplug_slot* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @fs_remove_slot(i32 %34)
  br label %36

36:                                               ; preds = %24, %22, %10
  ret void
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.hotplug_slot* @get_slot_from_name(i32) #1

declare dso_local i32 @hotplug_slot_name(%struct.hotplug_slot*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @dbg(i8*, i32) #1

declare dso_local i32 @fs_remove_slot(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
