; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_fw_api.c_init_initiator_rw_cdb_ystorm_context.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_fw_api.c_init_initiator_rw_cdb_ystorm_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ystorm_iscsi_task_st_ctx = type { %union.iscsi_task_hdr }
%union.iscsi_task_hdr = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i8*, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i8*, i8* }
%struct.scsi_initiator_cmd_params = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@ISCSI_EXT_CDB_CMD_HDR_CDB_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ystorm_iscsi_task_st_ctx*, %struct.scsi_initiator_cmd_params*)* @init_initiator_rw_cdb_ystorm_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_initiator_rw_cdb_ystorm_context(%struct.ystorm_iscsi_task_st_ctx* %0, %struct.scsi_initiator_cmd_params* %1) #0 {
  %3 = alloca %struct.ystorm_iscsi_task_st_ctx*, align 8
  %4 = alloca %struct.scsi_initiator_cmd_params*, align 8
  %5 = alloca %union.iscsi_task_hdr*, align 8
  %6 = alloca i8*, align 8
  store %struct.ystorm_iscsi_task_st_ctx* %0, %struct.ystorm_iscsi_task_st_ctx** %3, align 8
  store %struct.scsi_initiator_cmd_params* %1, %struct.scsi_initiator_cmd_params** %4, align 8
  %7 = load %struct.ystorm_iscsi_task_st_ctx*, %struct.ystorm_iscsi_task_st_ctx** %3, align 8
  %8 = getelementptr inbounds %struct.ystorm_iscsi_task_st_ctx, %struct.ystorm_iscsi_task_st_ctx* %7, i32 0, i32 0
  store %union.iscsi_task_hdr* %8, %union.iscsi_task_hdr** %5, align 8
  %9 = load %struct.scsi_initiator_cmd_params*, %struct.scsi_initiator_cmd_params** %4, align 8
  %10 = getelementptr inbounds %struct.scsi_initiator_cmd_params, %struct.scsi_initiator_cmd_params* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  br label %60

15:                                               ; preds = %2
  %16 = load %union.iscsi_task_hdr*, %union.iscsi_task_hdr** %5, align 8
  %17 = bitcast %union.iscsi_task_hdr* %16 to %struct.TYPE_10__*
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @ISCSI_EXT_CDB_CMD_HDR_CDB_SIZE, align 4
  %21 = load %struct.scsi_initiator_cmd_params*, %struct.scsi_initiator_cmd_params** %4, align 8
  %22 = getelementptr inbounds %struct.scsi_initiator_cmd_params, %struct.scsi_initiator_cmd_params* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @SET_FIELD(i32 %19, i32 %20, i32 %24)
  %26 = load %struct.scsi_initiator_cmd_params*, %struct.scsi_initiator_cmd_params** %4, align 8
  %27 = getelementptr inbounds %struct.scsi_initiator_cmd_params, %struct.scsi_initiator_cmd_params* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i8* @cpu_to_le32(i32 %30)
  store i8* %31, i8** %6, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = load %union.iscsi_task_hdr*, %union.iscsi_task_hdr** %5, align 8
  %34 = bitcast %union.iscsi_task_hdr* %33 to %struct.TYPE_10__*
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 1
  store i8* %32, i8** %37, align 8
  %38 = load %struct.scsi_initiator_cmd_params*, %struct.scsi_initiator_cmd_params** %4, align 8
  %39 = getelementptr inbounds %struct.scsi_initiator_cmd_params, %struct.scsi_initiator_cmd_params* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i8* @cpu_to_le32(i32 %42)
  store i8* %43, i8** %6, align 8
  %44 = load i8*, i8** %6, align 8
  %45 = load %union.iscsi_task_hdr*, %union.iscsi_task_hdr** %5, align 8
  %46 = bitcast %union.iscsi_task_hdr* %45 to %struct.TYPE_10__*
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  store i8* %44, i8** %49, align 8
  %50 = load %struct.scsi_initiator_cmd_params*, %struct.scsi_initiator_cmd_params** %4, align 8
  %51 = getelementptr inbounds %struct.scsi_initiator_cmd_params, %struct.scsi_initiator_cmd_params* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i8* @cpu_to_le32(i32 %53)
  store i8* %54, i8** %6, align 8
  %55 = load i8*, i8** %6, align 8
  %56 = load %union.iscsi_task_hdr*, %union.iscsi_task_hdr** %5, align 8
  %57 = bitcast %union.iscsi_task_hdr* %56 to %struct.TYPE_10__*
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  store i8* %55, i8** %59, align 8
  br label %60

60:                                               ; preds = %15, %14
  ret void
}

declare dso_local i32 @SET_FIELD(i32, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
