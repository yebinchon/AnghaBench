; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_scsih.c__scsih_flush_running_cmds.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_scsih.c__scsih_flush_running_cmds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPT3SAS_ADAPTER = type { i32, i64, i64 }
%struct.scsi_cmnd = type { i32, i32 (%struct.scsi_cmnd*)* }
%struct.scsiio_tracker = type { i32 }

@DID_NO_CONNECT = common dso_local global i32 0, align 4
@DID_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"completing %d cmds\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.MPT3SAS_ADAPTER*)* @_scsih_flush_running_cmds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_scsih_flush_running_cmds(%struct.MPT3SAS_ADAPTER* %0) #0 {
  %2 = alloca %struct.MPT3SAS_ADAPTER*, align 8
  %3 = alloca %struct.scsi_cmnd*, align 8
  %4 = alloca %struct.scsiio_tracker*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.MPT3SAS_ADAPTER* %0, %struct.MPT3SAS_ADAPTER** %2, align 8
  store i32 0, i32* %6, align 4
  store i32 1, i32* %5, align 4
  br label %7

7:                                                ; preds = %57, %1
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %10 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp sle i32 %8, %11
  br i1 %12, label %13, label %60

13:                                               ; preds = %7
  %14 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call %struct.scsi_cmnd* @mpt3sas_scsih_scsi_lookup_get(%struct.MPT3SAS_ADAPTER* %14, i32 %15)
  store %struct.scsi_cmnd* %16, %struct.scsi_cmnd** %3, align 8
  %17 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %18 = icmp ne %struct.scsi_cmnd* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %13
  br label %57

20:                                               ; preds = %13
  %21 = load i32, i32* %6, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %6, align 4
  %23 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %24 = call i32 @_scsih_set_satl_pending(%struct.scsi_cmnd* %23, i32 0)
  %25 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %26 = call %struct.scsiio_tracker* @scsi_cmd_priv(%struct.scsi_cmnd* %25)
  store %struct.scsiio_tracker* %26, %struct.scsiio_tracker** %4, align 8
  %27 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %28 = load %struct.scsiio_tracker*, %struct.scsiio_tracker** %4, align 8
  %29 = call i32 @mpt3sas_base_clear_st(%struct.MPT3SAS_ADAPTER* %27, %struct.scsiio_tracker* %28)
  %30 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %31 = call i32 @scsi_dma_unmap(%struct.scsi_cmnd* %30)
  %32 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %33 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %20
  %37 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %38 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %36, %20
  %42 = load i32, i32* @DID_NO_CONNECT, align 4
  %43 = shl i32 %42, 16
  %44 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %45 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  br label %51

46:                                               ; preds = %36
  %47 = load i32, i32* @DID_RESET, align 4
  %48 = shl i32 %47, 16
  %49 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %50 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  br label %51

51:                                               ; preds = %46, %41
  %52 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %53 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %52, i32 0, i32 1
  %54 = load i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)** %53, align 8
  %55 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %56 = call i32 %54(%struct.scsi_cmnd* %55)
  br label %57

57:                                               ; preds = %51, %19
  %58 = load i32, i32* %5, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %5, align 4
  br label %7

60:                                               ; preds = %7
  %61 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %62 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @ioc_info(%struct.MPT3SAS_ADAPTER* %62, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %63)
  %65 = call i32 @dtmprintk(%struct.MPT3SAS_ADAPTER* %61, i32 %64)
  ret void
}

declare dso_local %struct.scsi_cmnd* @mpt3sas_scsih_scsi_lookup_get(%struct.MPT3SAS_ADAPTER*, i32) #1

declare dso_local i32 @_scsih_set_satl_pending(%struct.scsi_cmnd*, i32) #1

declare dso_local %struct.scsiio_tracker* @scsi_cmd_priv(%struct.scsi_cmnd*) #1

declare dso_local i32 @mpt3sas_base_clear_st(%struct.MPT3SAS_ADAPTER*, %struct.scsiio_tracker*) #1

declare dso_local i32 @scsi_dma_unmap(%struct.scsi_cmnd*) #1

declare dso_local i32 @dtmprintk(%struct.MPT3SAS_ADAPTER*, i32) #1

declare dso_local i32 @ioc_info(%struct.MPT3SAS_ADAPTER*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
