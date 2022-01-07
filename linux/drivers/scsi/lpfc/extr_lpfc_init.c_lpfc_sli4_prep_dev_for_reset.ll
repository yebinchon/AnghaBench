; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_sli4_prep_dev_for_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_sli4_prep_dev_for_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32 }

@KERN_ERR = common dso_local global i32 0, align 4
@LOG_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"2826 PCI channel disable preparing for reset\0A\00", align 1
@LPFC_MBX_NO_WAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpfc_hba*)* @lpfc_sli4_prep_dev_for_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_sli4_prep_dev_for_reset(%struct.lpfc_hba* %0) #0 {
  %2 = alloca %struct.lpfc_hba*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %2, align 8
  %3 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %4 = load i32, i32* @KERN_ERR, align 4
  %5 = load i32, i32* @LOG_INIT, align 4
  %6 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %3, i32 %4, i32 %5, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %8 = load i32, i32* @LPFC_MBX_NO_WAIT, align 4
  %9 = call i32 @lpfc_block_mgmt_io(%struct.lpfc_hba* %7, i32 %8)
  %10 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %11 = call i32 @lpfc_scsi_dev_block(%struct.lpfc_hba* %10)
  %12 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %13 = call i32 @lpfc_sli_flush_io_rings(%struct.lpfc_hba* %12)
  %14 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %15 = call i32 @lpfc_stop_hba_timers(%struct.lpfc_hba* %14)
  %16 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %17 = call i32 @lpfc_sli4_disable_intr(%struct.lpfc_hba* %16)
  %18 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %19 = call i32 @lpfc_sli4_queue_destroy(%struct.lpfc_hba* %18)
  %20 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %21 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @pci_disable_device(i32 %22)
  ret void
}

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*) #1

declare dso_local i32 @lpfc_block_mgmt_io(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @lpfc_scsi_dev_block(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_sli_flush_io_rings(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_stop_hba_timers(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_sli4_disable_intr(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_sli4_queue_destroy(%struct.lpfc_hba*) #1

declare dso_local i32 @pci_disable_device(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
