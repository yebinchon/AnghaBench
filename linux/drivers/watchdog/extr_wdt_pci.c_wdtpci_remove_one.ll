; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_wdt_pci.c_wdtpci_remove_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_wdt_pci.c_wdtpci_remove_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

@wdtpci_miscdev = common dso_local global i32 0, align 4
@type = common dso_local global i32 0, align 4
@temp_miscdev = common dso_local global i32 0, align 4
@wdtpci_notifier = common dso_local global i32 0, align 4
@irq = common dso_local global i32 0, align 4
@dev_count = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @wdtpci_remove_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wdtpci_remove_one(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %3 = call i32 @misc_deregister(i32* @wdtpci_miscdev)
  %4 = load i32, i32* @type, align 4
  %5 = icmp eq i32 %4, 501
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = call i32 @misc_deregister(i32* @temp_miscdev)
  br label %8

8:                                                ; preds = %6, %1
  %9 = call i32 @unregister_reboot_notifier(i32* @wdtpci_notifier)
  %10 = load i32, i32* @irq, align 4
  %11 = call i32 @free_irq(i32 %10, i32* @wdtpci_miscdev)
  %12 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %13 = call i32 @pci_release_region(%struct.pci_dev* %12, i32 2)
  %14 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %15 = call i32 @pci_disable_device(%struct.pci_dev* %14)
  %16 = load i32, i32* @dev_count, align 4
  %17 = add nsw i32 %16, -1
  store i32 %17, i32* @dev_count, align 4
  ret void
}

declare dso_local i32 @misc_deregister(i32*) #1

declare dso_local i32 @unregister_reboot_notifier(i32*) #1

declare dso_local i32 @free_irq(i32, i32*) #1

declare dso_local i32 @pci_release_region(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
