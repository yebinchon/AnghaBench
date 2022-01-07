; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_stex.c_stex_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_stex.c_stex_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.st_hba = type { i32, i32 }

@MU_STATE_NOCONNECT = common dso_local global i32 0, align 4
@DID_NO_CONNECT = common dso_local global i32 0, align 4
@stex_notifier = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @stex_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stex_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.st_hba*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %4 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %5 = call %struct.st_hba* @pci_get_drvdata(%struct.pci_dev* %4)
  store %struct.st_hba* %5, %struct.st_hba** %3, align 8
  %6 = load i32, i32* @MU_STATE_NOCONNECT, align 4
  %7 = load %struct.st_hba*, %struct.st_hba** %3, align 8
  %8 = getelementptr inbounds %struct.st_hba, %struct.st_hba* %7, i32 0, i32 1
  store i32 %6, i32* %8, align 4
  %9 = load %struct.st_hba*, %struct.st_hba** %3, align 8
  %10 = load i32, i32* @DID_NO_CONNECT, align 4
  %11 = call i32 @return_abnormal_state(%struct.st_hba* %9, i32 %10)
  %12 = load %struct.st_hba*, %struct.st_hba** %3, align 8
  %13 = getelementptr inbounds %struct.st_hba, %struct.st_hba* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @scsi_remove_host(i32 %14)
  %16 = load %struct.st_hba*, %struct.st_hba** %3, align 8
  %17 = getelementptr inbounds %struct.st_hba, %struct.st_hba* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @scsi_block_requests(i32 %18)
  %20 = load %struct.st_hba*, %struct.st_hba** %3, align 8
  %21 = call i32 @stex_hba_free(%struct.st_hba* %20)
  %22 = load %struct.st_hba*, %struct.st_hba** %3, align 8
  %23 = getelementptr inbounds %struct.st_hba, %struct.st_hba* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @scsi_host_put(i32 %24)
  %26 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %27 = call i32 @pci_disable_device(%struct.pci_dev* %26)
  %28 = call i32 @unregister_reboot_notifier(i32* @stex_notifier)
  ret void
}

declare dso_local %struct.st_hba* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @return_abnormal_state(%struct.st_hba*, i32) #1

declare dso_local i32 @scsi_remove_host(i32) #1

declare dso_local i32 @scsi_block_requests(i32) #1

declare dso_local i32 @stex_hba_free(%struct.st_hba*) #1

declare dso_local i32 @scsi_host_put(i32) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @unregister_reboot_notifier(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
