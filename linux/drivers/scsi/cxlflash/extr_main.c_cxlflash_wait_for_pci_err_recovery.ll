; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/cxlflash/extr_main.c_cxlflash_wait_for_pci_err_recovery.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/cxlflash/extr_main.c_cxlflash_wait_for_pci_err_recovery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxlflash_cfg = type { i32, %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@CXLFLASH_PCI_ERROR_RECOVERY_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cxlflash_cfg*)* @cxlflash_wait_for_pci_err_recovery to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cxlflash_wait_for_pci_err_recovery(%struct.cxlflash_cfg* %0) #0 {
  %2 = alloca %struct.cxlflash_cfg*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  store %struct.cxlflash_cfg* %0, %struct.cxlflash_cfg** %2, align 8
  %4 = load %struct.cxlflash_cfg*, %struct.cxlflash_cfg** %2, align 8
  %5 = getelementptr inbounds %struct.cxlflash_cfg, %struct.cxlflash_cfg* %4, i32 0, i32 1
  %6 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  store %struct.pci_dev* %6, %struct.pci_dev** %3, align 8
  %7 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %8 = call i64 @pci_channel_offline(%struct.pci_dev* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %21

10:                                               ; preds = %1
  %11 = load %struct.cxlflash_cfg*, %struct.cxlflash_cfg** %2, align 8
  %12 = getelementptr inbounds %struct.cxlflash_cfg, %struct.cxlflash_cfg* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %15 = call i64 @pci_channel_offline(%struct.pci_dev* %14)
  %16 = icmp ne i64 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = load i32, i32* @CXLFLASH_PCI_ERROR_RECOVERY_TIMEOUT, align 4
  %20 = call i32 @wait_event_timeout(i32 %13, i32 %18, i32 %19)
  br label %21

21:                                               ; preds = %10, %1
  ret void
}

declare dso_local i64 @pci_channel_offline(%struct.pci_dev*) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
