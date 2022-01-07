; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_pcwd_pci.c_pcipcwd_card_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_pcwd_pci.c_pcipcwd_card_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.pci_dev = type { i32 }

@nowayout = common dso_local global i32 0, align 4
@pcipcwd_miscdev = common dso_local global i32 0, align 4
@pcipcwd_private = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@pcipcwd_temp_miscdev = common dso_local global i32 0, align 4
@pcipcwd_notifier = common dso_local global i32 0, align 4
@cards_found = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @pcipcwd_card_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcipcwd_card_exit(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %3 = load i32, i32* @nowayout, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = call i32 (...) @pcipcwd_stop()
  br label %7

7:                                                ; preds = %5, %1
  %8 = call i32 @misc_deregister(i32* @pcipcwd_miscdev)
  %9 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pcipcwd_private, i32 0, i32 0), align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  %12 = call i32 @misc_deregister(i32* @pcipcwd_temp_miscdev)
  br label %13

13:                                               ; preds = %11, %7
  %14 = call i32 @unregister_reboot_notifier(i32* @pcipcwd_notifier)
  %15 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %16 = call i32 @pci_release_regions(%struct.pci_dev* %15)
  %17 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %18 = call i32 @pci_disable_device(%struct.pci_dev* %17)
  %19 = load i32, i32* @cards_found, align 4
  %20 = add nsw i32 %19, -1
  store i32 %20, i32* @cards_found, align 4
  ret void
}

declare dso_local i32 @pcipcwd_stop(...) #1

declare dso_local i32 @misc_deregister(i32*) #1

declare dso_local i32 @unregister_reboot_notifier(i32*) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
