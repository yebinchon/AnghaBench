; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_main.c_hisi_sas_scan_finished.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_main.c_hisi_sas_scan_finished.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32 }
%struct.hisi_hba = type { %struct.sas_ha_struct }
%struct.sas_ha_struct = type { i32 }

@HZ = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hisi_sas_scan_finished(%struct.Scsi_Host* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.Scsi_Host*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.hisi_hba*, align 8
  %7 = alloca %struct.sas_ha_struct*, align 8
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %9 = call %struct.hisi_hba* @shost_priv(%struct.Scsi_Host* %8)
  store %struct.hisi_hba* %9, %struct.hisi_hba** %6, align 8
  %10 = load %struct.hisi_hba*, %struct.hisi_hba** %6, align 8
  %11 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %10, i32 0, i32 0
  store %struct.sas_ha_struct* %11, %struct.sas_ha_struct** %7, align 8
  %12 = load i64, i64* %5, align 8
  %13 = load i64, i64* @HZ, align 8
  %14 = icmp ult i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %19

16:                                               ; preds = %2
  %17 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %7, align 8
  %18 = call i32 @sas_drain_work(%struct.sas_ha_struct* %17)
  store i32 1, i32* %3, align 4
  br label %19

19:                                               ; preds = %16, %15
  %20 = load i32, i32* %3, align 4
  ret i32 %20
}

declare dso_local %struct.hisi_hba* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local i32 @sas_drain_work(%struct.sas_ha_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
