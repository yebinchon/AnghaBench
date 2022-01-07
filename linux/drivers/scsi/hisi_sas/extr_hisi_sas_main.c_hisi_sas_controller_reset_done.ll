; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_main.c_hisi_sas_controller_reset_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_main.c_hisi_sas_controller_reset_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_hba = type { %struct.TYPE_2__*, i32, i32, i64, %struct.Scsi_Host* }
%struct.TYPE_2__ = type { i32 (%struct.hisi_hba*)*, i32 (%struct.hisi_hba*)* }
%struct.Scsi_Host = type { i32 }

@HISI_SAS_REJECT_CMD_BIT = common dso_local global i32 0, align 4
@HISI_SAS_RESET_BIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hisi_sas_controller_reset_done(%struct.hisi_hba* %0) #0 {
  %2 = alloca %struct.hisi_hba*, align 8
  %3 = alloca %struct.Scsi_Host*, align 8
  %4 = alloca i32, align 4
  store %struct.hisi_hba* %0, %struct.hisi_hba** %2, align 8
  %5 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %6 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %5, i32 0, i32 4
  %7 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  store %struct.Scsi_Host* %7, %struct.Scsi_Host** %3, align 8
  %8 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %9 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load i32 (%struct.hisi_hba*)*, i32 (%struct.hisi_hba*)** %11, align 8
  %13 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %14 = call i32 %12(%struct.hisi_hba* %13)
  %15 = call i32 @msleep(i32 1000)
  %16 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %17 = call i32 @hisi_sas_refresh_port_id(%struct.hisi_hba* %16)
  %18 = load i32, i32* @HISI_SAS_REJECT_CMD_BIT, align 4
  %19 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %20 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %19, i32 0, i32 1
  %21 = call i32 @clear_bit(i32 %18, i32* %20)
  %22 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %23 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %1
  %27 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %28 = call i32 @hisi_sas_terminate_stp_reject(%struct.hisi_hba* %27)
  br label %29

29:                                               ; preds = %26, %1
  %30 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %31 = call i32 @hisi_sas_reset_init_all_devices(%struct.hisi_hba* %30)
  %32 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %33 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %32, i32 0, i32 2
  %34 = call i32 @up(i32* %33)
  %35 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %36 = call i32 @scsi_unblock_requests(%struct.Scsi_Host* %35)
  %37 = load i32, i32* @HISI_SAS_RESET_BIT, align 4
  %38 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %39 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %38, i32 0, i32 1
  %40 = call i32 @clear_bit(i32 %37, i32* %39)
  %41 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %42 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32 (%struct.hisi_hba*)*, i32 (%struct.hisi_hba*)** %44, align 8
  %46 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %47 = call i32 %45(%struct.hisi_hba* %46)
  store i32 %47, i32* %4, align 4
  %48 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @hisi_sas_rescan_topology(%struct.hisi_hba* %48, i32 %49)
  ret void
}

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @hisi_sas_refresh_port_id(%struct.hisi_hba*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @hisi_sas_terminate_stp_reject(%struct.hisi_hba*) #1

declare dso_local i32 @hisi_sas_reset_init_all_devices(%struct.hisi_hba*) #1

declare dso_local i32 @up(i32*) #1

declare dso_local i32 @scsi_unblock_requests(%struct.Scsi_Host*) #1

declare dso_local i32 @hisi_sas_rescan_topology(%struct.hisi_hba*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
