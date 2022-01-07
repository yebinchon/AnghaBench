; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_scsih.c_mpt3sas_scsih_scsi_lookup_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_scsih.c_mpt3sas_scsih_scsi_lookup_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32 }
%struct.MPT3SAS_ADAPTER = type { i64, i32 }
%struct.scsiio_tracker = type { i32, i64 }
%struct.TYPE_3__ = type { i32 }

@INTERNAL_SCSIIO_CMDS_COUNT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.scsi_cmnd* @mpt3sas_scsih_scsi_lookup_get(%struct.MPT3SAS_ADAPTER* %0, i64 %1) #0 {
  %3 = alloca %struct.scsi_cmnd*, align 8
  %4 = alloca %struct.MPT3SAS_ADAPTER*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.scsi_cmnd*, align 8
  %7 = alloca %struct.scsiio_tracker*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i64, align 8
  store %struct.MPT3SAS_ADAPTER* %0, %struct.MPT3SAS_ADAPTER** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.scsi_cmnd* null, %struct.scsi_cmnd** %6, align 8
  %10 = load i64, i64* %5, align 8
  %11 = icmp sgt i64 %10, 0
  br i1 %11, label %12, label %55

12:                                               ; preds = %2
  %13 = load i64, i64* %5, align 8
  %14 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %4, align 8
  %15 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @INTERNAL_SCSIIO_CMDS_COUNT, align 8
  %18 = sub nsw i64 %16, %17
  %19 = icmp sle i64 %13, %18
  br i1 %19, label %20, label %55

20:                                               ; preds = %12
  %21 = load i64, i64* %5, align 8
  %22 = sub nsw i64 %21, 1
  store i64 %22, i64* %9, align 8
  %23 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %4, align 8
  %24 = load i64, i64* %5, align 8
  %25 = call %struct.TYPE_3__* @mpt3sas_base_get_msg_frame(%struct.MPT3SAS_ADAPTER* %23, i64 %24)
  store %struct.TYPE_3__* %25, %struct.TYPE_3__** %8, align 8
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %20
  %31 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  store %struct.scsi_cmnd* %31, %struct.scsi_cmnd** %3, align 8
  br label %57

32:                                               ; preds = %20
  %33 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %4, align 8
  %34 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i64, i64* %9, align 8
  %37 = call %struct.scsi_cmnd* @scsi_host_find_tag(i32 %35, i64 %36)
  store %struct.scsi_cmnd* %37, %struct.scsi_cmnd** %6, align 8
  %38 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %39 = icmp ne %struct.scsi_cmnd* %38, null
  br i1 %39, label %40, label %54

40:                                               ; preds = %32
  %41 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %42 = call %struct.scsiio_tracker* @scsi_cmd_priv(%struct.scsi_cmnd* %41)
  store %struct.scsiio_tracker* %42, %struct.scsiio_tracker** %7, align 8
  %43 = load %struct.scsiio_tracker*, %struct.scsiio_tracker** %7, align 8
  %44 = getelementptr inbounds %struct.scsiio_tracker, %struct.scsiio_tracker* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp eq i32 %45, 255
  br i1 %46, label %52, label %47

47:                                               ; preds = %40
  %48 = load %struct.scsiio_tracker*, %struct.scsiio_tracker** %7, align 8
  %49 = getelementptr inbounds %struct.scsiio_tracker, %struct.scsiio_tracker* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %47, %40
  store %struct.scsi_cmnd* null, %struct.scsi_cmnd** %6, align 8
  br label %53

53:                                               ; preds = %52, %47
  br label %54

54:                                               ; preds = %53, %32
  br label %55

55:                                               ; preds = %54, %12, %2
  %56 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  store %struct.scsi_cmnd* %56, %struct.scsi_cmnd** %3, align 8
  br label %57

57:                                               ; preds = %55, %30
  %58 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  ret %struct.scsi_cmnd* %58
}

declare dso_local %struct.TYPE_3__* @mpt3sas_base_get_msg_frame(%struct.MPT3SAS_ADAPTER*, i64) #1

declare dso_local %struct.scsi_cmnd* @scsi_host_find_tag(i32, i64) #1

declare dso_local %struct.scsiio_tracker* @scsi_cmd_priv(%struct.scsi_cmnd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
