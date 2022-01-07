; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v3_hw.c_debugfs_snapshot_prepare_v3_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v3_hw.c_debugfs_snapshot_prepare_v3_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_hba = type { i32 }

@HISI_SAS_REJECT_CMD_BIT = common dso_local global i32 0, align 4
@DLVRY_QUEUE_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hisi_hba*)* @debugfs_snapshot_prepare_v3_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @debugfs_snapshot_prepare_v3_hw(%struct.hisi_hba* %0) #0 {
  %2 = alloca %struct.hisi_hba*, align 8
  store %struct.hisi_hba* %0, %struct.hisi_hba** %2, align 8
  %3 = load i32, i32* @HISI_SAS_REJECT_CMD_BIT, align 4
  %4 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %5 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %4, i32 0, i32 0
  %6 = call i32 @set_bit(i32 %3, i32* %5)
  %7 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %8 = load i32, i32* @DLVRY_QUEUE_ENABLE, align 4
  %9 = call i32 @hisi_sas_write32(%struct.hisi_hba* %7, i32 %8, i32 0)
  %10 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %11 = call i32 @wait_cmds_complete_timeout_v3_hw(%struct.hisi_hba* %10, i32 100, i32 5000)
  %12 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %13 = call i32 @hisi_sas_kill_tasklets(%struct.hisi_hba* %12)
  ret void
}

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @hisi_sas_write32(%struct.hisi_hba*, i32, i32) #1

declare dso_local i32 @wait_cmds_complete_timeout_v3_hw(%struct.hisi_hba*, i32, i32) #1

declare dso_local i32 @hisi_sas_kill_tasklets(%struct.hisi_hba*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
