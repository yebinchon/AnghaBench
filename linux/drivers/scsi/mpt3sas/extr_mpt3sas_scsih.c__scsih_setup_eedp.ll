; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_scsih.c__scsih_setup_eedp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_scsih.c__scsih_setup_eedp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPT3SAS_ADAPTER = type { i64 }
%struct.scsi_cmnd = type { %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i8*, i8*, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@SCSI_PROT_DIF_TYPE0 = common dso_local global i8 0, align 1
@SCSI_PROT_NORMAL = common dso_local global i8 0, align 1
@SCSI_PROT_READ_STRIP = common dso_local global i8 0, align 1
@MPI2_SCSIIO_EEDPFLAGS_CHECK_REMOVE_OP = common dso_local global i32 0, align 4
@SCSI_PROT_WRITE_INSERT = common dso_local global i8 0, align 1
@MPI2_SCSIIO_EEDPFLAGS_INSERT_OP = common dso_local global i32 0, align 4
@MPI2_SCSIIO_EEDPFLAGS_INC_PRI_REFTAG = common dso_local global i32 0, align 4
@MPI2_SCSIIO_EEDPFLAGS_CHECK_REFTAG = common dso_local global i32 0, align 4
@MPI2_SCSIIO_EEDPFLAGS_CHECK_GUARD = common dso_local global i32 0, align 4
@MPI25_SCSIIO_EEDPFLAGS_APPTAG_DISABLE_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.MPT3SAS_ADAPTER*, %struct.scsi_cmnd*, %struct.TYPE_9__*)* @_scsih_setup_eedp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_scsih_setup_eedp(%struct.MPT3SAS_ADAPTER* %0, %struct.scsi_cmnd* %1, %struct.TYPE_9__* %2) #0 {
  %4 = alloca %struct.MPT3SAS_ADAPTER*, align 8
  %5 = alloca %struct.scsi_cmnd*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca %struct.TYPE_9__*, align 8
  store %struct.MPT3SAS_ADAPTER* %0, %struct.MPT3SAS_ADAPTER** %4, align 8
  store %struct.scsi_cmnd* %1, %struct.scsi_cmnd** %5, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %6, align 8
  %11 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %12 = call zeroext i8 @scsi_get_prot_op(%struct.scsi_cmnd* %11)
  store i8 %12, i8* %8, align 1
  %13 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %14 = call zeroext i8 @scsi_get_prot_type(%struct.scsi_cmnd* %13)
  store i8 %14, i8* %9, align 1
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  store %struct.TYPE_9__* %15, %struct.TYPE_9__** %10, align 8
  %16 = load i8, i8* %9, align 1
  %17 = zext i8 %16 to i32
  %18 = load i8, i8* @SCSI_PROT_DIF_TYPE0, align 1
  %19 = zext i8 %18 to i32
  %20 = icmp eq i32 %17, %19
  br i1 %20, label %27, label %21

21:                                               ; preds = %3
  %22 = load i8, i8* %8, align 1
  %23 = zext i8 %22 to i32
  %24 = load i8, i8* @SCSI_PROT_NORMAL, align 1
  %25 = zext i8 %24 to i32
  %26 = icmp eq i32 %23, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21, %3
  br label %92

28:                                               ; preds = %21
  %29 = load i8, i8* %8, align 1
  %30 = zext i8 %29 to i32
  %31 = load i8, i8* @SCSI_PROT_READ_STRIP, align 1
  %32 = zext i8 %31 to i32
  %33 = icmp eq i32 %30, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i32, i32* @MPI2_SCSIIO_EEDPFLAGS_CHECK_REMOVE_OP, align 4
  store i32 %35, i32* %7, align 4
  br label %46

36:                                               ; preds = %28
  %37 = load i8, i8* %8, align 1
  %38 = zext i8 %37 to i32
  %39 = load i8, i8* @SCSI_PROT_WRITE_INSERT, align 1
  %40 = zext i8 %39 to i32
  %41 = icmp eq i32 %38, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = load i32, i32* @MPI2_SCSIIO_EEDPFLAGS_INSERT_OP, align 4
  store i32 %43, i32* %7, align 4
  br label %45

44:                                               ; preds = %36
  br label %92

45:                                               ; preds = %42
  br label %46

46:                                               ; preds = %45, %34
  %47 = load i8, i8* %9, align 1
  %48 = zext i8 %47 to i32
  switch i32 %48, label %70 [
    i32 130, label %49
    i32 129, label %49
    i32 128, label %66
  ]

49:                                               ; preds = %46, %46
  %50 = load i32, i32* @MPI2_SCSIIO_EEDPFLAGS_INC_PRI_REFTAG, align 4
  %51 = load i32, i32* @MPI2_SCSIIO_EEDPFLAGS_CHECK_REFTAG, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @MPI2_SCSIIO_EEDPFLAGS_CHECK_GUARD, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* %7, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %7, align 4
  %57 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %58 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @t10_pi_ref_tag(i32 %59)
  %61 = call i32 @cpu_to_be32(i32 %60)
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  store i32 %61, i32* %65, align 8
  br label %70

66:                                               ; preds = %46
  %67 = load i32, i32* @MPI2_SCSIIO_EEDPFLAGS_CHECK_GUARD, align 4
  %68 = load i32, i32* %7, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %7, align 4
  br label %70

70:                                               ; preds = %46, %66, %49
  %71 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %72 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %71, i32 0, i32 0
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i8* @cpu_to_le16(i32 %75)
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 1
  store i8* %76, i8** %78, align 8
  %79 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %4, align 8
  %80 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %70
  %84 = load i32, i32* @MPI25_SCSIIO_EEDPFLAGS_APPTAG_DISABLE_MODE, align 4
  %85 = load i32, i32* %7, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %7, align 4
  br label %87

87:                                               ; preds = %83, %70
  %88 = load i32, i32* %7, align 4
  %89 = call i8* @cpu_to_le16(i32 %88)
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  store i8* %89, i8** %91, align 8
  br label %92

92:                                               ; preds = %87, %44, %27
  ret void
}

declare dso_local zeroext i8 @scsi_get_prot_op(%struct.scsi_cmnd*) #1

declare dso_local zeroext i8 @scsi_get_prot_type(%struct.scsi_cmnd*) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @t10_pi_ref_tag(i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
