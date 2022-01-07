; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libsas/extr_sas_scsi_host.c_sas_end_task.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libsas/extr_sas_scsi_host.c_sas_end_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32, i32, i64 }
%struct.sas_task = type { %struct.TYPE_6__*, %struct.task_status_struct }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.task_status_struct = type { i64, i32, i32, i32, i32, i32 }

@SAS_TASK_UNDELIVERED = common dso_local global i64 0, align 8
@DID_NO_CONNECT = common dso_local global i32 0, align 4
@DID_ERROR = common dso_local global i32 0, align 4
@DID_SOFT_ERROR = common dso_local global i32 0, align 4
@DID_BAD_TARGET = common dso_local global i32 0, align 4
@DID_PARITY = common dso_local global i32 0, align 4
@SAS_OREJ_RSVD_RETRY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"LLDD:%s sent SAS_PROTO_RESP for an SSP task; please report this\0A\00", align 1
@DID_ABORT = common dso_local global i32 0, align 4
@SCSI_SENSE_BUFFERSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_cmnd*, %struct.sas_task*)* @sas_end_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sas_end_task(%struct.scsi_cmnd* %0, %struct.sas_task* %1) #0 {
  %3 = alloca %struct.scsi_cmnd*, align 8
  %4 = alloca %struct.sas_task*, align 8
  %5 = alloca %struct.task_status_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %3, align 8
  store %struct.sas_task* %1, %struct.sas_task** %4, align 8
  %8 = load %struct.sas_task*, %struct.sas_task** %4, align 8
  %9 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %8, i32 0, i32 1
  store %struct.task_status_struct* %9, %struct.task_status_struct** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %10 = load %struct.task_status_struct*, %struct.task_status_struct** %5, align 8
  %11 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @SAS_TASK_UNDELIVERED, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @DID_NO_CONNECT, align 4
  store i32 %16, i32* %6, align 4
  br label %91

17:                                               ; preds = %2
  %18 = load %struct.task_status_struct*, %struct.task_status_struct** %5, align 8
  %19 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  switch i32 %20, label %86 [
    i32 136, label %21
    i32 135, label %21
    i32 131, label %21
    i32 134, label %21
    i32 132, label %21
    i32 138, label %23
    i32 139, label %41
    i32 129, label %43
    i32 137, label %45
    i32 128, label %47
    i32 133, label %49
    i32 130, label %60
    i32 140, label %71
    i32 141, label %73
  ]

21:                                               ; preds = %17, %17, %17, %17, %17
  %22 = load i32, i32* @DID_NO_CONNECT, align 4
  store i32 %22, i32* %6, align 4
  br label %90

23:                                               ; preds = %17
  %24 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %25 = load %struct.task_status_struct*, %struct.task_status_struct** %5, align 8
  %26 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @scsi_set_resid(%struct.scsi_cmnd* %24, i32 %27)
  %29 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %30 = call i64 @scsi_bufflen(%struct.scsi_cmnd* %29)
  %31 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %32 = call i64 @scsi_get_resid(%struct.scsi_cmnd* %31)
  %33 = sub nsw i64 %30, %32
  %34 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %35 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp slt i64 %33, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %23
  %39 = load i32, i32* @DID_ERROR, align 4
  store i32 %39, i32* %6, align 4
  br label %40

40:                                               ; preds = %38, %23
  br label %90

41:                                               ; preds = %17
  %42 = load i32, i32* @DID_ERROR, align 4
  store i32 %42, i32* %6, align 4
  br label %90

43:                                               ; preds = %17
  %44 = load i32, i32* @DID_SOFT_ERROR, align 4
  store i32 %44, i32* %6, align 4
  br label %90

45:                                               ; preds = %17
  %46 = load i32, i32* @DID_BAD_TARGET, align 4
  store i32 %46, i32* %6, align 4
  br label %90

47:                                               ; preds = %17
  %48 = load i32, i32* @DID_PARITY, align 4
  store i32 %48, i32* %6, align 4
  br label %90

49:                                               ; preds = %17
  %50 = load %struct.task_status_struct*, %struct.task_status_struct** %5, align 8
  %51 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @SAS_OREJ_RSVD_RETRY, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = load i32, i32* @DID_SOFT_ERROR, align 4
  store i32 %56, i32* %6, align 4
  br label %59

57:                                               ; preds = %49
  %58 = load i32, i32* @DID_ERROR, align 4
  store i32 %58, i32* %6, align 4
  br label %59

59:                                               ; preds = %57, %55
  br label %90

60:                                               ; preds = %17
  %61 = load %struct.sas_task*, %struct.sas_task** %4, align 8
  %62 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %61, i32 0, i32 0
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @pr_notice(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i32 %69)
  br label %90

71:                                               ; preds = %17
  %72 = load i32, i32* @DID_ABORT, align 4
  store i32 %72, i32* %6, align 4
  br label %90

73:                                               ; preds = %17
  %74 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %75 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.task_status_struct*, %struct.task_status_struct** %5, align 8
  %78 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @SCSI_SENSE_BUFFERSIZE, align 4
  %81 = load %struct.task_status_struct*, %struct.task_status_struct** %5, align 8
  %82 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @min(i32 %80, i32 %83)
  %85 = call i32 @memcpy(i32 %76, i32 %79, i32 %84)
  store i32 141, i32* %7, align 4
  br label %90

86:                                               ; preds = %17
  %87 = load %struct.task_status_struct*, %struct.task_status_struct** %5, align 8
  %88 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  store i32 %89, i32* %7, align 4
  br label %90

90:                                               ; preds = %86, %73, %71, %60, %59, %47, %45, %43, %41, %40, %21
  br label %91

91:                                               ; preds = %90, %15
  %92 = load i32, i32* %6, align 4
  %93 = shl i32 %92, 16
  %94 = load i32, i32* %7, align 4
  %95 = or i32 %93, %94
  %96 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %97 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 8
  %98 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %99 = call i32 @ASSIGN_SAS_TASK(%struct.scsi_cmnd* %98, i32* null)
  %100 = load %struct.sas_task*, %struct.sas_task** %4, align 8
  %101 = call i32 @sas_free_task(%struct.sas_task* %100)
  ret void
}

declare dso_local i32 @scsi_set_resid(%struct.scsi_cmnd*, i32) #1

declare dso_local i64 @scsi_bufflen(%struct.scsi_cmnd*) #1

declare dso_local i64 @scsi_get_resid(%struct.scsi_cmnd*) #1

declare dso_local i32 @pr_notice(i8*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @ASSIGN_SAS_TASK(%struct.scsi_cmnd*, i32*) #1

declare dso_local i32 @sas_free_task(%struct.sas_task*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
