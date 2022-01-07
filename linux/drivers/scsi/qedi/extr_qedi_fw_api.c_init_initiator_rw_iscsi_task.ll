; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_fw_api.c_init_initiator_rw_iscsi_task.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_fw_api.c_init_initiator_rw_iscsi_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_task_params = type { i64, i64 }
%struct.iscsi_conn_params = type { i32 }
%struct.scsi_initiator_cmd_params = type { i32 }
%struct.iscsi_cmd_hdr = type { i32 }
%struct.scsi_sgl_task_params = type { i32 }
%struct.scsi_dif_task_params = type { i32 }
%struct.iscsi_common_hdr = type { i32 }

@ISCSI_CMD_HDR_WRITE = common dso_local global i32 0, align 4
@ISCSI_TASK_TYPE_INITIATOR_WRITE = common dso_local global i32 0, align 4
@ISCSI_CMD_HDR_READ = common dso_local global i32 0, align 4
@ISCSI_TASK_TYPE_INITIATOR_READ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @init_initiator_rw_iscsi_task(%struct.iscsi_task_params* %0, %struct.iscsi_conn_params* %1, %struct.scsi_initiator_cmd_params* %2, %struct.iscsi_cmd_hdr* %3, %struct.scsi_sgl_task_params* %4, %struct.scsi_sgl_task_params* %5, %struct.scsi_dif_task_params* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.iscsi_task_params*, align 8
  %10 = alloca %struct.iscsi_conn_params*, align 8
  %11 = alloca %struct.scsi_initiator_cmd_params*, align 8
  %12 = alloca %struct.iscsi_cmd_hdr*, align 8
  %13 = alloca %struct.scsi_sgl_task_params*, align 8
  %14 = alloca %struct.scsi_sgl_task_params*, align 8
  %15 = alloca %struct.scsi_dif_task_params*, align 8
  store %struct.iscsi_task_params* %0, %struct.iscsi_task_params** %9, align 8
  store %struct.iscsi_conn_params* %1, %struct.iscsi_conn_params** %10, align 8
  store %struct.scsi_initiator_cmd_params* %2, %struct.scsi_initiator_cmd_params** %11, align 8
  store %struct.iscsi_cmd_hdr* %3, %struct.iscsi_cmd_hdr** %12, align 8
  store %struct.scsi_sgl_task_params* %4, %struct.scsi_sgl_task_params** %13, align 8
  store %struct.scsi_sgl_task_params* %5, %struct.scsi_sgl_task_params** %14, align 8
  store %struct.scsi_dif_task_params* %6, %struct.scsi_dif_task_params** %15, align 8
  %16 = load %struct.iscsi_cmd_hdr*, %struct.iscsi_cmd_hdr** %12, align 8
  %17 = getelementptr inbounds %struct.iscsi_cmd_hdr, %struct.iscsi_cmd_hdr* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @ISCSI_CMD_HDR_WRITE, align 4
  %20 = call i64 @GET_FIELD(i32 %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %7
  %23 = load %struct.iscsi_task_params*, %struct.iscsi_task_params** %9, align 8
  %24 = load i32, i32* @ISCSI_TASK_TYPE_INITIATOR_WRITE, align 4
  %25 = load %struct.iscsi_conn_params*, %struct.iscsi_conn_params** %10, align 8
  %26 = load %struct.iscsi_cmd_hdr*, %struct.iscsi_cmd_hdr** %12, align 8
  %27 = bitcast %struct.iscsi_cmd_hdr* %26 to %struct.iscsi_common_hdr*
  %28 = load %struct.scsi_sgl_task_params*, %struct.scsi_sgl_task_params** %13, align 8
  %29 = load %struct.scsi_initiator_cmd_params*, %struct.scsi_initiator_cmd_params** %11, align 8
  %30 = load %struct.scsi_dif_task_params*, %struct.scsi_dif_task_params** %15, align 8
  %31 = call i32 @init_rw_iscsi_task(%struct.iscsi_task_params* %23, i32 %24, %struct.iscsi_conn_params* %25, %struct.iscsi_common_hdr* %27, %struct.scsi_sgl_task_params* %28, %struct.scsi_initiator_cmd_params* %29, %struct.scsi_dif_task_params* %30)
  store i32 %31, i32* %8, align 4
  br label %60

32:                                               ; preds = %7
  %33 = load %struct.iscsi_cmd_hdr*, %struct.iscsi_cmd_hdr** %12, align 8
  %34 = getelementptr inbounds %struct.iscsi_cmd_hdr, %struct.iscsi_cmd_hdr* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @ISCSI_CMD_HDR_READ, align 4
  %37 = call i64 @GET_FIELD(i32 %35, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %49, label %39

39:                                               ; preds = %32
  %40 = load %struct.iscsi_task_params*, %struct.iscsi_task_params** %9, align 8
  %41 = getelementptr inbounds %struct.iscsi_task_params, %struct.iscsi_task_params* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %59

44:                                               ; preds = %39
  %45 = load %struct.iscsi_task_params*, %struct.iscsi_task_params** %9, align 8
  %46 = getelementptr inbounds %struct.iscsi_task_params, %struct.iscsi_task_params* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %44, %32
  %50 = load %struct.iscsi_task_params*, %struct.iscsi_task_params** %9, align 8
  %51 = load i32, i32* @ISCSI_TASK_TYPE_INITIATOR_READ, align 4
  %52 = load %struct.iscsi_conn_params*, %struct.iscsi_conn_params** %10, align 8
  %53 = load %struct.iscsi_cmd_hdr*, %struct.iscsi_cmd_hdr** %12, align 8
  %54 = bitcast %struct.iscsi_cmd_hdr* %53 to %struct.iscsi_common_hdr*
  %55 = load %struct.scsi_sgl_task_params*, %struct.scsi_sgl_task_params** %14, align 8
  %56 = load %struct.scsi_initiator_cmd_params*, %struct.scsi_initiator_cmd_params** %11, align 8
  %57 = load %struct.scsi_dif_task_params*, %struct.scsi_dif_task_params** %15, align 8
  %58 = call i32 @init_rw_iscsi_task(%struct.iscsi_task_params* %50, i32 %51, %struct.iscsi_conn_params* %52, %struct.iscsi_common_hdr* %54, %struct.scsi_sgl_task_params* %55, %struct.scsi_initiator_cmd_params* %56, %struct.scsi_dif_task_params* %57)
  store i32 %58, i32* %8, align 4
  br label %60

59:                                               ; preds = %44, %39
  store i32 -1, i32* %8, align 4
  br label %60

60:                                               ; preds = %59, %49, %22
  %61 = load i32, i32* %8, align 4
  ret i32 %61
}

declare dso_local i64 @GET_FIELD(i32, i32) #1

declare dso_local i32 @init_rw_iscsi_task(%struct.iscsi_task_params*, i32, %struct.iscsi_conn_params*, %struct.iscsi_common_hdr*, %struct.scsi_sgl_task_params*, %struct.scsi_initiator_cmd_params*, %struct.scsi_dif_task_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
