; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_base.c_mpt3sas_base_get_smid_scsiio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_base.c_mpt3sas_base_get_smid_scsiio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPT3SAS_ADAPTER = type { i32 }
%struct.scsi_cmnd = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.scsiio_tracker = type { i32, i32, %struct.scsi_cmnd*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mpt3sas_base_get_smid_scsiio(%struct.MPT3SAS_ADAPTER* %0, i32 %1, %struct.scsi_cmnd* %2) #0 {
  %4 = alloca %struct.MPT3SAS_ADAPTER*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.scsi_cmnd*, align 8
  %7 = alloca %struct.scsiio_tracker*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.MPT3SAS_ADAPTER* %0, %struct.MPT3SAS_ADAPTER** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.scsi_cmnd* %2, %struct.scsi_cmnd** %6, align 8
  %10 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %11 = call %struct.scsiio_tracker* @scsi_cmd_priv(%struct.scsi_cmnd* %10)
  store %struct.scsiio_tracker* %11, %struct.scsiio_tracker** %7, align 8
  %12 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %13 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = add i32 %17, 1
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.scsiio_tracker*, %struct.scsiio_tracker** %7, align 8
  %21 = getelementptr inbounds %struct.scsiio_tracker, %struct.scsiio_tracker* %20, i32 0, i32 3
  store i32 %19, i32* %21, align 8
  %22 = load i32, i32* %9, align 4
  %23 = load %struct.scsiio_tracker*, %struct.scsiio_tracker** %7, align 8
  %24 = getelementptr inbounds %struct.scsiio_tracker, %struct.scsiio_tracker* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %26 = load %struct.scsiio_tracker*, %struct.scsiio_tracker** %7, align 8
  %27 = getelementptr inbounds %struct.scsiio_tracker, %struct.scsiio_tracker* %26, i32 0, i32 2
  store %struct.scsi_cmnd* %25, %struct.scsi_cmnd** %27, align 8
  %28 = load %struct.scsiio_tracker*, %struct.scsiio_tracker** %7, align 8
  %29 = getelementptr inbounds %struct.scsiio_tracker, %struct.scsiio_tracker* %28, i32 0, i32 1
  %30 = call i32 @INIT_LIST_HEAD(i32* %29)
  %31 = load i32, i32* %9, align 4
  ret i32 %31
}

declare dso_local %struct.scsiio_tracker* @scsi_cmd_priv(%struct.scsi_cmnd*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
