; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_main.c_hisi_sas_controller_reset_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_main.c_hisi_sas_controller_reset_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_hba = type { i32, i32, %struct.TYPE_2__*, i32, i32, %struct.Scsi_Host* }
%struct.TYPE_2__ = type { i32 (%struct.hisi_hba*, i32, i32)*, i32 (%struct.hisi_hba*)* }
%struct.Scsi_Host = type { i32 }

@HISI_SAS_REJECT_CMD_BIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hisi_sas_controller_reset_prepare(%struct.hisi_hba* %0) #0 {
  %2 = alloca %struct.hisi_hba*, align 8
  %3 = alloca %struct.Scsi_Host*, align 8
  store %struct.hisi_hba* %0, %struct.hisi_hba** %2, align 8
  %4 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %5 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %4, i32 0, i32 5
  %6 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  store %struct.Scsi_Host* %6, %struct.Scsi_Host** %3, align 8
  %7 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %8 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %7, i32 0, i32 4
  %9 = call i32 @down(i32* %8)
  %10 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %11 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %10, i32 0, i32 2
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i32 (%struct.hisi_hba*)*, i32 (%struct.hisi_hba*)** %13, align 8
  %15 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %16 = call i32 %14(%struct.hisi_hba* %15)
  %17 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %18 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %17, i32 0, i32 3
  store i32 %16, i32* %18, align 8
  %19 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %20 = call i32 @scsi_block_requests(%struct.Scsi_Host* %19)
  %21 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %22 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %21, i32 0, i32 2
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32 (%struct.hisi_hba*, i32, i32)*, i32 (%struct.hisi_hba*, i32, i32)** %24, align 8
  %26 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %27 = call i32 %25(%struct.hisi_hba* %26, i32 100, i32 5000)
  %28 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %29 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %28, i32 0, i32 1
  %30 = call i64 @timer_pending(i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %1
  %33 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %34 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %33, i32 0, i32 1
  %35 = call i32 @del_timer_sync(i32* %34)
  br label %36

36:                                               ; preds = %32, %1
  %37 = load i32, i32* @HISI_SAS_REJECT_CMD_BIT, align 4
  %38 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %39 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %38, i32 0, i32 0
  %40 = call i32 @set_bit(i32 %37, i32* %39)
  ret void
}

declare dso_local i32 @down(i32*) #1

declare dso_local i32 @scsi_block_requests(%struct.Scsi_Host*) #1

declare dso_local i64 @timer_pending(i32*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
