; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_acpiphp_glue.c_acpiphp_enable_slot.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_acpiphp_glue.c_acpiphp_enable_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpiphp_slot = type { i32 }

@SLOT_IS_GOING_AWAY = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@SLOT_ENABLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpiphp_enable_slot(%struct.acpiphp_slot* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpiphp_slot*, align 8
  store %struct.acpiphp_slot* %0, %struct.acpiphp_slot** %3, align 8
  %4 = call i32 (...) @pci_lock_rescan_remove()
  %5 = load %struct.acpiphp_slot*, %struct.acpiphp_slot** %3, align 8
  %6 = getelementptr inbounds %struct.acpiphp_slot, %struct.acpiphp_slot* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @SLOT_IS_GOING_AWAY, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = call i32 (...) @pci_unlock_rescan_remove()
  %13 = load i32, i32* @ENODEV, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %27

15:                                               ; preds = %1
  %16 = load %struct.acpiphp_slot*, %struct.acpiphp_slot** %3, align 8
  %17 = getelementptr inbounds %struct.acpiphp_slot, %struct.acpiphp_slot* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @SLOT_ENABLED, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %15
  %23 = load %struct.acpiphp_slot*, %struct.acpiphp_slot** %3, align 8
  %24 = call i32 @enable_slot(%struct.acpiphp_slot* %23, i32 0)
  br label %25

25:                                               ; preds = %22, %15
  %26 = call i32 (...) @pci_unlock_rescan_remove()
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %25, %11
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i32 @pci_lock_rescan_remove(...) #1

declare dso_local i32 @pci_unlock_rescan_remove(...) #1

declare dso_local i32 @enable_slot(%struct.acpiphp_slot*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
